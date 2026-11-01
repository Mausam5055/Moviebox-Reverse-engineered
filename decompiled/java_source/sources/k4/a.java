package k4;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import com.transsion.athena.attribution.AttrConstant;
import com.transsion.athena.taaneh.aethna;
import nq.c;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static a f66634c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SharedPreferences f66635a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f66636b;

    private a(Context context) {
        this.f66636b = context.getApplicationContext();
    }

    public static synchronized a a(Context context) {
        try {
            if (f66634c == null) {
                f66634c = new a(context);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f66634c;
    }

    private SharedPreferences f(Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            try {
                SharedPreferences sharedPreferences = context.getSharedPreferences(AttrConstant.SP_NAME, 0);
                this.f66635a = sharedPreferences;
                return sharedPreferences;
            } catch (Exception e11) {
                aethna.b(e11.getMessage());
                return null;
            }
        }
        SharedPreferences sharedPreferences2 = this.f66635a;
        if (sharedPreferences2 != null) {
            return sharedPreferences2;
        }
        if (context == null) {
            return null;
        }
        try {
            this.f66635a = context.getSharedPreferences(AttrConstant.SP_NAME, 0);
        } catch (Exception e12) {
            aethna.b(e12.getMessage());
        }
        return this.f66635a;
    }

    public void b(String str, int i11) {
        Context context = this.f66636b;
        if (context == null) {
            return;
        }
        if (this.f66635a == null) {
            this.f66635a = f(context);
        }
        SharedPreferences sharedPreferences = this.f66635a;
        if (sharedPreferences == null) {
            return;
        }
        try {
            sharedPreferences.edit().putInt(str, i11).apply();
        } catch (Exception e11) {
            aethna.b(Log.getStackTraceString(e11));
        }
    }

    public void c(String str, String str2) throws Exception {
        Context context = this.f66636b;
        if (context == null) {
            throw new Exception("context is null");
        }
        if (this.f66635a == null) {
            this.f66635a = f(context);
        }
        if (this.f66635a == null) {
            throw new Exception("sp is null");
        }
        if (!c.b().a(this.f66636b)) {
            throw new Exception("keystore encrypt error");
        }
        nq.b bVar = new nq.b();
        String strC = bVar.c(bVar.e(str2));
        if (TextUtils.isEmpty(strC)) {
            throw new Exception("rsaCrypter encrypt error");
        }
        SharedPreferences.Editor editorEdit = this.f66635a.edit();
        editorEdit.putString(str, strC);
        editorEdit.apply();
    }

    public boolean d(String str) {
        if (this.f66635a == null) {
            this.f66635a = f(this.f66636b);
        }
        SharedPreferences sharedPreferences = this.f66635a;
        return sharedPreferences != null && sharedPreferences.contains(str);
    }

    public int e(String str) {
        Context context = this.f66636b;
        if (context == null) {
            return -1;
        }
        if (this.f66635a == null) {
            this.f66635a = f(context);
        }
        SharedPreferences sharedPreferences = this.f66635a;
        if (sharedPreferences == null) {
            return -1;
        }
        try {
            return sharedPreferences.getInt(str, 0);
        } catch (Exception e11) {
            aethna.b(e11.getMessage());
            return -1;
        }
    }

    public void g(String str, String str2) {
        Context context = this.f66636b;
        if (context == null) {
            return;
        }
        if (this.f66635a == null) {
            this.f66635a = f(context);
        }
        SharedPreferences sharedPreferences = this.f66635a;
        if (sharedPreferences == null) {
            return;
        }
        try {
            sharedPreferences.edit().putString(str, str2).apply();
        } catch (Exception e11) {
            aethna.b(Log.getStackTraceString(e11));
        }
    }

    public String h(String str) throws Exception {
        Context context = this.f66636b;
        if (context == null) {
            throw new Exception("context is null");
        }
        if (this.f66635a == null) {
            this.f66635a = f(context);
        }
        if (this.f66635a == null) {
            throw new Exception("sp is null");
        }
        if (!c.b().a(this.f66636b)) {
            throw new Exception("keystore decrypt error");
        }
        String string = this.f66635a.getString(str, "");
        if (TextUtils.isEmpty(string) || string.contains("_")) {
            return "";
        }
        nq.b bVar = new nq.b();
        String str2 = new String(bVar.d(bVar.a(string)));
        if (TextUtils.isEmpty(str2)) {
            throw new Exception("rsaCrypter decrypt error");
        }
        return str2;
    }

    public String i(String str) {
        Context context = this.f66636b;
        if (context == null) {
            return "";
        }
        if (this.f66635a == null) {
            this.f66635a = f(context);
        }
        SharedPreferences sharedPreferences = this.f66635a;
        if (sharedPreferences == null) {
            return "";
        }
        try {
            return sharedPreferences.getString(str, "");
        } catch (Exception e11) {
            aethna.b(Log.getStackTraceString(e11));
            return "";
        }
    }
}
