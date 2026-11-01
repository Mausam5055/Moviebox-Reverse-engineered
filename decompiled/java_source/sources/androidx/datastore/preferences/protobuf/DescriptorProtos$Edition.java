package androidx.datastore.preferences.protobuf;

/* JADX INFO: loaded from: classes.dex */
public enum DescriptorProtos$Edition implements w.a {
    EDITION_UNKNOWN(0),
    EDITION_LEGACY(EDITION_LEGACY_VALUE),
    EDITION_PROTO2(EDITION_PROTO2_VALUE),
    EDITION_PROTO3(EDITION_PROTO3_VALUE),
    EDITION_2023(1000),
    EDITION_2024(1001),
    EDITION_1_TEST_ONLY(1),
    EDITION_2_TEST_ONLY(2),
    EDITION_99997_TEST_ONLY(EDITION_99997_TEST_ONLY_VALUE),
    EDITION_99998_TEST_ONLY(EDITION_99998_TEST_ONLY_VALUE),
    EDITION_99999_TEST_ONLY(EDITION_99999_TEST_ONLY_VALUE),
    EDITION_MAX(Integer.MAX_VALUE);

    public static final int EDITION_1_TEST_ONLY_VALUE = 1;
    public static final int EDITION_2023_VALUE = 1000;
    public static final int EDITION_2024_VALUE = 1001;
    public static final int EDITION_2_TEST_ONLY_VALUE = 2;
    public static final int EDITION_99997_TEST_ONLY_VALUE = 99997;
    public static final int EDITION_99998_TEST_ONLY_VALUE = 99998;
    public static final int EDITION_99999_TEST_ONLY_VALUE = 99999;
    public static final int EDITION_LEGACY_VALUE = 900;
    public static final int EDITION_MAX_VALUE = Integer.MAX_VALUE;
    public static final int EDITION_PROTO2_VALUE = 998;
    public static final int EDITION_PROTO3_VALUE = 999;
    public static final int EDITION_UNKNOWN_VALUE = 0;
    private static final w.b internalValueMap = new w.b() { // from class: androidx.datastore.preferences.protobuf.DescriptorProtos$Edition.a
    };
    private final int value;

    private static final class b implements w.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final w.c f8686a = new b();

        private b() {
        }

        @Override // androidx.datastore.preferences.protobuf.w.c
        public boolean isInRange(int i11) {
            return DescriptorProtos$Edition.forNumber(i11) != null;
        }
    }

    DescriptorProtos$Edition(int i11) {
        this.value = i11;
    }

    public static DescriptorProtos$Edition forNumber(int i11) {
        if (i11 == 0) {
            return EDITION_UNKNOWN;
        }
        if (i11 == 1) {
            return EDITION_1_TEST_ONLY;
        }
        if (i11 == 2) {
            return EDITION_2_TEST_ONLY;
        }
        if (i11 == 900) {
            return EDITION_LEGACY;
        }
        if (i11 == Integer.MAX_VALUE) {
            return EDITION_MAX;
        }
        switch (i11) {
            case EDITION_PROTO2_VALUE:
                return EDITION_PROTO2;
            case EDITION_PROTO3_VALUE:
                return EDITION_PROTO3;
            case 1000:
                return EDITION_2023;
            case 1001:
                return EDITION_2024;
            default:
                switch (i11) {
                    case EDITION_99997_TEST_ONLY_VALUE:
                        return EDITION_99997_TEST_ONLY;
                    case EDITION_99998_TEST_ONLY_VALUE:
                        return EDITION_99998_TEST_ONLY;
                    case EDITION_99999_TEST_ONLY_VALUE:
                        return EDITION_99999_TEST_ONLY;
                    default:
                        return null;
                }
        }
    }

    public static w.b internalGetValueMap() {
        return internalValueMap;
    }

    public static w.c internalGetVerifier() {
        return b.f8686a;
    }

    @Deprecated
    public static DescriptorProtos$Edition valueOf(int i11) {
        return forNumber(i11);
    }

    @Override // androidx.datastore.preferences.protobuf.w.a
    public final int getNumber() {
        return this.value;
    }
}
