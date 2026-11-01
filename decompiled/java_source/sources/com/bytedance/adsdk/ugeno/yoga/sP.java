package com.bytedance.adsdk.ugeno.yoga;

import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;

/* JADX INFO: loaded from: classes2.dex */
public enum sP {
    AUTO(0, "auto"),
    FLEX_START(1, "flex_start"),
    CENTER(2, TtmlNode.CENTER),
    FLEX_END(3, "flex_end"),
    STRETCH(4, "stretch"),
    BASELINE(5, "baseline"),
    SPACE_BETWEEN(6, "space_between"),
    SPACE_AROUND(7, "space_around");

    private final String TEQ;
    private final int uA;

    sP(int i11, String str) {
        this.uA = i11;
        this.TEQ = str;
    }

    public static sP Sj(int i11) {
        switch (i11) {
            case 0:
                return AUTO;
            case 1:
                return FLEX_START;
            case 2:
                return CENTER;
            case 3:
                return FLEX_END;
            case 4:
                return STRETCH;
            case 5:
                return BASELINE;
            case 6:
                return SPACE_BETWEEN;
            case 7:
                return SPACE_AROUND;
            default:
                throw new IllegalArgumentException("Unknown enum value: ".concat(String.valueOf(i11)));
        }
    }

    public static sP Sj(String str) {
        str.hashCode();
        switch (str) {
            case "stretch":
                return STRETCH;
            case "baseline":
                return BASELINE;
            case "center":
                return CENTER;
            case "space_around":
                return SPACE_AROUND;
            case "auto":
                return AUTO;
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
        return this.uA;
    }
}
