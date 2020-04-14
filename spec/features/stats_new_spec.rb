require "rails_helper"

describe "/stats/new" do
  it "has the title 'New descriptive statistics'.", :points => 1 do
    visit "/stats/new"
    # TODO ignore case custom error
    expect(page).to have_tag("html") do
      with_tag("head") do
        with_tag("title", :text => /New descriptive statistics/i)
      end
    end
  end
end

describe "/stats/new" do
  it "links to fontawesome in the head tag", :points => 1 do
    visit "/stats/new"
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

describe "/stats/new" do
  it "has at least one link", :points => 1 do
    visit "/stats/new"
    
    expect(page).to have_tag("a", { :minimum => 1 } )
  end
end

describe "/stats/new" do
  it "has at least two links", :points => 1 do
    visit "/stats/new"
    
    expect(page).to have_tag("a", { :minimum => 2 } )
  end
end

describe "/stats/new" do
  it "has at least three links", :points => 1 do
    visit "/stats/new"
    
    expect(page).to have_tag("a", { :minimum => 3 } )
  end
end

describe "/stats/new" do
  it "has at least four links", :points => 1 do
    visit "/stats/new"
    
    expect(page).to have_tag("a", { :minimum => 4 } )
  end
end

describe "/stats/new" do
  it "has at most five links", :points => 1 do
    visit "/stats/new"
    
    expect(page).to have_tag("a", { :count => 5 } )
  end
end

describe "/stats/new" do
  it "has a link to '/' with the text 'Omnicalc'", :points => 1 do
    visit "/stats/new"

    expect(page).to have_tag("a", :text => /Omnicalc/i, :with => { :href => "/" } )
  end
end

describe "/stats/new" do
  it "has a link to '/word_count/new' with the text 'Word Count'", :points => 1 do
    visit "/stats/new"
    
    expect(page).to have_tag("a", :text => /Word Count/i,
      :with => { :href => "/word_count/new" }
    )
  end
end

describe "/stats/new" do
  it "has a link to '/stats/new' with the text 'Loan Payment'", :points => 1 do
    visit "/stats/new"
    
    expect(page).to have_tag("a", :text => /Loan Payment/i,
      :with => { :href => "/loan_payment/new" }
    )
  end
end

describe "/stats/new" do
  it "has a link to '/time_between/new' with the text 'Time Between'", :points => 1 do
    visit "/stats/new"
    
    expect(page).to have_tag("a", :text => /Time Between/i,
      :with => { :href => "/time_between/new" }
    )
  end
end

describe "/stats/new" do
  it "has a link to '/stats/new' with the text 'Descriptive Statistics'", :points => 1 do
    visit "/stats/new"
    
    expect(page).to have_tag("a", :text => /Descriptive Statistics/i,
      :with => { :href => "/stats/new" }
    )
  end
end

describe "/stats/new" do
  it "has all navigation links in a nav tag", :points => 3 do
    visit "/stats/new"

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

describe "/stats/new" do
  it "has at least one icon", :points => 1 do
    visit "/stats/new"
    
    expect(page).to have_tag("i", { :minimum => 1 } )
  end
end

describe "/stats/new" do
  it "has at least two icons", :points => 1 do
    visit "/stats/new"
    
    expect(page).to have_tag("i", { :minimum => 2 } )
  end
end

describe "/stats/new" do
  it "has at least three icons", :points => 1 do
    visit "/stats/new"
    
    expect(page).to have_tag("i", { :minimum => 3 } )
  end
end

describe "/stats/new" do
  it "has at least four icons", :points => 1 do
    visit "/stats/new"
    
    expect(page).to have_tag("i", { :minimum => 4 } )
  end
end

describe "/stats/new" do
  it "has at most five icons", :points => 1 do
    visit "/stats/new"
    
    expect(page).to have_tag("i", { :count => 5 } )
  end
end

describe "/stats/new" do
  it "has all navigation links and icons in the correct order in a nav tag", :points => 3 do
    visit "/stats/new"

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

describe "/stats/new" do
  it "has text 'New descriptive statistics calculation'.", :points => 1 do
    visit "/stats/new"

    expect(page).to have_content(/New descriptive statistics calculation/i)
  end
end

describe "/stats/new" do
  it "has 1 form tag", :points => 1 do
    visit "/stats/new"

    expect(page).to have_tag("form", :count => 1 )
  end
end

describe "/stats/new" do
  it "has 1 button tag", :points => 1 do
    visit "/stats/new"

    expect(page).to have_tag("button", :count => 1 )
  end
end

describe "/stats/new" do
  it "has 1 form with at least 1 label", :points => 1 do
    visit "/stats/new"

    expect(page).to have_tag("form") do
      with_tag("label", :minimum => 1)
    end
  end
end

describe "/stats/new" do
  it "has a form with at least 1 textarea.", :points => 1 do
    visit "/stats/new"

    expect(page).to have_tag("form") do
      with_tag("textarea", :minimum => 1)
    end
  end
end

describe "/stats/new" do
  it "has 1 form with a button", :points => 1 do
    visit "/stats/new"

    expect(page).to have_tag("form") do
      with_tag("button", :count => 1)
    end
  end
end

describe "/stats/new" do
  it "has 1 form with a button with the text, 'Calculate!'", :points => 1 do
    visit "/stats/new"

    expect(page).to have_tag("form") do
      with_tag("button", :count => 1, :text => /Calculate/i)
    end
  end
end

describe "/stats/new" do
  it "has a form with a label with text 'Numbers'", :points => 1 do
    visit "/stats/new"

    expect(page).to have_tag("form") do
      with_tag("label", :minimum => 1, :text => /Numbers/i)
    end
  end
end

describe "/stats/new" do
  it "has a form with a label with text 'Numbers' and an textarea with placeholder 'Enter your numbers (separated by spaces)'.", :points => 1 do
    visit "/stats/new"

    expect(page).to have_tag("form") do
      with_tag("label", :count => 1, :text => /Numbers/i)
      with_tag("textarea", :with => { :placeholder => "Enter your numbers (separated by spaces)" })
    end
  end
end

describe "/stats/new" do
  it "has 1 form tag that submits to '/stats/results' when you click on the 'Calculate!' button.", :points => 1 do
    visit "/stats/new"

    within "form" do
      find("button", :text => /Calculate/i).click
    end

    expect(page.current_path).to match("/stats/results")
  end
end

describe "/stats/new" do
  it "has a form with a label that has a matching textarea.", { :points => 3} do
    visit "/stats/new"

    first_label = find("label") #TODO make sure label is actually IN the form, maybe if there's only one label
    
    all_textareas = all("textarea")
    
    all_textarea_ids = all_textareas.map { |textarea| textarea[:id] }
    
    expect(all_textarea_ids).to include(first_label[:for]),
      "Expected the label's for attribute(#{first_label[:for]}) to match 1 of the ids of the textareas(#{all_textarea_ids}), but didn't."
  end
end
# CSS

describe "/stats/new" do
  it "has a navbar with the text 'Omnicalc' that has a Bootstrap blue info background color.",  {:js => true, :points => 1} do
    visit "/stats/new"

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
