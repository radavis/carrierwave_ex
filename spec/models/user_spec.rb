require 'rails_helper'

RSpec.describe User, :type => :model do
  it { should have_valid(:first_name).when('Bruce') }
  it { should_not have_valid(:first_name).when(nil, '') }

  it { should have_valid(:last_name).when('Campbell') }
  it { should_not have_valid(:last_name).when(nil, '') }

  it { should have_valid(:email).when('bruce@gmail.com') }
  it { should_not have_valid(:email).when(nil, '') }
end
