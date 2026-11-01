package androidx.room.coroutines;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public abstract class h {
    public static final ConnectionPool a(z3.c driver, String fileName, int i11, int i12) {
        Intrinsics.h(driver, "driver");
        Intrinsics.h(fileName, "fileName");
        return new ConnectionPoolImpl(driver, fileName, i11, i12);
    }

    public static final ConnectionPool b(z3.c driver, String fileName) {
        Intrinsics.h(driver, "driver");
        Intrinsics.h(fileName, "fileName");
        return new ConnectionPoolImpl(driver, fileName);
    }
}
