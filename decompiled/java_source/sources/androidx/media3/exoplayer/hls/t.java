package androidx.media3.exoplayer.hls;

import android.util.SparseArray;
import androidx.media3.common.util.p0;

/* JADX INFO: loaded from: classes2.dex */
public final class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SparseArray f11997a = new SparseArray();

    public p0 a(int i11) {
        p0 p0Var = (p0) this.f11997a.get(i11);
        if (p0Var != null) {
            return p0Var;
        }
        p0 p0Var2 = new p0(9223372036854775806L);
        this.f11997a.put(i11, p0Var2);
        return p0Var2;
    }

    public void b() {
        this.f11997a.clear();
    }
}
