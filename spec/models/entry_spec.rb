require 'spec_helper'

describe Entry do

  it { should validate_presence_of :title }
  it { should validate_presence_of :content }

end
