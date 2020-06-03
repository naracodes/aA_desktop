class NullPiece
    include Singleton
    def initialize
        @color = nil
        @symbol = :nullpiece
    end
end