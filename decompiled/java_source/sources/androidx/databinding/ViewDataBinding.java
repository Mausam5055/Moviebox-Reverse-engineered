package androidx.databinding;

import android.os.Build;
import android.view.View;
import androidx.databinding.library.R$id;
import java.lang.ref.ReferenceQueue;

/* JADX INFO: loaded from: classes.dex */
public abstract class ViewDataBinding extends androidx.databinding.a implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static int f8533a = Build.VERSION.SDK_INT;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final boolean f8534b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final androidx.databinding.d f8535c = new a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final androidx.databinding.d f8536d = new b();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final androidx.databinding.d f8537e = new c();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final androidx.databinding.d f8538f = new d();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final androidx.databinding.c.a f8539g = new e();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final ReferenceQueue f8540h = new ReferenceQueue();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final View.OnAttachStateChangeListener f8541i = new f();

    /* JADX INFO: renamed from: androidx.databinding.ViewDataBinding$7, reason: invalid class name */
    class AnonymousClass7 implements Runnable {
        final /* synthetic */ ViewDataBinding this$0;

        AnonymousClass7(ViewDataBinding viewDataBinding) {
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this) {
                ViewDataBinding.c(null, false);
            }
            ViewDataBinding.h();
            if (ViewDataBinding.e(null).isAttachedToWindow()) {
                throw null;
            }
            ViewDataBinding.e(null).removeOnAttachStateChangeListener(ViewDataBinding.f8541i);
            ViewDataBinding.e(null).addOnAttachStateChangeListener(ViewDataBinding.f8541i);
        }
    }

    class a implements androidx.databinding.d {
        a() {
        }
    }

    class b implements androidx.databinding.d {
        b() {
        }
    }

    class c implements androidx.databinding.d {
        c() {
        }
    }

    class d implements androidx.databinding.d {
        d() {
        }
    }

    class e extends androidx.databinding.c.a {
        e() {
        }

        @Override // androidx.databinding.c.a
        public /* bridge */ /* synthetic */ void a(Object obj, Object obj2, int i11, Object obj3) {
            android.support.v4.media.session.c.a(obj2);
            b((k) obj, null, i11, (Void) obj3);
        }

        public void b(k kVar, ViewDataBinding viewDataBinding, int i11, Void r11) {
            if (i11 == 1) {
                if (kVar.c(viewDataBinding)) {
                    return;
                }
                ViewDataBinding.a(viewDataBinding, true);
            } else if (i11 == 2) {
                kVar.b(viewDataBinding);
            } else {
                if (i11 != 3) {
                    return;
                }
                kVar.a(viewDataBinding);
            }
        }
    }

    class f implements View.OnAttachStateChangeListener {
        f() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            ViewDataBinding.g(view);
            ViewDataBinding.b(null).run();
            view.removeOnAttachStateChangeListener(this);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    static /* synthetic */ boolean a(ViewDataBinding viewDataBinding, boolean z10) {
        throw null;
    }

    static /* synthetic */ Runnable b(ViewDataBinding viewDataBinding) {
        throw null;
    }

    static /* synthetic */ boolean c(ViewDataBinding viewDataBinding, boolean z10) {
        throw null;
    }

    static /* synthetic */ View e(ViewDataBinding viewDataBinding) {
        throw null;
    }

    static ViewDataBinding g(View view) {
        if (view != null) {
            android.support.v4.media.session.c.a(view.getTag(R$id.dataBinding));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void h() {
        while (f8540h.poll() != null) {
        }
    }
}
