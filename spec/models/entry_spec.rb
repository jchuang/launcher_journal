require 'spec_helper'

describe Entry do

  it { should validate_presence_of :title }
  it { should validate_presence_of :content }

  it { should belong_to :category }

  it 'displays the category that the entry belongs to' do
    expect(FactoryGirl.create(:entry, category: nil).display_category).
      to eq('None')

    test_category = FactoryGirl.create(:category, name: 'Test')
    expect(FactoryGirl.create(:entry, category: test_category).
      display_category).to eq('Test')
  end
end
