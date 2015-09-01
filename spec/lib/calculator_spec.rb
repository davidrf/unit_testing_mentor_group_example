require_relative "../../lib/calculator"

describe Calculator do
  let(:calculator) { Calculator.new(numbers) }
  describe "#initialize" do
    let(:numbers) { [1, 3] }
    it "should create a Calculator object" do
      expect(calculator).to be_a(Calculator)
    end
  end

  describe "#numbers" do
    let(:numbers) { [1, 3] }
    it "should return an array of numbers" do
      expect(calculator.numbers).to eq([1,3])
    end
  end

  describe "#sum" do
    context "calculator with numbers" do
      let(:numbers) { [1, 3] }
      it "should add all numbers" do
        expect(calculator.sum).to eq(4)
      end
    end

    context "calculator without numbers" do
      let(:numbers) { [] }
      it "should return 0" do
        expect(calculator.sum).to eq(0)
      end
    end
  end
end
