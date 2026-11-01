package androidx.datastore.preferences;

import androidx.datastore.preferences.protobuf.GeneratedMessageLite;
import androidx.datastore.preferences.protobuf.o0;
import androidx.datastore.preferences.protobuf.v0;
import androidx.datastore.preferences.protobuf.w;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class e extends GeneratedMessageLite implements o0 {
    private static final e DEFAULT_INSTANCE;
    private static volatile v0 PARSER = null;
    public static final int STRINGS_FIELD_NUMBER = 1;
    private w.d strings_ = GeneratedMessageLite.s();

    public static final class a extends GeneratedMessageLite.a implements o0 {
        private a() {
            super(e.DEFAULT_INSTANCE);
        }

        /* synthetic */ a(c cVar) {
            this();
        }

        public a x(Iterable iterable) {
            p();
            ((e) this.f8709b).M(iterable);
            return this;
        }
    }

    static {
        e eVar = new e();
        DEFAULT_INSTANCE = eVar;
        GeneratedMessageLite.I(e.class, eVar);
    }

    private e() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M(Iterable iterable) {
        N();
        androidx.datastore.preferences.protobuf.a.b(iterable, this.strings_);
    }

    private void N() {
        w.d dVar = this.strings_;
        if (dVar.isModifiable()) {
            return;
        }
        this.strings_ = GeneratedMessageLite.C(dVar);
    }

    public static e O() {
        return DEFAULT_INSTANCE;
    }

    public static a Q() {
        return (a) DEFAULT_INSTANCE.o();
    }

    public List P() {
        return this.strings_;
    }

    @Override // androidx.datastore.preferences.protobuf.GeneratedMessageLite
    protected final Object r(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        c cVar = null;
        switch (c.f8650a[methodToInvoke.ordinal()]) {
            case 1:
                return new e();
            case 2:
                return new a(cVar);
            case 3:
                return GeneratedMessageLite.E(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a", new Object[]{"strings_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                v0 bVar = PARSER;
                if (bVar == null) {
                    synchronized (e.class) {
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
