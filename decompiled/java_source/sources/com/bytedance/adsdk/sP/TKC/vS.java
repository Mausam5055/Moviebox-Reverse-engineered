package com.bytedance.adsdk.sP.TKC;

/* JADX INFO: loaded from: classes2.dex */
public class vS {
    public final float Sj;
    private final String TKC;
    public final float sP;

    public vS(String str, float f11, float f12) {
        this.TKC = str;
        this.sP = f12;
        this.Sj = f11;
    }

    public boolean Sj(String str) {
        if (this.TKC.equalsIgnoreCase(str)) {
            return true;
        }
        if (this.TKC.endsWith("\r")) {
            String str2 = this.TKC;
            if (str2.substring(0, str2.length() - 1).equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }
}
