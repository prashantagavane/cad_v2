require 'test_helper'

class VendorTest < ActiveSupport::TestCase
   test "the truth" do
     assert true
   end

   test "should not save a vendor when all the details
are not provided" do
     vendor = Vendor.new(name: "Prashant", email: "p.agawane7@gmail.com")
     assert_equal(false, vendor.save, "saved the vendor without full details provided!")
   end

   test "should save when name nad release contails only letters" do
     vendor = Vendor.new(name: "prashant1204",
                             release: "120419pras",
                             delivered_orders: "0",
                             failed_orders: "0",
                             deal: "0",
                             discount: "0",
                             sla: "0",
                             penalty: "0",
                             balance_payment: "0",
                             actual_payment: "0" )
     assert_equal( false, vendor.save, "saved the vendor, even though
the name nad release are not valid!")
   end

   test "apart from name, release and email everything should be in number format" do
     vendor = Vendor.new(name: "prashant",
                             release: "first",
                             delivered_orders: "xx12x",
                             failed_orders: "x12xx",
                             deal: "x12xx",
                             discount: "x12xx",
                             sla: "xx12x",
                             penalty: "x12xx",
                             balance_payment: "xx12x",
                             actual_payment: "12xxx" )
     assert(!vendor.save, "saved the vendor, even though
the numeric fields are not valid!")
   end
end


