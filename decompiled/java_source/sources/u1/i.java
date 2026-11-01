package u1;

import android.os.Bundle;
import androidx.media3.common.util.a1;

/* JADX INFO: loaded from: classes2.dex */
public final class i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f76612b = a1.C0(0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f76613a;

    public i(String str) {
        this.f76613a = str;
    }

    public static i a(Bundle bundle) {
        return new i((String) androidx.media3.common.util.a.e(bundle.getString(f76612b)));
    }

    public Bundle b() {
        Bundle bundle = new Bundle();
        bundle.putString(f76612b, this.f76613a);
        return bundle;
    }
}
