require "rails_helper"

describe "/stats/results"do
  it "has the title 'Descriptive statistics results'.", :points => 1 do
    visit "/stats/results"
    # TODO ignore case custom error
    expect(page).to have_tag("html") do
      with_tag("head") do
        with_tag("title", :text => /Descriptive statistics results/i)
      end
    end
  end
end

describe "/stats/results"do
  it "links to fontawesome in the head tag", :points => 1 do
    visit "/stats/results"
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

describe "/stats/results"do
  it "has at least one link", :points => 1 do
    visit "/stats/results"
    
    expect(page).to have_tag("a", { :minimum => 1 } )
  end
end

describe "/stats/results"do
  it "has at least two links", :points => 1 do
    visit "/stats/results"
    
    expect(page).to have_tag("a", { :minimum => 2 } )
  end
end

describe "/stats/results"do
  it "has at least three links", :points => 1 do
    visit "/stats/results"
    
    expect(page).to have_tag("a", { :minimum => 3 } )
  end
end

describe "/stats/results"do
  it "has at least four links", :points => 1 do
    visit "/stats/results"
    
    expect(page).to have_tag("a", { :minimum => 4 } )
  end
end

describe "/stats/results"do
  it "has at most five links", :points => 1 do
    visit "/stats/results"
    
    expect(page).to have_tag("a", { :count => 5 } )
  end
end

describe "/stats/results"do
  it "has a link to '/' with the text 'Omnicalc'", :points => 1 do
    visit "/stats/results"

    expect(page).to have_tag("a", :text => /Omnicalc/i, :with => { :href => "/" } )
  end
end

describe "/stats/results"do
  it "has a link to '/word_count/new' with the text 'Word Count'", :points => 1 do
    visit "/stats/results"
    
    expect(page).to have_tag("a", :text => /Word Count/i,
      :with => { :href => "/word_count/new" }
    )
  end
end

describe "/stats/results"do
  it "has a link to '/stats/new' with the text 'Loan Payment'", :points => 1 do
    visit "/stats/results"
    
    expect(page).to have_tag("a", :text => /Loan Payment/i,
      :with => { :href => "/loan_payment/new" }
    )
  end
end

describe "/stats/results"do
  it "has a link to '/time_between/new' with the text 'Time Between'", :points => 1 do
    visit "/stats/results"
    
    expect(page).to have_tag("a", :text => /Time Between/i,
      :with => { :href => "/time_between/new" }
    )
  end
end

describe "/stats/results"do
  it "has a link to '/stats/new' with the text 'Descriptive Statistics'", :points => 1 do
    visit "/stats/results"
    
    expect(page).to have_tag("a", :text => /Descriptive Statistics/i,
      :with => { :href => "/stats/new" }
    )
  end
end

describe "/stats/results"do
  it "has all navigation links in a nav tag", :points => 3 do
    visit "/stats/results"

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

describe "/stats/results"do
  it "has at least one icon", :points => 1 do
    visit "/stats/results"
    
    expect(page).to have_tag("i", { :minimum => 1 } )
  end
end

describe "/stats/results"do
  it "has at least two icons", :points => 1 do
    visit "/stats/results"
    
    expect(page).to have_tag("i", { :minimum => 2 } )
  end
end

describe "/stats/results"do
  it "has at least three icons", :points => 1 do
    visit "/stats/results"
    
    expect(page).to have_tag("i", { :minimum => 3 } )
  end
end

describe "/stats/results"do
  it "has at least four icons", :points => 1 do
    visit "/stats/results"
    
    expect(page).to have_tag("i", { :minimum => 4 } )
  end
end

describe "/stats/results"do
  it "has at most five icons", :points => 1 do
    visit "/stats/results"
    
    expect(page).to have_tag("i", { :count => 5 } )
  end
end

