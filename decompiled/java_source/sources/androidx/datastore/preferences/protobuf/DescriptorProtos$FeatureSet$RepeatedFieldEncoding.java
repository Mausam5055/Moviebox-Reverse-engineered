package androidx.datastore.preferences.protobuf;

/* JADX INFO: loaded from: classes.dex */
public enum DescriptorProtos$FeatureSet$RepeatedFieldEncoding implements w.a {
    REPEATED_FIELD_ENCODING_UNKNOWN(0),
    PACKED(1),
    EXPANDED(2);

    public static final int EXPANDED_VALUE = 2;
    public static final int PACKED_VALUE = 1;
    public static final int REPEATED_FIELD_ENCODING_UNKNOWN_VALUE = 0;
    private static final w.b internalValueMap = new w.b() { // from class: androidx.datastore.preferences.protobuf.DescriptorProtos$FeatureSet$RepeatedFieldEncoding.a
    };
    private final int value;

    private static final class b implements w.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final w.c f8692a = new b();

        private b() {
        }

        @Override // androidx.datastore.preferences.protobuf.w.c
        public boolean isInRange(int i11) {
            return DescriptorProtos$FeatureSet$RepeatedFieldEncoding.forNumber(i11) != null;
        }
    }

    DescriptorProtos$FeatureSet$RepeatedFieldEncoding(int i11) {
        this.value = i11;
    }

    public static DescriptorProtos$FeatureSet$RepeatedFieldEncoding forNumber(int i11) {
        if (i11 == 0) {
            return REPEATED_FIELD_ENCODING_UNKNOWN;
        }
        if (i11 == 1) {
            return PACKED;
        }
        if (i11 != 2) {
            return null;
        }
        return EXPANDED;
    }

    public static w.b internalGetValueMap() {
        return internalValueMap;
    }

    public static w.c internalGetVerifier() {
        return b.f8692a;
    }

    @Deprecated
    public static DescriptorProtos$FeatureSet$RepeatedFieldEncoding valueOf(int i11) {
        return forNumber(i11);
    }

    @Override // androidx.datastore.preferences.protobuf.w.a
    public final int getNumber() {
        return this.value;
    }
}
