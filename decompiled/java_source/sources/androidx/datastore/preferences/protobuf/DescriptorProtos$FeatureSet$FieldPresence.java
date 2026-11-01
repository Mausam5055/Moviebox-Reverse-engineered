package androidx.datastore.preferences.protobuf;

/* JADX INFO: loaded from: classes.dex */
public enum DescriptorProtos$FeatureSet$FieldPresence implements w.a {
    FIELD_PRESENCE_UNKNOWN(0),
    EXPLICIT(1),
    IMPLICIT(2),
    LEGACY_REQUIRED(3);

    public static final int EXPLICIT_VALUE = 1;
    public static final int FIELD_PRESENCE_UNKNOWN_VALUE = 0;
    public static final int IMPLICIT_VALUE = 2;
    public static final int LEGACY_REQUIRED_VALUE = 3;
    private static final w.b internalValueMap = new w.b() { // from class: androidx.datastore.preferences.protobuf.DescriptorProtos$FeatureSet$FieldPresence.a
    };
    private final int value;

    private static final class b implements w.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final w.c f8689a = new b();

        private b() {
        }

        @Override // androidx.datastore.preferences.protobuf.w.c
        public boolean isInRange(int i11) {
            return DescriptorProtos$FeatureSet$FieldPresence.forNumber(i11) != null;
        }
    }

    DescriptorProtos$FeatureSet$FieldPresence(int i11) {
        this.value = i11;
    }

    public static DescriptorProtos$FeatureSet$FieldPresence forNumber(int i11) {
        if (i11 == 0) {
            return FIELD_PRESENCE_UNKNOWN;
        }
        if (i11 == 1) {
            return EXPLICIT;
        }
        if (i11 == 2) {
            return IMPLICIT;
        }
        if (i11 != 3) {
            return null;
        }
        return LEGACY_REQUIRED;
    }

    public static w.b internalGetValueMap() {
        return internalValueMap;
    }

    public static w.c internalGetVerifier() {
        return b.f8689a;
    }

    @Deprecated
    public static DescriptorProtos$FeatureSet$FieldPresence valueOf(int i11) {
        return forNumber(i11);
    }

    @Override // androidx.datastore.preferences.protobuf.w.a
    public final int getNumber() {
        return this.value;
    }
}
