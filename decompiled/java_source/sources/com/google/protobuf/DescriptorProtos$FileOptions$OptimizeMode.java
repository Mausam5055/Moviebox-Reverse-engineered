package com.google.protobuf;

/* JADX INFO: loaded from: classes4.dex */
public enum DescriptorProtos$FileOptions$OptimizeMode implements y.c {
    SPEED(1),
    CODE_SIZE(2),
    LITE_RUNTIME(3);

    public static final int CODE_SIZE_VALUE = 2;
    public static final int LITE_RUNTIME_VALUE = 3;
    public static final int SPEED_VALUE = 1;
    private static final y.d internalValueMap = new y.d() { // from class: com.google.protobuf.DescriptorProtos$FileOptions$OptimizeMode.a
        @Override // com.google.protobuf.y.d
        public DescriptorProtos$FileOptions$OptimizeMode findValueByNumber(int i11) {
            return DescriptorProtos$FileOptions$OptimizeMode.forNumber(i11);
        }
    };
    private final int value;

    private static final class b implements y.e {
        static final y.e INSTANCE = new b();

        private b() {
        }

        @Override // com.google.protobuf.y.e
        public boolean isInRange(int i11) {
            return DescriptorProtos$FileOptions$OptimizeMode.forNumber(i11) != null;
        }
    }

    DescriptorProtos$FileOptions$OptimizeMode(int i11) {
        this.value = i11;
    }

    public static DescriptorProtos$FileOptions$OptimizeMode forNumber(int i11) {
        if (i11 == 1) {
            return SPEED;
        }
        if (i11 == 2) {
            return CODE_SIZE;
        }
        if (i11 != 3) {
            return null;
        }
        return LITE_RUNTIME;
    }

    public static y.d internalGetValueMap() {
        return internalValueMap;
    }

    public static y.e internalGetVerifier() {
        return b.INSTANCE;
    }

    @Deprecated
    public static DescriptorProtos$FileOptions$OptimizeMode valueOf(int i11) {
        return forNumber(i11);
    }

    @Override // com.google.protobuf.y.c
    public final int getNumber() {
        return this.value;
    }
}
