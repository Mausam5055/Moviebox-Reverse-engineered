package androidx.datastore.preferences.protobuf;

/* JADX INFO: loaded from: classes.dex */
public enum DescriptorProtos$FeatureSet$MessageEncoding implements w.a {
    MESSAGE_ENCODING_UNKNOWN(0),
    LENGTH_PREFIXED(1),
    DELIMITED(2);

    public static final int DELIMITED_VALUE = 2;
    public static final int LENGTH_PREFIXED_VALUE = 1;
    public static final int MESSAGE_ENCODING_UNKNOWN_VALUE = 0;
    private static final w.b internalValueMap = new w.b() { // from class: androidx.datastore.preferences.protobuf.DescriptorProtos$FeatureSet$MessageEncoding.a
    };
    private final int value;

    private static final class b implements w.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final w.c f8691a = new b();

        private b() {
        }

        @Override // androidx.datastore.preferences.protobuf.w.c
        public boolean isInRange(int i11) {
            return DescriptorProtos$FeatureSet$MessageEncoding.forNumber(i11) != null;
        }
    }

    DescriptorProtos$FeatureSet$MessageEncoding(int i11) {
        this.value = i11;
    }

    public static DescriptorProtos$FeatureSet$MessageEncoding forNumber(int i11) {
        if (i11 == 0) {
            return MESSAGE_ENCODING_UNKNOWN;
        }
        if (i11 == 1) {
            return LENGTH_PREFIXED;
        }
        if (i11 != 2) {
            return null;
        }
        return DELIMITED;
    }

    public static w.b internalGetValueMap() {
        return internalValueMap;
    }

    public static w.c internalGetVerifier() {
        return b.f8691a;
    }

    @Deprecated
    public static DescriptorProtos$FeatureSet$MessageEncoding valueOf(int i11) {
        return forNumber(i11);
    }

    @Override // androidx.datastore.preferences.protobuf.w.a
    public final int getNumber() {
        return this.value;
    }
}