describe "/stats/results"do
  it "has all navigation links and icons in the correct order in a nav tag", :points => 3 do
    visit "/stats/results"

    expect(page).to have_tag("html") do
      with_tag("body") do
        with_tag("nav") do
          with_tag("a:nth-child(1)", :with => { :href => "/word_count/new" }, :text => /Word Count/i) do
            with_tag("i", :with => { :class => "fas fa-fw fa-book" })
          end
          
          with_tag("a:nth-child(2)", :with => { :href => "/loan_payment/new" }, :text => /Loan Payment/i) do
            with_tag("i", :with => { :class => "far fa-fw fa-money-bill-alt" })
          end
          
          with_tag("a:nth-child(3)", :with => { :href => "/time_between/new" }, :text => /Time Between/i) do
            with_tag("i", :with => { :class => "far fa-fw fa-clock" })
          end
          
          with_tag("a:nth-child(4)", :with => { :href => "/stats/new" }, :text => /Descriptive Statistics/i) do
            with_tag("i", :with => { :class => "far fa-fw fa-chart-bar" })
          end
          
        end
      end

    end
  end
end

describe "/stats/results"do
  it "has text 'Descriptive statistics results'.", :points => 1 do
    visit "/stats/results"

    expect(page).to have_content(/Descriptive statistics results/i)
  end
end

describe "/stats/results"do
  it "has text 'Numbers'.", :points => 1 do
    visit "/stats/results"

    expect(page).to have_content(/Numbers/i)
  end
end

describe "/stats/results"do
  it "has text 'Sorted Numbers'.", :points => 1 do
    visit "/stats/results"

    expect(page).to have_content(/Sorted Numbers/i)
  end
end

describe "/stats/results"do
  it "has text 'Count'.", :points => 1 do
    visit "/stats/results"

    expect(page).to have_content(/Count/i)
  end
end

describe "/stats/results"do
  it "has text 'Minimum'.", :points => 1 do
    visit "/stats/results"

    expect(page).to have_content(/Minimum/i)
  end
end

describe "/stats/results"do
  it "has text 'Maximum'.", :points => 1 do
    visit "/stats/results"

    expect(page).to have_content(/Maximum/i)
  end
end

describe "/stats/results"do
  it "has text 'Median'.", :points => 1 do
    visit "/stats/results"

    expect(page).to have_content(/Median/i)
  end
end

describe "/stats/results"do
  it "has text 'Range'.", :points => 1 do
    visit "/stats/results"

    expect(page).to have_content(/Range/i)
  end
end

describe "/stats/results"do
  it "has text 'Sum'.", :points => 1 do
    visit "/stats/results"

    expect(page).to have_content(/Sum/i)
  end
end

describe "/stats/results"do
  it "has text 'Mean'.", :points => 1 do
    visit "/stats/results"

    expect(page).to have_content(/Mean/i)
  end
end

describe "/stats/results"do
  it "has text 'Variance'.", :points => 1 do
    visit "/stats/results"

    expect(page).to have_content(/Variance/i)
  end
end

describe "/stats/results"do
  it "has text 'Standard Deviation'.", :points => 1 do
    visit "/stats/results"

    expect(page).to have_content(/Standard Deviation/i)
  end
end

describe "/stats/results"do
  it "has text 'Mode'.", :points => 1 do
    visit "/stats/results"

    expect(page).to have_content(/Mode/i)
  end
end

# CSS

describe "/stats/results"do
  it "has a navbar with the text 'Omnicalc' that has a Bootstrap blue info background color.",  {:js => true, :points => 1} do
    visit "/stats/results"

    expect(page).to have_tag("nav", :text => /Omnicalc/i)

    omnicalc_navbar = page.first("nav")
    
    p rgba_color_value = omnicalc_navbar.native.style("background-color")
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

describe "/stats/results"do
  it "has a link with text 'Word Count' that has a blue border color.",  {:js => true, :points => 1} do
    visit "/stats/results"

    expect(page).to have_tag("a", :text => /Word Count/i)

    word_count_link = page.find("a", :text => /Word Count/i)
    
    p rgba_color_value = word_count_link.native.style("border-color")
    p color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

    red_value = color_number_values.first.to_i
    green_value = color_number_values.second.to_i
    blue_value = color_number_values.third.to_i

    expect(red_value).to be < blue_value
    expect(green_value).to be < blue_value
  end
end

