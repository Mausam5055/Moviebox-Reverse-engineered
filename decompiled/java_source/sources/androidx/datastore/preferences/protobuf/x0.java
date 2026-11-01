package androidx.datastore.preferences.protobuf;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes.dex */
final class x0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final x0 f8930c = new x0();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static boolean f8931d = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ConcurrentMap f8933b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c1 f8932a = new g0();

    private x0() {
    }

    public static x0 a() {
        return f8930c;
    }

    public b1 b(Class cls, b1 b1Var) {
        w.b(cls, "messageType");
        w.b(b1Var, "schema");
        return (b1) this.f8933b.putIfAbsent(cls, b1Var);
    }

    public b1 c(Class cls) {
        w.b(cls, "messageType");
        b1 b1Var = (b1) this.f8933b.get(cls);
        if (b1Var != null) {
            return b1Var;
        }
        b1 b1VarCreateSchema = this.f8932a.createSchema(cls);
        b1 b1VarB = b(cls, b1VarCreateSchema);
        return b1VarB != null ? b1VarB : b1VarCreateSchema;
    }

    public b1 d(Object obj) {
        return c(obj.getClass());
    }
}
