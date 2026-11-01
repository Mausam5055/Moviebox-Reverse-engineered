package androidx.datastore.preferences.protobuf;

/* JADX INFO: loaded from: classes.dex */
public enum DescriptorProtos$FeatureSet$JsonFormat implements w.a {
    JSON_FORMAT_UNKNOWN(0),
    ALLOW(1),
    LEGACY_BEST_EFFORT(2);

    public static final int ALLOW_VALUE = 1;
    public static final int JSON_FORMAT_UNKNOWN_VALUE = 0;
    public static final int LEGACY_BEST_EFFORT_VALUE = 2;
    private static final w.b internalValueMap = new w.b() { // from class: androidx.datastore.preferences.protobuf.DescriptorProtos$FeatureSet$JsonFormat.a
    };
    private final int value;

    private static final class b implements w.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final w.c f8690a = new b();

        private b() {
        }

        @Override // androidx.datastore.preferences.protobuf.w.c
        public boolean isInRange(int i11) {
            return DescriptorProtos$FeatureSet$JsonFormat.forNumber(i11) != null;
        }
    }

    DescriptorProtos$FeatureSet$JsonFormat(int i11) {
        this.value = i11;
    }

    public static DescriptorProtos$FeatureSet$JsonFormat forNumber(int i11) {
        if (i11 == 0) {
            return JSON_FORMAT_UNKNOWN;
        }
        if (i11 == 1) {
            return ALLOW;
        }
        if (i11 != 2) {
            return null;
        }
        return LEGACY_BEST_EFFORT;
    }

    public static w.b internalGetValueMap() {
        return internalValueMap;
    }

    public static w.c internalGetVerifier() {
        return b.f8690a;
    }

    @Deprecated
    public static DescriptorProtos$FeatureSet$JsonFormat valueOf(int i11) {
        return forNumber(i11);
    }

    @Override // androidx.datastore.preferences.protobuf.w.a
    public final int getNumber() {
        return this.value;
    }
}
