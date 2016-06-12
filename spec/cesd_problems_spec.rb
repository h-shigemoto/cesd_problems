require 'spec_helper'

describe CesdProblems do
  it 'has a version number' do
    expect(CesdProblems::VERSION).not_to be nil
  end

  it 'load test : ja' do
    # load test (language = Japanese)
    problems = CesdProblems.get_ja_problems
    expect(problems).to be_truthy
  end

  it 'load test : en' do
    # load test (language = English)
    problems = CesdProblems.get_en_problems
    expect(problems).to be_truthy
  end

  it 'over criteria? false' do
    rs = CesdProblems.over_criteria?(15)
    expect(rs).to be_falsey
  end

  it 'over criteria? true' do
    rs = CesdProblems.over_criteria?(16)
    expect(rs).to be_truthy
  end
end
