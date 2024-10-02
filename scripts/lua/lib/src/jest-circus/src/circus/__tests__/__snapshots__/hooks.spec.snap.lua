-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-circus/src/__tests__/__snapshots__/hooks.test.ts.snap
-- Jest Snapshot v1, https://goo.gl/fbAQLP

local exports = {}

exports["beforeAll is exectued correctly 1"] = [[

"start_describe_definition: describe 1
add_hook: beforeAll
add_test: test 1
start_describe_definition: 2nd level describe
add_hook: beforeAll
add_test: test 2
add_test: test 3
finish_describe_definition: 2nd level describe
finish_describe_definition: describe 1
run_start
run_describe_start: ROOT_DESCRIBE_BLOCK
run_describe_start: describe 1
hook_start: beforeAll
> beforeAll 1
hook_success: beforeAll
test_start: test 1
test_fn_start: test 1
> test 1
test_fn_success: test 1
test_done: test 1
run_describe_start: 2nd level describe
hook_start: beforeAll
> beforeAll 2
hook_success: beforeAll
test_start: test 2
test_fn_start: test 2
> test 2
test_fn_success: test 2
test_done: test 2
test_start: test 3
test_fn_start: test 3
> test 3
test_fn_success: test 3
test_done: test 3
run_describe_finish: 2nd level describe
run_describe_finish: describe 1
run_describe_finish: ROOT_DESCRIBE_BLOCK
run_finish

unhandledErrors: 0"
]]

exports["beforeEach is executed before each test in current/child describe blocks 1"] = [[

"start_describe_definition: describe
add_hook: beforeEach
add_test: one
add_test: two
start_describe_definition: 2nd level describe
add_hook: beforeEach
add_test: 2nd level test
start_describe_definition: 3rd level describe
add_test: 3rd level test
add_test: 3rd level test#2
finish_describe_definition: 3rd level describe
finish_describe_definition: 2nd level describe
finish_describe_definition: describe
start_describe_definition: 2nd describe
add_hook: beforeEach
add_test: 2nd describe test
finish_describe_definition: 2nd describe
run_start
run_describe_start: ROOT_DESCRIBE_BLOCK
run_describe_start: describe
test_start: one
hook_start: beforeEach
> describe beforeEach
hook_success: beforeEach
test_fn_start: one
test_fn_success: one
test_done: one
test_start: two
hook_start: beforeEach
> describe beforeEach
hook_success: beforeEach
test_fn_start: two
test_fn_success: two
test_done: two
run_describe_start: 2nd level describe
test_start: 2nd level test
hook_start: beforeEach
> describe beforeEach
hook_success: beforeEach
hook_start: beforeEach
> 2nd level describe beforeEach
hook_success: beforeEach
test_fn_start: 2nd level test
test_fn_success: 2nd level test
test_done: 2nd level test
run_describe_start: 3rd level describe
test_start: 3rd level test
hook_start: beforeEach
> describe beforeEach
hook_success: beforeEach
hook_start: beforeEach
> 2nd level describe beforeEach
hook_success: beforeEach
test_fn_start: 3rd level test
test_fn_success: 3rd level test
test_done: 3rd level test
test_start: 3rd level test#2
hook_start: beforeEach
> describe beforeEach
hook_success: beforeEach
hook_start: beforeEach
> 2nd level describe beforeEach
hook_success: beforeEach
test_fn_start: 3rd level test#2
test_fn_success: 3rd level test#2
test_done: 3rd level test#2
run_describe_finish: 3rd level describe
run_describe_finish: 2nd level describe
run_describe_finish: describe
run_describe_start: 2nd describe
test_start: 2nd describe test
hook_start: beforeEach
> 2nd describe beforeEach that throws
hook_failure: beforeEach
test_fn_start: 2nd describe test
test_done: 2nd describe test
run_describe_finish: 2nd describe
run_describe_finish: ROOT_DESCRIBE_BLOCK
run_finish

unhandledErrors: 0"
]]

exports["multiple before each hooks in one describe are executed in the right order 1"] = [[

"start_describe_definition: describe 1
add_hook: beforeEach
add_hook: beforeEach
start_describe_definition: 2nd level describe
add_test: test
finish_describe_definition: 2nd level describe
finish_describe_definition: describe 1
run_start
run_describe_start: ROOT_DESCRIBE_BLOCK
run_describe_start: describe 1
run_describe_start: 2nd level describe
test_start: test
hook_start: beforeEach
before each 1
hook_success: beforeEach
hook_start: beforeEach
before each 2
hook_success: beforeEach
test_fn_start: test
test_fn_success: test
test_done: test
run_describe_finish: 2nd level describe
run_describe_finish: describe 1
run_describe_finish: ROOT_DESCRIBE_BLOCK
run_finish

unhandledErrors: 0"
]]

return exports
