class CourseController < ApplicationController

layout 'course'

@@lesson_links = { "intro" => "/course", "one" => "/lesson_one", "two"=> "/lesson_two" }

def lesson_intro
end

def lesson_one
	@previous_link = @@lesson_links["intro"]
	@next_link = @@lesson_links["two"]
end

def lesson_two
end

def lesson_three
end

def lesson_four
end

def lesson_five
end

def lesson_six	
end

def lesson_seven
end

def lesson_eight
end

end
