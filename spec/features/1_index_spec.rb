require "rails_helper"

describe "The home page" do
  it "has the title 'Omnicalc Home'.", :points => 1 do
    visit "/"

    expect(page).to have_tag("html") {
      with_tag("head") do
        with_tag("title", :text => /Omnicalc Home/i)
      end
    }
  end
end

describe "The home page" do
  it "links to fontawesome with a 'link' tag inside the head tag.", :points => 1 do
    visit "/"
    
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

describe "The home page" do
  it "has at least one link", :points => 1 do
    visit "/"
    
    expect(page).to have_tag("a", { :minimum => 1 } )
  end
end

describe "The home page" do
  it "has at least two links", :points => 1 do
    visit "/"
    
    expect(page).to have_tag("a", { :minimum => 2 } )
  end
end

describe "The home page" do
  it "has at least three links", :points => 1 do
    visit "/"
    
    expect(page).to have_tag("a", { :minimum => 3 } )
  end
end

describe "The home page" do
  it "has at least four links.", :points => 1 do
    visit "/"
    
    expect(page).to have_tag("a", { :minimum => 4 } )
  end
end

describe "The home page" do
  it "has at most five links.", :points => 1 do
    visit "/"
    
    expect(page).to have_tag("a", { :count => 5 } )
  end
end

describe "The home page" do
  it "has a link to '/' with the text 'Omnicalc'.", :points => 1 do
    visit "/"

    expect(page).to have_tag("a", :text => /Omnicalc/i, :with => { :href => "/" } )
  end
end

describe "The home page" do
  it "has a link to '/word_count/new' with the text 'Word Count'.", :points => 1 do
    visit "/"
    
    expect(page).to have_tag("a", :text => /Word Count/i,
      :with => { :href => "/word_count/new" }
    )
  end
end

describe "The home page" do
  it "has a link to '/loan_payment/new' with the text 'Loan Payment'.", :points => 1 do
    visit "/"
    
    expect(page).to have_tag("a", :text => /Loan Payment/i,
      :with => { :href => "/loan_payment/new" }
    )
  end
end

describe "The home page" do
  it "has a link to '/time_between/new' with the text 'Time Between'.", :points => 1 do
    visit "/"
    
    expect(page).to have_tag("a", :text => /Time Between/i,
      :with => { :href => "/time_between/new" }
    )
  end
end

describe "The home page" do
  it "has a link to '/stats/new' with the text 'Descriptive Statistics'.", :points => 1 do
    visit "/"
    
    expect(page).to have_tag("a", :text => /Descriptive Statistics/i,
      :with => { :href => "/stats/new" }
    )
  end
end

describe "The home page" do
  it "has a navbar with the text 'Omnicalc' in a nav tag.", :points => 1 do
    visit "/"

    expect(page).to have_tag("nav", :text => /Omnicalc/i)
  end
end

describe "The home page" do
  it "has a maximum of 2 nav elements.", :points => 1 do
    visit "/"

    expect(page).to have_tag("nav", :max => 2)
  end
end

describe "The home page" do
  it "has all navigation links in one single nav tag.", :points => 2 do
    visit "/"

    expect(page).to have_tag("nav") {
      with_tag("a", :with => { :href => "/word_count/new" }, :text => /Word Count/i)
    
      with_tag("a", :with => { :href => "/loan_payment/new" }, :text => /Loan Payment/i)
      
      with_tag("a", :with => { :href => "/time_between/new" }, :text => /Time Between/i)
      
      with_tag("a", :with => { :href => "/stats/new" }, :text => /Descriptive Statistics/i)
    }
  end
end

describe "The home page" do
  it "has at least one icon", :points => 1 do
    visit "/"
    
    expect(page).to have_tag("i", { :minimum => 1 } )
  end
end

describe "The home page" do
  it "has at least two icons", :points => 1 do
    visit "/"
    
    expect(page).to have_tag("i", { :minimum => 2 } )
  end
end

describe "The home page" do
  it "has at least three icons", :points => 1 do
    visit "/"
    
    expect(page).to have_tag("i", { :minimum => 3 } )
  end
end

describe "The home page" do
  it "has at least four icons", :points => 1 do
    visit "/"
    
    expect(page).to have_tag("i", { :minimum => 4 } )
  end
