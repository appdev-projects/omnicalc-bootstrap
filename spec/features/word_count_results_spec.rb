require "rails_helper"

describe "/word_count/results" do
  it "has the title 'Word count results' ", :points => 1 do
    visit "/word_count/results"
    # TODO ignore case custom error
    expect(page).to have_tag("html") do
      with_tag("head") do
        with_tag("title", :text => /Word count results/i)
      end
    end
  end
end

describe "/word_count/results" do
  it "links to fontawesome in the head tag", :points => 1 do
    visit "/word_count/results"
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

describe "/word_count/results" do
  it "has at least one link", :points => 1 do
    visit "/word_count/results"
    
    expect(page).to have_tag("a", { :minimum => 1 } )
  end
end

describe "/word_count/results" do
  it "has at least two links", :points => 1 do
    visit "/word_count/results"
    
    expect(page).to have_tag("a", { :minimum => 2 } )
  end
end

describe "/word_count/results" do
  it "has at least three links", :points => 1 do
    visit "/word_count/results"
    
    expect(page).to have_tag("a", { :minimum => 3 } )
  end
end

describe "/word_count/results" do
  it "has at least four links", :points => 1 do
    visit "/word_count/results"
    
    expect(page).to have_tag("a", { :minimum => 4 } )
  end
end

describe "/word_count/results" do
  it "has at most five links", :points => 1 do
    visit "/word_count/results"
    
    expect(page).to have_tag("a", { :count => 5 } )
  end
end

describe "/word_count/results" do
  it "has a link to '/' with the text 'Omnicalc'", :points => 1 do
    visit "/word_count/results"

    expect(page).to have_tag("a", :text => /Omnicalc/i, :with => { :href => "/" } )
  end
end

describe "/word_count/results" do
  it "has a link to '/word_count/new' with the text 'Word Count'", :points => 1 do
    visit "/word_count/results"
    
    expect(page).to have_tag("a", :text => /Word Count/i,
      :with => { :href => "/word_count/new" }
    )
  end
end

describe "/word_count/results" do
  it "has a link to '/loan_payment/new' with the text 'Loan Payment'", :points => 1 do
    visit "/word_count/results"
    
    expect(page).to have_tag("a", :text => /Loan Payment/i,
      :with => { :href => "/loan_payment/new" }
    )
  end
end

describe "/word_count/results" do
  it "has a link to '/time_between/new' with the text 'Time Between'", :points => 1 do
    visit "/word_count/results"
    
    expect(page).to have_tag("a", :text => /Time Between/i,
      :with => { :href => "/time_between/new" }
    )
  end
end

describe "/word_count/results" do
  it "has a link to '/stats/new' with the text 'Descriptive Statistics'", :points => 1 do
    visit "/word_count/results"
    
    expect(page).to have_tag("a", :text => /Descriptive Statistics/i,
      :with => { :href => "/stats/new" }
    )
  end
end

describe "/word_count/results" do
  it "has all navigation links in a nav tag", :points => 3 do
    visit "/word_count/results"

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

describe "/word_count/results" do
  it "has at least one icon", :points => 1 do
    visit "/word_count/results"
    
    expect(page).to have_tag("i", { :minimum => 1 } )
  end
end

describe "/word_count/results" do
  it "has at least two icons", :points => 1 do
    visit "/word_count/results"
    
    expect(page).to have_tag("i", { :minimum => 2 } )
  end
end

describe "/word_count/results" do
  it "has at least three icons", :points => 1 do
    visit "/word_count/results"
    
    expect(page).to have_tag("i", { :minimum => 3 } )
  end
end

describe "/word_count/results" do
  it "has at least four icons", :points => 1 do
    visit "/word_count/results"
    
    expect(page).to have_tag("i", { :minimum => 4 } )
  end
end

describe "/word_count/results" do
  it "has at most five icons", :points => 1 do
    visit "/word_count/results"
    
    expect(page).to have_tag("i", { :count => 5 } )
  end
end

describe "/word_count/results" do
  it "has all navigation links and icons in the correct order in a nav tag", :points => 3 do
    visit "/word_count/results"

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

describe "/word_count/results" do
  it "has text 'Word count results'.", :points => 1 do
    visit "/word_count/results"

    expect(page).to have_content(/Word count results/i)
  end
end

describe "/word_count/results" do
  it "has text 'Text'.", :points => 1 do
    visit "/word_count/results"

    expect(page).to have_content(/Text/i)
  end
end

describe "/word_count/results" do
  it "has text 'Word Count'.", :points => 1 do
    visit "/word_count/results"

    expect(page).to have_content(/Word Count/i)
  end
end

describe "/word_count/results" do
  it "has text 'Character Count (with spaces)'.", :points => 1 do
    visit "/word_count/results"

    expect(page).to have_content(/Character Count \(with spaces\)/i)
  end
end

describe "/word_count/results" do
  it "has text 'Character Count (without spaces)'.", :points => 1 do
    visit "/word_count/results"

    expect(page).to have_content(/Character Count \(without spaces\)/i)
  end
end

describe "/word_count/results" do
  it "has text 'Occurrences of the'.", :points => 1 do
    visit "/word_count/results"

    expect(page).to have_content(/Occurrences of the/i)
  end
end
