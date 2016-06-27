require 'spec_helper'

describe CesdProblems do

  it 'has a version number' do
    expect(CesdProblems::VERSION).not_to be nil
  end

  it 'get test : ja' do
    # test (language = Japanese)
    problems = CesdProblems.get_ja_problems
    expect(problems).to be_truthy
  end

  it 'get test : ja, answers' do
    # answers only.
    problems = CesdProblems.get_ja_problems(CesdProblems::ANSWERS)

    problems.each { |key, value|
      expect(key.to_s).to eq "answers"
    }
  end

  it 'get test : ja, problems' do
    # problems only
    problems = CesdProblems.get_ja_problems(CesdProblems::PROBLEMS)

    problems.each { |key, value|
      expect(key.to_s).to eq "problems"
    }
  end

  it 'get test : ja, criteria' do
    # criteria only
    problems = CesdProblems.get_ja_problems(CesdProblems::CRITERIA)

    problems.each { |key, value|
      expect(key.to_s).to eq "criteria"
    }
  end

  it 'get test : en' do
    # test (language = English)
    problems = CesdProblems.get_en_problems
    expect(problems).to be_truthy
  end

  it 'get test : en, answers' do
    # answers only.
    problems = CesdProblems.get_en_problems(CesdProblems::ANSWERS)

    problems.each { |key, value|
      expect(key.to_s).to eq "answers"
    }
  end

  it 'get test : en, problems' do
    # problems only
    problems = CesdProblems.get_en_problems(CesdProblems::PROBLEMS)

    problems.each { |key, value|
      expect(key.to_s).to eq "problems"
    }
  end

  it 'get test : en, criteria' do
    # criteria only
    problems = CesdProblems.get_en_problems(CesdProblems::CRITERIA)

    problems.each { |key, value|
      expect(key.to_s).to eq "criteria"
    }
  end

  it 'extract test' do
    problems = CesdProblems.get_en_problems
    problems = CesdProblems.extract(problems, CesdProblems::ANSWERS)

    problems.each { |key, value|
      expect(key.to_s).to eq "answers"
    }
  end

  it 'extract test nil' do
    problems = CesdProblems.get_en_problems
    problems = CesdProblems.extract(problems, 1000)

    expect(problems).to be_falsey
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
