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
end