end

describe "The home page" do
  it "has at most five icons", :points => 1 do
    visit "/"
    
    expect(page).to have_tag("i", { :count => 5 } )
  end
end

describe "The home page" do
  it "has a level 1 heading with the text 'Welcome!'", :points => 1 do
    visit "/"

    expect(page).to have_tag("h1", :text => /Welcome/i)
  end
end

describe "The home page" do
  it "has a paragraph with the text 'Please select a calculator to begin.'", :points => 1 do
    visit "/"
    
    expect(page).to have_tag("p", :text => /Please select a calculator to begin/i)
  end
end

describe "The home page" do
  it "has the level 1 heading with text 'Welcome!' and paragraph with the text 'Please select a calculator to begin inside a div.'", :points => 1 do
    visit "/"
    
    expect(page).to have_tag("html") do
      with_tag("body") do
        with_tag("div") do
          with_tag("h1", :text => /Welcome/i)
          with_tag("p", :text => /Please select a calculator to begin/i)
        end
      end
    end
  end
end

describe "The home page" do
  it "has a navbar with the text 'Omnicalc' that has a Bootstrap blue background color.",  {:js => true, :points => 1} do
    visit "/"

    expect(page).to have_tag("nav", :text => /Omnicalc/i)

    omnicalc_navbar = page.first("nav")
    
    rgba_color_value = omnicalc_navbar.native.style("background-color")
    color_number_values = rgba_color_value.gsub("rgba(", "").split(",")

    red_value = color_number_values.first.to_i
    green_value = color_number_values.second.to_i
    blue_value = color_number_values.third.to_i

    expect(red_value).to be < blue_value,
      "Expected the amount of Red(#{red_value}) in the background-color to be < amount of Blue(#{blue_value}), but wasn't."
    expect(green_value).to be < blue_value,
      "Expected the amount of Green(#{green_value}) in the background-color to be < amount of Blue(#{blue_value}), but wasn't."
  end
end

describe "The home page" do
  it "has a link to Word Count that has a blue border color.",  {:js => true, :points => 1} do
    visit "/"

    expect(page).to have_tag("a", :text => /Word Count/i)

    word_count_link = page.find("a", :text => /Word Count/i)
    
    rgba_color_value = word_count_link.native.style("border-color")
    color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

    red_value = color_number_values.first.to_i
    green_value = color_number_values.second.to_i
    blue_value = color_number_values.third.to_i

    expect(red_value).to be < blue_value,
      "Expected the amount of Red(#{red_value}) in the border-color to be < amount of Blue(#{blue_value}), but wasn't."
    expect(green_value).to be < blue_value,
      "Expected the amount of Green(#{green_value}) in the border-color to be < amount of Blue(#{blue_value}), but wasn't."
  end
end

describe "The home page" do
  it "has a link to Word Count that has a NON blue background color.",  {:js => true, :points => 1} do
    visit "/"

    word_count_link = page.find("a", :text => /Word Count/i)
    
    rgba_color_value = word_count_link.native.style("background-color")
    color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

    red_value = color_number_values.first.to_i
    green_value = color_number_values.second.to_i
    blue_value = color_number_values.third.to_i

    expect(red_value).to be >= blue_value,
      "Expected the amount of Red(#{red_value}) in the background-color to be >= amount of Blue(#{blue_value}), but wasn't."
    expect(green_value).to be >= blue_value,
      "Expected the amount of Green(#{green_value}) in the background-color to be >= amount of Blue(#{blue_value}), but wasn't."
  end
end

describe "The home page" do
  it "has a link to Word Count that has a blue background color when a mouse hovers over it.",  {:js => true, :points => 1} do
    visit "/"

    word_count_link = page.find("a", :text => /Word Count/i)
    
    rgba_color_value = word_count_link.hover.native.style("background-color")
    color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

    red_value = color_number_values.first.to_i
    green_value = color_number_values.second.to_i
    blue_value = color_number_values.third.to_i

    expect(red_value).to be < blue_value,
      "Expected the amount of Red(#{red_value}) in the background color to be less than the amount of Blue(#{blue_value}), but wasn't."
    expect(green_value).to be < blue_value,
      "Expected the amount of Green#{green_value} in the background color to be less than the amount of Blue(#{blue_value}), but wasn't."
  end
