class AddDeviseToUsers < ActiveRecord::Migration
  def change

      change_table('users') do |t|
        ## Database authenticatable
        t.string :encrypted_password, null: false, default: ""

        ## Recoverable
        t.string   :reset_password_token
        t.datetime :reset_password_sent_at

        ## Rememberable
        t.datetime :remember_created_at

        ## Trackable
        t.integer  :sign_in_count, default: 0, null: false
        t.datetime :current_sign_in_at
        t.datetime :last_sign_in_at
        t.inet     :current_sign_in_ip
        t.inet     :last_sign_in_ip

        ## Confirmable
        # t.string   :confirmation_token
        # t.datetime :confirmed_at
        # t.datetime :confirmation_sent_at
        # t.string   :unconfirmed_email # Only if using reconfirmable

        # Mobile phone number verification with Twillio
        t.boolean :mobile_verified, :default => false
        t.string :mobile_verification_pin
        t.datetime :mobile_verification_sent_at
        t.datetime :mobile_verification_confirmed_at

        # Email address verification
        t.boolean :email_verified, :default => false
        t.string :email_verification_code
        t.datetime :email_verification_sent_at
        t.datetime :email_verification_confirmed_at

        ## Lockable
        # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
        # t.string   :unlock_token # Only if unlock strategy is :email or :both
        # t.datetime :locked_at

        ## Token Authenticable
        t.string :authentication_token

        # Uncomment below if timestamps were not included in your original model.
        # t.timestamps null: false

        # Sign up method
        t.string :signup_method, :default => 'email'  # choices are 'email', 'facebook', 'google', 'twitter', 'linkedin'
      end

      add_index :users, :reset_password_token, unique: true
      add_index  :users, :authentication_token, :unique => true

      # add_index :users, :confirmation_token,   unique: true
      # add_index :users, :unlock_token,         unique: tru

  end
end
