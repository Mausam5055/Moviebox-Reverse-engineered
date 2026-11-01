package y3;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class a {
    public static void a(b bVar, z3.b connection) {
        Intrinsics.h(connection, "connection");
        if (connection instanceof androidx.room.driver.a) {
            bVar.b(((androidx.room.driver.a) connection).d());
        }
    }
}
