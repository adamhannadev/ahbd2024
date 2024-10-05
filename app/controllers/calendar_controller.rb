class CalendarController < ApplicationController
    def index
        @lessons = Lesson.all
    end
  end
  