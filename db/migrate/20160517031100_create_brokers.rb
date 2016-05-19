class CreateBrokers < ActiveRecord::Migration
  def change
    create_table :brokers do |t|
      t.string :name
      t.string :location
      t.string :image
      t.string :image_cache
      t.string :remove_image
      t.string :license
      t.string :max_lev
      t.string :spread
      t.string :min_amo
      t.string :tr_fee
      t.string :capital
      t.string :lang
      t.string :cur
      t.string :order
      t.string :min_lot
      t.string :max_lot
      t.string :cur_pair
      t.string :p_met
      t.string :b_pro
      t.string :state
      t.string :jp_sup
      t.string :p_ref
      t.string :p_fee
      t.string :w_fee
      t.string :m_fee
      t.string :demo
      t.string :multi
      t.string :sp_met
      t.string :tr_sys
      t.string :platform
      t.string :tr_pos
      t.string :gmt
      t.string :rollover
      t.string :ma_cal
      t.string :lo_cut
      t.string :both
      t.string :ea_lim
      t.string :ma_occ
      t.string :ca_trs
      t.string :st_met
      t.string :mo_sup
      t.string :support
      t.string :design
      t.string :feeling
      t.string :payment

      t.timestamps null: false
    end
  end
end
