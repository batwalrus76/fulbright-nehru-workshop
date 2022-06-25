---
marp: true
paginate: true
theme: default
class:
  - lead
  - invert
---

# Fulbright-Nehru Lectures
## 22 Unit Testing


Chancellor T. Pascale
Fulbright-Nehru
Summer 2022

-------------------------------
# Unit Testing

- What is the Purpose of Unit Testing?
- Principles of Unit Testing
- What Not to Do When Writing Unit Tests
- CUnit/CppUnit
- Google Test
- Boost Test Library
- Mocks and Why You Should Use Them

-------------------------------
# What is the Purpose of Unit Testing?

- Ensure that written code matches expected outcomes based on inputs and state
- Identify when updates to code breaks expectations of any code that uses the updated code or any functions that call it.
- Over time recognize improvement in unit tests for classes, packages, and overall.
- When written well can substitute for human hand executed tests and harnesses.

-------------------------------
# Principles of Unit Testing

- Tests in isolation as much as possible
- Two types of tests state-based and interaction-based
- Easy to read, don't make your tests more complex than the code
- Easy to write, don't add to technical debt
- Should be reliable, otherwise the numbers can not substitute for a human
- Fast, slighlty less important but if updating a lot this can be a bottleneck
- Not integration testing, which tests system and interfaces in the real world

-------------------------------
# What Not to Do When Writing Unit Tests

- Write tests to recreate the code
- Write tests that pass no matter what
- Write tests to only increase code coverage and not improve quality of tests
- Make your testing suite brittle or hard to manage
- Write test code that causes system to interact and affect real-world systems.

[1]

-------------------------------
# CUnit/CppUnit part 1

- CUnit testing hierarchy is Test Registry -> Suite -> Test
- CUnit testing process:
    1. CU_initialize_registry(void)
    2. CU_add_suite(const char* strName, CU_InitializeFunc pInit, CU_CleanupFunc pClean)
    3. CU_add_test(CU_pSuite pSuite, const char* strName, CU_TestFunc pTestFunc)
    4. CU_console_run_tests(void)
    5. CU_cleanup_registry(void)

[2]

-------------------------------
# CUnit/CppUnit part 2

- You can retrieve various test results
- Test functions names need to start with `test_`
- For each test case, use assertion functions with names like `CU_ASSERT_EQUAL` and `CU_ASSERT_STRING_EQUAL` with two args `actual` and `expected`.
- You can run tests without any output, interactive console mode, and interactive curses mode.

[2]

-------------------------------
# Google Test

- xUnit testing standard compliant
- Two types of tests `ASSERT_*` (fatal on test failure) and `Expect_*` (non-fatal)
- Unlike other test frameworks tests don't start with `test_`, rather they have the following pattern:
  - `TEST(FactorialTest, HandlesZeroInput)`
  - The first arg is the test suite name
  - The second are is the test name
- Test fixtures (use `TEST_F`) are useful for passing in predefined variables into tests
- Assertions are used via either `ASSERT_*` and `EXPECT_*`
- Support for Mocks

[3]

-------------------------------
# Boost Test Library

- Test Cases are called with the following pattern `BOOST_TEST_CASE( &test_function)` the test function is what actually performs the unit test
- Test cases can be dynamic and parameterized
- Tests suites combine test cases by wrapping tests cases in `BOOST_AUTO_TEST_SUITE(test_suite_1)` and `BOOST_AUTO_TEST_SUITE_END()`
- You can also use `BOOST_TEST_SUITE` to return pointer to test suite and then use the `add` function to add cases to test suite.
- All test suites are part of the master test suite.
- Fixtures are also supported.

[4]

-------------------------------
# Mocks, Fakes, and Stubs

- Mocks, fakes, and stubs and are essential tools to test functions in isolation, especially when functions call other tests under test.
- They can be as simple as replacing the output of a dependent function or as complex as acting like a database or web server.
>A Fake is an object that will replace the actual code by implementing the same interface but without interacting with other objects.
>A Stub is an object that will return a specific result based on a specific set of inputs and usually won’t respond to anything outside of what is programed for the test.
>A Mock is a much more sophisticated version of a Stub. It will still return values like a Stub, but it can also be programmed with expectations in terms of how many times each method should be called, in which order and with what data.

[5]

-------------------------------
# Bibliography

1. Kolodiy, S. (2015, June 18). Unit tests, how to write Testable code and why it matters. Toptal Engineering Blog. Retrieved June 4, 2022, from https://www.toptal.com/qa/how-to-write-testable-code-and-why-it-matters.
2. CUnit. Cunit. (n.d.). Retrieved June 4, 2022, from http://cunit.sourceforge.net/doc/index.html.
3. GoogleTest user's guide. GoogleTest. (n.d.). Retrieved June 4, 2022, from https://google.github.io/googletest/.
4. Boost C++ libraries. (n.d.). Retrieved June 4, 2022, from https://www.boost.org/doc/libs/1_75_0/libs/test/doc/html/index.html.
5. Mocking framework for unit testing - Telerik Justmock. Telerik.com. (n.d.). Retrieved June 4, 2022, from https://www.telerik.com/products/mocking/unit-testing.aspx.