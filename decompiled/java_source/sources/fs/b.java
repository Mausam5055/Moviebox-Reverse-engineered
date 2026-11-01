package fs;

import android.app.Application;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f62459a = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static fs.a f62460b;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final void a() {
            if (b.f62460b == null) {
                b.f62460b = b();
            }
        }

        private final fs.a b() {
            return is.b.f65616a.a();
        }

        public final void c(Application application) {
            Intrinsics.h(application, "application");
            is.b.f65616a.b(application);
        }

        public final void d(int i11) {
            a();
            fs.a aVar = b.f62460b;
            if (aVar != null) {
                aVar.a(i11);
            }
        }

        public final void e(CharSequence charSequence) {
            a();
            fs.a aVar = b.f62460b;
            if (aVar != null) {
                aVar.b(charSequence);
            }
        }
    }
}
