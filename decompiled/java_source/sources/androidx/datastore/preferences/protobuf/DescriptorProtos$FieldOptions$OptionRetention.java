package androidx.datastore.preferences.protobuf;

/* JADX INFO: loaded from: classes.dex */
public enum DescriptorProtos$FieldOptions$OptionRetention implements w.a {
    RETENTION_UNKNOWN(0),
    RETENTION_RUNTIME(1),
    RETENTION_SOURCE(2);

    public static final int RETENTION_RUNTIME_VALUE = 1;
    public static final int RETENTION_SOURCE_VALUE = 2;
    public static final int RETENTION_UNKNOWN_VALUE = 0;
    private static final w.b internalValueMap = new w.b() { // from class: androidx.datastore.preferences.protobuf.DescriptorProtos$FieldOptions$OptionRetention.a
    };
    private final int value;

    private static final class b implements w.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final w.c f8698a = new b();

        private b() {
        }

        @Override // androidx.datastore.preferences.protobuf.w.c
        public boolean isInRange(int i11) {
            return DescriptorProtos$FieldOptions$OptionRetention.forNumber(i11) != null;
        }
    }

    DescriptorProtos$FieldOptions$OptionRetention(int i11) {
        this.value = i11;
    }

    public static DescriptorProtos$FieldOptions$OptionRetention forNumber(int i11) {
        if (i11 == 0) {
            return RETENTION_UNKNOWN;
        }
        if (i11 == 1) {
            return RETENTION_RUNTIME;
        }
        if (i11 != 2) {
            return null;
        }
        return RETENTION_SOURCE;
    }

    public static w.b internalGetValueMap() {
        return internalValueMap;
    }

    public static w.c internalGetVerifier() {
        return b.f8698a;
    }

    @Deprecated
    public static DescriptorProtos$FieldOptions$OptionRetention valueOf(int i11) {
        return forNumber(i11);
    }

    @Override // androidx.datastore.preferences.protobuf.w.a
    public final int getNumber() {
        return this.value;
    }
}
