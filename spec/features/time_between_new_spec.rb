require "rails_helper"

describe "/time_between/new" do
  it "has the title 'New time between' ", :points => 1 do
    visit "/time_between/new"
    # TODO ignore case custom error
    expect(page).to have_tag("html") do
      with_tag("head") do
        with_tag("title", :text => /New time between/i)
      end
    end
  end
end

describe "/time_between/new" do
  it "links to fontawesome in the head tag", :points => 1 do
    visit "/time_between/new"
    # TODO ignore case custom error
    expect(page).to have_tag("html") do
      with_tag("head") do
        with_tag("link", :with => 
          { :href => "https://use.fontawesome.com/releases/v5.0.2/css/all.css",
            :rel => "stylesheet"
          }
        )
      end
    end
  end
end

describe "/time_between/new" do
  it "has at least one link", :points => 1 do
    visit "/time_between/new"
    
    expect(page).to have_tag("a", { :minimum => 1 } )
  end
end

describe "/time_between/new" do
  it "has at least two links", :points => 1 do
    visit "/time_between/new"
    
    expect(page).to have_tag("a", { :minimum => 2 } )
  end
end

describe "/time_between/new" do
  it "has at least three links", :points => 1 do
    visit "/time_between/new"
    
    expect(page).to have_tag("a", { :minimum => 3 } )
  end
end

describe "/time_between/new" do
  it "has at least four links", :points => 1 do
    visit "/time_between/new"
    
    expect(page).to have_tag("a", { :minimum => 4 } )
  end
end

describe "/time_between/new" do
  it "has at most five links", :points => 1 do
    visit "/time_between/new"
    
    expect(page).to have_tag("a", { :count => 5 } )
  end
end

describe "/time_between/new" do
  it "has a link to '/' with the text 'Omnicalc'", :points => 1 do
    visit "/time_between/new"

    expect(page).to have_tag("a", :text => /Omnicalc/i, :with => { :href => "/" } )
  end
end

describe "/time_between/new" do
  it "has a link to '/word_count/new' with the text 'Word Count'", :points => 1 do
    visit "/time_between/new"
    
    expect(page).to have_tag("a", :text => /Word Count/i,
      :with => { :href => "/word_count/new" }
    )
  end
end

describe "/time_between/new" do
  it "has a link to '/loan_payment/new' with the text 'Loan Payment'", :points => 1 do
    visit "/time_between/new"
    
    expect(page).to have_tag("a", :text => /Loan Payment/i,
      :with => { :href => "/loan_payment/new" }
    )
  end
end

describe "/time_between/new" do
  it "has a link to '/time_between/new' with the text 'Time Between'", :points => 1 do
    visit "/time_between/new"
    
    expect(page).to have_tag("a", :text => /Time Between/i,
      :with => { :href => "/time_between/new" }
    )
  end
end

describe "/time_between/new" do
  it "has a link to '/stats/new' with the text 'Descriptive Statistics'", :points => 1 do
    visit "/time_between/new"
    
    expect(page).to have_tag("a", :text => /Descriptive Statistics/i,
      :with => { :href => "/stats/new" }
    )
  end
end

describe "/time_between/new" do
  it "has all navigation links in a nav tag", :points => 3 do
    visit "/time_between/new"

    expect(page).to have_tag("html") do
      with_tag("body") do
        with_tag("nav") do
          with_tag("a", :with => { :href => "/word_count/new" }, :text => /Word Count/i)
        
          with_tag("a", :with => { :href => "/loan_payment/new" }, :text => /Loan Payment/i)
          
          with_tag("a", :with => { :href => "/time_between/new" }, :text => /Time Between/i)
          
          with_tag("a", :with => { :href => "/stats/new" }, :text => /Descriptive Statistics/i)
        end
      end
    end
  end
end

describe "/time_between/new" do
  it "has at least one icon", :points => 1 do
    visit "/time_between/new"
    
    expect(page).to have_tag("i", { :minimum => 1 } )
  end
