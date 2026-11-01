package androidx.datastore.preferences.protobuf;

/* JADX INFO: loaded from: classes.dex */
public enum DescriptorProtos$FieldOptions$JSType implements w.a {
    JS_NORMAL(0),
    JS_STRING(1),
    JS_NUMBER(2);

    public static final int JS_NORMAL_VALUE = 0;
    public static final int JS_NUMBER_VALUE = 2;
    public static final int JS_STRING_VALUE = 1;
    private static final w.b internalValueMap = new w.b() { // from class: androidx.datastore.preferences.protobuf.DescriptorProtos$FieldOptions$JSType.a
    };
    private final int value;

    private static final class b implements w.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final w.c f8697a = new b();

        private b() {
        }

        @Override // androidx.datastore.preferences.protobuf.w.c
        public boolean isInRange(int i11) {
            return DescriptorProtos$FieldOptions$JSType.forNumber(i11) != null;
        }
    }

    DescriptorProtos$FieldOptions$JSType(int i11) {
        this.value = i11;
    }

    public static DescriptorProtos$FieldOptions$JSType forNumber(int i11) {
        if (i11 == 0) {
            return JS_NORMAL;
        }
        if (i11 == 1) {
            return JS_STRING;
        }
        if (i11 != 2) {
            return null;
        }
        return JS_NUMBER;
    }

    public static w.b internalGetValueMap() {
        return internalValueMap;
    }

    public static w.c internalGetVerifier() {
        return b.f8697a;
    }

    @Deprecated
    public static DescriptorProtos$FieldOptions$JSType valueOf(int i11) {
        return forNumber(i11);
    }

    @Override // androidx.datastore.preferences.protobuf.w.a
    public final int getNumber() {
        return this.value;
    }
}
