package androidx.datastore.preferences.protobuf;

/* JADX INFO: loaded from: classes.dex */
public enum DescriptorProtos$ExtensionRangeOptions$VerificationState implements w.a {
    DECLARATION(0),
    UNVERIFIED(1);

    public static final int DECLARATION_VALUE = 0;
    public static final int UNVERIFIED_VALUE = 1;
    private static final w.b internalValueMap = new w.b() { // from class: androidx.datastore.preferences.protobuf.DescriptorProtos$ExtensionRangeOptions$VerificationState.a
    };
    private final int value;

    private static final class b implements w.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final w.c f8687a = new b();

        private b() {
        }

        @Override // androidx.datastore.preferences.protobuf.w.c
        public boolean isInRange(int i11) {
            return DescriptorProtos$ExtensionRangeOptions$VerificationState.forNumber(i11) != null;
        }
    }

    DescriptorProtos$ExtensionRangeOptions$VerificationState(int i11) {
        this.value = i11;
    }

    public static DescriptorProtos$ExtensionRangeOptions$VerificationState forNumber(int i11) {
        if (i11 == 0) {
            return DECLARATION;
        }
        if (i11 != 1) {
            return null;
        }
        return UNVERIFIED;
    }

    public static w.b internalGetValueMap() {
        return internalValueMap;
    }

    public static w.c internalGetVerifier() {
        return b.f8687a;
    }

    @Deprecated
    public static DescriptorProtos$ExtensionRangeOptions$VerificationState valueOf(int i11) {
        return forNumber(i11);
    }

    @Override // androidx.datastore.preferences.protobuf.w.a
    public final int getNumber() {
        return this.value;
    }
}
