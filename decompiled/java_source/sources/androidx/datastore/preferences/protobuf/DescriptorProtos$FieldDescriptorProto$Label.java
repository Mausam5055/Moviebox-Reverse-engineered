package androidx.datastore.preferences.protobuf;

/* JADX INFO: loaded from: classes.dex */
public enum DescriptorProtos$FieldDescriptorProto$Label implements w.a {
    LABEL_OPTIONAL(1),
    LABEL_REPEATED(3),
    LABEL_REQUIRED(2);

    public static final int LABEL_OPTIONAL_VALUE = 1;
    public static final int LABEL_REPEATED_VALUE = 3;
    public static final int LABEL_REQUIRED_VALUE = 2;
    private static final w.b internalValueMap = new w.b() { // from class: androidx.datastore.preferences.protobuf.DescriptorProtos$FieldDescriptorProto$Label.a
    };
    private final int value;

    private static final class b implements w.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final w.c f8694a = new b();

        private b() {
        }

        @Override // androidx.datastore.preferences.protobuf.w.c
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

    public static w.b internalGetValueMap() {
        return internalValueMap;
    }

    public static w.c internalGetVerifier() {
        return b.f8694a;
    }

    @Deprecated
    public static DescriptorProtos$FieldDescriptorProto$Label valueOf(int i11) {
        return forNumber(i11);
    }

    @Override // androidx.datastore.preferences.protobuf.w.a
    public final int getNumber() {
        return this.value;
    }
}