end

describe "The home page" do
  it "has a link to Word Count that has a blue text color.",  {:js => true, :points => 1} do
    visit "/"

    word_count_link = page.find("a", :text => /Word Count/i)
    
    rgba_color_value = word_count_link.native.style("color")
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

describe "The home page" do
  it "has a link to Word Count that is a block level element.",  {:js => true, :points => 1} do
    visit "/"

    word_count_link = page.find("a", :text => /Word Count/i)
    
    display_styles = word_count_link.native.style("display")

    expect(display_styles).to match(/block/),
      "Expected link to be styled as a block level element, with 'display' set to 'block', but was #{display_styles} instead."
  end
end

describe "The home page" do
  it "has a link to Word Count that doesn't have any text decoration.",  {:js => true, :points => 1} do
    visit "/"

    word_count_link = page.find("a", :text => /Word Count/i)
    expect(word_count_link).to match_style("text-decoration" => /none/)
  end
end

describe "The home page" do
  it "has a link to Loan Payment that has a green border color.",  {:js => true, :points => 1} do
    visit "/"

    loan_payment_link = page.find("a", :text => /Loan Payment/i)
    
    rgba_color_value = loan_payment_link.native.style("border-color")
    color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

    # expect(loan_payment_link).to match_style("border-color" => "rgb(40, 167, 69)")

    red_value = color_number_values.first.to_i
    green_value = color_number_values.second.to_i
    blue_value = color_number_values.third.to_i

    expect(red_value).to be < green_value,
      "Expected the amount of Red(#{red_value}) in the border-color to be less than the amount of Green(#{green_value}), but wasn't."
    expect(blue_value).to be < green_value,
      "Expected the amount of Blue(#{green_value}) in the border-color to be less than the amount of Green(#{green_value}), but wasn't."
  end
end

describe "The home page" do
  it "has a link to Loan Payment that has a non green background color.",  {:js => true, :points => 1} do
    visit "/"

    loan_payment_link = page.find("a", :text => /Loan Payment/i)
    
    rgba_color_value = loan_payment_link.native.style("background-color")
    color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

    # expect(loan_payment_link).to match_style("background-color" => "rgb(0, 0, 0)")
    red_value = color_number_values.first.to_i
    green_value = color_number_values.second.to_i
    blue_value = color_number_values.third.to_i

    expect(red_value).to be >= green_value,
      "Expected the amount of Red(#{red_value}) in the background-color to be >= the amount of Green(#{green_value}), but wasn't."
    expect(blue_value).to be >= green_value,
      "Expected the amount of Blue(#{green_value}) in the background-color to be >= the amount of Green(#{green_value}), but wasn't."

  end
end

describe "The home page" do
  it "has a link to Loan Payment that has a green background color when a mouse hovers over it.",  {:js => true, :points => 1} do
    visit "/"

    word_count_link = page.find("a", :text => /Loan Payment/i)
    
    rgba_color_value = word_count_link.hover.native.style("background-color")
    color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

    red_value = color_number_values.first.to_i
    green_value = color_number_values.second.to_i
    blue_value = color_number_values.third.to_i

    expect(red_value).to be < green_value,
      "Expected the amount of Red(#{red_value}) in the background color to be less than the amount of Green(#{green_value}), but wasn't."
    expect(blue_value).to be < green_value,
      "Expected the amount of Blue(#{green_value}) in the background color to be less than the amount of Green(#{green_value}), but wasn't."
  end
end

describe "The home page" do
  it "has a link to Loan Payment that has a green text color.",  {:js => true, :points => 1} do
    visit "/"

    loan_payment_link = page.find("a", :text => /Loan Payment/i)
    
    rgba_color_value = loan_payment_link.native.style("color")
    color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

    red_value = color_number_values.first.to_i
    green_value = color_number_values.second.to_i
    blue_value = color_number_values.third.to_i
    
    expect(red_value).to be < green_value,
      "Expected the amount of Red(#{red_value}) in the color to be less than the amount of Green(#{green_value}), but wasn't."
    expect(blue_value).to be < green_value,
      "Expected the amount of Blue(#{green_value}) in the color to be less than the amount of Green(#{green_value}), but wasn't."
  end
