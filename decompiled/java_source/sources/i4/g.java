package i4;

import android.content.Context;
import androidx.work.t;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public abstract class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j4.c f64949a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f64950b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f64951c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final LinkedHashSet f64952d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Object f64953e;

    protected g(Context context, j4.c taskExecutor) {
        Intrinsics.h(context, "context");
        Intrinsics.h(taskExecutor, "taskExecutor");
        this.f64949a = taskExecutor;
        Context applicationContext = context.getApplicationContext();
        Intrinsics.g(applicationContext, "getApplicationContext(...)");
        this.f64950b = applicationContext;
        this.f64951c = new Object();
        this.f64952d = new LinkedHashSet();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(List list, g gVar) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((androidx.work.impl.constraints.a) it.next()).a(gVar.f64953e);
        }
    }

    public final void c(androidx.work.impl.constraints.a listener) {
        Intrinsics.h(listener, "listener");
        synchronized (this.f64951c) {
            try {
                if (this.f64952d.add(listener)) {
                    if (this.f64952d.size() == 1) {
                        this.f64953e = f();
                        t.e().a(h.f64954a, getClass().getSimpleName() + ": initial state = " + this.f64953e);
                        i();
                    }
                    listener.a(this.f64953e);
                }
                Unit unit = Unit.f67061a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    protected final Context d() {
        return this.f64950b;
    }

    public final Object e() {
        Object obj = this.f64953e;
        return obj == null ? f() : obj;
    }

    public abstract Object f();

    public final void g(androidx.work.impl.constraints.a listener) {
        Intrinsics.h(listener, "listener");
        synchronized (this.f64951c) {
            try {
                if (this.f64952d.remove(listener) && this.f64952d.isEmpty()) {
                    j();
                }
                Unit unit = Unit.f67061a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void h(Object obj) {
        synchronized (this.f64951c) {
            Object obj2 = this.f64953e;
            if (obj2 == null || !Intrinsics.c(obj2, obj)) {
                this.f64953e = obj;
                final List listR0 = CollectionsKt.R0(this.f64952d);
                this.f64949a.a().execute(new Runnable() { // from class: i4.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        g.b(listR0, this);
                    }
                });
                Unit unit = Unit.f67061a;
            }
        }
    }

    public abstract void i();

    public abstract void j();
}
