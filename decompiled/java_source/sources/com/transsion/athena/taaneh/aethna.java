package com.transsion.athena.taaneh;

import android.util.Log;
import com.transsion.core.log.ObjectLogUtils;

/* JADX INFO: loaded from: classes5.dex */
public class aethna {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ObjectLogUtils f42798a = new ObjectLogUtils.a().p("Athena").q(true).n(false).m();

    public static void a(Exception exc) {
        b(Log.getStackTraceString(exc));
    }

    public static void a(String str) {
        String str2 = "%s";
        if (str != null && str.length() != 0) {
            str2 = String.format("%s", str);
        }
        ObjectLogUtils objectLogUtils = f42798a;
        objectLogUtils.x(1);
        objectLogUtils.g(str2);
    }

    public static void a(String str, Object... objArr) {
        if (objArr.length != 0) {
            str = String.format(str, objArr);
        }
        ObjectLogUtils objectLogUtils = f42798a;
        objectLogUtils.x(1);
        objectLogUtils.g(str);
    }

    public static void b(String str) {
        String str2 = "%s";
        if (str != null && str.length() != 0) {
            str2 = String.format("%s", str);
        }
        ObjectLogUtils objectLogUtils = f42798a;
        objectLogUtils.x(1);
        objectLogUtils.i(str2);
    }

    public static void b(String str, Object... objArr) {
        if (objArr.length != 0) {
            str = String.format(str, objArr);
        }
        ObjectLogUtils objectLogUtils = f42798a;
        objectLogUtils.x(1);
        objectLogUtils.i(str);
    }

    public static void c(String str) {
        String str2 = "%s";
        if (str != null && str.length() != 0) {
            str2 = String.format("%s", str);
        }
        ObjectLogUtils objectLogUtils = f42798a;
        objectLogUtils.x(1);
        objectLogUtils.n(str2);
    }

    public static void c(String str, Object... objArr) {
        if (objArr.length != 0) {
            str = String.format(str, objArr);
        }
        ObjectLogUtils objectLogUtils = f42798a;
        objectLogUtils.x(1);
        objectLogUtils.n(str);
    }
}
