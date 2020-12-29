class TestItemsController < ApplicationController

      def  new
        @test_mode=TestMode.find(params[:format])
        @test_item = @test_mode.test_items.new
      end


end
