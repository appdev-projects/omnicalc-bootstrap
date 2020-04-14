require "rails_helper"

describe "/stats/new" do
  it "has the title 'New descriptive statistics'.", :points => 1 do
    visit "/stats/new"

    expect(page).to have_tag("html") do
      with_tag("head") do
        with_tag("title", :text => /New descriptive statistics/i)
      end
    end
  end
end

describe "/stats/new" do
  it "has text 'New descriptive statistics calculation'.", :points => 1 do
    visit "/stats/new"

    expect(page).to have_content(/New descriptive statistics calculation/i)
  end
end

describe "/stats/new" do
  it "has 1 form tag", :points => 1 do
    visit "/stats/new"

    expect(page).to have_tag("form", :count => 1 )
  end
end

describe "/stats/new" do
  it "has 1 button tag", :points => 1 do
    visit "/stats/new"

    expect(page).to have_tag("button", :count => 1 )
  end
end

describe "/stats/new" do
  it "has 1 form with at least 1 label", :points => 1 do
    visit "/stats/new"

    expect(page).to have_tag("form") do
      with_tag("label", :minimum => 1)
    end
  end
end

describe "/stats/new" do
  it "has a form with at least 1 textarea.", :points => 1 do
    visit "/stats/new"

    expect(page).to have_tag("form") do
      with_tag("textarea", :minimum => 1)
    end
  end
end

describe "/stats/new" do
  it "has 1 form with a button", :points => 1 do
    visit "/stats/new"

    expect(page).to have_tag("form") do
      with_tag("button", :count => 1)
    end
  end
end

describe "/stats/new" do
  it "has 1 form with a button with the text, 'Calculate!'", :points => 1 do
    visit "/stats/new"

    expect(page).to have_tag("form") do
      with_tag("button", :count => 1, :text => /Calculate/i)
    end
  end
end

describe "/stats/new" do
  it "has a form with a label with text 'Numbers'", :points => 1 do
    visit "/stats/new"

    expect(page).to have_tag("form") do
      with_tag("label", :minimum => 1, :text => /Numbers/i)
    end
  end
end

describe "/stats/new" do
  it "has a form with a label with text 'Numbers' and an textarea with placeholder 'Enter your numbers (separated by spaces)'.", :points => 1 do
    visit "/stats/new"

    expect(page).to have_tag("form") do
      with_tag("label", :count => 1, :text => /Numbers/i)
      with_tag("textarea", :with => { :placeholder => "Enter your numbers (separated by spaces)" })
    end
  end
end

describe "/stats/new" do
  it "has 1 form tag that submits to '/stats/results' when you click on the 'Calculate!' button.", :points => 1 do
    visit "/stats/new"

    within "form" do
      find("button", :text => /Calculate/i).click
    end

    expect(page.current_path).to match("/stats/results"),
      "Expected to got to '/stats/results' when clicking 'Calculate!' button, but went to #{page.current_path} instead."
  end
end

describe "/stats/new" do
  it "has a form with a label of 'Numbers' that has a matching textarea.", { :points => 2} do
    visit "/stats/new"

    numbers_label = find("label", :text => /Numbers/i)
    
    all_textareas = all("textarea")
    
    all_textarea_ids = all_textareas.map { |textarea| textarea[:id] }
    
    expect(all_textarea_ids).to include(numbers_label[:for]),
      "Expected the label's for attribute(#{numbers_label[:for]}) to match 1 of the ids of the textareas(#{all_textarea_ids}), but didn't."
  end
end
# CSS

describe "/stats/new" do
  it "has a navbar with the text 'Omnicalc' that has a Bootstrap info(blue) background color.",  {:js => true, :points => 1} do
    visit "/stats/new"

    omnicalc_navbar = page.first("nav")
    
    rgba_color_value = omnicalc_navbar.native.style("background-color")
    color_number_values = rgba_color_value.gsub("rgba(", "").split(",")

    red_value = color_number_values.first.to_i
    green_value = color_number_values.second.to_i
    blue_value = color_number_values.third.to_i

    expect(red_value).to eq(23),
      "Expected the amount of Red(#{red_value}) in the background-color to equal 23, but didn't."
    expect(green_value).to eq(162),
      "Expected the amount of Green(#{green_value}) in the background-color to equal 162, but didn't."
    expect(blue_value).to eq(184),
      "Expected the amount of Blue(#{blue_value}) in the background-color to equal 184, but didn't."
  end
end
