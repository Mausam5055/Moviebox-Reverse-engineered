package com.google.protobuf;

/* JADX INFO: loaded from: classes4.dex */
public enum DescriptorProtos$FieldDescriptorProto$Label implements y.c {
    LABEL_OPTIONAL(1),
    LABEL_REQUIRED(2),
    LABEL_REPEATED(3);

    public static final int LABEL_OPTIONAL_VALUE = 1;
    public static final int LABEL_REPEATED_VALUE = 3;
    public static final int LABEL_REQUIRED_VALUE = 2;
    private static final y.d internalValueMap = new y.d() { // from class: com.google.protobuf.DescriptorProtos$FieldDescriptorProto$Label.a
        @Override // com.google.protobuf.y.d
        public DescriptorProtos$FieldDescriptorProto$Label findValueByNumber(int i11) {
            return DescriptorProtos$FieldDescriptorProto$Label.forNumber(i11);
        }
    };
    private final int value;

    private static final class b implements y.e {
        static final y.e INSTANCE = new b();

        private b() {
        }

        @Override // com.google.protobuf.y.e
        public boolean isInRange(int i11) {
            return DescriptorProtos$FieldDescriptorProto$Label.forNumber(i11) != null;
        }
    }

    DescriptorProtos$FieldDescriptorProto$Label(int i11) {
        this.value = i11;
    }

    public static DescriptorProtos$FieldDescriptorProto$Label forNumber(int i11) {
        if (i11 == 1) {
            return LABEL_OPTIONAL;
        }
        if (i11 == 2) {
            return LABEL_REQUIRED;
        }
        if (i11 != 3) {
            return null;
        }
        return LABEL_REPEATED;
    }

    public static y.d internalGetValueMap() {
        return internalValueMap;
    }

    public static y.e internalGetVerifier() {
        return b.INSTANCE;
    }

    @Deprecated
    public static DescriptorProtos$FieldDescriptorProto$Label valueOf(int i11) {
        return forNumber(i11);
    }

    @Override // com.google.protobuf.y.c
    public final int getNumber() {
        return this.value;
    }
}
