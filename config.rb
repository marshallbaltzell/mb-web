# Require any additional compass plugins here.
# require 'compass_twitter_bootstrap'
require 'breakpoint'

# Set this to the root of your project when deployed:
http_path = "/"
css_dir = "css"
sass_dir = "sass"
images_dir = "images"
javascripts_dir = "js"

# You can select your preferred output style here (can be overridden via the command line):
# output_style = :expanded or :nested or :compact or :compressed
#output_style = :expanded
output_style = (environment == :production) ? :compressed : :expanded

# To enable relative paths to assets via compass helper functions. Uncomment:
relative_assets = true

# To disable debugging comments that display the original location of your selectors. Uncomment:
#line_comments = true
line_comments = (environment == :production) ? false : true

#sass_options = { :debug_info => true }
# disabled the debug info because IE does not like nested media queries
#sass_options = (environment == :production) ? { :debug_info => false } : { :debug_info => true }


# If you prefer the indented syntax, you might want to regenerate this
# project again passing --syntax sass, or you can uncomment this:
# preferred_syntax = :sass
# and then run:
# sass-convert -R --from scss --to sass sass scss && rm -rf sass && mv scss sass

# Just in case the file goes over the IE limit,
# split the file into multiple.
# on_stylesheet_saved do |filename|
#     begin
#         result = system('blessc', "css/" + File.basename(filename),'-f')
#         if not result
#             Kernel.exit(false)
#         else
#             puts "Blessed the file, so it will work in older versions of IE."
#         end
#     rescue Exception => e
#         puts "Please install bless.\nsudo npm install -g bless"
#         puts "#{e.backtrace.first}: #{e.message} (#{e.class})", e.backtrace.drop(1).map{|s| "\t#{s}"}
#         Kernel.exit(false)
#     end
# end
