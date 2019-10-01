# frozen_string_literal: true

sharpen_log = "#{ENV['DOTHOME']}/sharpen.log"
replug_log = "#{ENV['DOTHOME']}/replug.log"

sharpen_details = File.read sharpen_log
replug_details = File.read replug_log

template = File.read "#{ENV['DOTHOME']}/sharpen/log_template.txt"

template.gsub!('SHARPEN', sharpen_details)
template.gsub!('REPLUG', replug_details)

puts template
