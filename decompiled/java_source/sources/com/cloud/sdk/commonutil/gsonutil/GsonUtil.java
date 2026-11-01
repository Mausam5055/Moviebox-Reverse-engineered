package com.cloud.sdk.commonutil.gsonutil;

import com.cloud.sdk.commonutil.util.c;
import com.google.gson.Gson;
import java.lang.reflect.Type;
import k7.e;

/* JADX INFO: loaded from: classes.dex */
public class GsonUtil {

    public static class GsonParseException extends Exception {
        public GsonParseException(Throwable th2) {
            super(th2);
        }
    }

    public static Object a(String str, Class cls) throws GsonParseException {
        try {
            return c().fromJson(str, cls);
        } catch (Exception e11) {
            throw new GsonParseException(e11);
        }
    }

    public static Object b(String str, Type type) throws GsonParseException {
        try {
            return c().fromJson(str, type);
        } catch (Exception e11) {
            throw new GsonParseException(e11);
        }
    }

    public static Gson c() {
        return e.a();
    }

    public static String d(Object obj) {
        try {
            return c().toJson(obj);
        } catch (Exception e11) {
            c.Log().e("GsonUtil", e11.getMessage());
            return "";
        }
    }
}
