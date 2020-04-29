let g:tmuxline_preset = {
    \'a'       : ['#(whoami)', '#S'],
    \'win'     : ['#I', '#W'],
    \'cwin'    : ['#I', '#W'],
    \'x'       : ['#{prefix_highlight}'],
    \'z'       : ['On: #{online_status}','Batt: #{battery_icon} #{battery_percentage}', '%R'],
    \'options' : {'status-justify' : 'left'}}

