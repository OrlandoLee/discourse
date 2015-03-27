module Jobs

  class SaveQuestionare < Jobs::Base

    def execute(args)
      Questionare.create(answer: args[:answer])
    end

  end

end
