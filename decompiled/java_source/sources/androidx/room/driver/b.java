package androidx.room.driver;

import androidx.room.coroutines.ConnectionPool;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements ConnectionPool {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f14661a;

    public b(c supportDriver) {
        Intrinsics.h(supportDriver, "supportDriver");
        this.f14661a = supportDriver;
    }

    private final SupportSQLitePooledConnection d() {
        String databaseName = this.f14661a.a().getDatabaseName();
        if (databaseName == null) {
            databaseName = ":memory:";
        }
        return new SupportSQLitePooledConnection(this.f14661a.open(databaseName));
    }

    @Override // androidx.room.coroutines.ConnectionPool, java.lang.AutoCloseable
    public void close() {
        this.f14661a.a().close();
    }

    @Override // androidx.room.coroutines.ConnectionPool
    public Object f(boolean z10, Function2 function2, Continuation continuation) {
        return function2.invoke(d(), continuation);
    }

    public final c h() {
        return this.f14661a;
    }
}
