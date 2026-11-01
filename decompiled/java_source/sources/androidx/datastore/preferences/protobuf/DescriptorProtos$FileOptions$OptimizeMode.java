package androidx.datastore.preferences.protobuf;

/* JADX INFO: loaded from: classes.dex */
public enum DescriptorProtos$FileOptions$OptimizeMode implements w.a {
    SPEED(1),
    CODE_SIZE(2),
    LITE_RUNTIME(3);

    public static final int CODE_SIZE_VALUE = 2;
    public static final int LITE_RUNTIME_VALUE = 3;
    public static final int SPEED_VALUE = 1;
    private static final w.b internalValueMap = new w.b() { // from class: androidx.datastore.preferences.protobuf.DescriptorProtos$FileOptions$OptimizeMode.a
    };
    private final int value;

    private static final class b implements w.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final w.c f8700a = new b();

        private b() {
        }

        @Override // androidx.datastore.preferences.protobuf.w.c
        public boolean isInRange(int i11) {
            return DescriptorProtos$FileOptions$OptimizeMode.forNumber(i11) != null;
        }
    }

    DescriptorProtos$FileOptions$OptimizeMode(int i11) {
        this.value = i11;
    }

    public static DescriptorProtos$FileOptions$OptimizeMode forNumber(int i11) {
        if (i11 == 1) {
            return SPEED;
        }
        if (i11 == 2) {
            return CODE_SIZE;
        }
        if (i11 != 3) {
            return null;
        }
        return LITE_RUNTIME;
    }

    public static w.b internalGetValueMap() {
        return internalValueMap;
    }

    public static w.c internalGetVerifier() {
        return b.f8700a;
    }

    @Deprecated
    public static DescriptorProtos$FileOptions$OptimizeMode valueOf(int i11) {
        return forNumber(i11);
    }

    @Override // androidx.datastore.preferences.protobuf.w.a
    public final int getNumber() {
        return this.value;
    }
}
