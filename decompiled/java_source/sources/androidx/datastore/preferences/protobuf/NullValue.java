package androidx.datastore.preferences.protobuf;

/* JADX INFO: loaded from: classes.dex */
public enum NullValue implements w.a {
    NULL_VALUE(0),
    UNRECOGNIZED(-1);

    public static final int NULL_VALUE_VALUE = 0;
    private static final w.b internalValueMap = new w.b() { // from class: androidx.datastore.preferences.protobuf.NullValue.a
    };
    private final int value;

    private static final class b implements w.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final w.c f8712a = new b();

        private b() {
        }

        @Override // androidx.datastore.preferences.protobuf.w.c
        public boolean isInRange(int i11) {
            return NullValue.forNumber(i11) != null;
        }
    }

    NullValue(int i11) {
        this.value = i11;
    }

    public static NullValue forNumber(int i11) {
        if (i11 != 0) {
            return null;
        }
        return NULL_VALUE;
    }

    public static w.b internalGetValueMap() {
        return internalValueMap;
    }

    public static w.c internalGetVerifier() {
        return b.f8712a;
    }

    @Deprecated
    public static NullValue valueOf(int i11) {
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
