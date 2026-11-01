package uh;

import android.app.Application;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f76753a = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static uh.a f76754b;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final void a() {
            if (b.f76754b == null) {
                b.f76754b = b();
            }
        }

        private final uh.a b() {
            return xh.b.f78305a.a();
        }

        public final void c(Application application) {
            Intrinsics.h(application, "application");
            xh.b.f78305a.b(application);
        }

        public final void d(int i11) {
            a();
            uh.a aVar = b.f76754b;
            if (aVar != null) {
                aVar.a(i11);
            }
        }

        public final void e(CharSequence charSequence) {
            a();
            uh.a aVar = b.f76754b;
            if (aVar != null) {
                aVar.b(charSequence);
            }
        }

        public final void f(CharSequence charSequence, int i11) {
            a();
            uh.a aVar = b.f76754b;
            if (aVar != null) {
                aVar.d(charSequence, i11);
            }
        }

        public final void g(int i11, CharSequence text, int i12, int i13, int i14) {
            Intrinsics.h(text, "text");
            a();
            uh.a aVar = b.f76754b;
            if (aVar != null) {
                aVar.c(i11, text, i12, i13, i14);
            }
        }
    }
}
