package androidx.datastore.preferences;

import androidx.datastore.preferences.protobuf.ByteString;
import androidx.datastore.preferences.protobuf.GeneratedMessageLite;
import androidx.datastore.preferences.protobuf.o0;
import androidx.datastore.preferences.protobuf.v0;

/* JADX INFO: loaded from: classes.dex */
public final class PreferencesProto$Value extends GeneratedMessageLite implements o0 {
    public static final int BOOLEAN_FIELD_NUMBER = 1;
    public static final int BYTES_FIELD_NUMBER = 8;
    private static final PreferencesProto$Value DEFAULT_INSTANCE;
    public static final int DOUBLE_FIELD_NUMBER = 7;
    public static final int FLOAT_FIELD_NUMBER = 2;
    public static final int INTEGER_FIELD_NUMBER = 3;
    public static final int LONG_FIELD_NUMBER = 4;
    private static volatile v0 PARSER = null;
    public static final int STRING_FIELD_NUMBER = 5;
    public static final int STRING_SET_FIELD_NUMBER = 6;
    private int valueCase_ = 0;
    private Object value_;

    public enum ValueCase {
        BOOLEAN(1),
        FLOAT(2),
        INTEGER(3),
        LONG(4),
        STRING(5),
        STRING_SET(6),
        DOUBLE(7),
        BYTES(8),
        VALUE_NOT_SET(0);

        private final int value;

        ValueCase(int i11) {
            this.value = i11;
        }

        public static ValueCase forNumber(int i11) {
            switch (i11) {
                case 0:
                    return VALUE_NOT_SET;
                case 1:
                    return BOOLEAN;
                case 2:
                    return FLOAT;
                case 3:
                    return INTEGER;
                case 4:
                    return LONG;
                case 5:
                    return STRING;
                case 6:
                    return STRING_SET;
                case 7:
                    return DOUBLE;
                case 8:
                    return BYTES;
                default:
                    return null;
            }
        }

        @Deprecated
        public static ValueCase valueOf(int i11) {
            return forNumber(i11);
        }

        public int getNumber() {
            return this.value;
        }
    }

    public static final class a extends GeneratedMessageLite.a implements o0 {
        private a() {
            super(PreferencesProto$Value.DEFAULT_INSTANCE);
        }

        /* synthetic */ a(c cVar) {
            this();
        }

        public a A(float f11) {
            p();
            ((PreferencesProto$Value) this.f8709b).h0(f11);
            return this;
        }

        public a B(int i11) {
            p();
            ((PreferencesProto$Value) this.f8709b).i0(i11);
            return this;
        }

        public a C(long j11) {
            p();
            ((PreferencesProto$Value) this.f8709b).j0(j11);
            return this;
        }

        public a D(String str) {
            p();
            ((PreferencesProto$Value) this.f8709b).k0(str);
            return this;
        }

        public a E(e.a aVar) {
            p();
            ((PreferencesProto$Value) this.f8709b).l0((e) aVar.m());
            return this;
        }

        public a x(boolean z10) {
            p();
            ((PreferencesProto$Value) this.f8709b).e0(z10);
            return this;
        }

        public a y(ByteString byteString) {
            p();
            ((PreferencesProto$Value) this.f8709b).f0(byteString);
            return this;
        }

        public a z(double d11) {
            p();
            ((PreferencesProto$Value) this.f8709b).g0(d11);
            return this;
        }
    }

    static {
        PreferencesProto$Value preferencesProto$Value = new PreferencesProto$Value();
        DEFAULT_INSTANCE = preferencesProto$Value;
        GeneratedMessageLite.I(PreferencesProto$Value.class, preferencesProto$Value);
    }

    private PreferencesProto$Value() {
    }

    public static PreferencesProto$Value V() {
        return DEFAULT_INSTANCE;
    }

    public static a d0() {
        return (a) DEFAULT_INSTANCE.o();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e0(boolean z10) {
        this.valueCase_ = 1;
        this.value_ = Boolean.valueOf(z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f0(ByteString byteString) {
        byteString.getClass();
        this.valueCase_ = 8;
        this.value_ = byteString;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g0(double d11) {
        this.valueCase_ = 7;
        this.value_ = Double.valueOf(d11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h0(float f11) {
        this.valueCase_ = 2;
        this.value_ = Float.valueOf(f11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i0(int i11) {
        this.valueCase_ = 3;
        this.value_ = Integer.valueOf(i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j0(long j11) {
        this.valueCase_ = 4;
        this.value_ = Long.valueOf(j11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k0(String str) {
        str.getClass();
        this.valueCase_ = 5;
        this.value_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l0(e eVar) {
        eVar.getClass();
        this.value_ = eVar;
        this.valueCase_ = 6;
    }

    public boolean T() {
        if (this.valueCase_ == 1) {
            return ((Boolean) this.value_).booleanValue();
        }
        return false;
    }

    public ByteString U() {
        return this.valueCase_ == 8 ? (ByteString) this.value_ : ByteString.EMPTY;
    }

    public double W() {
        if (this.valueCase_ == 7) {
            return ((Double) this.value_).doubleValue();
        }
        return 0.0d;
    }

    public float X() {
        if (this.valueCase_ == 2) {
            return ((Float) this.value_).floatValue();
        }
        return 0.0f;
    }

    public int Y() {
        if (this.valueCase_ == 3) {
            return ((Integer) this.value_).intValue();
        }
        return 0;
    }

    public long Z() {
        if (this.valueCase_ == 4) {
            return ((Long) this.value_).longValue();
        }
        return 0L;
    }

    public String a0() {
        return this.valueCase_ == 5 ? (String) this.value_ : "";
    }

    public e b0() {
        return this.valueCase_ == 6 ? (e) this.value_ : e.O();
    }

    public ValueCase c0() {
        return ValueCase.forNumber(this.valueCase_);
    }

    @Override // androidx.datastore.preferences.protobuf.GeneratedMessageLite
    protected final Object r(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        c cVar = null;
        switch (c.f8650a[methodToInvoke.ordinal()]) {
            case 1:
                return new PreferencesProto$Value();
            case 2:
                return new a(cVar);
            case 3:
                return GeneratedMessageLite.E(DEFAULT_INSTANCE, "\u0001\b\u0001\u0000\u0001\b\b\u0000\u0000\u0000\u0001:\u0000\u00024\u0000\u00037\u0000\u00045\u0000\u0005;\u0000\u0006<\u0000\u00073\u0000\b=\u0000", new Object[]{"value_", "valueCase_", e.class});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                v0 bVar = PARSER;
                if (bVar == null) {
                    synchronized (PreferencesProto$Value.class) {
                        try {
                            bVar = PARSER;
                            if (bVar == null) {
                                bVar = new GeneratedMessageLite.b(DEFAULT_INSTANCE);
                                PARSER = bVar;
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                        break;
                    }
                }
                return bVar;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }
}