describe "/stats/results"do
  it "has a link with text 'Word Count' that has a white background color.",  {:js => true, :points => 1} do
    visit "/stats/results"

    expect(page).to have_tag("a", :text => /Word Count/i)

    word_count_link = page.find("a", :text => /Word Count/i)
    
    p rgba_color_value = word_count_link.native.style("background-color")
    p color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

    red_value = color_number_values.first.to_i
    green_value = color_number_values.second.to_i
    blue_value = color_number_values.third.to_i
    alpha_value = color_number_values.last.to_i

    if color_number_values.count > 3 && alpha_value.zero?
      # Background color is transparent
      expect(alpha_value).to eq(0)
    else
      expect(red_value).to eq(255),
        "Expected the amount of Red(#{red_value}) in the background-color to be equal 255, but wasn't."
      expect(green_value).to eq(255),
        "Expected the amount of Green(#{green_value}) in the background-color to be equal 255, but wasn't."
      expect(blue_value).to eq(255),
        "Expected the amount of Blue(#{blue_value}) in the background-color to equal 255, but wasn't."
    end
  end
end

describe "/stats/results"do
  it "has a link to Loan Payment that has a green background color when a mouse hovers over it.",  {:js => true, :points => 1} do
    visit "/stats/results"

    expect(page).to have_tag("a", :text => /Loan Payment/i),
      "Expected to find an 'a' tag on the page with text that matches the pattern 'Loan Payment' but didn't find one."

    word_count_link = page.find("a", :text => /Loan Payment/i)
    
    p rgba_color_value = word_count_link.hover.native.style("background-color")
    p color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

    red_value = color_number_values.first.to_i
    green_value = color_number_values.second.to_i
    blue_value = color_number_values.third.to_i

    expect(red_value).to eq(40),
      "Expected the amount of Red(#{red_value}) in the color to equal 40, but didn't."
    expect(green_value).to eq(167),
      "Expected the amount of Green(#{green_value}) in the color to equal 167, but didn't."
    expect(blue_value).to eq(69),
      "Expected the amount of Blue(#{blue_value}) in the color to equal 69, but didn't."
  end
end

describe "/stats/results"do
  it "has a link to Word Count that has a blue border color.",  {:js => true, :points => 1} do
    visit "/stats/results"

    expect(page).to have_tag("a", :text => /Word Count/i)

    word_count_link = page.find("a", :text => /Word Count/i)
    
    p rgba_color_value = word_count_link.native.style("border-color")
    p color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

    red_value = color_number_values.first.to_i
    green_value = color_number_values.second.to_i
    blue_value = color_number_values.third.to_i

    expect(red_value).to be < blue_value
    expect(green_value).to be < blue_value
  end
end

describe "/stats/results"do
  it "has a link to Word Count that has a white background color.",  {:js => true, :points => 1} do
    visit "/stats/results"

    expect(page).to have_tag("a", :text => /Word Count/i)

    word_count_link = page.find("a", :text => /Word Count/i)
    
    p rgba_color_value = word_count_link.native.style("background-color")
    p color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

    red_value = color_number_values.first.to_i
    green_value = color_number_values.second.to_i
    blue_value = color_number_values.third.to_i

    expect(red_value).to eq 0
    expect(green_value).to eq 0
    expect(blue_value).to eq 0
  end
end

describe "/stats/results"do
  it "has a link to Word Count that has a blue background color when a mouse hovers over it.",  {:js => true, :points => 1} do
    visit "/stats/results"

    expect(page).to have_tag("a", :text => /Word Count/i),
      "Expected to find an 'a' tag on the page with text that matches the pattern 'Word Count' but didn't find one."

    word_count_link = page.find("a", :text => /Word Count/i)
    
    p rgba_color_value = word_count_link.hover.native.style("background-color")
    p color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

    red_value = color_number_values.first.to_i
    green_value = color_number_values.second.to_i
    blue_value = color_number_values.third.to_i

    expect(red_value).to be < blue_value,
      "Expected the amount of Red(#{red_value}) in the background color to be less than the amount of Blue(#{blue_value}), but wasn't."
    expect(green_value).to be < blue_value,
      "Expected the amount of Green#{green_value} in the background color to be less than the amount of Blue(#{blue_value}), but wasn't."
  end
end

describe "/stats/results"do
  it "has a link to Word Count that has a blue text color.",  {:js => true, :points => 1} do
    visit "/stats/results"

    expect(page).to have_tag("a", :text => /Word Count/i)

    word_count_link = page.find("a", :text => /Word Count/i)
    
    p rgba_color_value = word_count_link.native.style("color")
    p color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

    red_value = color_number_values.first.to_i
    green_value = color_number_values.second.to_i
    blue_value = color_number_values.third.to_i

    expect(red_value).to eq(0),
      "Expected the amount of Red(#{red_value}) in the color to equal 0, but didn't."
    expect(green_value).to eq(123),
      "Expected the amount of Green(#{green_value}) in the color to equal 123, but didn't."
    expect(blue_value).to eq(255),
      "Expected the amount of Blue(#{blue_value}) in the color to equal 255, but didn't."
  end
