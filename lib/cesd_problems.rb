require "cesd_problems/version"

# ces-d problems module.
module CesdProblems

  # get all problems.
  ALL = 0
  # get answers only.
  ANSWERS = 1
  # get problems only.
  PROBLEMS = 2
  # get criteria only.
  CRITERIA = 3

  # get ces-d problems and points by hash(Japanese)
  # @param [integer] mode get mode.
  # @return [Hash] ces-d problems and points deoends on mode.
  def self.get_ja_problems(mode=0)

    ja_problems = {
      answers: [ "ないかあってもほんの少し　この1週間で全くないか、あっても１日足らず", "少し　この1週間で１～2日", "かなり　この1週間で3～4日", "ほとんど　この1週間で5日以上" ],
      problems: [
        { problem: "普段は何でもないことが煩わしい。", points: [0, 1, 2, 3] },
        { problem: "食べたくない。食欲が落ちた。", points: [0, 1, 2, 3] },
        { problem: "家族や友人に助けてもらっても憂鬱な気分が晴れない。", points: [0, 1, 2, 3] },
        { problem: "他の人と同じ程度の能力があると思える。", points: [3, 2, 1, 0] },
        { problem: "物事に集中することができない。", points: [0, 1, 2, 3] },
        { problem: "落ち込んでいる。", points: [0, 1, 2, 3] },
        { problem: "何をするのもめんどうだ。", points: [0, 1, 2, 3] },
        { problem: "将来に希望がある。", points: [3, 2, 1, 0] },
        { problem: "自分の人生は失敗だったと思う。", points: [0, 1, 2, 3] },
        { problem: "何か恐ろしく感じる。", points: [0, 1, 2, 3] },
        { problem: "熟眠できない。", points: [0, 1, 2, 3] },
        { problem: "幸せに感じる。", points: [3, 2, 1, 0] },
        { problem: "いつもより口数が少ない。", points: [0, 1, 2, 3] },
        { problem: "寂しいと感じる。", points: [0, 1, 2, 3] },
        { problem: "他の人がよそよそしいと感じる。", points: [0, 1, 2, 3] },
        { problem: "生活を楽しく感じる。", points: [3, 2, 1, 0] },
        { problem: "泣き続けることがある。", points: [0, 1, 2, 3] },
        { problem: "悲しいと感じる。", points: [0, 1, 2, 3] },
        { problem: "みんなが私を嫌っていると感じる。", points: [0, 1, 2, 3] },
        { problem: "何も手につかない。", points: [0, 1, 2, 3] }
      ],
      criteria: 16
    }

    # extract
    extract_problems = extract(ja_problems, mode)
    extract_problems
  end

  # get ces-d problems and points by hash(English)
  # @param [integer] mode get mode.
  # @return [Hash] ces-d problems and points depends on mode.
  def self.get_en_problems(mode=0)

    en_problems = {
      answers: ["Rarely or none of the time (<1 day)", "Some or a little of the time (1-2 days)", "Occasionally or a moderate amount of the time (3-4 days)", "Most or all of the time (5-7 days)" ],
      problems: [
        { problem: "I was bothered by things that don't usually bother me.", points: [0, 1, 2, 3] },
        { problem: "I did not feel like eating; my appetite was poor.", points: [0, 1, 2, 3] },
        { problem: "I felt that I could not shake off the blues even with the help of my family or friends.", points: [0, 1, 2, 3] },
        { problem: "I felt that I was just as good as other people.", points: [3, 2, 1, 0] },
        { problem: "I had trouble keeping my mind on what I was doing.", points: [0, 1, 2, 3] },
        { problem: "I felt depressed.", points: [0, 1, 2, 3] },
        { problem: "I felt everything I did was an effort.", points: [0, 1, 2, 3] },
        { problem: "I felt hopeful about the future.", points: [3, 2, 1, 0] },
        { problem: "I thought my life had been a failure.", points: [0, 1, 2, 3] },
        { problem: "I felt fearful.", points: [0, 1, 2, 3] },
        { problem: "My sleep was restless.", points: [0, 1, 2, 3] },
        { problem: "I was happy.", points: [3, 2, 1, 0] },
        { problem: "I talked less than usual.", points: [0, 1, 2, 3] },
        { problem: "I felt lonely.", points: [0, 1, 2, 3] },
        { problem: "People were unfriendly.", points: [0, 1, 2, 3] },
        { problem: "I enjoyed life.", points: [3, 2, 1, 0] },
        { problem: "I had crying spells.", points: [0, 1, 2, 3] },
        { problem: "I felt sad.", points: [0, 1, 2, 3] },
        { problem: "I felt that people disliked me.", points: [0, 1, 2, 3] },
        { problem: "I could not get \"going\".", points: [0, 1, 2, 3] }
      ],
      criteria: 16
    }

    # extract
    extract_problems = extract(en_problems, mode)
    extract_problems
  end

  # get all language problems and answers(Japanese and English).
  # @param [integer] mode get mode.
  # @return [Hash] ces-d problems and points depends on mode.
  def self.get_all_lang(mode=0)

    # get Japanese and English problems and answers.
    { japanese: get_ja_problems(mode), english: get_en_problems(mode) }
  end

  # extract problems depends on mode.
  # @param [integer] mode get mode.
  # @return [Hash] ces-d problems and points depends on mode.
  def self.extract(problems, mode)

    extract_problems = nil

    case mode
    when ALL then
      extract_problems = problems
    when ANSWERS then
      extract_problems = { answers: problems[:answers] }
    when PROBLEMS then
      extract_problems = { problems: problems[:problems] }
    when CRITERIA then
      extract_problems = { criteria: problems[:criteria] }
    else
      extract_problems = nil
    end

    extract_problems
  end

  # judge over creteria.
  # @param [integer] total total point.
  # @param [integer] criteria criteria
  # @return [boolean] true:over criteria / falase:under criteria
  def self.over_criteria?(total, criteria=16)
    return total >= criteria
  end

  # get available language.
  # @return [String] available language.
  def self.available_language
    return "Japanese, English"
  end
end
