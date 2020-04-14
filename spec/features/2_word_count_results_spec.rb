require "rails_helper"

describe "/word_count/results" do
  it "has the title 'Word count results' ", :points => 1 do
    visit "/word_count/results"

    expect(page).to have_tag("html") do
      with_tag("head") do
        with_tag("title", :text => /Word count results/i)
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
