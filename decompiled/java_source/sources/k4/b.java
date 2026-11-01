package k4;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import com.transsion.athena.attribution.AttrConstant;
import com.transsion.athena.taaneh.aethna;
import com.transsion.athena.taaneh.athena;
import nq.c;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static b f66637c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SharedPreferences f66638a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f66639b;

    private b(Context context) {
        this.f66639b = context.getApplicationContext();
    }

    public static synchronized b b(Context context) {
        try {
            if (f66637c == null) {
                f66637c = new b(context);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f66637c;
    }

    private SharedPreferences d(Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            try {
                SharedPreferences sharedPreferences = context.getSharedPreferences(athena.d(context) + "_" + AttrConstant.SP_NAME, 0);
                this.f66638a = sharedPreferences;
                return sharedPreferences;
            } catch (Exception e11) {
                aethna.b(Log.getStackTraceString(e11));
                return null;
            }
        }
        SharedPreferences sharedPreferences2 = this.f66638a;
        if (sharedPreferences2 != null) {
            return sharedPreferences2;
        }
        if (context == null) {
            return null;
        }
        try {
            this.f66638a = context.getSharedPreferences(athena.d(context) + "_" + AttrConstant.SP_NAME, 0);
        } catch (Exception e12) {
            aethna.b(Log.getStackTraceString(e12));
        }
        return this.f66638a;
    }

    public String a(String str) throws Exception {
        Context context = this.f66639b;
        if (context == null) {
            throw new Exception("context is null");
        }
        if (this.f66638a == null) {
            this.f66638a = d(context);
        }
        if (this.f66638a == null) {
            throw new Exception("sp is null");
        }
        if (!c.b().a(this.f66639b)) {
            throw new Exception("keystore decrypt error");
        }
        String string = this.f66638a.getString(str, "");
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

    public void c(String str, String str2) throws Exception {
        Context context = this.f66639b;
        if (context == null) {
            throw new Exception("context is null");
        }
        if (this.f66638a == null) {
            this.f66638a = d(context);
        }
        if (this.f66638a == null) {
            throw new Exception("sp is null");
        }
        try {
            if (!c.b().a(this.f66639b)) {
                throw new Exception("keystore encrypt error");
            }
            nq.b bVar = new nq.b();
            String strC = bVar.c(bVar.e(str2));
            if (TextUtils.isEmpty(strC)) {
                throw new Exception("rsaCrypter encrypt error");
            }
            SharedPreferences.Editor editorEdit = this.f66638a.edit();
            editorEdit.putString(str, strC);
            editorEdit.apply();
        } catch (Exception e11) {
            aethna.b(Log.getStackTraceString(e11));
            throw e11;
        }
    }
}
