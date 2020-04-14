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

# TODO error message on have_content
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
