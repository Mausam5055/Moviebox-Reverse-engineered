package j7;

import android.util.Log;
import com.cloud.sdk.commonutil.util.c;
import com.cloud.sdk.commonutil.util.e;
import com.tencent.mmkv.MMKV;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final b f65951b = new b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private MMKV f65952a;

    private b() {
        try {
            MMKV.C(e.a());
            this.f65952a = MMKV.I("HisavanaMMKV");
        } catch (Exception e11) {
            c.Log().e("HisavanaMMKV", "Hisavana MMKV init error " + e11.getMessage());
        }
    }

    public static b c() {
        return f65951b;
    }

    public void a() {
        try {
            this.f65952a.clear();
        } catch (Exception e11) {
            c.Log().e("HisavanaMMKV", "clear " + Log.getStackTraceString(e11));
        }
    }

    public boolean b(String str, boolean z10) {
        try {
            return this.f65952a.getBoolean(str, z10);
        } catch (Exception e11) {
            c.Log().e("HisavanaMMKV", "getBoolean " + Log.getStackTraceString(e11));
            return z10;
        }
    }

    public int d(String str, int i11) {
        try {
            return this.f65952a.getInt(str, i11);
        } catch (Exception e11) {
            c.Log().e("HisavanaMMKV", "getInt " + Log.getStackTraceString(e11));
            return i11;
        }
    }

    public long e(String str, long j11) {
        try {
            return this.f65952a.getLong(str, j11);
        } catch (Exception e11) {
            c.Log().e("HisavanaMMKV", "getLong " + Log.getStackTraceString(e11));
            return j11;
        }
    }

    public String f(String str, String str2) {
        try {
            return this.f65952a.getString(str, str2);
        } catch (Exception e11) {
            c.Log().e("HisavanaMMKV", "getString " + Log.getStackTraceString(e11));
            return str2;
        }
    }

    public Set g(String str, Set set) {
        try {
            return this.f65952a.getStringSet(str, set);
        } catch (Exception e11) {
            c.Log().e("HisavanaMMKV", "getStringSet " + Log.getStackTraceString(e11));
            return set;
        }
    }

    public String h() {
        try {
            return MMKV.version();
        } catch (Exception e11) {
            c.Log().e("HisavanaMMKV", "MMKV.version() " + Log.getStackTraceString(e11));
            return "";
        }
    }

    public void i(String str, boolean z10) {
        try {
            this.f65952a.putBoolean(str, z10);
        } catch (Exception e11) {
            c.Log().e("HisavanaMMKV", "putBoolean " + Log.getStackTraceString(e11));
        }
    }

    public void j(String str, int i11) {
        try {
            this.f65952a.putInt(str, i11);
        } catch (Exception e11) {
            c.Log().e("HisavanaMMKV", "putInt " + Log.getStackTraceString(e11));
        }
    }

    public void k(String str, long j11) {
        try {
            this.f65952a.putLong(str, j11);
        } catch (Exception e11) {
            c.Log().e("HisavanaMMKV", "putLong " + Log.getStackTraceString(e11));
        }
    }

    public void l(String str, String str2) {
        try {
            this.f65952a.putString(str, str2);
        } catch (Exception e11) {
            c.Log().e("HisavanaMMKV", "putString " + Log.getStackTraceString(e11));
        }
    }

    public void m(String str) {
        try {
            this.f65952a.M(str);
        } catch (Exception e11) {
            c.Log().e("HisavanaMMKV", "getStringSet " + Log.getStackTraceString(e11));
        }
    }
}
