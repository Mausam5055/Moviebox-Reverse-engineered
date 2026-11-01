package com.google.protobuf;

/* JADX INFO: loaded from: classes4.dex */
public enum DescriptorProtos$FieldOptions$CType implements y.c {
    STRING(0),
    CORD(1),
    STRING_PIECE(2);

    public static final int CORD_VALUE = 1;
    public static final int STRING_PIECE_VALUE = 2;
    public static final int STRING_VALUE = 0;
    private static final y.d internalValueMap = new y.d() { // from class: com.google.protobuf.DescriptorProtos$FieldOptions$CType.a
        @Override // com.google.protobuf.y.d
        public DescriptorProtos$FieldOptions$CType findValueByNumber(int i11) {
            return DescriptorProtos$FieldOptions$CType.forNumber(i11);
        }
    };
    private final int value;

    private static final class b implements y.e {
        static final y.e INSTANCE = new b();

        private b() {
        }

        @Override // com.google.protobuf.y.e
        public boolean isInRange(int i11) {
            return DescriptorProtos$FieldOptions$CType.forNumber(i11) != null;
        }
    }

    DescriptorProtos$FieldOptions$CType(int i11) {
        this.value = i11;
    }

    public static DescriptorProtos$FieldOptions$CType forNumber(int i11) {
        if (i11 == 0) {
            return STRING;
        }
        if (i11 == 1) {
            return CORD;
        }
        if (i11 != 2) {
            return null;
        }
        return STRING_PIECE;
    }

    public static y.d internalGetValueMap() {
        return internalValueMap;
    }

    public static y.e internalGetVerifier() {
        return b.INSTANCE;
    }

    @Deprecated
    public static DescriptorProtos$FieldOptions$CType valueOf(int i11) {
        return forNumber(i11);
    }

    @Override // com.google.protobuf.y.c
    public final int getNumber() {
        return this.value;
    }
}
