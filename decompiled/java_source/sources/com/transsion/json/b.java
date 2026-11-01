package com.transsion.json;

/* JADX INFO: loaded from: classes5.dex */
public class b {
    public static Object a(String str, Class cls) throws Exception {
        if (str == null) {
            throw new Exception("The Json is Null: ");
        }
        try {
            return new i().b(str, cls);
        } catch (Exception unused) {
            throw new Exception("error json:" + str);
        }
    }

    public static String b(Object obj) {
        return c(obj, false);
    }

    public static String c(Object obj, boolean z10) {
        if (obj != null) {
            return new j().b("*.class").a(z10).c(obj);
        }
        throw new IllegalStateException("The Object is Null: ");
    }
}
