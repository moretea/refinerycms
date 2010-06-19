Given /^I (only )?have pages titled (.+)$/ do |only, titles|
  Page.delete_all if only
  titles.split(', ').each do |title|
    Page.create(:title => title)
  end
end

Given /^I have no pages$/ do
  Page.delete_all
end

Then /^I should have ([0-9]+) pages?$/ do |count|
  Page.count.should == count.to_i
end

Then /^I should have a page at "(.+)"$/ do |url|
  true.should == true # TODO
end