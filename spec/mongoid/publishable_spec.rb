require '../spec_helper.rb'


describe Mongoid::Publishable do
  before :each do
    # Create 3 Posts, future published, past published and an
    # unpublished
  end

  it "should have a date and timestamp to represent publish state"
  it "should be published if the published date is in the past"
  it "should be a draft if the published date is not set"
  it "should be scheduled if the published date is in the future"
  it "should be publishable"
  it "should be unpublishable"
  it "should be scheduleable"
  it "should return all published models"
  it "should return all draft models"
  it "should return all scheduled models"
end
