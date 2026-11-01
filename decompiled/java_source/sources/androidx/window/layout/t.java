package androidx.window.layout;

import android.app.Activity;
import android.content.Context;
import androidx.window.core.Version;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class t implements v {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile t f15364d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private n f15366a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final CopyOnWriteArrayList f15367b = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f15363c = new a(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final ReentrantLock f15365e = new ReentrantLock();

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final t a(Context context) {
            Intrinsics.h(context, "context");
            if (t.f15364d == null) {
                ReentrantLock reentrantLock = t.f15365e;
                reentrantLock.lock();
                try {
                    if (t.f15364d == null) {
                        t.f15364d = new t(t.f15363c.b(context));
                    }
                    Unit unit = Unit.f67061a;
                    reentrantLock.unlock();
                } catch (Throwable th2) {
                    reentrantLock.unlock();
                    throw th2;
                }
            }
            t tVar = t.f15364d;
            Intrinsics.e(tVar);
            return tVar;
        }

        public final n b(Context context) {
            Intrinsics.h(context, "context");
            try {
                if (!c(SidecarCompat.f15311f.c())) {
                    return null;
                }
                SidecarCompat sidecarCompat = new SidecarCompat(context);
                if (sidecarCompat.l()) {
                    return sidecarCompat;
                }
                return null;
            } catch (Throwable unused) {
                return null;
            }
        }

        public final boolean c(Version version) {
            return version != null && version.compareTo(Version.f15278f.a()) >= 0;
        }
    }

    public final class b implements n.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ t f15368a;

        public b(t this$0) {
            Intrinsics.h(this$0, "this$0");
            this.f15368a = this$0;
        }

        @Override // androidx.window.layout.n.a
        public void a(Activity activity, a0 newLayout) {
            Intrinsics.h(activity, "activity");
            Intrinsics.h(newLayout, "newLayout");
            for (c cVar : this.f15368a.h()) {
                if (Intrinsics.c(cVar.d(), activity)) {
                    cVar.b(newLayout);
                }
            }
        }
    }

    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Activity f15369a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Executor f15370b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final androidx.core.util.a f15371c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private a0 f15372d;

        public c(Activity activity, Executor executor, androidx.core.util.a callback) {
            Intrinsics.h(activity, "activity");
            Intrinsics.h(executor, "executor");
            Intrinsics.h(callback, "callback");
            this.f15369a = activity;
            this.f15370b = executor;
            this.f15371c = callback;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void c(c this$0, a0 newLayoutInfo) {
            Intrinsics.h(this$0, "this$0");
            Intrinsics.h(newLayoutInfo, "$newLayoutInfo");
            this$0.f15371c.accept(newLayoutInfo);
        }

        public final void b(final a0 newLayoutInfo) {
            Intrinsics.h(newLayoutInfo, "newLayoutInfo");
            this.f15372d = newLayoutInfo;
            this.f15370b.execute(new Runnable() { // from class: androidx.window.layout.u
                @Override // java.lang.Runnable
                public final void run() {
                    t.c.c(this.f15373a, newLayoutInfo);
                }
            });
        }

        public final Activity d() {
            return this.f15369a;
        }

        public final androidx.core.util.a e() {
            return this.f15371c;
        }

        public final a0 f() {
            return this.f15372d;
        }
    }

    public t(n nVar) {
        this.f15366a = nVar;
        n nVar2 = this.f15366a;
        if (nVar2 == null) {
            return;
        }
        nVar2.a(new b(this));
    }

    private final void f(Activity activity) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.f15367b;
        if (!(copyOnWriteArrayList instanceof Collection) || !copyOnWriteArrayList.isEmpty()) {
            Iterator it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                if (Intrinsics.c(((c) it.next()).d(), activity)) {
                    return;
                }
            }
        }
        n nVar = this.f15366a;
        if (nVar == null) {
            return;
        }
        nVar.c(activity);
    }

    private final boolean i(Activity activity) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.f15367b;
        if ((copyOnWriteArrayList instanceof Collection) && copyOnWriteArrayList.isEmpty()) {
            return false;
        }
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            if (Intrinsics.c(((c) it.next()).d(), activity)) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.window.layout.v
    public void a(Activity activity, Executor executor, androidx.core.util.a callback) {
        a0 a0VarF;
        Object next;
        Intrinsics.h(activity, "activity");
        Intrinsics.h(executor, "executor");
        Intrinsics.h(callback, "callback");
        ReentrantLock reentrantLock = f15365e;
        reentrantLock.lock();
        try {
            n nVarG = g();
            if (nVarG == null) {
                callback.accept(new a0(CollectionsKt.l()));
                return;
            }
            boolean zI = i(activity);
            c cVar = new c(activity, executor, callback);
            h().add(cVar);
            if (zI) {
                Iterator it = h().iterator();
                do {
                    a0VarF = null;
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!Intrinsics.c(activity, ((c) next).d()));
                c cVar2 = (c) next;
                if (cVar2 != null) {
                    a0VarF = cVar2.f();
                }
                if (a0VarF != null) {
                    cVar.b(a0VarF);
                }
            } else {
                nVarG.b(activity);
            }
            Unit unit = Unit.f67061a;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // androidx.window.layout.v
    public void b(androidx.core.util.a callback) {
        Intrinsics.h(callback, "callback");
        synchronized (f15365e) {
            try {
                if (g() == null) {
                    return;
                }
                ArrayList arrayList = new ArrayList();
                for (c callbackWrapper : h()) {
                    if (callbackWrapper.e() == callback) {
                        Intrinsics.g(callbackWrapper, "callbackWrapper");
                        arrayList.add(callbackWrapper);
                    }
                }
                h().removeAll(arrayList);
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    f(((c) it.next()).d());
                }
                Unit unit = Unit.f67061a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final n g() {
        return this.f15366a;
    }

    public final CopyOnWriteArrayList h() {
        return this.f15367b;
    }
}
