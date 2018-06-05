base_dir = File.expand_path(File.join(__dir__, '..'))
lib_dir  = File.join(base_dir, "lib")
test_dir = File.join(base_dir, "tests")

$LOAD_PATH.unshift(lib_dir)

require 'test/unit'

exit Test::Unit::AutoRunner.run(true, test_dir)
