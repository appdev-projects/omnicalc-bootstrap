require "rails_helper"

describe "/time_between/results" do
  it "has the title 'Time between results' ", :points => 1 do
    visit "/time_between/results"
    # TODO ignore case custom error
    expect(page).to have_tag("html") do
      with_tag("head") do
        with_tag("title", :text => /Time between results/i)
      end
    end
  end
end

describe "/time_between/results" do
  it "links to fontawesome in the head tag", :points => 1 do
    visit "/time_between/results"
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

describe "/time_between/results" do
  it "has at least one link", :points => 1 do
    visit "/time_between/results"
    
    expect(page).to have_tag("a", { :minimum => 1 } )
  end
end

describe "/time_between/results" do
  it "has at least two links", :points => 1 do
    visit "/time_between/results"
    
    expect(page).to have_tag("a", { :minimum => 2 } )
  end
end

describe "/time_between/results" do
  it "has at least three links", :points => 1 do
    visit "/time_between/results"
    
    expect(page).to have_tag("a", { :minimum => 3 } )
  end
end

describe "/time_between/results" do
  it "has at least four links", :points => 1 do
    visit "/time_between/results"
    
    expect(page).to have_tag("a", { :minimum => 4 } )
  end
end

describe "/time_between/results" do
  it "has at most five links", :points => 1 do
    visit "/time_between/results"
    
    expect(page).to have_tag("a", { :count => 5 } )
  end
end

describe "/time_between/results" do
  it "has a link to '/' with the text 'Omnicalc'", :points => 1 do
    visit "/time_between/results"

    expect(page).to have_tag("a", :text => /Omnicalc/i, :with => { :href => "/" } )
  end
end

describe "/time_between/results" do
  it "has a link to '/word_count/new' with the text 'Word Count'", :points => 1 do
    visit "/time_between/results"
    
    expect(page).to have_tag("a", :text => /Word Count/i,
      :with => { :href => "/word_count/new" }
    )
  end
end

describe "/time_between/results" do
  it "has a link to '/loan_payment/new' with the text 'Loan Payment'", :points => 1 do
    visit "/time_between/results"
    
    expect(page).to have_tag("a", :text => /Loan Payment/i,
      :with => { :href => "/loan_payment/new" }
    )
  end
end

describe "/time_between/results" do
  it "has a link to '/time_between/new' with the text 'Time Between'", :points => 1 do
    visit "/time_between/results"
    
    expect(page).to have_tag("a", :text => /Time Between/i,
      :with => { :href => "/time_between/new" }
    )
  end
end

describe "/time_between/results" do
  it "has a link to '/stats/new' with the text 'Descriptive Statistics'", :points => 1 do
    visit "/time_between/results"
    
    expect(page).to have_tag("a", :text => /Descriptive Statistics/i,
      :with => { :href => "/stats/new" }
    )
  end
end

describe "/time_between/results" do
  it "has all navigation links in a nav tag", :points => 3 do
    visit "/time_between/results"

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

describe "/time_between/results" do
  it "has at least one icon", :points => 1 do
    visit "/time_between/results"
    
    expect(page).to have_tag("i", { :minimum => 1 } )
  end
end

describe "/time_between/results" do
  it "has at least two icons", :points => 1 do
    visit "/time_between/results"
    
    expect(page).to have_tag("i", { :minimum => 2 } )
  end
end

describe "/time_between/results" do
  it "has at least three icons", :points => 1 do
    visit "/time_between/results"
    
    expect(page).to have_tag("i", { :minimum => 3 } )
  end
end

describe "/time_between/results" do
  it "has at least four icons", :points => 1 do
    visit "/time_between/results"
    
    expect(page).to have_tag("i", { :minimum => 4 } )
  end
end

describe "/time_between/results" do
  it "has at most seven icons", :points => 1 do
    visit "/time_between/results"
    
    expect(page).to have_tag("i", { :maximum => 7 } )
  end
end

describe "/time_between/results" do
  it "has text 'Time between results'.", :points => 1 do
    visit "/time_between/results"

    expect(page).to have_content(/Time between results/i)
  end
end

describe "/time_between/results" do
  it "has text 'Starting Time'.", :points => 1 do
    visit "/time_between/results"

    expect(page).to have_content(/Starting Time/i)
  end
end

describe "/time_between/results" do
  it "has text 'Ending Time'.", :points => 1 do
    visit "/time_between/results"

    expect(page).to have_content(/Ending Time/i)
  end
end

describe "/time_between/results" do
  it "has text 'Seconds'.", :points => 1 do
    visit "/time_between/results"

    expect(page).to have_content(/Seconds/i)
  end
end

describe "/time_between/results" do
  it "has text 'Minutes'.", :points => 1 do
    visit "/time_between/results"

    expect(page).to have_content(/Minutes/i)
  end
end

describe "/time_between/results" do
  it "has text 'Hours'.", :points => 1 do
    visit "/time_between/results"

    expect(page).to have_content(/Hours/i)
  end
end

describe "/time_between/results" do
  it "has text 'Days'.", :points => 1 do
    visit "/time_between/results"

    expect(page).to have_content(/Days/i)
  end
end

describe "/time_between/results" do
  it "has text 'Weeks'.", :points => 1 do
    visit "/time_between/results"

    expect(page).to have_content(/Weeks/i)
  end
end

describe "/time_between/results" do
  it "has text 'Years'.", :points => 1 do
    visit "/time_between/results"

    expect(page).to have_content(/Years/i)
  end
end
