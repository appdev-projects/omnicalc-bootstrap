require "rails_helper"

describe "/word_count/new" do
  it "has the title 'New word count' ", :points => 1 do
    visit "/word_count/new"
    # TODO ignore case custom error
    expect(page).to have_tag("html") do
      with_tag("head") do
        with_tag("title", :text => /New word count/i)
      end
    end
  end
end

describe "/word_count/new" do
  it "links to fontawesome in the head tag", :points => 1 do
    visit "/word_count/new"
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

describe "/word_count/new" do
  it "has at least one link", :points => 1 do
    visit "/word_count/new"
    
    expect(page).to have_tag("a", { :minimum => 1 } )
  end
end

describe "/word_count/new" do
  it "has at least two links", :points => 1 do
    visit "/word_count/new"
    
    expect(page).to have_tag("a", { :minimum => 2 } )
  end
end

describe "/word_count/new" do
  it "has at least three links", :points => 1 do
    visit "/word_count/new"
    
    expect(page).to have_tag("a", { :minimum => 3 } )
  end
end

describe "/word_count/new" do
  it "has at least four links", :points => 1 do
    visit "/word_count/new"
    
    expect(page).to have_tag("a", { :minimum => 4 } )
  end
end

describe "/word_count/new" do
  it "has at most five links", :points => 1 do
    visit "/word_count/new"
    
    expect(page).to have_tag("a", { :count => 5 } )
  end
end

describe "/word_count/new" do
  it "has a link to '/' with the text 'Omnicalc'", :points => 1 do
    visit "/word_count/new"

    expect(page).to have_tag("a", :text => /Omnicalc/i, :with => { :href => "/" } )
  end
end

describe "/word_count/new" do
  it "has a link to '/word_count/new' with the text 'Word Count'", :points => 1 do
    visit "/word_count/new"
    
    expect(page).to have_tag("a", :text => /Word Count/i,
      :with => { :href => "/word_count/new" }
    )
  end
end

describe "/word_count/new" do
  it "has a link to '/loan_payment/new' with the text 'Loan Payment'", :points => 1 do
    visit "/word_count/new"
    
    expect(page).to have_tag("a", :text => /Loan Payment/i,
      :with => { :href => "/loan_payment/new" }
    )
  end
end

describe "/word_count/new" do
  it "has a link to '/time_between/new' with the text 'Time Between'", :points => 1 do
    visit "/word_count/new"
    
    expect(page).to have_tag("a", :text => /Time Between/i,
      :with => { :href => "/time_between/new" }
    )
  end
end

describe "/word_count/new" do
  it "has a link to '/stats/new' with the text 'Descriptive Statistics'", :points => 1 do
    visit "/word_count/new"
    
    expect(page).to have_tag("a", :text => /Descriptive Statistics/i,
      :with => { :href => "/stats/new" }
    )
  end
end

describe "/word_count/new" do
  it "has all navigation links in a nav tag", :points => 3 do
    visit "/word_count/new"

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

describe "/word_count/new" do
  it "has at least one icon", :points => 1 do
    visit "/word_count/new"
    
    expect(page).to have_tag("i", { :minimum => 1 } )
  end
end

describe "/word_count/new" do
  it "has at least two icons", :points => 1 do
    visit "/word_count/new"
    
    expect(page).to have_tag("i", { :minimum => 2 } )
  end
end

describe "/word_count/new" do
  it "has at least three icons", :points => 1 do
    visit "/word_count/new"
    
    expect(page).to have_tag("i", { :minimum => 3 } )
  end
end

describe "/word_count/new" do
  it "has at least four icons", :points => 1 do
    visit "/word_count/new"
    
    expect(page).to have_tag("i", { :minimum => 4 } )
  end
end

describe "/word_count/new" do
  it "has at most five icons", :points => 1 do
    visit "/word_count/new"
    
    expect(page).to have_tag("i", { :count => 5 } )
  end
end

describe "/word_count/new" do
  it "has text 'New word count calculation'.", :points => 1 do
    visit "/word_count/new"

    expect(page).to have_content(/New word count calculation/i),
      "Expected page to have the text, 'New word count calculation', but didn't find it."
  end
end

describe "/word_count/new" do
  it "has 1 form tag", :points => 1 do
    visit "/word_count/new"

    expect(page).to have_tag("form", :count => 1 )
  end
end

describe "/word_count/new" do
  it "has 1 button tag", :points => 1 do
    visit "/word_count/new"

    expect(page).to have_tag("button", :count => 1 )
  end
end

describe "/word_count/new" do
  it "has 1 form with at least 1 label", :points => 1 do
    visit "/word_count/new"

    expect(page).to have_tag("form") do
      with_tag("label", :minimum => 1)
    end
  end
end

describe "/word_count/new" do
  it "has 1 form with a textarea", :points => 1 do
    visit "/word_count/new"

    expect(page).to have_tag("form") do
      with_tag("textarea", :count => 1)
    end
  end
end

