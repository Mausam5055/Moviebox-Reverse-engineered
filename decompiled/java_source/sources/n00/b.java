package n00;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import com.transsion.athena.attribution.AttrConstant;

/* JADX INFO: loaded from: classes7.dex */
public class b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static b f70066c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SharedPreferences f70067a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f70068b;

    private b(Context context) {
        this.f70068b = context.getApplicationContext();
    }

    public static synchronized b b(Context context) {
        try {
            if (f70066c == null) {
                f70066c = new b(context);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f70066c;
    }

    private SharedPreferences e(Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            try {
                SharedPreferences sharedPreferences = context.getSharedPreferences(com.transsion.sdk.oneid.b.k(context) + "_" + AttrConstant.SP_NAME, 0);
                this.f70067a = sharedPreferences;
                return sharedPreferences;
            } catch (Exception unused) {
                return null;
            }
        }
        SharedPreferences sharedPreferences2 = this.f70067a;
        if (sharedPreferences2 != null) {
            return sharedPreferences2;
        }
        if (context == null) {
            return null;
        }
        try {
            this.f70067a = context.getSharedPreferences(com.transsion.sdk.oneid.b.k(context) + "_" + AttrConstant.SP_NAME, 0);
        } catch (Exception unused2) {
        }
        return this.f70067a;
    }

    public int a(String str) {
        Context context = this.f70068b;
        if (context == null) {
            return -1;
        }
        if (this.f70067a == null) {
            this.f70067a = e(context);
        }
        SharedPreferences sharedPreferences = this.f70067a;
        if (sharedPreferences == null) {
            return -1;
        }
        try {
            return sharedPreferences.getInt(str, 0);
        } catch (Exception unused) {
            return -1;
        }
    }

    public void c(String str, int i11) {
        Context context = this.f70068b;
        if (context == null) {
            return;
        }
        if (this.f70067a == null) {
            this.f70067a = e(context);
        }
        SharedPreferences sharedPreferences = this.f70067a;
        if (sharedPreferences == null) {
            return;
        }
        try {
            sharedPreferences.edit().putInt(str, i11).apply();
        } catch (Exception e11) {
            com.transsion.sdk.oneid.b.m(Log.getStackTraceString(e11));
        }
    }

    public void d(String str, String str2) {
        Context context = this.f70068b;
        if (context == null) {
            throw new Exception("context is null");
        }
        if (this.f70067a == null) {
            this.f70067a = e(context);
        }
        if (this.f70067a == null) {
            throw new Exception("sp is null");
        }
        try {
            if (!nq.c.b().a(this.f70068b)) {
                throw new Exception("keystore encrypt error");
            }
            nq.b bVar = new nq.b();
            String strC = bVar.c(bVar.e(str2));
            if (TextUtils.isEmpty(strC)) {
                throw new Exception("rsaCrypter encrypt error");
            }
            SharedPreferences.Editor editorEdit = this.f70067a.edit();
            editorEdit.putString(str, strC);
            editorEdit.apply();
        } catch (Exception e11) {
            com.transsion.sdk.oneid.b.m(Log.getStackTraceString(e11));
            throw e11;
        }
    }

    public String f(String str) throws Exception {
        Context context = this.f70068b;
        if (context == null) {
            throw new Exception("context is null");
        }
        if (this.f70067a == null) {
            this.f70067a = e(context);
        }
        if (this.f70067a == null) {
            throw new Exception("sp is null");
        }
        try {
            if (!nq.c.b().a(this.f70068b)) {
                throw new Exception("keystore decrypt error");
            }
            String string = this.f70067a.getString(str, "");
            if (!TextUtils.isEmpty(string) && !string.contains("_")) {
                nq.b bVar = new nq.b();
                String str2 = new String(bVar.d(bVar.a(string)));
                if (TextUtils.isEmpty(str2)) {
                    throw new Exception("rsaCrypter decrypt error");
                }
                return str2;
            }
            return "";
        } catch (Exception e11) {
            com.transsion.sdk.oneid.b.m(Log.getStackTraceString(e11));
            throw e11;
        }
    }

    public void g(String str, String str2) {
        Context context = this.f70068b;
        if (context == null) {
            return;
        }
        if (this.f70067a == null) {
            this.f70067a = e(context);
        }
        SharedPreferences sharedPreferences = this.f70067a;
        if (sharedPreferences == null) {
            return;
        }
        try {
            sharedPreferences.edit().putString(str, str2).apply();
        } catch (Exception e11) {
            com.transsion.sdk.oneid.b.m(Log.getStackTraceString(e11));
        }
    }

    public String h(String str) {
        Context context = this.f70068b;
        if (context == null) {
            return "";
        }
        if (this.f70067a == null) {
            this.f70067a = e(context);
        }
        SharedPreferences sharedPreferences = this.f70067a;
        if (sharedPreferences == null) {
            return "";
        }
        try {
            return sharedPreferences.getString(str, "");
        } catch (Exception e11) {
            com.transsion.sdk.oneid.b.m(Log.getStackTraceString(e11));
            return "";
        }
    }
}
