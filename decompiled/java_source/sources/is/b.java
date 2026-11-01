package is;

import android.app.Application;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv.base.widget.toast.core.h;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class b implements fs.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f65616a = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f65617b = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() { // from class: is.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return b.f();
        }
    });

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final b a() {
            return (b) b.f65617b.getValue();
        }

        public final void b(Application application) {
            Intrinsics.h(application, "application");
            h.b(h.f52989a, application, null, 2, null);
        }
    }

    private final void e(CharSequence charSequence, int i11, int i12, int i13, int i14, int i15) {
        if (i15 != 0) {
            h.f52989a.g(i15);
        } else {
            h.f52989a.g(R$layout.short_tv_base_common_toast_layout);
        }
        if (i12 != 0 || i13 != 0 || i14 != 0) {
            h.f52989a.c(i12, i13, i14);
        }
        if (i11 != 0) {
            h.f52989a.h(i11);
        } else {
            h.f52989a.i(charSequence);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b f() {
        return new b();
    }

    @Override // fs.a
    public void a(int i11) {
        e("", i11, 0, 0, 0, 0);
    }

    @Override // fs.a
    public void b(CharSequence charSequence) {
        e(charSequence, 0, 0, 0, 0, 0);
    }
}
