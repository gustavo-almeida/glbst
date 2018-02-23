#!/usr/bin/env ruby
target = ARGV.shift

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
  exec("export APP=prebuilt/presentation-debug.apk && bundle exec calabash-android run $APP -p android #{ARGV.join(' ')}")
elsif target == 'ios-vsp'
  exec("export APP=prebuilt/GlobosatPlay.app && export APP_BUNDLE_PATH=$APP && bundle exec cucumber -p ios #{ARGV.join(' ')}")
else
  puts "Invalid target #{target}"
end
