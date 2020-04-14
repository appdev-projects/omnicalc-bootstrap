require "rails_helper"

describe "/stats/results"do
  it "has the title 'Descriptive statistics results'.", :points => 1 do
    visit "/stats/results"

    expect(page).to have_tag("html") do
      with_tag("head") do
        with_tag("title", :text => /Descriptive statistics results/i)
      end
    end
  end
end

# TODO error message on have_content
describe "/stats/results"do
  it "has text 'Descriptive statistics results'.", :points => 1 do
    visit "/stats/results"

    expect(page).to have_content(/Descriptive statistics results/i),
      "Expected to find 'Descriptive statistics results' on the page but didn't. "
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
