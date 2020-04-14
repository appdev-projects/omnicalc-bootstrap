require "rails_helper"

describe "/loan_payment/new" do
  it "has the title 'New loan payment'.", :points => 1 do
    visit "/loan_payment/new"

    expect(page).to have_tag("html") do
      with_tag("head") do
        with_tag("title", :text => /New loan payment/i)
      end
    end
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

    expect(page.current_path).to match("/loan_payment/results"),
      "Expected form to submit to '/loan_payment/results', but submitted to '#{page.current_path}' instead."
  end
end

describe "/loan_payment/new" do
  it "has a form with 'APR' label that has a matching input.", { :points => 2} do
    visit "/loan_payment/new"

    first_label = find("label", :text => /APR/i)
    
    all_inputs = all("input")

    all_input_ids = all_inputs.map { |input| input[:id] }
    
    expect(all_input_ids).to include(first_label[:for]),
      "Expected the label's for attribute(#{first_label[:for]}) to match 1 of the ids of the inputs(#{all_input_ids}), but didn't."
  end
end

describe "/loan_payment/new" do
  it "has a form with 'Years' label that has a matching input.", { :points => 2} do
    visit "/loan_payment/new"

    first_label = find("label", :text => /Years/i)
    
    all_inputs = all("input")

    all_input_ids = all_inputs.map { |input| input[:id] }
    
    expect(all_input_ids).to include(first_label[:for]),
      "Expected the label's for attribute(#{first_label[:for]}) to match 1 of the ids of the inputs(#{all_input_ids}), but didn't."
  end
end

describe "/loan_payment/new" do
  it "has a form with 'Principal' label that has a matching input.", { :points => 2} do
    visit "/loan_payment/new"

    first_label = find("label", :text => /Principal/i)
    
    all_inputs = all("input")

    all_input_ids = all_inputs.map { |input| input[:id] }
    
    expect(all_input_ids).to include(first_label[:for]),
      "Expected the label's for attribute(#{first_label[:for]}) to match 1 of the ids of the inputs(#{all_input_ids}), but didn't."
  end
end

# CSS

describe "/loan_payment/new" do
  it "has a navbar with the text 'Omnicalc' that has a Bootstrap green(success) background color.",  {:js => true, :points => 1} do
    visit "/loan_payment/new"

    omnicalc_navbar = page.first("nav")
    
    rgba_color_value = omnicalc_navbar.native.style("background-color")
    color_number_values = rgba_color_value.gsub("rgba(", "").split(",")

    red_value = color_number_values.first.to_i
    green_value = color_number_values.second.to_i
    blue_value = color_number_values.third.to_i

    expect(red_value).to be < green_value,
      "Expected the amount of Red(#{red_value}) in the border-color to be less than the amount of Green(#{green_value}), but wasn't."
    expect(blue_value).to be < green_value,
      "Expected the amount of Blue(#{green_value}) in the border-color to be less than the amount of Green(#{green_value}), but wasn't."
  end
end
