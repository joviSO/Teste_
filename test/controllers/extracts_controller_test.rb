require "test_helper"

class ExtractsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @extract = extracts(:one)
  end

  test "should get index" do
    get extracts_url
    assert_response :success
  end

  test "should get new" do
    get new_extract_url
    assert_response :success
  end

  test "should create extract" do
    assert_difference('Extract.count') do
      post extracts_url, params: { extract: { movimentacao: @extract.movimentacao, tipo: @extract.tipo, valor: @extract.valor } }
    end

    assert_redirected_to extract_url(Extract.last)
  end

  test "should show extract" do
    get extract_url(@extract)
    assert_response :success
  end

  test "should get edit" do
    get edit_extract_url(@extract)
    assert_response :success
  end

  test "should update extract" do
    patch extract_url(@extract), params: { extract: { movimentacao: @extract.movimentacao, tipo: @extract.tipo, valor: @extract.valor } }
    assert_redirected_to extract_url(@extract)
  end

  test "should destroy extract" do
    assert_difference('Extract.count', -1) do
      delete extract_url(@extract)
    end

    assert_redirected_to extracts_url
  end
end
