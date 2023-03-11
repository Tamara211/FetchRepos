require "test_helper"

class SearchControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get search_path, params: { query: 'ruby' }
    assert_response :success
  end
  
  test 'should get index with empty query' do
    get search_path
    assert_response :success
    assert_nil assigns(:repos)
  end
  
  test 'should get index with no results' do
    get search_path, params: { query: 'nonexistentrepo123' }
    assert_response :success
    assert_not_nil assigns(:repos)
    assert_equal [], assigns(:repos)[:items]
  end


  test 'should display search form and results' do
    # Make a GET request to the index action
    get search_path, params: { query: 'foobar' }

    # Assert that the response was successful
    assert_response :success

    # Assert that the rendered view includes a search form
    assert_select 'form[action=?][method=get]', search_path do
      assert_select 'input[name=?]', 'query'
      assert_select 'input[type=?]', 'submit'
    end

    # Assert that the rendered view includes search results
    assert_select 'ul' do
      assert_select 'li', count: 100
    end
  end
end
