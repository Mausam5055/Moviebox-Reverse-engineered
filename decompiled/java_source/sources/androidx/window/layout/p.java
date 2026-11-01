package androidx.window.layout;

import android.app.Activity;
import androidx.window.extensions.layout.WindowLayoutComponent;
import androidx.window.extensions.layout.WindowLayoutInfo;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantLock;
import java.util.function.Consumer;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class p implements v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final WindowLayoutComponent f15342a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ReentrantLock f15343b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f15344c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map f15345d;

    private static final class a implements Consumer {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Activity f15346a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final ReentrantLock f15347b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private a0 f15348c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final Set f15349d;

        public a(Activity activity) {
            Intrinsics.h(activity, "activity");
            this.f15346a = activity;
            this.f15347b = new ReentrantLock();
            this.f15349d = new LinkedHashSet();
        }

        @Override // java.util.function.Consumer
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(WindowLayoutInfo value) {
            Intrinsics.h(value, "value");
            ReentrantLock reentrantLock = this.f15347b;
            reentrantLock.lock();
            try {
                this.f15348c = q.f15350a.b(this.f15346a, value);
                Iterator it = this.f15349d.iterator();
                while (it.hasNext()) {
                    ((androidx.core.util.a) it.next()).accept(this.f15348c);
                }
                Unit unit = Unit.f67061a;
            } finally {
                reentrantLock.unlock();
            }
        }

        public final void b(androidx.core.util.a listener) {
            Intrinsics.h(listener, "listener");
            ReentrantLock reentrantLock = this.f15347b;
            reentrantLock.lock();
            try {
                a0 a0Var = this.f15348c;
                if (a0Var != null) {
                    listener.accept(a0Var);
                }
                this.f15349d.add(listener);
            } finally {
                reentrantLock.unlock();
            }
        }

        public final boolean c() {
            return this.f15349d.isEmpty();
        }

        public final void d(androidx.core.util.a listener) {
            Intrinsics.h(listener, "listener");
            ReentrantLock reentrantLock = this.f15347b;
            reentrantLock.lock();
            try {
                this.f15349d.remove(listener);
            } finally {
                reentrantLock.unlock();
            }
        }
    }

    public p(WindowLayoutComponent component) {
        Intrinsics.h(component, "component");
        this.f15342a = component;
        this.f15343b = new ReentrantLock();
        this.f15344c = new LinkedHashMap();
        this.f15345d = new LinkedHashMap();
    }

    @Override // androidx.window.layout.v
    public void a(Activity activity, Executor executor, androidx.core.util.a callback) {
        Unit unit;
        Intrinsics.h(activity, "activity");
        Intrinsics.h(executor, "executor");
        Intrinsics.h(callback, "callback");
        ReentrantLock reentrantLock = this.f15343b;
        reentrantLock.lock();
        try {
            a aVar = (a) this.f15344c.get(activity);
            if (aVar == null) {
                unit = null;
            } else {
                aVar.b(callback);
                this.f15345d.put(callback, activity);
                unit = Unit.f67061a;
            }
            if (unit == null) {
                a aVar2 = new a(activity);
                this.f15344c.put(activity, aVar2);
                this.f15345d.put(callback, activity);
                aVar2.b(callback);
                this.f15342a.addWindowLayoutInfoListener(activity, o.a(aVar2));
            }
            Unit unit2 = Unit.f67061a;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // androidx.window.layout.v
    public void b(androidx.core.util.a callback) {
        Intrinsics.h(callback, "callback");
        ReentrantLock reentrantLock = this.f15343b;
        reentrantLock.lock();
        try {
            Activity activity = (Activity) this.f15345d.get(callback);
            if (activity == null) {
                return;
            }
            a aVar = (a) this.f15344c.get(activity);
            if (aVar == null) {
                return;
            }
            aVar.d(callback);
            if (aVar.c()) {
                this.f15342a.removeWindowLayoutInfoListener(o.a(aVar));
            }
            Unit unit = Unit.f67061a;
        } finally {
            reentrantLock.unlock();
        }
    }
}
