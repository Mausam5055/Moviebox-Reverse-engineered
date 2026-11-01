package j7;

import android.os.Build;
import android.text.TextUtils;
import com.cloud.sdk.commonutil.util.c;
import com.cloud.sdk.commonutil.util.i;
import com.tencent.mmkv.MMKV;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final a f65948c = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b f65949a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f65950b;

    private a() {
        this.f65950b = false;
        try {
            this.f65950b = a();
            c.Log().e("AdxPreferencesHelper", "mmkv is available: " + this.f65950b);
            if (this.f65950b) {
                this.f65949a = b.c();
            }
        } catch (Throwable unused) {
            c.Log().e("AdxPreferencesHelper", "init mmkv error, com.tencent.mmkv.MMKV not found!");
            this.f65949a = null;
        }
    }

    private boolean a() {
        try {
            int i11 = MMKV.f40560j;
            if (Build.VERSION.SDK_INT < 35) {
                return true;
            }
            String strH = b.c().h();
            c.Log().e("AdxPreferencesHelper", "mmkvVersion: " + strH);
            if (strH.startsWith("v0.")) {
                return false;
            }
            try {
                if (!strH.startsWith("v1.")) {
                    return true;
                }
                String[] strArrSplit = strH.split("\\.");
                if (strArrSplit.length != 3) {
                    return false;
                }
                int i12 = Integer.parseInt(strArrSplit[1]);
                return i12 > 3 || (i12 == 3 && Integer.parseInt(strArrSplit[2]) >= 14);
            } catch (Throwable th2) {
                c.Log().w("AdxPreferencesHelper", "checkMMKVAvailable error, e= " + th2.getMessage());
                return false;
            }
        } catch (ClassNotFoundException unused) {
        }
    }

    public static a e() {
        return f65948c;
    }

    public void b() {
        b bVar = this.f65949a;
        if (bVar != null) {
            bVar.a();
        } else {
            i.d("hisavana_sdk").b();
        }
    }

    public boolean c(String str) {
        return d(str, false);
    }

    public boolean d(String str, boolean z10) {
        b bVar = this.f65949a;
        return bVar != null ? bVar.b(str, z10) : i.d("hisavana_sdk").c(str, z10);
    }

    public int f(String str) {
        return g(str, 0);
    }

    public int g(String str, int i11) {
        b bVar = this.f65949a;
        return bVar != null ? bVar.d(str, i11) : i.d("hisavana_sdk").e(str, i11);
    }

    public long h(String str) {
        return i(str, 0L);
    }

    public long i(String str, long j11) {
        b bVar = this.f65949a;
        return bVar != null ? bVar.e(str, j11) : i.d("hisavana_sdk").f(str, j11);
    }

    public String j(String str) {
        return k(str, "");
    }

    public String k(String str, String str2) {
        b bVar = this.f65949a;
        return bVar != null ? bVar.f(str, str2) : i.d("hisavana_sdk").g(str, str2);
    }

    public Set l(String str) {
        return m(str, new HashSet());
    }

    public Set m(String str, Set set) {
        b bVar = this.f65949a;
        return bVar != null ? bVar.g(str, set) : i.d("hisavana_sdk").h(str, set);
    }

    public boolean n() {
        return this.f65950b;
    }

    public void o(String str, boolean z10) {
        b bVar = this.f65949a;
        if (bVar != null) {
            bVar.i(str, z10);
        } else {
            i.d("hisavana_sdk").i(str, z10);
        }
    }

    public void p(String str, int i11) {
        b bVar = this.f65949a;
        if (bVar != null) {
            bVar.j(str, i11);
        } else {
            i.d("hisavana_sdk").j(str, i11);
        }
    }

    public void q(String str, long j11) {
        b bVar = this.f65949a;
        if (bVar != null) {
            bVar.k(str, j11);
        } else {
            i.d("hisavana_sdk").k(str, j11);
        }
    }

    public void r(String str, String str2) {
        b bVar = this.f65949a;
        if (bVar == null) {
            i.d("hisavana_sdk").l(str, str2);
        } else {
            bVar.l(str, str2);
        }
    }

    public void s(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        b bVar = this.f65949a;
        if (bVar != null) {
            bVar.m(str);
        } else {
            i.d("hisavana_sdk").m(str);
        }
    }
}
