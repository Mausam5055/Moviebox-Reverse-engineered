package com.transsion.sdk.oneid;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.transsion.sdk.oneid.data.AppIdInfo;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class OneID {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static transient boolean f51907c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static int f51908d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static volatile OneID f51909e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e f51910a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f51911b;

    class a extends TypeToken<ConcurrentHashMap<Integer, AppIdInfo>> {
        a(OneID oneID) {
        }
    }

    private OneID(Context context) {
        this.f51911b = context;
        this.f51910a = e.a(context.getApplicationContext());
        dm.a.b(context.getApplicationContext());
    }

    public static void c(Context context, int i11) {
        e eVar;
        if (context != null && f51909e == null) {
            synchronized (OneID.class) {
                try {
                    if (f51909e == null) {
                        f51909e = new OneID(context);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        OneID oneID = f51909e;
        if (oneID.f51911b == null || (eVar = oneID.f51910a) == null) {
            return;
        }
        eVar.b(i11);
    }

    public static void d(Context context, int i11, int i12) {
        if (f51908d == 0) {
            f51908d = i12;
        }
        c(context, i11);
    }

    public static OneID e() {
        if (f51909e != null) {
            return f51909e;
        }
        throw new IllegalStateException("You should call OneID.init first!");
    }

    public static boolean f() {
        return f51907c;
    }

    public String a(int i11) {
        AppIdInfo appIdInfo;
        if (this.f51911b == null) {
            throw new OneIDException("OneID not init yet");
        }
        e eVar = this.f51910a;
        String str = "";
        String strI = eVar != null ? eVar.i(i11) : "";
        if (!TextUtils.isEmpty(strI)) {
            return strI;
        }
        try {
            String strH = n00.b.b(this.f51911b).h("appid_info_list");
            if (!TextUtils.isEmpty(strH) && (appIdInfo = (AppIdInfo) ((ConcurrentHashMap) new Gson().fromJson(strH, new a(this).getType())).get(Integer.valueOf(i11))) != null) {
                strI = appIdInfo.odid;
                str = appIdInfo.msg;
            }
        } catch (Exception e11) {
            b.m(Log.getStackTraceString(e11));
        }
        if (!TextUtils.isEmpty(strI)) {
            return strI;
        }
        if (TextUtils.isEmpty(str)) {
            str = "Please try later";
        }
        throw new OneIDException(str);
    }

    public String b() {
        e eVar = this.f51910a;
        return eVar != null ? eVar.h() : "";
    }
}
