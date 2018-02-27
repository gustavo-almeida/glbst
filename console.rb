#!/usr/bin/env ruby
target = ARGV[0]

unless system("bundle version")
  puts "Can't find bundler. Check your ruby environment."
  puts "If your using ~/.calabash then run:"
  puts <<EOF

export GEM_HOME=~/.calabash
export GEM_PATH=~/.calabash
export PATH="$PATH:$HOME/.calabash/bin"
EOF
  exit(false)
end

if target == 'android-vsp'
  exec("export APP=prebuilt/vsp/presentation-debug.apk && bundle exec calabash-android run $APP -p android #{ARGV.join(' ')}")
elsif target == 'ios-vsp'
  exec("export APP=prebuilt/vsp/GlobosatPlay.app && export APP_BUNDLE_PATH=$APP && bundle exec cucumber -p ios #{ARGV.join(' ')}")
elsif target == 'android-gsatplay'
  exec("export APP=prebuilt/gsatplay/app-globosat-debug.apk && bundle exec calabash-android run $APP -p android #{ARGV.join(' ')}")
elsif target == 'ios-gsatplay'
  exec("export APP=prebuilt/TODO.app && export APP_BUNDLE_PATH=$APP && bundle exec cucumber -p ios #{ARGV.join(' ')}")
else
  puts "Invalid target #{target}"
end