describe "/word_count/new" do
  it "has 1 form with a button", :points => 1 do
    visit "/word_count/new"

    expect(page).to have_tag("form") do
      with_tag("button", :count => 1)
    end
  end
end

describe "/word_count/new" do
  it "has 1 form with a button with the text, 'Calculate!'", :points => 1 do
    visit "/word_count/new"

    expect(page).to have_tag("form") do
      with_tag("button", :count => 1, :text => /Calculate/i)
    end
  end
end

describe "/word_count/new" do
  it "has 1 form with a textarea that has placeholder 'Enter your text'", :points => 1 do
    visit "/word_count/new"

    expect(page).to have_tag("form") do
      with_tag("textarea", :with => { :placeholder => "Enter your text" })
    end
  end
end

describe "/word_count/new" do
  it "has 1 form with a label with text 'Text'", :points => 1 do
    visit "/word_count/new"

    expect(page).to have_tag("form") do
      with_tag("label", :minimum => 1, :text => /Text/i)
    end
  end
end

describe "/word_count/new" do
  it "has 1 form with a label with text 'Text' and a textarea with placeholder 'Enter your text'", :points => 1 do
    visit "/word_count/new"

    expect(page).to have_tag("form") do
      with_tag("label", :count => 1, :text => /Text/i)
      with_tag("textarea", :with => { :placeholder => "Enter your text" })
    end
  end
end

describe "/word_count/new" do
  it "has 1 form with a label with text 'Text' and a textarea with placeholder 'Enter your text'.", :points => 1 do
    visit "/word_count/new"

    expect(page).to have_tag("form") do
      with_tag("label", :count => 1, :text => /Text/i)
      with_tag("textarea", :with => { :placeholder => "Enter your text" })
    end
  end
end

describe "/word_count/new" do
  it "has 1 form tag that submits to '/word_count/results' when you click on the 'Calculate!' button.", :points => 1 do
    visit "/word_count/new"

    within "form" do
      find("button", :text => /Calculate/i).click
    end

    expect(page.current_path).to match("/word_count/results"),
      "Expected form to submit to the route '/word_count/results' when 'Calculate' is clicked, but was route was #{page.current_path} instead."
  end
end

describe "/word_count/new" do
  it "has a form with a total of 2 labels that have a matching input and textarea.", { :js => true, :points => 3} do
    visit "/word_count/new"

    all_labels = all("label")
    first_label = all_labels[0]
    second_label = all_labels[1]
    
    first_input = find("input")
    first_textarea = find("textarea")

    all_input_ids = [ first_input[:id], first_textarea[:id] ]
    
    expect(all_input_ids).to include(first_label[:for]),
      "Expected the label's for attribute(#{first_label[:for]}) to match 1 of the ids of the inputs(#{all_input_ids}), but didn't."
    expect(all_input_ids).to include(second_label[:for]),
      "Expected the label's for attribute(#{second_label[:for]}) to match 1 of the ids of the inputs(#{all_input_ids}), but didn't."
  end
end
# CSS

# TODO error messages
describe "/word_count/new" do
  it "has a link with text 'Word Count' that has a blue border color.",  {:js => true, :points => 1} do
    visit "/word_count/new"

    expect(page).to have_tag("a", :text => /Word Count/i)

    word_count_link = page.find("a", :text => /Word Count/i)
    
    rgba_color_value = word_count_link.native.style("border-color")
    color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

    red_value = color_number_values.first.to_i
    green_value = color_number_values.second.to_i
    blue_value = color_number_values.third.to_i

    expect(red_value).to be < blue_value
    expect(green_value).to be < blue_value
  end
end

#  TODO fix
describe "/word_count/new" do
  it "has a link with text 'Word Count' that has a blue background color.",  {:js => true, :points => 1} do
    visit "/word_count/new"

    expect(page).to have_tag("a", :text => /Word Count/i)

    word_count_link = page.find("a", :text => /Word Count/i)
    
    p rgba_color_value = word_count_link.native.style("background-color")
    p color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

    red_value = color_number_values.first.to_i
    green_value = color_number_values.second.to_i
    blue_value = color_number_values.third.to_i
    # TODO should be "rgba(0, 123, 255, 1)"
    
    expect(red_value).to eq(0),
      "Expected the amount of Red(#{red_value}) in the background-color to be equal 0, but wasn't."
    expect(green_value).to eq(123),
      "Expected the amount of Green(#{green_value}) in the background-color to be equal 123, but wasn't."
    expect(blue_value).to eq(255),
      "Expected the amount of Blue(#{blue_value}) in the background-color to equal 255, but wasn't."
  end
end

