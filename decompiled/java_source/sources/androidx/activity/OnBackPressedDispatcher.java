package androidx.activity;

import android.os.Build;
import android.window.BackEvent;
import android.window.OnBackAnimationCallback;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.p009lifecycle.Lifecycle;
import java.util.Collection;
import java.util.Iterator;
import java.util.ListIterator;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class OnBackPressedDispatcher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Runnable f848a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.core.util.a f849b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ArrayDeque f850c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private u f851d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private OnBackInvokedCallback f852e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private OnBackInvokedDispatcher f853f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f854g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f855h;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f856a = new a();

        private a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void c(Function0 function0) {
            function0.invoke();
        }

        public final OnBackInvokedCallback b(final Function0 onBackInvoked) {
            Intrinsics.h(onBackInvoked, "onBackInvoked");
            return new OnBackInvokedCallback() { // from class: androidx.activity.v
                public final void onBackInvoked() {
                    OnBackPressedDispatcher.a.c(onBackInvoked);
                }
            };
        }

        public final void d(Object dispatcher, int i11, Object callback) {
            Intrinsics.h(dispatcher, "dispatcher");
            Intrinsics.h(callback, "callback");
            ((OnBackInvokedDispatcher) dispatcher).registerOnBackInvokedCallback(i11, (OnBackInvokedCallback) callback);
        }

        public final void e(Object dispatcher, Object callback) {
            Intrinsics.h(dispatcher, "dispatcher");
            Intrinsics.h(callback, "callback");
            ((OnBackInvokedDispatcher) dispatcher).unregisterOnBackInvokedCallback((OnBackInvokedCallback) callback);
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final b f857a = new b();

        public static final class a implements OnBackAnimationCallback {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ Function1 f858a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ Function1 f859b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ Function0 f860c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ Function0 f861d;

            a(Function1 function1, Function1 function2, Function0 function0, Function0 function3) {
                this.f858a = function1;
                this.f859b = function2;
                this.f860c = function0;
                this.f861d = function3;
            }

            public void onBackCancelled() {
                this.f861d.invoke();
            }

            public void onBackInvoked() {
                this.f860c.invoke();
            }

            public void onBackProgressed(BackEvent backEvent) {
                Intrinsics.h(backEvent, "backEvent");
                this.f859b.invoke(new androidx.activity.b(backEvent));
            }

            public void onBackStarted(BackEvent backEvent) {
                Intrinsics.h(backEvent, "backEvent");
                this.f858a.invoke(new androidx.activity.b(backEvent));
            }
        }

        private b() {
        }

        public final OnBackInvokedCallback a(Function1 onBackStarted, Function1 onBackProgressed, Function0 onBackInvoked, Function0 onBackCancelled) {
            Intrinsics.h(onBackStarted, "onBackStarted");
            Intrinsics.h(onBackProgressed, "onBackProgressed");
            Intrinsics.h(onBackInvoked, "onBackInvoked");
            Intrinsics.h(onBackCancelled, "onBackCancelled");
            return new a(onBackStarted, onBackProgressed, onBackInvoked, onBackCancelled);
        }
    }

    private final class c implements androidx.p009lifecycle.r, androidx.activity.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Lifecycle f862a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final u f863b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private androidx.activity.c f864c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ OnBackPressedDispatcher f865d;

        public c(OnBackPressedDispatcher onBackPressedDispatcher, Lifecycle lifecycle, u onBackPressedCallback) {
            Intrinsics.h(lifecycle, "lifecycle");
            Intrinsics.h(onBackPressedCallback, "onBackPressedCallback");
            this.f865d = onBackPressedDispatcher;
            this.f862a = lifecycle;
            this.f863b = onBackPressedCallback;
            lifecycle.a(this);
        }

        @Override // androidx.activity.c
        public void cancel() {
            this.f862a.d(this);
            this.f863b.removeCancellable(this);
            androidx.activity.c cVar = this.f864c;
            if (cVar != null) {
                cVar.cancel();
            }
            this.f864c = null;
        }

        @Override // androidx.p009lifecycle.r
        public void onStateChanged(androidx.p009lifecycle.u source, Lifecycle.Event event) {
            Intrinsics.h(source, "source");
            Intrinsics.h(event, "event");
            if (event == Lifecycle.Event.ON_START) {
                this.f864c = this.f865d.j(this.f863b);
                return;
            }
            if (event != Lifecycle.Event.ON_STOP) {
                if (event == Lifecycle.Event.ON_DESTROY) {
                    cancel();
                }
            } else {
                androidx.activity.c cVar = this.f864c;
                if (cVar != null) {
                    cVar.cancel();
                }
            }
        }
    }

    private final class d implements androidx.activity.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final u f866a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ OnBackPressedDispatcher f867b;

        public d(OnBackPressedDispatcher onBackPressedDispatcher, u onBackPressedCallback) {
            Intrinsics.h(onBackPressedCallback, "onBackPressedCallback");
            this.f867b = onBackPressedDispatcher;
            this.f866a = onBackPressedCallback;
        }

        @Override // androidx.activity.c
        public void cancel() {
            this.f867b.f850c.remove(this.f866a);
            if (Intrinsics.c(this.f867b.f851d, this.f866a)) {
                this.f866a.handleOnBackCancelled();
                this.f867b.f851d = null;
            }
            this.f866a.removeCancellable(this);
            Function0<Unit> enabledChangedCallback$activity_release = this.f866a.getEnabledChangedCallback$activity_release();
            if (enabledChangedCallback$activity_release != null) {
                enabledChangedCallback$activity_release.invoke();
            }
            this.f866a.setEnabledChangedCallback$activity_release(null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @JvmOverloads
    public OnBackPressedDispatcher() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public OnBackPressedDispatcher(Runnable runnable) {
        this(runnable, null);
    }

    public /* synthetic */ OnBackPressedDispatcher(Runnable runnable, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : runnable);
    }

    public OnBackPressedDispatcher(Runnable runnable, androidx.core.util.a aVar) {
        this.f848a = runnable;
        this.f849b = aVar;
        this.f850c = new ArrayDeque();
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 33) {
            this.f852e = i11 >= 34 ? b.f857a.a(new Function1<androidx.activity.b, Unit>() { // from class: androidx.activity.OnBackPressedDispatcher.1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    invoke((androidx.activity.b) obj);
                    return Unit.f67061a;
                }

                public final void invoke(androidx.activity.b backEvent) {
                    Intrinsics.h(backEvent, "backEvent");
                    OnBackPressedDispatcher.this.n(backEvent);
                }
            }, new Function1<androidx.activity.b, Unit>() { // from class: androidx.activity.OnBackPressedDispatcher.2
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    invoke((androidx.activity.b) obj);
                    return Unit.f67061a;
                }

                public final void invoke(androidx.activity.b backEvent) {
                    Intrinsics.h(backEvent, "backEvent");
                    OnBackPressedDispatcher.this.m(backEvent);
                }
            }, new Function0<Unit>() { // from class: androidx.activity.OnBackPressedDispatcher.3
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Object invoke() {
                    m1invoke();
                    return Unit.f67061a;
                }

                /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                public final void m1invoke() {
                    OnBackPressedDispatcher.this.l();
                }
            }, new Function0<Unit>() { // from class: androidx.activity.OnBackPressedDispatcher.4
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Object invoke() {
                    m2invoke();
                    return Unit.f67061a;
                }

                /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                public final void m2invoke() {
                    OnBackPressedDispatcher.this.k();
                }
            }) : a.f856a.b(new Function0<Unit>() { // from class: androidx.activity.OnBackPressedDispatcher.5
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Object invoke() {
                    m3invoke();
                    return Unit.f67061a;
                }

                /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                public final void m3invoke() {
                    OnBackPressedDispatcher.this.l();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void k() {
        Object objPrevious;
        u uVar = this.f851d;
        if (uVar == null) {
            ArrayDeque arrayDeque = this.f850c;
            ListIterator<E> listIterator = arrayDeque.listIterator(arrayDeque.size());
            do {
                if (!listIterator.hasPrevious()) {
                    objPrevious = null;
                    break;
                }
                objPrevious = listIterator.previous();
            } while (!((u) objPrevious).isEnabled());
            uVar = (u) objPrevious;
        }
        this.f851d = null;
        if (uVar != null) {
            uVar.handleOnBackCancelled();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m(androidx.activity.b bVar) {
        Object objPrevious;
        u uVar = this.f851d;
        if (uVar == null) {
            ArrayDeque arrayDeque = this.f850c;
            ListIterator<E> listIterator = arrayDeque.listIterator(arrayDeque.size());
            do {
                if (!listIterator.hasPrevious()) {
                    objPrevious = null;
                    break;
                }
                objPrevious = listIterator.previous();
            } while (!((u) objPrevious).isEnabled());
            uVar = (u) objPrevious;
        }
        if (uVar != null) {
            uVar.handleOnBackProgressed(bVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n(androidx.activity.b bVar) {
        Object objPrevious;
        ArrayDeque arrayDeque = this.f850c;
        ListIterator<E> listIterator = arrayDeque.listIterator(arrayDeque.size());
        do {
            if (!listIterator.hasPrevious()) {
                objPrevious = null;
                break;
            }
            objPrevious = listIterator.previous();
        } while (!((u) objPrevious).isEnabled());
        u uVar = (u) objPrevious;
        if (this.f851d != null) {
            k();
        }
        this.f851d = uVar;
        if (uVar != null) {
            uVar.handleOnBackStarted(bVar);
        }
    }

    private final void p(boolean z10) {
        OnBackInvokedDispatcher onBackInvokedDispatcher = this.f853f;
        OnBackInvokedCallback onBackInvokedCallback = this.f852e;
        if (onBackInvokedDispatcher == null || onBackInvokedCallback == null) {
            return;
        }
        if (z10 && !this.f854g) {
            a.f856a.d(onBackInvokedDispatcher, 0, onBackInvokedCallback);
            this.f854g = true;
        } else {
            if (z10 || !this.f854g) {
                return;
            }
            a.f856a.e(onBackInvokedDispatcher, onBackInvokedCallback);
            this.f854g = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void q() {
        boolean z10 = this.f855h;
        ArrayDeque arrayDeque = this.f850c;
        boolean z11 = false;
        if (!(arrayDeque instanceof Collection) || !arrayDeque.isEmpty()) {
            Iterator<E> it = arrayDeque.iterator();
            while (it.hasNext()) {
                if (((u) it.next()).isEnabled()) {
                    z11 = true;
                    break;
                }
            }
        }
        this.f855h = z11;
        if (z11 != z10) {
            androidx.core.util.a aVar = this.f849b;
            if (aVar != null) {
                aVar.accept(Boolean.valueOf(z11));
            }
            if (Build.VERSION.SDK_INT >= 33) {
                p(z11);
            }
        }
    }

    public final void h(u onBackPressedCallback) {
        Intrinsics.h(onBackPressedCallback, "onBackPressedCallback");
        j(onBackPressedCallback);
    }

    public final void i(androidx.p009lifecycle.u owner, u onBackPressedCallback) {
        Intrinsics.h(owner, "owner");
        Intrinsics.h(onBackPressedCallback, "onBackPressedCallback");
        Lifecycle lifecycle = owner.getLifecycle();
        if (lifecycle.b() == Lifecycle.State.DESTROYED) {
            return;
        }
        onBackPressedCallback.addCancellable(new c(this, lifecycle, onBackPressedCallback));
        q();
        onBackPressedCallback.setEnabledChangedCallback$activity_release(new OnBackPressedDispatcher$addCallback$1(this));
    }

    public final androidx.activity.c j(u onBackPressedCallback) {
        Intrinsics.h(onBackPressedCallback, "onBackPressedCallback");
        this.f850c.add(onBackPressedCallback);
        d dVar = new d(this, onBackPressedCallback);
        onBackPressedCallback.addCancellable(dVar);
        q();
        onBackPressedCallback.setEnabledChangedCallback$activity_release(new OnBackPressedDispatcher$addCancellableCallback$1(this));
        return dVar;
    }

    public final void l() {
        Object objPrevious;
        u uVar = this.f851d;
        if (uVar == null) {
            ArrayDeque arrayDeque = this.f850c;
            ListIterator<E> listIterator = arrayDeque.listIterator(arrayDeque.size());
            do {
                if (!listIterator.hasPrevious()) {
                    objPrevious = null;
                    break;
                }
                objPrevious = listIterator.previous();
            } while (!((u) objPrevious).isEnabled());
            uVar = (u) objPrevious;
        }
        this.f851d = null;
        if (uVar != null) {
            uVar.handleOnBackPressed();
            return;
        }
        Runnable runnable = this.f848a;
        if (runnable != null) {
            runnable.run();
        }
    }

    public final void o(OnBackInvokedDispatcher invoker) {
        Intrinsics.h(invoker, "invoker");
        this.f853f = invoker;
        p(this.f855h);
    }
}
