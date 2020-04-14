require "rails_helper"

describe "/loan_payment/results" do
  it "has the title 'Loan payment results'.", :points => 1 do
    visit "/loan_payment/results"

    expect(page).to have_tag("html") do
      with_tag("head") do
        with_tag("title", :text => /Loan payment results/i)
      end
    end
  end
end

describe "/loan_payment/results" do
  it "has the text 'Loan payment results' on the page.", :points => 1 do
    visit "/loan_payment/results"

    expect(page).to have_content(/Loan payment results/i)
  end
end

describe "/loan_payment/results" do
  it "has text 'APR'.", :points => 1 do
    visit "/loan_payment/results"

    expect(page).to have_content(/APR/i)
  end
end

describe "/loan_payment/results" do
  it "has text 'Number of years'.", :points => 1 do
    visit "/loan_payment/results"

    expect(page).to have_content(/Number of years/i)
  end
end


describe "/loan_payment/results" do
  it "has text 'Monthly Payment'.", :points => 1 do
    visit "/loan_payment/results"

    expect(page).to have_content(/Monthly Payment/i)
  end
end
# TODO have_content error messages
describe "/loan_payment/results" do
  it "has text 'Principal'.", :points => 1 do
    visit "/loan_payment/results"

    expect(page).to have_content(/Principal/i)
  end
end

