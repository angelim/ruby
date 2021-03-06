# -*- coding: us-ascii -*-
# frozen_string_literal: false
require 'test/unit'

class TestErbCommand < Test::Unit::TestCase
  def test_var
    assert_in_out_err(["-w",
                       File.expand_path("../../../bin/erb", __FILE__),
                       "var=hoge"],
                      "<%=var%>", ["hoge"])
  end
end
