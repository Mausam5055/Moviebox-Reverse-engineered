package z3;

import android.database.SQLException;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {
    public static final void a(b bVar, String sql) throws Exception {
        Intrinsics.h(bVar, "<this>");
        Intrinsics.h(sql, "sql");
        e eVarD0 = bVar.D0(sql);
        try {
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

    public static final Void b(int i11, String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Error code: " + i11);
        if (str != null) {
            sb2.append(", message: " + str);
        }
        throw new SQLException(sb2.toString());
    }
}
