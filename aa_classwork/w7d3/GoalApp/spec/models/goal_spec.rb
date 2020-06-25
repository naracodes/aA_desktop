require 'rails_helper'

RSpec.describe Goal, type: :model do
  it { should validate_presence_of :user_id }
  it { should validate_presence_of :name }
  it { should validate_presence_of :description }
  it { should validate_presence_of :status }
  it { should validate_inclusion_of(:status).in_array(["INCOMPLETE", "IN-PROGRESS", "COMPLETE"]) }
  it { should belong_to :user }
end
