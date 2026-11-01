package tk;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.UserManager;
import android.text.TextUtils;
import com.transsion.athena.attribution.AttrConstant;
import sk.b;
import sk.d;
import sk.e;

/* JADX INFO: loaded from: classes6.dex */
public class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static a f76274b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Context f76275c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SharedPreferences f76276a;

    private a(Context context) {
        f76275c = context.getApplicationContext();
        c(context);
    }

    public static synchronized a a(Context context) {
        try {
            if (f76274b == null) {
                f76274b = new a(context);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f76274b;
    }

    private SharedPreferences c(Context context) {
        if (Build.VERSION.SDK_INT < 24) {
            SharedPreferences sharedPreferences = this.f76276a;
            if (sharedPreferences != null) {
                return sharedPreferences;
            }
            if (context == null) {
                return null;
            }
            try {
                this.f76276a = context.getSharedPreferences(AttrConstant.SP_NAME, 0);
            } catch (Exception unused) {
            }
            return this.f76276a;
        }
        try {
            if (((UserManager) context.getSystemService("user")).isUserUnlocked()) {
                SharedPreferences sharedPreferences2 = context.getSharedPreferences(AttrConstant.SP_NAME, 0);
                this.f76276a = sharedPreferences2;
                return sharedPreferences2;
            }
            SharedPreferences sharedPreferences3 = context.createDeviceProtectedStorageContext().getSharedPreferences(AttrConstant.SP_NAME, 0);
            this.f76276a = sharedPreferences3;
            return sharedPreferences3;
        } catch (Exception unused2) {
            return null;
        }
    }

    public String b(String str) {
        if (f76275c == null || !e.b().a(f76275c)) {
            return "";
        }
        if (this.f76276a == null) {
            this.f76276a = c(f76275c);
        }
        if (this.f76276a == null) {
            return "";
        }
        try {
            d dVar = new d(f76275c);
            String string = this.f76276a.getString(str, "");
            if (TextUtils.isEmpty(string)) {
                return "";
            }
            String[] strArrSplit = string.split("_");
            int length = strArrSplit.length;
            byte[] bArrD = dVar.d(dVar.a(strArrSplit[1]));
            int length2 = bArrD.length;
            byte[] bArr = new byte[32];
            byte[] bArr2 = new byte[16];
            System.arraycopy(bArrD, 0, bArr, 0, 32);
            System.arraycopy(bArrD, 32, bArr2, 0, 16);
            sk.a aVar = new sk.a(bArr, bArr2);
            return new String(aVar.d(aVar.a(strArrSplit[0])));
        } catch (Exception unused) {
            return "";
        }
    }

    public void d(String str, String str2) throws Exception {
        if (f76275c == null) {
            throw new Exception("context is null");
        }
        if (!e.b().a(f76275c)) {
            throw new Exception("key not created");
        }
        if (this.f76276a == null) {
            this.f76276a = c(f76275c);
        }
        if (this.f76276a == null) {
            throw new Exception("sp is null");
        }
        try {
            b bVar = new b();
            d dVar = new d(f76275c);
            String strC = bVar.c(bVar.e(str2));
            String strC2 = dVar.c(dVar.e(bVar.i()));
            this.f76276a.edit().putString(str, strC + "_" + strC2).apply();
        } catch (Exception unused) {
        }
    }
}
