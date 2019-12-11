require 'rails_helper'

RSpec.describe Workout, type: :model do
  
    describe "Direct Associations" do

    it { should have_one(:climb) }

    it { should have_one(:lift) }

    it { should have_one(:run) }

    it { should belong_to(:user) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
