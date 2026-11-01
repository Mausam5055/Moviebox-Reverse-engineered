package com.bytedance.adsdk.ugeno.yoga;

/* JADX INFO: loaded from: classes2.dex */
@com.bytedance.adsdk.ugeno.yoga.Sj.Sj
public enum YogaLogLevel {
    ERROR(0),
    WARN(1),
    INFO(2),
    DEBUG(3),
    VERBOSE(4),
    FATAL(5);

    private final int Jcg;

    YogaLogLevel(int i11) {
        this.Jcg = i11;
    }

    @com.bytedance.adsdk.ugeno.yoga.Sj.Sj
    public static YogaLogLevel fromInt(int i11) {
        if (i11 == 0) {
            return ERROR;
        }
        if (i11 == 1) {
            return WARN;
        }
        if (i11 == 2) {
            return INFO;
        }
        if (i11 == 3) {
            return DEBUG;
        }
        if (i11 == 4) {
            return VERBOSE;
        }
        if (i11 == 5) {
            return FATAL;
        }
        throw new IllegalArgumentException("Unknown enum value: ".concat(String.valueOf(i11)));
    }
}
