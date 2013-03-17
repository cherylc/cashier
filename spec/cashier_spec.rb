require_relative "../cashier"

describe "Cashier" do
  it "exists" do
    Cashier.to_s.should == "Cashier"
  end

  it "defines the method make_change" do
    Cashier.should respond_to(:make_change)
  end

  it "defines the method make_currency" do
    Cashier.should respond_to(:make_currency)
  end

  describe ".make_currency" do
    describe "with 1 cent" do
      it "returns 0.01" do
        Cashier.make_currency(1).should == "0.01" 
      end
    end

    describe "with 4 cents" do
      it "returns 0.04" do
        Cashier.make_currency(4).should == "0.04" 
      end
    end

    describe "with 5 cents" do
      it "returns 0.05" do
        Cashier.make_currency(5).should == "0.05" 
      end
    end

    describe "with 6 cents" do
      it "returns 0.06" do
        Cashier.make_currency(6).should == "0.06" 
      end
    end

    describe "with 10 cents" do
      it "returns 0.10" do
        Cashier.make_currency(10).should == "0.10"
      end
    end

    describe "with 11 cents" do
      it "returns 0.11" do
        Cashier.make_currency(11).should == "0.11"
      end
    end

    describe "with 15 cents" do
      it "returns 0.15" do
        Cashier.make_currency(15).should == "0.15"
      end
    end

    describe "with 16 cents" do
      it "returns 0.16" do
        Cashier.make_currency(16).should == "0.16"
      end
    end

    describe "with 20 cents" do
      it "returns 0.20" do
        Cashier.make_currency(20).should == "0.20"
      end
    end

    describe "with 22 cents" do
      it "returns 0.22" do
        Cashier.make_currency(22).should == "0.22"
      end
    end

    describe "with 25 cents" do
      it "returns 0.25" do
        Cashier.make_currency(25).should == "0.25"
      end
    end

    describe "with 87 cents" do
      it "returns 0.87" do
        Cashier.make_currency(87).should == "0.87"
      end
    end

    describe "with 102 cents" do
      it "returns 1.02" do
        Cashier.make_currency(102).should == "1.02"
      end
    end
    
    describe "with 893 cents" do
      it "returns 8.93" do
        Cashier.make_currency(893).should == "8.93"
      end
    end
  end

  describe ".make_change" do
    describe "with 1 cent" do
      it "returns 1 penny" do
        Cashier.make_change(1).should == [1] 
      end
    end

    describe "with 4 cents" do
      it "returns 4 pennies" do
        Cashier.make_change(4).should == [1, 1, 1, 1] 
      end
    end

    describe "with 5 cents" do
      it "returns 1 nickel" do
        Cashier.make_change(5).should == [5] 
      end
    end

    describe "with 6 cents" do
      it "returns 1 nickel and 1 penny" do
        Cashier.make_change(6).should == [5, 1] 
      end
    end

    describe "with 10 cents" do
      it "returns 1 dime" do
        Cashier.make_change(10).should == [10] 
      end
    end

    describe "with 11 cents" do
      it "returns 1 dime and 1 penny" do
        Cashier.make_change(11).should == [10, 1] 
      end
    end

    describe "with 15 cents" do
      it "returns 1 dime and 1 nickel" do
        Cashier.make_change(15).should == [10, 5] 
      end
    end

    describe "with 16 cents" do
      it "returns 1 dime and 1 nickel and 1 penny" do
        Cashier.make_change(16).should == [10, 5, 1] 
      end
    end

    describe "with 20 cents" do
      it "returns 2 dimes" do
        Cashier.make_change(20).should == [10, 10] 
      end
    end

    describe "with 22 cents" do
      it "returns 2 dimes and 2 pennies" do
        Cashier.make_change(22).should == [10, 10, 1, 1] 
      end
    end

    describe "with 25 cents" do
      it "returns 1 quarter" do
        Cashier.make_change(25).should == [25] 
      end
    end

    describe "with 87 cents" do
      it "returns 3 quarters and 1 dime and 2 pennies" do
        Cashier.make_change(87).should == [25, 25, 25, 10, 1, 1] 
      end
    end

    describe "with 102 cents" do
      it "returns 1 one dollar bill and 2 pennies" do
        Cashier.make_change(102).should == [100, 1, 1] 
      end
    end
    
    describe "with 893 cents" do
      it "returns 5 five dollar bill and 3 one dollar bills and 3 quarters and 1 dime and 1 nickel and 3 pennies" do
        Cashier.make_change(893).should == [500, 100, 100, 100, 25, 25, 25, 10, 5, 1, 1, 1]
      end
    end
  end
end

