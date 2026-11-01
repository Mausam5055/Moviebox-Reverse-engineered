package androidx.room;

import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public abstract class e {
    protected abstract void a(z3.e eVar, Object obj);

    protected abstract String b();

    public final int c(z3.b connection, Object obj) throws Exception {
        Intrinsics.h(connection, "connection");
        if (obj == null) {
            return 0;
        }
        z3.e eVarD0 = connection.D0(b());
        try {
            a(eVarD0, obj);
            eVarD0.A0();
            AutoCloseableKt.a(eVarD0, null);
            return androidx.room.util.j.b(connection);
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                AutoCloseableKt.a(eVarD0, th2);
                throw th3;
            }
        }
    }
}
