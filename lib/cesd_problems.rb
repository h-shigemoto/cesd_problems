require "cesd_problems/version"

# ces-d problems module.
module CesdProblems

  # get ces-d problems and points by hash(Japanese)
  # @return [Hash] ces-d problems and points
  def self.get_ja_problems

    ja_problems = {
      answers: [ "ないかあってもほんの少し　この週間てまったくないか、あっても１日足らず", "少し　この1週間で１～2日", "かなり　この1週間で3～4日", "ほとんど　この1週間で5日以上" ],
      problems: {
        p1: { problem: "普段は何でもないことが煩わしい。", points: [0, 1, 2, 3] },
        p2: { problem: "食べたくない。食欲が落ちた。", points: [0, 1, 2, 3] },
        p3: { problem: "家族や友人に助けてもらっても憂鬱な気分が晴れない。", points: [0, 1, 2, 3] },
        p4: { problem: "他の人と同じ程度の能力があると思える。", points: [3, 2, 1, 0] },
        p5: { problem: "物事に集中することができない。", points: [0, 1, 2, 3] },
        p6: { problem: "落ち込んでいる。", points: [0, 1, 2, 3] },
        p7: { problem: "何をするのもめんどうだ。", points: [0, 1, 2, 3] },
        p8: { problem: "将来に希望がある。", points: [3, 2, 1, 0] },
        p9: { problem: "自分の人生は失敗だったと思う。", points: [0, 1, 2, 3] },
        p10: { problem: "何か恐ろしく感じる。", points: [0, 1, 2, 3] },
        p11: { problem: "熟眠できない。", points: [0, 1, 2, 3] },
        p12: { problem: "幸せに感じる。", points: [3, 2, 1, 0] },
        p13: { problem: "いつもより口数が少ない。", points: [0, 1, 2, 3] },
        p14: { problem: "寂しいと感じる。", points: [0, 1, 2, 3] },
        p15: { problem: "他の人がよそよそしいと感じる。", points: [0, 1, 2, 3] },
        p16: { problem: "生活を楽しく感じる。", points: [3, 2, 1, 0] },
        p17: { problem: "泣き続けることがある。", points: [0, 1, 2, 3] },
        p18: { problem: "悲しいと感じる。", points: [0, 1, 2, 3] },
        p19: { problem: "みんなが私を嫌っていると感じる。", points: [0, 1, 2, 3] },
        p20: { problem: "何も手につかない。", points: [0, 1, 2, 3] }
      },
      criteria: 16
    }

    ja_problems
  end

  # get ces-d problems and points by hash(English)
  # return [Hash] ces-d problems and points
  def self.get_en_problems

    en_problems = {
      answers: ["Rarely or none of the time (<1 day)", "Some or a little of the time (1-2 days)", "Occasionally or a moderate amount of the time (3-4 days)", "Most or all of the time (5-7 days)" ],
      problems: {
        p1: { problem: "I was bothered by things that don't usually bother me.", points: [0, 1, 2, 3] },
        p2: { problem: "I did not feel like eating; my appetite was poor.", points: [0, 1, 2, 3] },
        p3: { problem: "I felt that I could not shake off the blues even with the help of my family or friends.", points: [0, 1, 2, 3] },
        p4: { problem: "I felt that I was just as good as other people.", points: [3, 2, 1, 0] },
        p5: { problem: "I had trouble keeping my mind on what I was doing.", points: [0, 1, 2, 3] },
        p6: { problem: "I felt depressed.", points: [0, 1, 2, 3] },
        p7: { problem: "I felt everything I did was an effort.", points: [0, 1, 2, 3] },
        p8: { problem: "I felt hopeful about the future.", points: [3, 2, 1, 0] },
        p9: { problem: "I thought my life had been a failure.", points: [0, 1, 2, 3] },
        p10: { problem: "I felt fearful.", points: [0, 1, 2, 3] },
        p11: { problem: "My sleep was restless.", points: [0, 1, 2, 3] },
        p12: { problem: "I was happy.", points: [3, 2, 1, 0] },
        p13: { problem: "I talked less than usual.", points: [0, 1, 2, 3] },
        p14: { problem: "I felt lonely.", points: [0, 1, 2, 3] },
        p15: { problem: "People were unfriendly.", points: [0, 1, 2, 3] },
        p16: { problem: "I enjoyed life.", points: [3, 2, 1, 0] },
        p17: { problem: "I had crying spells.", points: [0, 1, 2, 3] },
        p18: { problem: "I felt sad.", points: [0, 1, 2, 3] },
        p19: { problem: "I felt that people disliked me.", points: [0, 1, 2, 3] },
        p20: { problem: "I could not get \"going\".", points: [0, 1, 2, 3] }
      },
      criteria: 16
    }

    en_problems
  end

  # judge over creteria.
  # @param [integer] total total point.
  # @param [integer] criteria criteria
  # @return [boolean] true:over criteria / falase:under criteria
  def self.over_criteria?(total, criteria=16)
    return total >= criteria
  end
end
