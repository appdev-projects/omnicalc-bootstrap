require "rails_helper"

describe "/loan_payment/new" do
  it "has the title 'New loan payment'.", :points => 1 do
    visit "/loan_payment/new"
    # TODO ignore case custom error
    expect(page).to have_tag("html") do
      with_tag("head") do
        with_tag("title", :text => /New loan payment/i)
      end
    end
  end
end

describe "/loan_payment/new" do
  it "links to fontawesome in the head tag", :points => 1 do
    visit "/loan_payment/new"
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

describe "/loan_payment/new" do
  it "has at least one link", :points => 1 do
    visit "/loan_payment/new"
    
    expect(page).to have_tag("a", { :minimum => 1 } )
  end
end

describe "/loan_payment/new" do
  it "has at least two links", :points => 1 do
    visit "/loan_payment/new"
    
    expect(page).to have_tag("a", { :minimum => 2 } )
  end
end

describe "/loan_payment/new" do
  it "has at least three links", :points => 1 do
    visit "/loan_payment/new"
    
    expect(page).to have_tag("a", { :minimum => 3 } )
  end
end

describe "/loan_payment/new" do
  it "has at least four links", :points => 1 do
    visit "/loan_payment/new"
    
    expect(page).to have_tag("a", { :minimum => 4 } )
  end
end

describe "/loan_payment/new" do
  it "has at most five links", :points => 1 do
    visit "/loan_payment/new"
    
    expect(page).to have_tag("a", { :count => 5 } )
  end
end

describe "/loan_payment/new" do
  it "has a link to '/' with the text 'Omnicalc'", :points => 1 do
    visit "/loan_payment/new"

    expect(page).to have_tag("a", :text => /Omnicalc/i, :with => { :href => "/" } )
  end
end

describe "/loan_payment/new" do
  it "has a link to '/word_count/new' with the text 'Word Count'", :points => 1 do
    visit "/loan_payment/new"
    
    expect(page).to have_tag("a", :text => /Word Count/i,
      :with => { :href => "/word_count/new" }
    )
  end
end

describe "/loan_payment/new" do
  it "has a link to '/loan_payment/new' with the text 'Loan Payment'", :points => 1 do
    visit "/loan_payment/new"
    
    expect(page).to have_tag("a", :text => /Loan Payment/i,
      :with => { :href => "/loan_payment/new" }
    )
  end
end

describe "/loan_payment/new" do
  it "has a link to '/time_between/new' with the text 'Time Between'", :points => 1 do
    visit "/loan_payment/new"
    
    expect(page).to have_tag("a", :text => /Time Between/i,
      :with => { :href => "/time_between/new" }
    )
  end
end

describe "/loan_payment/new" do
  it "has a link to '/stats/new' with the text 'Descriptive Statistics'", :points => 1 do
    visit "/loan_payment/new"
    
    expect(page).to have_tag("a", :text => /Descriptive Statistics/i,
      :with => { :href => "/stats/new" }
    )
  end
end

describe "/loan_payment/new" do
  it "has all navigation links in a nav tag", :points => 3 do
    visit "/loan_payment/new"

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

describe "/loan_payment/new" do
  it "has at least one icon", :points => 1 do
    visit "/loan_payment/new"
    
    expect(page).to have_tag("i", { :minimum => 1 } )
  end
end

describe "/loan_payment/new" do
  it "has at least two icons", :points => 1 do
    visit "/loan_payment/new"
    
    expect(page).to have_tag("i", { :minimum => 2 } )
  end
end

describe "/loan_payment/new" do
  it "has at least three icons", :points => 1 do
    visit "/loan_payment/new"
    
    expect(page).to have_tag("i", { :minimum => 3 } )
  end
end

describe "/loan_payment/new" do
  it "has at least four icons", :points => 1 do
    visit "/loan_payment/new"
    
    expect(page).to have_tag("i", { :minimum => 4 } )
  end
end

describe "/loan_payment/new" do
  it "has at most five icons", :points => 1 do
    visit "/loan_payment/new"
    
    expect(page).to have_tag("i", { :count => 5 } )
  end
end

describe "/loan_payment/new" do
  it "has text 'New loan payment calculation'.", :points => 1 do
    visit "/loan_payment/new"

    expect(page).to have_content(/New loan payment calculation/i)
  end
end

describe "/loan_payment/new" do
  it "has 1 form tag", :points => 1 do
    visit "/loan_payment/new"

    expect(page).to have_tag("form", :count => 1 )
  end
end

describe "/loan_payment/new" do
  it "has 1 button tag", :points => 1 do
    visit "/loan_payment/new"

    expect(page).to have_tag("button", :count => 1 )
  end
end

describe "/loan_payment/new" do
  it "has 1 form with at least 1 label", :points => 1 do
    visit "/loan_payment/new"

    expect(page).to have_tag("form") do
      with_tag("label", :minimum => 1)
    end
  end
end

describe "/loan_payment/new" do
  it "has a form with at least 1 input.", :points => 1 do
    visit "/loan_payment/new"

    expect(page).to have_tag("form") do
      with_tag("input", :minimum => 1)
    end
  end
