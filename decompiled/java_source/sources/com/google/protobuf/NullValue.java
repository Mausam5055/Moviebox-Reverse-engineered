package com.google.protobuf;

/* JADX INFO: loaded from: classes4.dex */
public enum NullValue implements y.c {
    NULL_VALUE(0),
    UNRECOGNIZED(-1);

    public static final int NULL_VALUE_VALUE = 0;
    private static final y.d internalValueMap = new y.d() { // from class: com.google.protobuf.NullValue.a
        @Override // com.google.protobuf.y.d
        public NullValue findValueByNumber(int i11) {
            return NullValue.forNumber(i11);
        }
    };
    private final int value;

    private static final class b implements y.e {
        static final y.e INSTANCE = new b();

        private b() {
        }

        @Override // com.google.protobuf.y.e
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

    public static y.d internalGetValueMap() {
        return internalValueMap;
    }

    public static y.e internalGetVerifier() {
        return b.INSTANCE;
    }

    @Deprecated
    public static NullValue valueOf(int i11) {
        return forNumber(i11);
    }

    @Override // com.google.protobuf.y.c
    public final int getNumber() {
        if (this != UNRECOGNIZED) {
            return this.value;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
