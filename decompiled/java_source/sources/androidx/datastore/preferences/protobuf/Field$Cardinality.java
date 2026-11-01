package androidx.datastore.preferences.protobuf;

/* JADX INFO: loaded from: classes.dex */
public enum Field$Cardinality implements w.a {
    CARDINALITY_UNKNOWN(0),
    CARDINALITY_OPTIONAL(1),
    CARDINALITY_REQUIRED(2),
    CARDINALITY_REPEATED(3),
    UNRECOGNIZED(-1);

    public static final int CARDINALITY_OPTIONAL_VALUE = 1;
    public static final int CARDINALITY_REPEATED_VALUE = 3;
    public static final int CARDINALITY_REQUIRED_VALUE = 2;
    public static final int CARDINALITY_UNKNOWN_VALUE = 0;
    private static final w.b internalValueMap = new w.b() { // from class: androidx.datastore.preferences.protobuf.Field$Cardinality.a
    };
    private final int value;

    private static final class b implements w.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final w.c f8703a = new b();

        private b() {
        }

        @Override // androidx.datastore.preferences.protobuf.w.c
        public boolean isInRange(int i11) {
            return Field$Cardinality.forNumber(i11) != null;
        }
    }

    Field$Cardinality(int i11) {
        this.value = i11;
    }

    public static Field$Cardinality forNumber(int i11) {
        if (i11 == 0) {
            return CARDINALITY_UNKNOWN;
        }
        if (i11 == 1) {
            return CARDINALITY_OPTIONAL;
        }
        if (i11 == 2) {
            return CARDINALITY_REQUIRED;
        }
        if (i11 != 3) {
            return null;
        }
        return CARDINALITY_REPEATED;
    }

    public static w.b internalGetValueMap() {
        return internalValueMap;
    }

    public static w.c internalGetVerifier() {
        return b.f8703a;
    }

    @Deprecated
    public static Field$Cardinality valueOf(int i11) {
        return forNumber(i11);
    }

    @Override // androidx.datastore.preferences.protobuf.w.a
    public final int getNumber() {
        if (this != UNRECOGNIZED) {
            return this.value;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