describe "/word_count/new" do
  it "has a link to Word Count that has a darker blue background color when a mouse hovers over it.",  {:js => true, :points => 1} do
    visit "/word_count/new"

    expect(page).to have_tag("a", :text => /Word Count/i),
      "Expected to find an 'a' tag on the page with text that matches the pattern 'Word Count' but didn't find one."

    word_count_link = page.find("a", :text => /Word Count/i)
    
    p rgba_color_value = word_count_link.hover.native.style("background-color")
    p color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

    red_value = color_number_values.first.to_i
    green_value = color_number_values.second.to_i
    blue_value = color_number_values.third.to_i

    # TODO add these custom messages to the other CSS tests
    # rgb(0, 105, 217);
    expect(red_value).to eq(0),
      "Expected the amount of Red(#{red_value}) in the background-color to be equal 0, but wasn't."
    expect(green_value).to eq(105),
      "Expected the amount of Green(#{green_value}) in the background-color to be equal 105, but wasn't."
    expect(blue_value).to eq(217),
      "Expected the amount of Blue(#{blue_value}) in the background-color to equal 217, but wasn't."
  end
end

# TODO white text
describe "/word_count/new" do
  it "has a link to Word Count that has a white text color.",  {:js => true, :points => 1} do
    visit "/word_count/new"

    expect(page).to have_tag("a", :text => /Word Count/i)

    word_count_link = page.find("a", :text => /Word Count/i)
    
    p rgba_color_value = word_count_link.native.style("color")
    p color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

    red_value = color_number_values.first.to_i
    green_value = color_number_values.second.to_i
    blue_value = color_number_values.third.to_i

    expect(red_value).to eq(255),
      "Expected the amount of Red(#{red_value}) in the background-color to be equal 255, but wasn't."
    expect(green_value).to eq(255),
      "Expected the amount of Green(#{green_value}) in the background-color to be equal 255, but wasn't."
    expect(blue_value).to eq(255),
      "Expected the amount of Blue(#{blue_value}) in the background-color to equal 255, but wasn't."
  end
end

# specifics page styles

describe "/word_count/new" do
  it "has a button with the text 'Calculate!', that has a blue color.", { :js => true, :points => 1} do
    visit "/word_count/new"

    calculate_button = page.find("button", :text => /Calculate/i)
    
    p rgba_color_value = calculate_button.native.style("color")
    p color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

    red_value = color_number_values.first.to_i
    green_value = color_number_values.second.to_i
    blue_value = color_number_values.third.to_i


    expect(red_value).to eq(0),
      "Expected the amount of Red(#{red_value}) in the color to be equal 0, but wasn't."
    expect(green_value).to eq(123),
      "Expected the amount of Green(#{green_value}) in the color to be equal 123, but wasn't."
    expect(blue_value).to eq(255),
      "Expected the amount of Blue(#{blue_value}) in the color to equal 255, but wasn't."
  end
end

# TODO bg
describe "/word_count/new" do
  it "has a button with the text 'Calculate!', that has a blue background color.", { :js => true, :points => 1} do
    visit "/word_count/new"

    calculate_button = page.find("button", :text => /Calculate/i)
    
    p rgba_color_value = calculate_button.native.style("border-color")
    p color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

    red_value = color_number_values.first.to_i
    green_value = color_number_values.second.to_i
    blue_value = color_number_values.third.to_i


    expect(red_value).to eq(0),
      "Expected the amount of Red(#{red_value}) in the border-color to be equal 0, but wasn't."
    expect(green_value).to eq(123),
      "Expected the amount of Green(#{green_value}) in the border-color to be equal 123, but wasn't."
    expect(blue_value).to eq(255),
      "Expected the amount of Blue(#{blue_value}) in the border-color to equal 255, but wasn't."
  end
end

describe "/word_count/new" do
  it "has a button with the text 'Calculate!', that has a blue background color when hovered.", { :js => true, :points => 1} do
    visit "/word_count/new"

    calculate_button = page.find("button", :text => /Calculate/i)
    
    p rgba_color_value = calculate_button.hover.native.style("background-color")
    p color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

    red_value = color_number_values.first.to_i
    green_value = color_number_values.second.to_i
    blue_value = color_number_values.third.to_i


    expect(red_value).to eq(0),
      "Expected the amount of Red(#{red_value}) in the background-color to be equal 0, but wasn't."
    expect(green_value).to eq(123),
      "Expected the amount of Green(#{green_value}) in the background-color to be equal 123, but wasn't."
    expect(blue_value).to eq(255),
      "Expected the amount of Blue(#{blue_value}) in the background-color to equal 255, but wasn't."
  end
end

describe "/word_count/new" do
  it "has a button with the text 'Calculate!', that is a white color when hovered.", { :js => true, :points => 1} do
    visit "/word_count/new"

    calculate_button = page.find("button", :text => /Calculate/i)
    
    p rgba_color_value = calculate_button.hover.native.style("color")
    p color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

    red_value = color_number_values.first.to_i
    green_value = color_number_values.second.to_i
    blue_value = color_number_values.third.to_i


    expect(red_value).to eq(255),
      "Expected the amount of Red(#{red_value}) in the color to be equal 255, but wasn't."
    expect(green_value).to eq(255),
      "Expected the amount of Green(#{green_value}) in the color to be equal 255, but wasn't."
    expect(blue_value).to eq(255),
      "Expected the amount of Blue(#{blue_value}) in the color to equal 255, but wasn't."
  end
end
