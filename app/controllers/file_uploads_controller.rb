class FileUploadsController < ApplicationController
    def new
        @question = Question.find(params[:question_id])
    end

    def create
        @question = Question.find(params[:question_id])
        @question.file.attach(params[:question][:file])
        redirect_to question_path(@question)
    end
end
