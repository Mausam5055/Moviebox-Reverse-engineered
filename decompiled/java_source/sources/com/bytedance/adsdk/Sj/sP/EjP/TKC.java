package com.bytedance.adsdk.Sj.sP.EjP;

import com.cloud.tmc.kernel.utils.UrlUtils;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public enum TKC implements HiB {
    QUESTION(UrlUtils.QUESTION_MARK, 0),
    COLON(":", 0),
    DOUBLE_AMP("&&", 1),
    DOUBLE_BAR("||", 1),
    EQ("==", 2),
    GT(">", 2),
    LT("<", 2),
    LT_EQ("<=", 2),
    GT_EQ(">=", 2),
    NOT_EQ("!=", 2),
    PLUS("+", 3),
    MINUS("-", 3),
    MULTI("*", 4),
    DIVISION("/", 4),
    MOD("%", 4);

    private final int RiZ;
    private final String TzV;
    private static final Map<String, TKC> uvD = new HashMap(128);
    private static final Set<TKC> dNu = new HashSet();

    static {
        for (TKC tkc : values()) {
            uvD.put(tkc.Sj(), tkc);
            dNu.add(tkc);
        }
    }

    TKC(String str, int i11) {
        this.TzV = str;
        this.RiZ = i11;
    }

    public static TKC Sj(String str) {
        return uvD.get(str);
    }

    public static boolean Sj(HiB hiB) {
        return hiB instanceof TKC;
    }

    public String Sj() {
        return this.TzV;
    }

    public int sP() {
        return this.RiZ;
    }
}
