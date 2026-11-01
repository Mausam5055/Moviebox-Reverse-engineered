package com.google.protobuf;

/* JADX INFO: loaded from: classes4.dex */
public enum Syntax implements y.c {
    SYNTAX_PROTO2(0),
    SYNTAX_PROTO3(1),
    SYNTAX_EDITIONS(2),
    UNRECOGNIZED(-1);

    public static final int SYNTAX_EDITIONS_VALUE = 2;
    public static final int SYNTAX_PROTO2_VALUE = 0;
    public static final int SYNTAX_PROTO3_VALUE = 1;
    private static final y.d internalValueMap = new y.d() { // from class: com.google.protobuf.Syntax.a
        @Override // com.google.protobuf.y.d
        public Syntax findValueByNumber(int i11) {
            return Syntax.forNumber(i11);
        }
    };
    private final int value;

    private static final class b implements y.e {
        static final y.e INSTANCE = new b();

        private b() {
        }

        @Override // com.google.protobuf.y.e
        public boolean isInRange(int i11) {
            return Syntax.forNumber(i11) != null;
        }
    }

    Syntax(int i11) {
        this.value = i11;
    }

    public static Syntax forNumber(int i11) {
        if (i11 == 0) {
            return SYNTAX_PROTO2;
        }
        if (i11 == 1) {
            return SYNTAX_PROTO3;
        }
        if (i11 != 2) {
            return null;
        }
        return SYNTAX_EDITIONS;
    }

    public static y.d internalGetValueMap() {
        return internalValueMap;
    }

    public static y.e internalGetVerifier() {
        return b.INSTANCE;
    }

    @Deprecated
    public static Syntax valueOf(int i11) {
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
