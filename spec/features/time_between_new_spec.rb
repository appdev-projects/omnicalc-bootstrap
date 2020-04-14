require "rails_helper"

describe "/time_between/new" do
  it "has the title 'New time between' ", :points => 1 do
    visit "/time_between/new"

    expect(page).to have_tag("html") do
      with_tag("head") do
        with_tag("title", :text => /New time between/i)
      end
    end
  end
end

describe "/time_between/new" do
  it "has seven icons", :points => 1 do
    visit "/time_between/new"
    
    expect(page).to have_tag("i", { :count => 7 } )
  end
end

describe "/time_between/new" do
  it "has text 'New time between calculation'.", :points => 1 do
    visit "/time_between/new"

    expect(page).to have_content(/New time between calculation/i)
  end
end

describe "/time_between/new" do
  it "has 1 form tag", :points => 1 do
    visit "/time_between/new"

    expect(page).to have_tag("form", :count => 1 )
  end
end

describe "/time_between/new" do
  it "has 1 button tag", :points => 1 do
    visit "/time_between/new"

    expect(page).to have_tag("button", :count => 1 )
  end
end

describe "/time_between/new" do
  it "has 1 form with at least 1 label.", :points => 1 do
    visit "/time_between/new"

    expect(page).to have_tag("form") do
      with_tag("label", :minimum => 1)
    end
  end
end

describe "/time_between/new" do
  it "has 1 form with at most 2 labels.", :points => 1 do
    visit "/time_between/new"

    expect(page).to have_tag("form") do
      with_tag("label", :maximum => 2)
    end
  end
end

describe "/time_between/new" do
  it "has 1 form with at least 1 input", :points => 1 do
    visit "/time_between/new"

    expect(page).to have_tag("form") do
      with_tag("input", :minimum => 1)
    end
  end
end

describe "/time_between/new" do
  it "has 1 form with 2 inputs.", :points => 1 do
    visit "/time_between/new"
    
    expect(page).to have_tag("form") do
      with_tag("input", :count => 2)
    end
  end
end

describe "/time_between/new" do
  it "has 1 form with at least 1 input with the 'type' equal to 'datetime-local'", :points => 1 do
    visit "/time_between/new"

    expect(page).to have_tag("form") do
      with_tag("input", :minimum => 1, :with => { :type => "datetime-local" } )
    end
  end
end

describe "/time_between/new" do
  it "has one form with one button", :points => 1 do
    visit "/time_between/new"

    expect(page).to have_tag("form") do
      with_tag("button", :count => 1)
    end
  end
end

describe "/time_between/new" do
  it "has 1 form with a button with the text, 'Calculate!'", :points => 1 do
    visit "/time_between/new"

    expect(page).to have_tag("form") do
      with_tag("button", :count => 1, :text => /Calculate/i)
    end
  end
end

describe "/time_between/new" do
  it "has 1 form with a label with text 'Starting Time'", :points => 1 do
    visit "/time_between/new"

    expect(page).to have_tag("form") do
      with_tag("label", :count => 1, :text => /Starting Time/i)
    end
  end
end

describe "/time_between/new" do
  it "has 1 form with a label with text 'Ending Time'", :points => 1 do
    visit "/time_between/new"

    expect(page).to have_tag("form") do
      with_tag("label", :count => 1, :text => /Ending Time/i)
    end
  end
end


describe "/time_between/new" do
  it "has 1 form tag that submits to '/time_between/results' when you click on the 'Calculate!' button.", :points => 1 do
    visit "/time_between/new"

    within "form" do
      find("button", :text => /Calculate/i).click
    end

    expect(page.current_path).to match("/time_between/results"),
      "Expected form to submit to '/time_between/results' but went to '#{page.current_path}' instead.'"
  end
end

describe "/time_between/new" do
  it "has 'Starting Time' label with a matching input.", { :points => 2} do
    visit "/time_between/new"

    first_label = find("label", :text => /Starting Time/i)
    all_inputs = all("input")

    all_input_ids = all_inputs.map { |input| input[:id] }

    expect(all_input_ids).to include(first_label[:for]),
      "Expected the label's for attribute(#{first_label[:for]}) to match 1 of the ids of the inputs(#{all_input_ids}), but didn't."
  end
end

describe "/time_between/new" do
  it "has 'Ending Time' label with a matching input.", { :points => 2} do
    visit "/time_between/new"

    first_label = find("label", :text => /Ending Time/i)
    all_inputs = all("input")

    all_input_ids = all_inputs.map { |input| input[:id] }

    expect(all_input_ids).to include(first_label[:for]),
      "Expected the label's for attribute(#{first_label[:for]}) to match 1 of the ids of the inputs(#{all_input_ids}), but didn't."
  end
end

# CSS

describe "/time_between/new" do
  it "has a navbar with the text 'Omnicalc' that has a Bootstrap warning(yellow) background color.",  {:js => true, :points => 1} do
    visit "/time_between/new"

    omnicalc_navbar = page.first("nav")
    
    rgba_color_value = omnicalc_navbar.native.style("background-color")
    color_number_values = rgba_color_value.gsub("rgba(", "").split(",")

    red_value = color_number_values.first.to_i
    green_value = color_number_values.second.to_i
    blue_value = color_number_values.third.to_i

    expect(red_value).to eq(255),
      "Expected the amount of Red(#{red_value}) in the background-color to be equal 255, but wasn't."
    expect(green_value).to eq(193),
      "Expected the amount of Green(#{green_value}) in the background-color to be equal 193, but wasn't."
    expect(blue_value).to eq(7),
      "Expected the amount of Blue(#{blue_value}) in the background-color to equal 7, but wasn't."
  end
end
