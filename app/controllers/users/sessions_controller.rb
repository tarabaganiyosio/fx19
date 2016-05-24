class Users::SessionsController < Devise::SessionsController
# before_action :configure_sign_in_params, only: [:create]
  def all
      # profiderとuidでuserレコードを検索。存在しなければ、新たに作成する
      user = User.from_omniauth(request.env["omniauth.auth"])
      # userレコードが既に保存されているか
      if user.persisted?
        # ログインに成功
        flash.notice = "ログインしました"
        sign_in_and_redirect user
      else
        # ログインに失敗し、サインイン画面に遷移
        session["devise.user_attributes"] = user.attributes
        redirect_to new_user_registration_url
      end
  end

  
  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
  
  # alias_methodはクラスやモジュールのメソッドに別名をつけます
  # 実態がallメソッドのtwitterメソッドを定義しています
  # こうすることで、様々なメソッド名で同じ処理を実装することができます。
  # OAuthの処理はほとんど同じためこのようにしています。
  # 例えば、Facebookに対応する場合、alias_method :facebook, :allだけですみます
  alias_method :twitter, :all
end
