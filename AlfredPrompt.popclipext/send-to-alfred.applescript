on run(input)
    -- Read the workflow bundle ID from the configuration
    set workflowBundleID to (system attribute "POPCLIP_OPTION_WORKFLOW_BUNDLE_ID")
    
    -- Read the prompt from the configuration
    set promptText to (system attribute "POPCLIP_OPTION_PROMPT")
    
    -- Combine the prompt with the input text
    set query to promptText & " " & (input as string)
    
    -- Send to Alfred 5
    tell application "Alfred 5" to run trigger "popclip_input" in workflow workflowBundleID with argument query
end run