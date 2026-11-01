package androidx.datastore.preferences.protobuf;

/* JADX INFO: loaded from: classes.dex */
public enum DescriptorProtos$GeneratedCodeInfo$Annotation$Semantic implements w.a {
    NONE(0),
    SET(1),
    ALIAS(2);

    public static final int ALIAS_VALUE = 2;
    public static final int NONE_VALUE = 0;
    public static final int SET_VALUE = 1;
    private static final w.b internalValueMap = new w.b() { // from class: androidx.datastore.preferences.protobuf.DescriptorProtos$GeneratedCodeInfo$Annotation$Semantic.a
    };
    private final int value;

    private static final class b implements w.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final w.c f8701a = new b();

        private b() {
        }

        @Override // androidx.datastore.preferences.protobuf.w.c
        public boolean isInRange(int i11) {
            return DescriptorProtos$GeneratedCodeInfo$Annotation$Semantic.forNumber(i11) != null;
        }
    }

    DescriptorProtos$GeneratedCodeInfo$Annotation$Semantic(int i11) {
        this.value = i11;
    }

    public static DescriptorProtos$GeneratedCodeInfo$Annotation$Semantic forNumber(int i11) {
        if (i11 == 0) {
            return NONE;
        }
        if (i11 == 1) {
            return SET;
        }
        if (i11 != 2) {
            return null;
        }
        return ALIAS;
    }

    public static w.b internalGetValueMap() {
        return internalValueMap;
    }

    public static w.c internalGetVerifier() {
        return b.f8701a;
    }

    @Deprecated
    public static DescriptorProtos$GeneratedCodeInfo$Annotation$Semantic valueOf(int i11) {
        return forNumber(i11);
    }

    @Override // androidx.datastore.preferences.protobuf.w.a
    public final int getNumber() {
        return this.value;
    }
}
