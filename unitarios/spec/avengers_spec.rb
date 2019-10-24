Class AvengerHeadQuarter
    atrr_accessor :list

    def initialize
        self.list= []

    def put(avenger)
        self.list.push(avenger)
    end

describe AvengerHeadQuarter do

    it 'Deve adicionar um vingador' do
        hq = AvengerHeadQuarter.new

        hq.put('Spiderman')
        expect(hq.list).to eql ['Spiderman']
    end

end