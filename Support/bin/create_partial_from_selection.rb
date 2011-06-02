#!/usr/bin/env ruby

# Copyright:
#   (c) 2006 syncPEOPLE, LLC.
#   Visit us at http://syncpeople.com/
# Author: Duane Johnson (duane.johnson@gmail.com)
# Description:
#   Creates a partial from the selected text (asks for the partial name)
#   and replaces the text with a "render :partial => [partial_name]" erb fragment.

require 'rails_bundle_tools'

current_file = RailsPath.new

# Make sure we're in a view file
unless current_file.file_type == :view
  TextMate.exit_show_tool_tip("The 'create partial from selection' action works within view files only.")
end

# If text is selected, create a partial out of it
ext = ".html.#{current_file.extension}"

partial_name = TextMate::UI.request_string(
  :title => "Create a partial from the selected text", 
  :default => "partial",
  :prompt => "Name of the new partial: (omit the _ and #{ext})",
  :button1 => 'Create'
)

if partial_name
  path = current_file.dirname
  partial = File.join(path, "_#{partial_name}#{ext}")

  # Create the partial file
  if File.exist?(partial)
    unless TextMate::UI.request_confirmation(
      :button1 => "Overwrite",
      :button2 => "Cancel",
      :title => "The partial file already exists.",
      :prompt => "Do you want to overwrite it?"
    )
      TextMate.exit_discard
    end
  end
  
  # determine and strip identing of the partial
  selected_text = TextMate.selected_text + "" # somehow .clone did not work
  identing = selected_text.split("\n").first.to_s.match(/^(\s+)/) ? $1 : ""
  selected_text.gsub!(/^#{identing}/, "")
  
  file = File.open(partial, "w") { |f| f.write(selected_text) }
  TextMate.rescan_project

  # Return the new render :partial line
  if current_file.extension == "haml"
    print "#{identing}= render partial: '#{partial_name}'\n"
  else
    print "#{identing}<%= render partial: '#{partial_name}' %>\n"
  end
else
  TextMate.exit_discard
end


