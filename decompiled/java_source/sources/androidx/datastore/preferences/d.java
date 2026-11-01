package androidx.datastore.preferences;

import androidx.datastore.preferences.protobuf.GeneratedMessageLite;
import androidx.datastore.preferences.protobuf.MapFieldLite;
import androidx.datastore.preferences.protobuf.WireFormat;
import androidx.datastore.preferences.protobuf.h0;
import androidx.datastore.preferences.protobuf.o0;
import androidx.datastore.preferences.protobuf.v0;
import java.io.InputStream;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class d extends GeneratedMessageLite implements o0 {
    private static final d DEFAULT_INSTANCE;
    private static volatile v0 PARSER = null;
    public static final int PREFERENCES_FIELD_NUMBER = 1;
    private MapFieldLite<String, PreferencesProto$Value> preferences_ = MapFieldLite.emptyMapField();

    public static final class a extends GeneratedMessageLite.a implements o0 {
        private a() {
            super(d.DEFAULT_INSTANCE);
        }

        /* synthetic */ a(c cVar) {
            this();
        }

        public a x(String str, PreferencesProto$Value preferencesProto$Value) {
            str.getClass();
            preferencesProto$Value.getClass();
            p();
            ((d) this.f8709b).M().put(str, preferencesProto$Value);
            return this;
        }
    }

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final h0 f8659a = h0.d(WireFormat.FieldType.STRING, "", WireFormat.FieldType.MESSAGE, PreferencesProto$Value.V());
    }

    static {
        d dVar = new d();
        DEFAULT_INSTANCE = dVar;
        GeneratedMessageLite.I(d.class, dVar);
    }

    private d() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map M() {
        return O();
    }

    private MapFieldLite O() {
        if (!this.preferences_.isMutable()) {
            this.preferences_ = this.preferences_.mutableCopy();
        }
        return this.preferences_;
    }

    private MapFieldLite P() {
        return this.preferences_;
    }

    public static a Q() {
        return (a) DEFAULT_INSTANCE.o();
    }

    public static d R(InputStream inputStream) {
        return (d) GeneratedMessageLite.G(DEFAULT_INSTANCE, inputStream);
    }

    public Map N() {
        return Collections.unmodifiableMap(P());
    }

    @Override // androidx.datastore.preferences.protobuf.GeneratedMessageLite
    protected final Object r(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        c cVar = null;
        switch (c.f8650a[methodToInvoke.ordinal()]) {
            case 1:
                return new d();
            case 2:
                return new a(cVar);
            case 3:
                return GeneratedMessageLite.E(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u00012", new Object[]{"preferences_", b.f8659a});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                v0 bVar = PARSER;
                if (bVar == null) {
                    synchronized (d.class) {
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