end

describe "The home page" do
  it "has a link to Loan Payment that is a block level element.",  {:js => true, :points => 1} do
    visit "/"

    loan_payment_link = page.find("a", :text => /Loan Payment/i)
    
    display_styles = loan_payment_link.native.style("display")

    expect(display_styles).to match(/block/),
      "Expected link to be styled as a block level element, with 'display' set to 'block', but was #{display_styles} instead."
  end
end

describe "The home page" do
  it "has a link to Loan Payment that doesn't have any text decoration.",  {:js => true, :points => 1} do
    visit "/"

    loan_payment_link = page.find("a", :text => /Loan Payment/i)
    
    text_decoration = loan_payment_link.native.style("text-decoration")
    message = "Expected the style of #{loan_payment_link.text} to have the CSS styles 'none', but got '#{text_decoration}' instead."
    
    expect(loan_payment_link).to match_style("text-decoration" => /none/)
  end
end

describe "The home page" do
  it "has a link to Time Between that has a Bootstrap warning(yellow) border color.",  {:js => true, :points => 1} do
    visit "/"

    time_between_link = page.find("a", :text => /Time Between/i)
    
    rgba_color_value = time_between_link.native.style("border-color")
    color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

    # expect(time_between_link).to match_style("border-color" => "rgb(255, 193, 7)")

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

describe "The home page" do
  it "has a link to Time Between that has a non Bootstrap yellow(warning) background color.",  {:js => true, :points => 1} do
    visit "/"

    expect(page).to have_tag("a", :text => /Time Between/i)

    time_between_link = page.find("a", :text => /Time Between/i)
    
    rgba_color_value = time_between_link.native.style("background-color")
    color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

    red_value = color_number_values.first.to_i
    green_value = color_number_values.second.to_i
    blue_value = color_number_values.third.to_i

    expect(red_value).to_not eq(255),
      "Expected the amount of Red(#{red_value}) in the border-color to be equal 255, but wasn't."
    expect(green_value).to_not eq(193),
      "Expected the amount of Green(#{green_value}) in the border-color to be equal 193, but wasn't."
    expect(blue_value).to_not eq(7),
      "Expected the amount of Blue(#{blue_value}) in the border-color to equal 7, but wasn't."
  end
end

describe "The home page" do
  it "has a link to Time Between that has a Bootstrap warning(yellow) background color when a mouse hovers over it.",  {:js => true, :points => 1} do
    visit "/"

    word_count_link = page.find("a", :text => /Time Between/i)
    
    rgba_color_value = word_count_link.hover.native.style("background-color")
    color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

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

describe "The home page" do
  it "has a link to Time Between that has a Bootstrap warning(yellow) text color.",  {:js => true, :points => 1} do
    visit "/"

    time_between_link = page.find("a", :text => /Time Between/i)
    
    rgba_color_value = time_between_link.native.style("color")
    color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

    red_value = color_number_values.first.to_i
    green_value = color_number_values.second.to_i
    blue_value = color_number_values.third.to_i

    expect(red_value).to eq(255),
      "Expected the amount of Red(#{red_value}) in the color to be equal 255, but wasn't."
    expect(green_value).to eq(193),
      "Expected the amount of Green(#{green_value}) in the color to be equal 193, but wasn't."
    expect(blue_value).to eq(7),
      "Expected the amount of Blue(#{blue_value}) in the color to equal 7, but wasn't."
  end
end

describe "The home page" do
  it "has a link to Time Between that is a block level element.",  {:js => true, :points => 1} do  
    visit "/"

    time_between_link = page.find("a", :text => /Time Between/i)
    
    display_styles = time_between_link.native.style("display")
    expect(display_styles).to match(/block/),
      "Expected link to be styled as a block level element, with 'display' set to 'block', but was #{display_styles} instead."
  end
end

describe "The home page" do
  it "has a link to Time Between that doesn't have any text decoration.",  {:js => true, :points => 1} do
    visit "/"

    time_between_link = page.find("a", :text => /Time Between/i)

    expect(time_between_link).to match_style("text-decoration" => /none/)
  end