end

describe "/stats/results"do
  it "has a link to Word Count that is on it's own line.",  {:js => true, :points => 1} do
    visit "/stats/results"

    expect(page).to have_tag("a", :text => /Word Count/i)

    word_count_link = page.find("a", :text => /Word Count/i)
    
    display_styles = word_count_link.native.style("display")
    expect(display_styles).to eq "block"
  end
end

describe "/stats/results"do
  it "has a link to Word Count that doesn't have any text decoration.",  {:js => true, :points => 1} do
    visit "/stats/results"

    expect(page).to have_tag("a", :text => /Word Count/i)

    word_count_link = page.find("a", :text => /Word Count/i)
    # p text_decoration = word_count_link.native.style("text-decoration")
    # message = "Expected the style of #{word_count_link.text} to have the CSS styles 'none', but got '#{text_decoration}' instead."
    
    expect(word_count_link).to match_style("text-decoration" => /none/)
  end
end

describe "/stats/results"do
  it "has a link to Loan Payment that has a green border color.",  {:js => true, :points => 1} do
    visit "/stats/results"

    expect(page).to have_tag("a", :text => /Loan Payment/i)

    loan_payment_link = page.find("a", :text => /Loan Payment/i)
    
    p rgba_color_value = loan_payment_link.native.style("border-color")
    p color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

    # expect(loan_payment_link).to match_style("border-color" => "rgb(40, 167, 69)")

    red_value = color_number_values.first.to_i
    green_value = color_number_values.second.to_i
    blue_value = color_number_values.third.to_i

    expect(red_value).to eq(40),
      "Expected the amount of Red(#{red_value}) in the border-color to be equal 40, but wasn't."
    expect(green_value).to eq(167),
      "Expected the amount of Green(#{green_value}) in the border-color to be equal 167, but wasn't."
    expect(blue_value).to eq(69),
      "Expected the amount of Blue(#{blue_value}) in the border-color to equal 69, but wasn't."
  end
end

describe "/stats/results"do
  it "has a link to Loan Payment that has a white background color.",  {:js => true, :points => 1} do
    visit "/stats/results"

    expect(page).to have_tag("a", :text => /Loan Payment/i)

    loan_payment_link = page.find("a", :text => /Loan Payment/i)
    
    p rgba_color_value = loan_payment_link.native.style("background-color")
    p color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

    # expect(loan_payment_link).to match_style("background-color" => "rgb(0, 0, 0)")
    red_value = color_number_values.first.to_i
    green_value = color_number_values.second.to_i
    blue_value = color_number_values.third.to_i
    alpha_value = color_number_values.last.to_i

    if color_number_values.count > 3 && alpha_value.zero?
      # Background color is transparent
      expect(alpha_value).to eq(0)
    else
      expect(red_value).to eq(255),
        "Expected the amount of Red(#{red_value}) in the background-color to be equal 255, but wasn't."
      expect(green_value).to eq(255),
        "Expected the amount of Green(#{green_value}) in the background-color to be equal 255, but wasn't."
      expect(blue_value).to eq(255),
        "Expected the amount of Blue(#{blue_value}) in the background-color to equal 255, but wasn't."
    end
  end
end

describe "/stats/results"do
  it "has a link to Loan Payment that has a green background color when a mouse hovers over it.",  {:js => true, :points => 1} do
    visit "/stats/results"

    expect(page).to have_tag("a", :text => /Loan Payment/i),
      "Expected to find an 'a' tag on the page with text that matches the pattern 'Loan Payment' but didn't find one."

    word_count_link = page.find("a", :text => /Loan Payment/i)
    
    p rgba_color_value = word_count_link.hover.native.style("background-color")
    p color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

    red_value = color_number_values.first.to_i
    green_value = color_number_values.second.to_i
    blue_value = color_number_values.third.to_i

    # TODO add these custom messages to the other CSS tests
    expect(red_value).to be < green_value,
      "Expected the amount of Red(#{red_value}) in the background color to be less than the amount of Green(#{green_value}), but wasn't."
    expect(blue_value).to be < green_value,
      "Expected the amount of Blue(#{green_value}) in the background color to be less than the amount of Green(#{green_value}), but wasn't."
  end
