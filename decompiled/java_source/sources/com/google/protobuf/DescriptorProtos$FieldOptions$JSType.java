package com.google.protobuf;

/* JADX INFO: loaded from: classes4.dex */
public enum DescriptorProtos$FieldOptions$JSType implements y.c {
    JS_NORMAL(0),
    JS_STRING(1),
    JS_NUMBER(2);

    public static final int JS_NORMAL_VALUE = 0;
    public static final int JS_NUMBER_VALUE = 2;
    public static final int JS_STRING_VALUE = 1;
    private static final y.d internalValueMap = new y.d() { // from class: com.google.protobuf.DescriptorProtos$FieldOptions$JSType.a
        @Override // com.google.protobuf.y.d
        public DescriptorProtos$FieldOptions$JSType findValueByNumber(int i11) {
            return DescriptorProtos$FieldOptions$JSType.forNumber(i11);
        }
    };
    private final int value;

    private static final class b implements y.e {
        static final y.e INSTANCE = new b();

        private b() {
        }

        @Override // com.google.protobuf.y.e
        public boolean isInRange(int i11) {
            return DescriptorProtos$FieldOptions$JSType.forNumber(i11) != null;
        }
    }

    DescriptorProtos$FieldOptions$JSType(int i11) {
        this.value = i11;
    }

    public static DescriptorProtos$FieldOptions$JSType forNumber(int i11) {
        if (i11 == 0) {
            return JS_NORMAL;
        }
        if (i11 == 1) {
            return JS_STRING;
        }
        if (i11 != 2) {
            return null;
        }
        return JS_NUMBER;
    }

    public static y.d internalGetValueMap() {
        return internalValueMap;
    }

    public static y.e internalGetVerifier() {
        return b.INSTANCE;
    }

    @Deprecated
    public static DescriptorProtos$FieldOptions$JSType valueOf(int i11) {
        return forNumber(i11);
    }

    @Override // com.google.protobuf.y.c
    public final int getNumber() {
        return this.value;
    }
}
