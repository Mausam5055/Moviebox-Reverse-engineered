package kt;

import android.app.Application;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f68391a = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static kt.a f68392b;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final void a() {
            if (b.f68392b == null) {
                b.f68392b = b();
            }
        }

        private final kt.a b() {
            return nt.b.f70543a.a();
        }

        public final void c(Application application) {
            Intrinsics.h(application, "application");
            nt.b.f70543a.b(application);
        }

        public final void d(int i11) {
            a();
            kt.a aVar = b.f68392b;
            if (aVar != null) {
                aVar.a(i11);
            }
        }

        public final void e(CharSequence charSequence) {
            a();
            kt.a aVar = b.f68392b;
            if (aVar != null) {
                aVar.b(charSequence);
            }
        }

        public final void f(int i11, CharSequence text, int i12, int i13, int i14) {
            Intrinsics.h(text, "text");
            a();
            kt.a aVar = b.f68392b;
            if (aVar != null) {
                aVar.c(i11, text, i12, i13, i14);
            }
        }
    }
}
