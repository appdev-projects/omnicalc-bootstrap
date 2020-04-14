require "rails_helper"

describe "/word_count/new" do
  it "has the title 'New word count' ", :points => 1 do
    visit "/word_count/new"
    
    expect(page).to have_tag("html") do
      with_tag("head") do
        with_tag("title", :text => /New word count/i)
      end
    end
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
  it "has 1 form with at least 1 label inside.", :points => 1 do
    visit "/word_count/new"

    expect(page).to have_tag("form") do
      with_tag("label", :minimum => 1)
    end
  end
end

describe "/word_count/new" do
  it "has 1 form with a textarea inside.", :points => 1 do
    visit "/word_count/new"

    expect(page).to have_tag("form") do
      with_tag("textarea", :count => 1)
    end
  end
end

describe "/word_count/new" do
  it "has 1 form with a button inside.", :points => 1 do
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
  it "has 1 form with a label with text 'Text'.", :points => 1 do
    visit "/word_count/new"

    expect(page).to have_tag("form") do
      with_tag("label", :minimum => 1, :text => /Text/i)
    end
  end
end

describe "/word_count/new" do
  it "has 1 form with a label with text 'Special Word (optional)'.", :points => 1 do
    visit "/word_count/new"

    expect(page).to have_tag("form") do
      with_tag("label", :minimum => 1, :text => /Special Word/i)
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
  it "has a form where the 'Text' label has one matching input tag.", { :js => true, :points => 2} do
    visit "/word_count/new"

    first_label = find("label", :text => /Text/i)    
    all_inputs = all("input")

    all_input_ids = all_inputs.map { |input| input[:id] }
    
    expect(all_input_ids).to include(first_label[:for]),
      "Expected the label's for attribute(#{first_label[:for]}) to match 1 of the ids of the inputs(#{all_input_ids}), but didn't."
  end
end

describe "/word_count/new" do
  it "has a form where the 'Special Word (optional)' label matches a textarea.", { :js => true, :points => 2} do
    visit "/word_count/new"

    second_label = find("label", :text => /Special Word/i)
    
    all_textareas = all("textarea")

    all_textarea_ids = all_textareas.map { |textarea| textarea[:id] }
   
    expect(all_textarea_ids).to include(second_label[:for]),
      "Expected the label's for attribute(#{second_label[:for]}) to match 1 of the ids of the textareas(#{all_textarea_ids}), but didn't."
  end
end
# CSS

describe "/word_count/new" do
  it "has a link with text 'Word Count' that has a blue background color.",  {:js => true, :points => 1} do
    visit "/word_count/new"

    word_count_link = page.find("a", :text => /Word Count/i)
    
    rgba_color_value = word_count_link.native.style("background-color")
    color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

    red_value = color_number_values.first.to_i
    green_value = color_number_values.second.to_i
    blue_value = color_number_values.third.to_i
    
    expect(red_value).to be < blue_value,
      "Expected the amount of Red(#{red_value}) in the background-color to be < amount of Blue(#{blue_value}), but wasn't."
    expect(green_value).to be < blue_value,
      "Expected the amount of Green(#{green_value}) in the background-color to be < amount of Blue(#{blue_value}), but wasn't."
  end
end

describe "/word_count/new" do
  it "has a link to Word Count that has a white text color.",  {:js => true, :points => 1} do
    visit "/word_count/new"

    word_count_link = page.find("a", :text => /Word Count/i)
    
    rgba_color_value = word_count_link.native.style("color")
    color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

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
    
    rgba_color_value = calculate_button.native.style("color")
    color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

    red_value = color_number_values.first.to_i
    green_value = color_number_values.second.to_i
    blue_value = color_number_values.third.to_i

    
    expect(red_value).to be < blue_value,
      "Expected the amount of Red(#{red_value}) in the color to be < amount of Blue(#{blue_value}), but wasn't."
    expect(green_value).to be < blue_value,
      "Expected the amount of Green(#{green_value}) in the color to be < amount of Blue(#{blue_value}), but wasn't."
  end
end

describe "/word_count/new" do
  it "has a button with the text 'Calculate!', that has a blue background color.", { :js => true, :points => 1} do
    visit "/word_count/new"

    calculate_button = page.find("button", :text => /Calculate/i)
    
    rgba_color_value = calculate_button.native.style("border-color")
    color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

    red_value = color_number_values.first.to_i
    green_value = color_number_values.second.to_i
    blue_value = color_number_values.third.to_i

    expect(red_value).to be < blue_value,
      "Expected the amount of Red(#{red_value}) in the background-color to be < amount of Blue(#{blue_value}), but wasn't."
    expect(green_value).to be < blue_value,
      "Expected the amount of Green(#{green_value}) in the background-color to be < amount of Blue(#{blue_value}), but wasn't."
  end
end

describe "/word_count/new" do
  it "has a button with the text 'Calculate!', that is a white color when hovered.", { :js => true, :points => 1} do
    visit "/word_count/new"

    calculate_button = page.find("button", :text => /Calculate/i)
    
    rgba_color_value = calculate_button.hover.native.style("color")
    color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

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
