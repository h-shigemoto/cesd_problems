require "cesd_problems/version"
require "yaml"

# load ces-d problems module.
module CesdProblems

  # JAPANESE problems file load.
  JAPANESE = "ja"
  # ENGLISH problems file load.
  ENGLISH = "en"

  # load ces-d problems and points from yaml file.
  # param [String] language object language.
  # return [Hash] load ces-d problems and points.
  # return [nil] invalid arguments.
  def self.load_problems(language)

    problems = nil
    base_path = File.expand_path('yamls')

    # load Japanese.
    if JAPANESE == language
      problems = YAML.load_file(base_path + '/cesd_ja.yml')
    # load English.
    elsif ENGLISH == language
      problems = YAML.load_file(base_path + '/cesd_en.yml')
    end

    problems
  end
end
