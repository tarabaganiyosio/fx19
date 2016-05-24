class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable and :timeoutable
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  
  mount_uploader :image, ImageUploader
  
  validates_presence_of   :image
  validates_integrity_of  :image
  validates_processing_of :image
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:twitter]

  validates :username, presence: true, uniqueness: true
  has_many :brokers
  has_many :comments
  has_many :boards
  has_many :evas
  has_many :questions
  has_many :answers
  has_many :bas
  has_many :replies
  
  def self.from_omniauth(auth)
    # providerとuidでUserレコードを取得する
    # 存在しない場合は、ブロック内のコードを実行して作成する
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      # auth.provider には "twitter"、
      # auth.uidには twitterアカウントに基づいた個別のIDが入っている
      # first_or_createメソッドが自動でproviderとuidを設定してくれるので、
      # ここでは設定は必要ない
      user.username = auth.info.nickname # twitterで利用している名前が入る
      user.email = auth.info.email # twitterの場合入らない
    end
  end
  
  def password_required?
    super && provider.blank?
  end
  
  # Devise の RegistrationsController はリソースを生成する前に self.new_sith_session を呼ぶ
  # つまり、self.new_with_sessionを実装することで、サインアップ前のuserオブジェクトを初期化する
  # ときに session からデータをコピーすることができます。
  # OmniauthCallbacksControllerでsessionに値を設定したので、それをuserオブジェクトにコピーします。
  def self.new_with_session(params, session)
    if session["devise.user_attributes"]
      new(session["devise.user_attributes"], without_protection: true) do |user|
        user.attributes = params
        user.valid?
      end
    else
      super
    end
  end
end