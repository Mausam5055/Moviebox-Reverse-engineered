package com.google.protobuf;

/* JADX INFO: loaded from: classes4.dex */
public enum DescriptorProtos$MethodOptions$IdempotencyLevel implements y.c {
    IDEMPOTENCY_UNKNOWN(0),
    NO_SIDE_EFFECTS(1),
    IDEMPOTENT(2);

    public static final int IDEMPOTENCY_UNKNOWN_VALUE = 0;
    public static final int IDEMPOTENT_VALUE = 2;
    public static final int NO_SIDE_EFFECTS_VALUE = 1;
    private static final y.d internalValueMap = new y.d() { // from class: com.google.protobuf.DescriptorProtos$MethodOptions$IdempotencyLevel.a
        @Override // com.google.protobuf.y.d
        public DescriptorProtos$MethodOptions$IdempotencyLevel findValueByNumber(int i11) {
            return DescriptorProtos$MethodOptions$IdempotencyLevel.forNumber(i11);
        }
    };
    private final int value;

    private static final class b implements y.e {
        static final y.e INSTANCE = new b();

        private b() {
        }

        @Override // com.google.protobuf.y.e
        public boolean isInRange(int i11) {
            return DescriptorProtos$MethodOptions$IdempotencyLevel.forNumber(i11) != null;
        }
    }

    DescriptorProtos$MethodOptions$IdempotencyLevel(int i11) {
        this.value = i11;
    }

    public static DescriptorProtos$MethodOptions$IdempotencyLevel forNumber(int i11) {
        if (i11 == 0) {
            return IDEMPOTENCY_UNKNOWN;
        }
        if (i11 == 1) {
            return NO_SIDE_EFFECTS;
        }
        if (i11 != 2) {
            return null;
        }
        return IDEMPOTENT;
    }

    public static y.d internalGetValueMap() {
        return internalValueMap;
    }

    public static y.e internalGetVerifier() {
        return b.INSTANCE;
    }

    @Deprecated
    public static DescriptorProtos$MethodOptions$IdempotencyLevel valueOf(int i11) {
        return forNumber(i11);
    }

    @Override // com.google.protobuf.y.c
    public final int getNumber() {
        return this.value;
    }
}
