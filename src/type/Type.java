package type;

public interface Type {
    boolean equalToType(Type other);

    default PairType asPairType() {
        throw new IllegalArgumentException("cast not allowed");
    }
}