end

describe "/time_between/new" do
  it "has at least two icons", :points => 1 do
    visit "/time_between/new"
    
    expect(page).to have_tag("i", { :minimum => 2 } )
  end
end

describe "/time_between/new" do
  it "has at least three icons", :points => 1 do
    visit "/time_between/new"
    
    expect(page).to have_tag("i", { :minimum => 3 } )
  end
end

describe "/time_between/new" do
  it "has at least four icons", :points => 1 do
    visit "/time_between/new"
    
    expect(page).to have_tag("i", { :minimum => 4 } )
  end
end

describe "/time_between/new" do
  it "has at most seven icons", :points => 1 do
    visit "/time_between/new"
    
    expect(page).to have_tag("i", { :maximum => 7 } )
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
  it "has 1 form with at most 2 inputs.", :points => 1 do
    visit "/time_between/new"
    
    expect(page).to have_tag("form") do
      with_tag("input", :maximum => 2)
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
  it "has 1 form with a button", :points => 1 do
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
      with_tag("label", :minimum => 1, :text => /Starting Time/i)
    end
  end
end

describe "/time_between/new" do
  it "has 1 form with a label with text 'Ending Time'", :points => 1 do
    visit "/time_between/new"

    expect(page).to have_tag("form") do
      with_tag("label", :minimum => 1, :text => /Ending Time/i)
    end
  end
end


describe "/time_between/new" do
  it "has 1 form tag that submits to '/time_between/results' when you click on the 'Calculate!' button.", :points => 1 do
    visit "/time_between/new"

    within "form" do
      find("button", :text => /Calculate/i).click
    end

    # TODO error message
    expect(page.current_path).to match("/time_between/results")
  end
end

# TODO move to word count
describe "/time_between/new" do
  it "has a form with a total of 2 labels that have matching inputs.", { :points => 3} do
    visit "/time_between/new"

    all_labels = all("label")
    first_label = all_labels[0]
    second_label = all_labels[1]
    
    all_inputs = all("input")
    first_input = all_inputs.first
    second_input = all_inputs[1]

    all_input_ids = [ first_input[:id], second_input[:id] ]
    
    expect(all_input_ids).to include(first_label[:for]),
      "Expected the label's for attribute(#{first_label[:for]}) to match 1 of the ids of the inputs(#{all_input_ids}), but didn't."
    expect(all_input_ids).to include(second_label[:for]),
      "Expected the label's for attribute(#{second_label[:for]}) to match 1 of the ids of the inputs(#{all_input_ids}), but didn't."
  end
end
# CSS

describe "/time_between/new" do
  it "has a navbar with the text 'Omnicalc' that has a Bootstrap yellow background color.",  {:js => true, :points => 1} do
    visit "/time_between/new"

    expect(page).to have_tag("nav", :text => /Omnicalc/i)

    omnicalc_navbar = page.first("nav")
    
    p rgba_color_value = omnicalc_navbar.native.style("background-color")
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

describe "/time_between/new" do
  # TODO not white is maybe better
  it "has a link to Time Between that has a Bootstrap yellow background color.",  {:js => true, :points => 1} do
    visit "/time_between/new"

    expect(page).to have_tag("a", :text => /Time Between/i)

    time_between_link = page.find("a", :text => /Time Between/i)
    
    rgba_color_value = time_between_link.native.style("background-color")
    color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

    red_value = color_number_values.first.to_i
    green_value = color_number_values.second.to_i
    blue_value = color_number_values.third.to_i


    expect(red_value).to eq(255),
      "Expected the amount of Red(#{red_value}) in the border-color to be equal 255, but wasn't."
    expect(green_value).to eq(193),
      "Expected the amount of Green(#{green_value}) in the border-color to be equal 193, but wasn't."
    expect(blue_value).to eq(7),
      "Expected the amount of Blue(#{blue_value}) in the border-color to equal 7, but wasn't."
  end
end
