class User::QuestionsController < ApplicationController
  def new
    @question = Question.new
  end

  def create
    topic = Topic.find(params[:topic_id])
    question = topic.questions.create(question_params)
    redirect_to user_topic_path(topic, q_id: params[:question_id])
  end

  def show
    topic = Topic.find(params[:topic_id])
    redirect_to user_topic_path(topic, q_id: params[:question_id])
  end

  def update
    question = Question.find(params[:id])
    question.update(notes_text: params[:notes_text])

    @topic = Topic.find(params[:topic_id])
    redirect_to user_topic_path(@topic, q_id: params[:id])
  end

  private

  def question_params
    params.require(:question).permit(:title)
  end
end
