package androidx.datastore.preferences.protobuf;

/* JADX INFO: loaded from: classes.dex */
public enum DescriptorProtos$FieldOptions$OptionTargetType implements w.a {
    TARGET_TYPE_UNKNOWN(0),
    TARGET_TYPE_FILE(1),
    TARGET_TYPE_EXTENSION_RANGE(2),
    TARGET_TYPE_MESSAGE(3),
    TARGET_TYPE_FIELD(4),
    TARGET_TYPE_ONEOF(5),
    TARGET_TYPE_ENUM(6),
    TARGET_TYPE_ENUM_ENTRY(7),
    TARGET_TYPE_SERVICE(8),
    TARGET_TYPE_METHOD(9);

    public static final int TARGET_TYPE_ENUM_ENTRY_VALUE = 7;
    public static final int TARGET_TYPE_ENUM_VALUE = 6;
    public static final int TARGET_TYPE_EXTENSION_RANGE_VALUE = 2;
    public static final int TARGET_TYPE_FIELD_VALUE = 4;
    public static final int TARGET_TYPE_FILE_VALUE = 1;
    public static final int TARGET_TYPE_MESSAGE_VALUE = 3;
    public static final int TARGET_TYPE_METHOD_VALUE = 9;
    public static final int TARGET_TYPE_ONEOF_VALUE = 5;
    public static final int TARGET_TYPE_SERVICE_VALUE = 8;
    public static final int TARGET_TYPE_UNKNOWN_VALUE = 0;
    private static final w.b internalValueMap = new w.b() { // from class: androidx.datastore.preferences.protobuf.DescriptorProtos$FieldOptions$OptionTargetType.a
    };
    private final int value;

    private static final class b implements w.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final w.c f8699a = new b();

        private b() {
        }

        @Override // androidx.datastore.preferences.protobuf.w.c
        public boolean isInRange(int i11) {
            return DescriptorProtos$FieldOptions$OptionTargetType.forNumber(i11) != null;
        }
    }

    DescriptorProtos$FieldOptions$OptionTargetType(int i11) {
        this.value = i11;
    }

    public static DescriptorProtos$FieldOptions$OptionTargetType forNumber(int i11) {
        switch (i11) {
            case 0:
                return TARGET_TYPE_UNKNOWN;
            case 1:
                return TARGET_TYPE_FILE;
            case 2:
                return TARGET_TYPE_EXTENSION_RANGE;
            case 3:
                return TARGET_TYPE_MESSAGE;
            case 4:
                return TARGET_TYPE_FIELD;
            case 5:
                return TARGET_TYPE_ONEOF;
            case 6:
                return TARGET_TYPE_ENUM;
            case 7:
                return TARGET_TYPE_ENUM_ENTRY;
            case 8:
                return TARGET_TYPE_SERVICE;
            case 9:
                return TARGET_TYPE_METHOD;
            default:
                return null;
        }
    }

    public static w.b internalGetValueMap() {
        return internalValueMap;
    }

    public static w.c internalGetVerifier() {
        return b.f8699a;
    }

    @Deprecated
    public static DescriptorProtos$FieldOptions$OptionTargetType valueOf(int i11) {
        return forNumber(i11);
    }

    @Override // androidx.datastore.preferences.protobuf.w.a
    public final int getNumber() {
        return this.value;
    }
}
