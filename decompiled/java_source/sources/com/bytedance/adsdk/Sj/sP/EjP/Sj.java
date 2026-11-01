package com.bytedance.adsdk.Sj.sP.EjP;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public enum Sj implements HiB {
    TRUE,
    FALSE,
    NULL;

    private static final Map<String, Sj> EjP = new HashMap(128);

    static {
        for (Sj sj2 : values()) {
            EjP.put(sj2.name().toLowerCase(), sj2);
        }
    }

    public static Sj Sj(String str) {
        return EjP.get(str.toLowerCase());
    }
}
