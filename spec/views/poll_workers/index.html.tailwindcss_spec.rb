require 'rails_helper'

RSpec.describe "poll_workers/index", type: :view do
  before(:each) do
    assign(:poll_workers, [
      PollWorker.create!(),
      PollWorker.create!()
    ])
  end

  it "renders a list of poll_workers" do
    render
  end
end
