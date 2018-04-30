class JavascriptError < StandardError; end

class ErrorsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    message = params[:message]
    location = params[:location]
    file = params[:file]
    line = params[:line]
    col = params[:col]
    backtrace = params[:backtrace]

    if params[:message] && params[:location] && params[:file] && params[:line] && params[:col]
      e = JavascriptError.new("#{location} #{file} [#{line}:#{col}] #{message}")
      e.set_backtrace(backtrace)

      ExceptionNotifier.notify_exception(e)
    end

    head :ok
  end
end