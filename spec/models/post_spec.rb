require 'spec_helper'

describe Post do
	
  it "can be instantiated" do
    Post.new.should be_an_instance_of(Post)
  end

  it "should not be saved with incorrect attributes" do
    Post.create.should_not be_persisted
  end
end