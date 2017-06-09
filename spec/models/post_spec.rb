require 'rails_helper'

RSpec.describe Post, type: :model do
  
  it 'has a valid entry' do 
    expect(FactoryGirl.create(:post)).to be_valid
  end
  
  it 'is invalid without title' do
    expect(FactoryGirl.build(:post, title: nil)).to be_invalid
  end

  it 'is invalid without body' do
    expect(FactoryGirl.build(:post, body: nil)).to be_invalid
  end

  it 'is retrieve title' do
    article = FactoryGirl.build(:post, title: 'hello', body: 'cool')
    expect(article.title).to eq('hello')
  end

  it 'retrived title is a string type' do
    article = FactoryGirl.create(:post)
    expect(article.title).to be_kind_of String 
  end

  it 'retrived body is a string type' do
    article = FactoryGirl.create(:post)
    expect(article.body).to be_kind_of String 
  end

  
end
