package com.bytedance.adsdk.ugeno.yoga;

import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;

/* JADX INFO: loaded from: classes2.dex */
public enum Jcg {
    FLEX_START(0, "flex_start"),
    CENTER(1, TtmlNode.CENTER),
    FLEX_END(2, "flex_end"),
    SPACE_BETWEEN(3, "space_between"),
    SPACE_AROUND(4, "space_around"),
    SPACE_EVENLY(5, "space_evenly");

    private final String Dq;
    private final int Jcg;

    Jcg(int i11, String str) {
        this.Jcg = i11;
        this.Dq = str;
    }

    public static Jcg Sj(int i11) {
        if (i11 == 0) {
            return FLEX_START;
        }
        if (i11 == 1) {
            return CENTER;
        }
        if (i11 == 2) {
            return FLEX_END;
        }
        if (i11 == 3) {
            return SPACE_BETWEEN;
        }
        if (i11 == 4) {
            return SPACE_AROUND;
        }
        if (i11 == 5) {
            return SPACE_EVENLY;
        }
        throw new IllegalArgumentException("Unknown enum value: ".concat(String.valueOf(i11)));
    }

    public static Jcg Sj(String str) {
        str.hashCode();
        switch (str) {
            case "center":
                return CENTER;
            case "space_around":
                return SPACE_AROUND;
            case "space_evenly":
                return SPACE_EVENLY;
            case "flex_start":
                return FLEX_START;
            case "space_between":
                return SPACE_BETWEEN;
            case "flex_end":
                return FLEX_END;
            default:
                throw new IllegalArgumentException("Unknown enum value: ".concat(str));
        }
    }

    public int Sj() {
        return this.Jcg;
    }
}
