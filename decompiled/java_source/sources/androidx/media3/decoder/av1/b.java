package androidx.media3.decoder.av1;

import androidx.media3.common.u;
import androidx.media3.common.util.q;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final q f10943a;

    class a extends q {
        a(String... strArr) {
            super(strArr);
        }

        @Override // androidx.media3.common.util.q
        protected void b(String str) {
            System.loadLibrary(str);
        }
    }

    static {
        u.a("media3.decoder.av1");
        f10943a = new a("gav1JNI");
    }

    public static boolean a() {
        return f10943a.a();
    }
}
