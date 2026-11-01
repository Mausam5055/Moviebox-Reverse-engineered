package com.mbridge.msdk.advanced.common;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Map<String, Boolean> f34058a = new HashMap();

    public static void a(String str, boolean z10) {
        f34058a.put(str, Boolean.valueOf(z10));
    }

    public static boolean a(String str) {
        if (f34058a.containsKey(str)) {
            return f34058a.get(str).booleanValue();
        }
        return false;
    }

    public static void b(String str) {
        f34058a.remove(str);
    }
}
