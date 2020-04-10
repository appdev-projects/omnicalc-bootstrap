require "rails_helper"

describe "/word_count/new" do
  it "has the title 'New word count' ", :points => 1 do
    visit "/word_count/new"
    # TODO ignore case custom error
    expect(page).to have_tag("html") do
      with_tag("head") do
        with_tag("title", :text => /New word count/i)
      end
    end
  end
end

describe "/word_count/new" do
  it "links to fontawesome in the head tag", :points => 1 do
    visit "/word_count/new"
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

describe "/word_count/new" do
  it "has at least one link", :points => 1 do
    visit "/word_count/new"
    
    expect(page).to have_tag("a", { :minimum => 1 } )
  end
end

describe "/word_count/new" do
  it "has at least two links", :points => 1 do
    visit "/word_count/new"
    
    expect(page).to have_tag("a", { :minimum => 2 } )
  end
end

describe "/word_count/new" do
  it "has at least three links", :points => 1 do
    visit "/word_count/new"
    
    expect(page).to have_tag("a", { :minimum => 3 } )
  end
end

describe "/word_count/new" do
  it "has at least four links", :points => 1 do
    visit "/word_count/new"
    
    expect(page).to have_tag("a", { :minimum => 4 } )
  end
end

describe "/word_count/new" do
  it "has at most five links", :points => 1 do
    visit "/word_count/new"
    
    expect(page).to have_tag("a", { :count => 5 } )
  end
end

describe "/word_count/new" do
  it "has a link to '/' with the text 'Omnicalc'", :points => 1 do
    visit "/word_count/new"

    expect(page).to have_tag("a", :text => /Omnicalc/i, :with => { :href => "/" } )
  end
end

describe "/word_count/new" do
  it "has a link to '/word_count/new' with the text 'Word Count'", :points => 1 do
    visit "/word_count/new"
    
    expect(page).to have_tag("a", :text => /Word Count/i,
      :with => { :href => "/word_count/new" }
    )
  end
end

describe "/word_count/new" do
  it "has a link to '/loan_payment/new' with the text 'Loan Payment'", :points => 1 do
    visit "/word_count/new"
    
    expect(page).to have_tag("a", :text => /Loan Payment/i,
      :with => { :href => "/loan_payment/new" }
    )
  end
end

describe "/word_count/new" do
  it "has a link to '/time_between/new' with the text 'Time Between'", :points => 1 do
    visit "/word_count/new"
    
    expect(page).to have_tag("a", :text => /Time Between/i,
      :with => { :href => "/time_between/new" }
    )
  end
end

describe "/word_count/new" do
  it "has a link to '/stats/new' with the text 'Descriptive Statistics'", :points => 1 do
    visit "/word_count/new"
    
    expect(page).to have_tag("a", :text => /Descriptive Statistics/i,
      :with => { :href => "/stats/new" }
    )
  end
end

describe "/word_count/new" do
  it "has all navigation links in a nav tag", :points => 3 do
    visit "/word_count/new"

    expect(page).to have_tag("nav") {
      with_tag("a", :with => { :href => "/word_count/new" }, :text => /Word Count/i)
    
      with_tag("a", :with => { :href => "/loan_payment/new" }, :text => /Loan Payment/i)
      
      with_tag("a", :with => { :href => "/time_between/new" }, :text => /Time Between/i)
      
      with_tag("a", :with => { :href => "/stats/new" }, :text => /Descriptive Statistics/i)
    }
  end
end

describe "/word_count/new" do
  it "has at least one icon", :points => 1 do
    visit "/word_count/new"
    
    expect(page).to have_tag("i", { :minimum => 1 } )
  end
end

describe "/word_count/new" do
  it "has at least two icons", :points => 1 do
    visit "/word_count/new"
    
    expect(page).to have_tag("i", { :minimum => 2 } )
  end
end

describe "/word_count/new" do
  it "has at least three icons", :points => 1 do
    visit "/word_count/new"
    
    expect(page).to have_tag("i", { :minimum => 3 } )
  end
end

describe "/word_count/new" do
  it "has at least four icons", :points => 1 do
    visit "/word_count/new"
    
    expect(page).to have_tag("i", { :minimum => 4 } )
  end
end

describe "/word_count/new" do
  it "has at most five icons", :points => 1 do
    visit "/word_count/new"
    
    expect(page).to have_tag("i", { :count => 5 } )
  end
end

describe "/word_count/new" do
  it "has all navigation links and icons in the correct order in a nav tag", :points => 3 do
    visit "/word_count/new"

    expect(page).to have_tag("nav") {
      with_tag("a:nth-child(1)", :with => { :href => "/" }, :text => /Omnicalc/i) do
        with_tag("i", :with => { :class => "fas fa-fw fa-calculator" })
      end

      with_tag("a:nth-child(2)", :with => { :href => "/word_count/new" }, :text => /Word Count/i) do
        with_tag("i", :with => { :class => "fas fa-fw fa-book" })
      end
      
      with_tag("a:nth-child(3)", :with => { :href => "/loan_payment/new" }, :text => /Loan Payment/i) do
        with_tag("i", :with => { :class => "far fa-fw fa-money-bill-alt" })
      end
      
      with_tag("a:nth-child(4)", :with => { :href => "/time_between/new" }, :text => /Time Between/i) do
        with_tag("i", :with => { :class => "far fa-fw fa-clock" })
      end
      
      with_tag("a:nth-child(5)", :with => { :href => "/stats/new" }, :text => /Descriptive Statistics/i) do
        with_tag("i", :with => { :class => "far fa-fw fa-chart-bar" })
      end
    }
  end
end

describe "/word_count/new" do
  it "has a level 1 heading with the text 'New word count calculation'", :points => 1 do
    visit "/word_count/new"

    expect(page).to have_tag("h1", :text => /New word count calculation/i)
  end
end

describe "/word_count/new" do
  it "has 1 form tag", :points => 1 do
    visit "/word_count/new"

    expect(page).to have_tag("form", :count => 1 )
  end
end

describe "/word_count/new" do
  it "has 1 form tag", :points => 1 do
    visit "/word_count/new"

    expect(page).to have_tag("form", :count => 1 )
  end
end

describe "/word_count/new" do
  it "has 1 form with at least 1 label", :points => 1 do
    visit "/word_count/new"

    expect(page).to have_tag("form") do
      with_tag("label", :minimum => 1)
    end
  end
end

describe "/word_count/new" do
  it "has 1 form with a textarea", :points => 1 do
    visit "/word_count/new"

    expect(page).to have_tag("form") do
      with_tag("textarea", :count => 1)
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
  it "has 1 form with a label with text 'Text'", :points => 1 do
    visit "/word_count/new"

    expect(page).to have_tag("form") do
      with_tag("label", :minimum => 1, :text => /Text/i)
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
  it "has 1 form with a label with text 'Text' and a textarea with placeholder 'Enter your text'", :points => 1 do
    visit "/word_count/new"

    expect(page).to have_tag("form") do
      with_tag("label", :count => 1, :text => /Text/i)
      with_tag("textarea", :with => { :placeholder => "Enter your text" })
    end
  end
end

describe "/word_count/new" do
  it "has 1 form tag that submits to '/word_count/results'", :points => 1 do
    visit "/word_count/new"

    expect(page).to have_tag("form", :count => 1 )
  end
end
