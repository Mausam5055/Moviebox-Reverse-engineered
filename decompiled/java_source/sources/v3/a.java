package v3;

import android.os.Build;
import android.os.ext.SdkExtensions;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f77017a = new a();

    /* JADX INFO: renamed from: v3.a$a, reason: collision with other inner class name */
    private static final class C0944a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final C0944a f77018a = new C0944a();

        private C0944a() {
        }

        public final int a() {
            return SdkExtensions.getExtensionVersion(1000000);
        }
    }

    private a() {
    }

    public final int a() {
        if (Build.VERSION.SDK_INT >= 30) {
            return C0944a.f77018a.a();
        }
        return 0;
    }
}
