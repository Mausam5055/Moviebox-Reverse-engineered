package com.blankj.utilcode.util;

import android.content.SharedPreferences;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class x {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Map f20120b = new HashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SharedPreferences f20121a;

    private x(String str, int i11) {
        this.f20121a = Utils.a().getSharedPreferences(str, i11);
    }

    public static x a(String str) {
        return b(str, 0);
    }

    public static x b(String str, int i11) {
        if (e(str)) {
            str = "spUtils";
        }
        Map map = f20120b;
        x xVar = (x) map.get(str);
        if (xVar == null) {
            synchronized (x.class) {
                try {
                    xVar = (x) map.get(str);
                    if (xVar == null) {
                        xVar = new x(str, i11);
                        map.put(str, xVar);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return xVar;
    }

    private static boolean e(String str) {
        if (str == null) {
            return true;
        }
        int length = str.length();
        for (int i11 = 0; i11 < length; i11++) {
            if (!Character.isWhitespace(str.charAt(i11))) {
                return false;
            }
        }
        return true;
    }

    public String c(String str) {
        return d(str, "");
    }

    public String d(String str, String str2) {
        return this.f20121a.getString(str, str2);
    }

    public void f(String str) {
        g(str, false);
    }

    public void g(String str, boolean z10) {
        if (z10) {
            this.f20121a.edit().remove(str).commit();
        } else {
            this.f20121a.edit().remove(str).apply();
        }
    }
}