end

describe "/stats/results"do
  it "has a link to Loan Payment that has a green text color.",  {:js => true, :points => 1} do
    visit "/stats/results"

    expect(page).to have_tag("a", :text => /Loan Payment/i)

    loan_payment_link = page.find("a", :text => /Loan Payment/i)
    
    p rgba_color_value = loan_payment_link.native.style("color")
    p color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

    red_value = color_number_values.first.to_i
    green_value = color_number_values.second.to_i
    blue_value = color_number_values.third.to_i


    red_value = color_number_values.first.to_i
    green_value = color_number_values.second.to_i
    blue_value = color_number_values.third.to_i
    
    expect(red_value).to eq(40),
      "Expected the amount of Red(#{red_value}) in the color to equal 40, but didn't."
    expect(green_value).to eq(167),
      "Expected the amount of Green(#{green_value}) in the color to equal 167, but didn't."
    expect(blue_value).to eq(69),
      "Expected the amount of Blue(#{blue_value}) in the color to equal 69, but didn't."
  end
end

describe "/stats/results"do
  it "has a link to Loan Payment that is on it's own line.",  {:js => true, :points => 1} do
    visit "/stats/results"

    expect(page).to have_tag("a", :text => /Loan Payment/i)

    loan_payment_link = page.find("a", :text => /Loan Payment/i)
    
    display_styles = loan_payment_link.native.style("display")
    expect(display_styles).to eq "block"
  end
end

describe "/stats/results"do
  it "has a link to Loan Payment that doesn't have any text decoration.",  {:js => true, :points => 1} do
    visit "/stats/results"

    expect(page).to have_tag("a", :text => /Loan Payment/i)

    loan_payment_link = page.find("a", :text => /Loan Payment/i)
    # p text_decoration = loan_payment_link.native.style("text-decoration")
    # message = "Expected the style of #{loan_payment_link.text} to have the CSS styles 'none', but got '#{text_decoration}' instead."
    
    expect(loan_payment_link).to match_style("text-decoration" => /none/)
  end
end

describe "/stats/results"do
  it "has a link to Time Between that has a Bootstrap warning(yellow) border color.",  {:js => true, :points => 1} do
    visit "/stats/results"

    expect(page).to have_tag("a", :text => /Time Between/i)

    time_between_link = page.find("a", :text => /Time Between/i)
    
    p rgba_color_value = time_between_link.native.style("border-color")
    p color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

    expect(time_between_link).to match_style("border-color" => "rgb(255, 193, 7)")

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

describe "/stats/results"do
  it "has a link to Time Between that has a white background color.",  {:js => true, :points => 1} do
    visit "/stats/results"

    expect(page).to have_tag("a", :text => /Time Between/i)

    time_between_link = page.find("a", :text => /Time Between/i)
    
    p rgba_color_value = time_between_link.native.style("background-color")
    p color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

    red_value = color_number_values.first.to_i
    green_value = color_number_values.second.to_i
    blue_value = color_number_values.third.to_i

    expect(red_value).to eq 0
    expect(green_value).to eq 0
    expect(blue_value).to eq 0
  end
end

describe "/stats/results"do
  it "has a link to Time Between that has a Bootstrap warning(yellow) background color when a mouse hovers over it.",  {:js => true, :points => 1} do
    visit "/stats/results"

    expect(page).to have_tag("a", :text => /Time Between/i),
      "Expected to find an 'a' tag on the page with text that matches the pattern 'Time Between' but didn't find one."

    word_count_link = page.find("a", :text => /Time Between/i)
    
    p rgba_color_value = word_count_link.hover.native.style("background-color")
    p color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

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

describe "/stats/results"do
  it "has a link to Time Between that has a Bootstrap warning(yellow) text color.",  {:js => true, :points => 1} do
    visit "/stats/results"

    expect(page).to have_tag("a", :text => /Time Between/i)

    time_between_link = page.find("a", :text => /Time Between/i)
    
    p rgba_color_value = time_between_link.native.style("color")
    p color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

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

