package androidx.room.coroutines;

import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements ConnectionPool {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final z3.c f14634a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f14635b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Lazy f14636c;

    public b(z3.c driver, String fileName) {
        Intrinsics.h(driver, "driver");
        Intrinsics.h(fileName, "fileName");
        this.f14634a = driver;
        this.f14635b = fileName;
        this.f14636c = LazyKt.b(new Function0() { // from class: androidx.room.coroutines.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.d(this.f14633a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AndroidSQLiteDriverPooledConnection d(b bVar) {
        z3.b bVarOpen = bVar.f14634a.open(bVar.f14635b);
        Intrinsics.f(bVarOpen, "null cannot be cast to non-null type androidx.sqlite.driver.AndroidSQLiteConnection");
        return new AndroidSQLiteDriverPooledConnection((c4.a) bVarOpen);
    }

    private final AndroidSQLiteDriverPooledConnection h() {
        return (AndroidSQLiteDriverPooledConnection) this.f14636c.getValue();
    }

    @Override // androidx.room.coroutines.ConnectionPool, java.lang.AutoCloseable
    public void close() {
        h().f().close();
    }

    @Override // androidx.room.coroutines.ConnectionPool
    public Object f(boolean z10, Function2 function2, Continuation continuation) {
        return function2.invoke(h(), continuation);
    }
}
