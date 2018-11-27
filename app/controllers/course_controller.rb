class CourseController < ApplicationController

layout 'course'

if Rails.env.development?
	@@base_url = "http://localhost:3000/"
else
	@@base_url = "https://www.wordgates.com/"
end

@@lesson_links = { 0 => @@base_url + "course", 
					1 => @@base_url + "lesson_one", 
					2 => @@base_url + "lesson_two",
					3 => @@base_url + "lesson_three",
					4 => @@base_url + "lesson_four",
					5 => @@base_url + "lesson_five",
					6 => @@base_url + "lesson_six",
					7 => @@base_url + "lesson_seven",
					8 => @@base_url + "lesson_eight" }


def lesson_intro
	@next_link = @@lesson_links[1]
end

def lesson_one
	@previous_link = @@lesson_links[0]
	@next_link = @@lesson_links[2]
end

def lesson_two
	@previous_link = @@lesson_links[1]
	@next_link = @@lesson_links[3]
end

def lesson_three
	@previous_link = @@lesson_links[2]
	@next_link = @@lesson_links[4]
end

def lesson_four
	@previous_link = @@lesson_links[3]
	@next_link = @@lesson_links[5]
end

def lesson_five
	@previous_link = @@lesson_links[4]
	@next_link = @@lesson_links[6]
end

def lesson_six
	@previous_link = @@lesson_links[5]
	@next_link = @@lesson_links[7]
end

def lesson_seven
	@previous_link = @@lesson_links[6]
	@next_link = @@lesson_links[8]
end

def lesson_eight
	@previous_link = @@lesson_links[7]
end

def student_question
	GeneralMailer.student_question("questionTEST", "studentTEST").deliver
end
	
	private
	def question_params
	  params.require(:student_question).permit(:question, :student)
	end
end
