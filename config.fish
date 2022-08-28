if status is-interactive
    # Commands to run in interactive sessions can go here
end
#fish shell public settings
#

alias shut='sudo shutdown -h now'
alias virtual='open /Applications/VirtualBox.app'
alias google='open /Applications/Google\ Chrome.app'
alias min='open /Applications/Min.app'
alias v_shut='killall VirtualBox'
alias desk='cd ~/Desktop'
alias volume='cd /Volumes && diskutil unmount Macintosh\ HD/'
alias server='ruby -run -e httpd . -p 8080'
alias blender='open /Applications/Blender.app'


# delete [I]

function fish_mode_prompt
end

#view date
set -g theme_display_date yes
set -g theme_date_format "+%F %H:%M:%S"
#ls directory color change
export LSCOLORS=gxfxcxdxbxegedabagacad


#view title_bar darkmode
set -g theme_color_scheme dark

#git branch master display
set -g theme_display_git_master_branch yes

#command cmd duration 
set -g theme_display_cmd_duration yes

#shell title_bar customize
set -g theme_title_display_user no
set -g theme_title_display_process yes
set -g theme_title_display_path no

#cursor.. next line, prompt head '$ ', no omit printing_working_directory
set -g theme_newline_cursor yes
set -g theme_newline_prompt '$ '
set -g fish_prompt_pwd_dir_length 0
 
#path
set -U fish_user_paths $fish_user_paths $HOME/.nodejs/current/bin


#cd->ls
functions --copy cd standard_cd

function cd
   standard_cd $argv; and ls
end

