package xh;

import android.app.Application;
import com.tn.lib.widget.R$layout;
import com.tn.lib.widget.toast.core.h;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class b implements uh.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f78305a = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f78306b = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() { // from class: xh.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return b.h();
        }
    });

    /* JADX INFO: loaded from: classes4.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final b a() {
            return (b) b.f78306b.getValue();
        }

        public final void b(Application application) {
            Intrinsics.h(application, "application");
            h.c(h.f41479a, application, null, 2, null);
        }
    }

    private final void g(CharSequence charSequence, int i11, int i12, int i13, int i14, int i15) {
        if (i15 != 0) {
            h.f41479a.j(i15);
        } else {
            h.f41479a.j(R$layout.libui_common_toast_layout);
        }
        if (i12 != 0 || i13 != 0 || i14 != 0) {
            h.f41479a.f(i12, i13, i14);
        }
        if (i11 != 0) {
            h.f41479a.k(i11);
        } else {
            h.f41479a.l(charSequence);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b h() {
        return new b();
    }

    @Override // uh.a
    public void a(int i11) {
        g("", i11, 0, 0, 0, 0);
    }

    @Override // uh.a
    public void b(CharSequence charSequence) {
        g(charSequence, 0, 0, 0, 0, 0);
    }

    @Override // uh.a
    public void c(int i11, CharSequence text, int i12, int i13, int i14) {
        Intrinsics.h(text, "text");
        g(text, 0, i12, i13, i14, i11);
    }

    @Override // uh.a
    public void d(CharSequence charSequence, int i11) {
        g(charSequence, 0, i11, 0, 0, 0);
    }
}
