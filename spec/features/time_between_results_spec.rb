require "rails_helper"

describe "/time_between/results" do
  it "has the title 'Time between results' ", :points => 1 do
    visit "/time_between/results"

    expect(page).to have_tag("html") do
      with_tag("head") do
        with_tag("title", :text => /Time between results/i)
      end
    end
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
