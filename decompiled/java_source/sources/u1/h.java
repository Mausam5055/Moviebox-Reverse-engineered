package u1;

import android.os.Bundle;
import androidx.media3.common.util.a1;

/* JADX INFO: loaded from: classes2.dex */
public final class h implements e {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f76606d = a1.C0(0);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f76607e = a1.C0(1);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f76608f = a1.C0(2);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f76609a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f76610b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f76611c;

    public h(int i11, int i12, int i13) {
        this.f76609a = i11;
        this.f76610b = i12;
        this.f76611c = i13;
    }

    public static h a(Bundle bundle) {
        return new h(bundle.getInt(f76606d), bundle.getInt(f76607e), bundle.getInt(f76608f));
    }

    public Bundle b() {
        Bundle bundle = new Bundle();
        bundle.putInt(f76606d, this.f76609a);
        bundle.putInt(f76607e, this.f76610b);
        bundle.putInt(f76608f, this.f76611c);
        return bundle;
    }
}