describe "/stats/results"do
  it "has a link to Time Between that is on it's own line.",  {:js => true, :points => 1} do
    visit "/stats/results"

    expect(page).to have_tag("a", :text => /Time Between/i)

    time_between_link = page.find("a", :text => /Time Between/i)
    
    display_styles = time_between_link.native.style("display")
    expect(display_styles).to eq "block"
  end
end

describe "/stats/results"do
  it "has a link to Time Between that doesn't have any text decoration.",  {:js => true, :points => 1} do
    visit "/stats/results"

    expect(page).to have_tag("a", :text => /Time Between/i)

    time_between_link = page.find("a", :text => /Time Between/i)
    # p text_decoration = time_between_link.native.style("text-decoration")
    # message = "Expected the style of #{time_between_link.text} to have the CSS styles 'none', but got '#{text_decoration}' instead."
    
    expect(time_between_link).to match_style("text-decoration" => /none/)
  end
end

describe "/stats/results"do
  it "has a link to Descriptive Statistics that has a Bootstrap info(blue) border color.",  {:js => true, :points => 1} do
    visit "/stats/results"

    expect(page).to have_tag("a", :text => /Descriptive Statistics/i)

    stats_link = page.find("a", :text => /Descriptive Statistics/i)
    
    p rgba_color_value = stats_link.native.style("border-color")
    p color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

    expect(stats_link).to match_style("border-color" => "rgb(23, 162, 184)")

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

describe "/stats/results"do
  it "has a link to Descriptive Statistics that has a Bootstrap info blue background color.",  {:js => true, :points => 1} do
    visit "/stats/results"

    expect(page).to have_tag("a", :text => /Descriptive Statistics/i)

    stats_link = page.find("a", :text => /Descriptive Statistics/i)
    
    p rgba_color_value = stats_link.native.style("background-color")
    p color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

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

describe "/stats/results"do
  it "has a link to Descriptive Statistics that has a darker Bootstrap info(blue) background color when a mouse hovers over it.",  {:js => true, :points => 1} do
    visit "/stats/results"

    expect(page).to have_tag("a", :text => /Descriptive Statistics/i),
      "Expected to find an 'a' tag on the page with text that matches the pattern 'Descriptive Statistics' but didn't find one."

    word_count_link = page.find("a", :text => /Descriptive Statistics/i)
    
    p rgba_color_value = word_count_link.hover.native.style("background-color")
    p color_number_values = rgba_color_value.gsub(/rgba?\(/, "").split(",")

    red_value = color_number_values.first.to_i
    green_value = color_number_values.second.to_i
    blue_value = color_number_values.third.to_i

    expect(red_value).to eq(19),
      "Expected the amount of Red(#{red_value}) in the background-color to equal 19, but didn't."
    expect(green_value).to eq(132),
      "Expected the amount of Green(#{green_value}) in the background-color to equal 132, but didn't."
    expect(blue_value).to eq(150),
      "Expected the amount of Blue(#{blue_value}) in the background-color to equal 150, but didn't."
  end
end

describe "/stats/results"do
  it "has a link to Descriptive Statistics that has a white text color.",  {:js => true, :points => 1} do
    visit "/stats/results"

    expect(page).to have_tag("a", :text => /Descriptive Statistics/i)

    stats_link = page.find("a", :text => /Descriptive Statistics/i)
    
    p rgba_color_value = stats_link.native.style("color")
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

describe "/stats/results"do
  it "has a link to Descriptive Statistics that is on it's own line.",  {:js => true, :points => 1} do
    visit "/stats/results"

    expect(page).to have_tag("a", :text => /Descriptive Statistics/i)

    stats_link = page.find("a", :text => /Descriptive Statistics/i)
    
    display_styles = stats_link.native.style("display")
    expect(display_styles).to eq "block"
  end
end

describe "/stats/results"do
  it "has a link to Descriptive Statistics that doesn't have any text decoration.",  {:js => true, :points => 1} do
    visit "/stats/results"

    stats_link = page.find("a", :text => /Descriptive Statistics/i)
    # p text_decoration = stats_link.native.style("text-decoration")
    # message = "Expected the style of #{stats_link.text} to have the CSS styles 'none', but got '#{text_decoration}' instead."
    
    expect(stats_link).to match_style("text-decoration" => /none/)
  end
end