end

describe "/loan_payment/new" do
  it "has a form with a total of 3 inputs.", :points => 1 do
    visit "/loan_payment/new"

    expect(page).to have_tag("form") do
      with_tag("input", :count => 3)
    end
  end
end

describe "/loan_payment/new" do
  it "has a form with a total of 3 inputs that are type number.", :points => 1 do
    visit "/loan_payment/new"

    expect(page).to have_tag("form") do
      with_tag("input", :count => 3, :with => { :type => "number" })
    end
  end
end

describe "/loan_payment/new" do
  it "has a form with a total of 3 labels that have 'for' attributes.", :points => 1 do
    visit "/loan_payment/new"

    expect(page).to have_tag("form") do
      with_tag("label[for!='']", :count => 3)
    end
  end
end

describe "/loan_payment/new" do
  it "has a form with a total of 3 inputs that have 'id' attributes.", :points => 1 do
    visit "/loan_payment/new"

    expect(page).to have_tag("form") do
      with_tag("input[id!='']", :count => 3)
    end
  end
end

describe "/loan_payment/new" do
  it "has 1 form with a button", :points => 1 do
    visit "/loan_payment/new"

    expect(page).to have_tag("form") do
      with_tag("button", :count => 1)
    end
  end
end

describe "/loan_payment/new" do
  it "has 1 form with a button with the text, 'Calculate!'", :points => 1 do
    visit "/loan_payment/new"

    expect(page).to have_tag("form") do
      with_tag("button", :count => 1, :text => /Calculate/i)
    end
  end
end

describe "/loan_payment/new" do
  it "has a form with a label with text 'APR'", :points => 1 do
    visit "/loan_payment/new"

    expect(page).to have_tag("form") do
      with_tag("label", :minimum => 1, :text => /APR/i)
    end
  end
end

describe "/loan_payment/new" do
  it "has a form with a label with text 'Years'", :points => 1 do
    visit "/loan_payment/new"

    expect(page).to have_tag("form") do
      with_tag("label", :text => /Years/i)
    end
  end
end

describe "/loan_payment/new" do
  it "has a form with a label with text 'Principal'", :points => 1 do
    visit "/loan_payment/new"

    expect(page).to have_tag("form") do
      with_tag("label", :text => /Principal/i)
    end
  end
end

describe "/loan_payment/new" do
  it "has a form with the 'APR', 'Years', and 'Principal' labels inside.", :points => 1 do
    visit "/loan_payment/new"

    expect(page).to have_tag("form") do
      with_tag("label", :count => 1, :text => /APR/i)
      with_tag("label", :count => 1, :text => /Years/i)
      with_tag("label", :count => 1, :text => /Principal/i)
    end
  end
end

describe "/loan_payment/new" do
  it "has a form with a label with text 'APR' and an input with placeholder 'Enter the APR of the loan (as a percent)'.", :points => 1 do
    visit "/loan_payment/new"

    expect(page).to have_tag("form") do
      with_tag("label", :count => 1, :text => /APR/i)
      with_tag("input", :with => { :placeholder => "Enter the APR of the loan (as a percent)" })
    end
  end
end

describe "/loan_payment/new" do
  it "has 1 form tag that submits to '/loan_payment/results' when you click on the 'Calculate!' button.", :points => 1 do
    visit "/loan_payment/new"

    within "form" do
      find("button", :text => /Calculate/i).click
    end

    expect(page.current_path).to match("/loan_payment/results")
  end
end


# TODO break up into more tests
describe "/loan_payment/new" do
  it "has a form with a total of 3 labels that have matching inputs.", { :points => 3} do
    visit "/loan_payment/new"

    all_labels = all("label")
    first_label = all_labels[0]
    second_label = all_labels[1]
    third_label = all_labels[2]
    
    all_inputs = all("input")
    first_input = all_inputs.first
    second_input = all_inputs[1]
    third_input = all_inputs[2]

    all_input_ids = [ first_input[:id], second_input[:id], third_input[:id] ]
    
    expect(all_input_ids).to include(first_label[:for]),
      "Expected the label's for attribute(#{first_label[:for]}) to match 1 of the ids of the inputs(#{all_input_ids}), but didn't."
    expect(all_input_ids).to include(second_label[:for]),
      "Expected the label's for attribute(#{second_label[:for]}) to match 1 of the ids of the inputs(#{all_input_ids}), but didn't."
    expect(all_input_ids).to include(third_label[:for]),
      "Expected the label's for attribute(#{third_label[:for]}) to match 1 of the ids of the inputs(#{all_input_ids}), but didn't."
  end
end

# CSS

# TODO just green bg
describe "/loan_payment/new" do
  it "has a navbar with the text 'Omnicalc' that has a Bootstrap green background color.",  {:js => true, :points => 1} do
    visit "/loan_payment/new"

    expect(page).to have_tag("nav", :text => /Omnicalc/i)

    omnicalc_navbar = page.first("nav")
    
    p rgba_color_value = omnicalc_navbar.native.style("background-color")
    color_number_values = rgba_color_value.gsub("rgba(", "").split(",")

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
