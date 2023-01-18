require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー管理機能' do
    it 'メールアドレスが必須であること' do
      @user.email = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Email can't be blank")
    end
    it 'メールアドレスは一意性である' do
      expect(@user).to be_valid
    end
    it 'メールアドレスは@を含む必要があること' do
      expect(@user).to be_valid
    end
    it 'パスワードが必須であること' do
      expect(@user).to be_valid
    end
    it 'パスワードは6文字以上であること' do
      expect(@user).to be_valid
    end
    it 'パスワードは確認用を含めて2回入力すること' do
      expect(@user).to be_valid
    end
    it 'パスワードとパスワード確認用の値の一致が必須であること' do
      expect(@user).to be_valid
    end
    it 'ユーザー名が必須であること' do
      expect(@user).to be_valid
    end
    it 'プロフィールが必須であること' do
      expect(@user).to be_valid
    end
    it '所属が必須であること' do
      expect(@user).to be_valid
    end
    it '役職が必須であること' do
      expect(@user).to be_valid
    end
    it '必須項目に適切な値を入力すると、ユーザーの新規登録ができること' do
      expect(@user).to be_valid
    end
    it '必要な情報を入力すると、ログインができること' do
      expect(@user).to be_valid
    end
    it 'フォームに適切な値が入力されていない状態では、新規登録・ログインはできず、そのページに留まること（新規登録/ログイン)' do
      expect(@user).to be_valid
    end
  end
end