end

describe "The home page" do
  it "has a link to Descriptive Statistics that has a Bootstrap info(blue) border color.",  {:js => true, :points => 1} do
    visit "/"

    stats_link = page.find("a", :text => /Descriptive Statistics/i)
    
    rgba_color_value = stats_link.native.style("border-color")
    color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

    # expect(stats_link).to match_style("border-color" => "rgb(23, 162, 184)")

    red_value = color_number_values.first.to_i
    green_value = color_number_values.second.to_i
    blue_value = color_number_values.third.to_i

    expect(red_value).to eq(23),
      "Expected the amount of Red(#{red_value}) in the border-color to be equal 23, but wasn't."
    expect(green_value).to eq(162),
      "Expected the amount of Green(#{green_value}) in the border-color to be equal 162, but wasn't."
    expect(blue_value).to eq(184),
      "Expected the amount of Blue(#{blue_value}) in the border-color to equal 184, but wasn't."
  end
end

describe "The home page" do
  it "has a link to Descriptive Statistics that has a non blue background color.",  {:js => true, :points => 1} do
    visit "/"

    stats_link = page.find("a", :text => /Descriptive Statistics/i)
    
    rgba_color_value = stats_link.native.style("background-color")
    color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

    red_value = color_number_values.first.to_i
    green_value = color_number_values.second.to_i
    blue_value = color_number_values.third.to_i

    expect(red_value).to be >= blue_value,
      "Expected the amount of Red(#{red_value}) in the background-color to be >= amount of Blue(#{blue_value}), but wasn't."
    expect(green_value).to be >= blue_value,
      "Expected the amount of Green(#{green_value}) in the background-color to be >= amount of Blue(#{blue_value}), but wasn't."
  end
end

describe "The home page" do
  it "has a link to Descriptive Statistics that has a Bootstrap info(blue) background color when a mouse hovers over it.",  {:js => true, :points => 1} do
    visit "/"

    word_count_link = page.find("a", :text => /Descriptive Statistics/i)
    
    rgba_color_value = word_count_link.hover.native.style("background-color")
    color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

    red_value = color_number_values.first.to_i
    green_value = color_number_values.second.to_i
    blue_value = color_number_values.third.to_i

    expect(red_value).to eq(23),
      "Expected the amount of Red(#{red_value}) in the background-color to be equal 23, but wasn't."
    expect(green_value).to eq(162),
      "Expected the amount of Green(#{green_value}) in the background-color to be equal 162, but wasn't."
    expect(blue_value).to eq(184),
      "Expected the amount of Blue(#{blue_value}) in the background-color to equal 184, but wasn't."
  end
end

describe "The home page" do
  it "has a link to Descriptive Statistics that has a Bootstrap info(blue) text color.",  {:js => true, :points => 1} do
    visit "/"

    stats_link = page.find("a", :text => /Descriptive Statistics/i)
    
    rgba_color_value = stats_link.native.style("color")
    color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

    red_value = color_number_values.first.to_i
    green_value = color_number_values.second.to_i
    blue_value = color_number_values.third.to_i

    expect(red_value).to eq(23),
      "Expected the amount of Red(#{red_value}) in the background-color to be equal 23, but wasn't."
    expect(green_value).to eq(162),
      "Expected the amount of Green(#{green_value}) in the background-color to be equal 162, but wasn't."
    expect(blue_value).to eq(184),
      "Expected the amount of Blue(#{blue_value}) in the background-color to equal 184, but wasn't."
  end
end

describe "The home page" do
  it "has a link to Descriptive Statistics that is a block level element.",  {:js => true, :points => 1} do
    visit "/"

    stats_link = page.find("a", :text => /Descriptive Statistics/i)
    
    display_styles = stats_link.native.style("display")
    
    expect(display_styles).to match(/block/),
      "Expected link to be styled as a block level element, with 'display' set to 'block', but was #{display_styles} instead."
  end
end

describe "The home page" do
  it "has a link to Descriptive Statistics that doesn't have any text decoration.",  {:js => true, :points => 1} do
    visit "/"

    stats_link = page.find("a", :text => /Descriptive Statistics/i)

    expect(stats_link).to match_style("text-decoration" => /none/)
  end
end
