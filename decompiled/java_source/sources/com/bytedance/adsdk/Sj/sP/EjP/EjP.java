package com.bytedance.adsdk.Sj.sP.EjP;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public enum EjP implements HiB {
    LEFT_PAREN("("),
    RIGHT_PAREN(")"),
    LEFT_BRACKET("["),
    RIGHT_BRACKET("]"),
    COMMA(",");

    private static final Map<String, EjP> vS;
    private final String Jcg;

    static {
        HashMap map = new HashMap(128);
        vS = map;
        for (EjP ejP : map.values()) {
            vS.put(ejP.Sj(), ejP);
        }
    }

    EjP(String str) {
        this.Jcg = str;
    }

    public static boolean Sj(HiB hiB) {
        return hiB instanceof EjP;
    }

    public String Sj() {
        return this.Jcg;
    }
}
