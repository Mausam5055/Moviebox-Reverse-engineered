package androidx.room;

import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class j0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RoomDatabase f14701a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AtomicBoolean f14702b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Lazy f14703c;

    public j0(RoomDatabase database) {
        Intrinsics.h(database, "database");
        this.f14701a = database;
        this.f14702b = new AtomicBoolean(false);
        this.f14703c = LazyKt.b(new Function0() { // from class: androidx.room.i0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return j0.i(this.f14698a);
            }
        });
    }

    private final a4.h d() {
        return this.f14701a.m(e());
    }

    private final a4.h f() {
        return (a4.h) this.f14703c.getValue();
    }

    private final a4.h g(boolean z10) {
        return z10 ? f() : d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final a4.h i(j0 j0Var) {
        return j0Var.d();
    }

    public a4.h b() {
        c();
        return g(this.f14702b.compareAndSet(false, true));
    }

    protected void c() {
        this.f14701a.i();
    }

    protected abstract String e();

    public void h(a4.h statement) {
        Intrinsics.h(statement, "statement");
        if (statement == f()) {
            this.f14702b.set(false);
        }
    }
}
