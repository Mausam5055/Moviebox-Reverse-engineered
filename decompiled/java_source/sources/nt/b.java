package nt;

import android.app.Application;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv_pugc.base.widget.toast.core.h;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class b implements kt.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f70543a = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f70544b = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() { // from class: nt.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return b.g();
        }
    });

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final b a() {
            return (b) b.f70544b.getValue();
        }

        public final void b(Application application) {
            Intrinsics.h(application, "application");
            h.b(h.f53969a, application, null, 2, null);
        }
    }

    private final void f(CharSequence charSequence, int i11, int i12, int i13, int i14, int i15) {
        if (i15 != 0) {
            h.f53969a.g(i15);
        } else {
            h.f53969a.g(R$layout.short_tv_base_common_toast_layout);
        }
        if (i12 != 0 || i13 != 0 || i14 != 0) {
            h.f53969a.c(i12, i13, i14);
        }
        if (i11 != 0) {
            h.f53969a.h(i11);
        } else {
            h.f53969a.i(charSequence);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b g() {
        return new b();
    }

    @Override // kt.a
    public void a(int i11) {
        f("", i11, 0, 0, 0, 0);
    }

    @Override // kt.a
    public void b(CharSequence charSequence) {
        f(charSequence, 0, 0, 0, 0, 0);
    }

    @Override // kt.a
    public void c(int i11, CharSequence text, int i12, int i13, int i14) {
        Intrinsics.h(text, "text");
        f(text, 0, i12, i13, i14, i11);
    }
}
