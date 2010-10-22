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
  TextMate.exit_show_tool_tip("The ‘create partial from selection’ action works within view files only.")
end

# If text is selected, create a partial out of it
ext = ".html.#{current_file.extension}"

partial_name = TextMate.selected_text || TextMate.current_word

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
  
  file = File.open(partial, "w")
  TextMate.rescan_project
  TextMate.open partial
else
  TextMate.exit_discard
end
