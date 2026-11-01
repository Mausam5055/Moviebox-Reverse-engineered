package androidx.room;

import kotlin.Unit;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public abstract class g {
    protected abstract void a(z3.e eVar, Object obj);

    protected abstract String b();

    public final void c(z3.b connection, Iterable iterable) throws Exception {
        Intrinsics.h(connection, "connection");
        if (iterable == null) {
            return;
        }
        z3.e eVarD0 = connection.D0(b());
        try {
            for (Object obj : iterable) {
                if (obj != null) {
                    a(eVarD0, obj);
                    eVarD0.A0();
                    eVarD0.reset();
                }
            }
            Unit unit = Unit.f67061a;
            AutoCloseableKt.a(eVarD0, null);
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                AutoCloseableKt.a(eVarD0, th2);
                throw th3;
            }
        }
    }

    public final void d(z3.b connection, Object obj) throws Exception {
        Intrinsics.h(connection, "connection");
        if (obj == null) {
            return;
        }
        z3.e eVarD0 = connection.D0(b());
        try {
            a(eVarD0, obj);
            eVarD0.A0();
            AutoCloseableKt.a(eVarD0, null);
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                AutoCloseableKt.a(eVarD0, th2);
                throw th3;
            }
        }
    }

    public final long e(z3.b connection, Object obj) throws Exception {
        Intrinsics.h(connection, "connection");
        if (obj == null) {
            return -1L;
        }
        z3.e eVarD0 = connection.D0(b());
        try {
            a(eVarD0, obj);
            eVarD0.A0();
            AutoCloseableKt.a(eVarD0, null);
            return androidx.room.util.j.a(connection);
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
