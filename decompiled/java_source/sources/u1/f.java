package u1;

import android.os.Bundle;
import androidx.media3.common.util.a1;

/* JADX INFO: loaded from: classes2.dex */
public final class f implements e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f76602c = a1.C0(0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f76603d = a1.C0(1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f76604a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f76605b;

    public f(String str, int i11) {
        this.f76604a = str;
        this.f76605b = i11;
    }

    public static f a(Bundle bundle) {
        return new f((String) androidx.media3.common.util.a.e(bundle.getString(f76602c)), bundle.getInt(f76603d));
    }

    public Bundle b() {
        Bundle bundle = new Bundle();
        bundle.putString(f76602c, this.f76604a);
        bundle.putInt(f76603d, this.f76605b);
        return bundle;
    }
}
