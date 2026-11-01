package androidx.datastore.preferences.protobuf;

/* JADX INFO: loaded from: classes.dex */
public enum DescriptorProtos$FeatureSet$Utf8Validation implements w.a {
    UTF8_VALIDATION_UNKNOWN(0),
    VERIFY(2),
    NONE(3);

    public static final int NONE_VALUE = 3;
    public static final int UTF8_VALIDATION_UNKNOWN_VALUE = 0;
    public static final int VERIFY_VALUE = 2;
    private static final w.b internalValueMap = new w.b() { // from class: androidx.datastore.preferences.protobuf.DescriptorProtos$FeatureSet$Utf8Validation.a
    };
    private final int value;

    private static final class b implements w.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final w.c f8693a = new b();

        private b() {
        }

        @Override // androidx.datastore.preferences.protobuf.w.c
        public boolean isInRange(int i11) {
            return DescriptorProtos$FeatureSet$Utf8Validation.forNumber(i11) != null;
        }
    }

    DescriptorProtos$FeatureSet$Utf8Validation(int i11) {
        this.value = i11;
    }

    public static DescriptorProtos$FeatureSet$Utf8Validation forNumber(int i11) {
        if (i11 == 0) {
            return UTF8_VALIDATION_UNKNOWN;
        }
        if (i11 == 2) {
            return VERIFY;
        }
        if (i11 != 3) {
            return null;
        }
        return NONE;
    }

    public static w.b internalGetValueMap() {
        return internalValueMap;
    }

    public static w.c internalGetVerifier() {
        return b.f8693a;
    }

    @Deprecated
    public static DescriptorProtos$FeatureSet$Utf8Validation valueOf(int i11) {
        return forNumber(i11);
    }

    @Override // androidx.datastore.preferences.protobuf.w.a
    public final int getNumber() {
        return this.value;
    }
}
