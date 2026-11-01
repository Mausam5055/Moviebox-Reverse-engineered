package androidx.room.util;

import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public abstract class j {
    public static final long a(z3.b connection) throws Exception {
        Intrinsics.h(connection, "connection");
        if (b(connection) == 0) {
            return -1L;
        }
        z3.e eVarD0 = connection.D0("SELECT last_insert_rowid()");
        try {
            eVarD0.A0();
            long j11 = eVarD0.getLong(0);
            AutoCloseableKt.a(eVarD0, null);
            return j11;
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                AutoCloseableKt.a(eVarD0, th2);
                throw th3;
            }
        }
    }

    public static final int b(z3.b connection) throws Exception {
        Intrinsics.h(connection, "connection");
        z3.e eVarD0 = connection.D0("SELECT changes()");
        try {
            eVarD0.A0();
            int i11 = (int) eVarD0.getLong(0);
            AutoCloseableKt.a(eVarD0, null);
            return i11;
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
