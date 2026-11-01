package com.cloud.tmc.miniapp.widget.pulldownrefresh.constant;

/* JADX INFO: loaded from: classes3.dex */
public class OooO00o {
    public static final OooO00o OooO0OO;
    public static final OooO00o OooO0Oo;
    public static final OooO00o OooO0o;
    public static final OooO00o OooO0o0;
    public static final OooO00o OooO0oO;
    public static final OooO00o[] OooO0oo;
    public final int OooO00o;
    public final boolean OooO0O0;

    static {
        OooO00o oooO00o = new OooO00o(0, false);
        OooO0OO = oooO00o;
        OooO00o oooO00o2 = new OooO00o(1, true);
        OooO00o oooO00o3 = new OooO00o(2, false);
        OooO0Oo = oooO00o3;
        OooO00o oooO00o4 = new OooO00o(3, true);
        OooO00o oooO00o5 = new OooO00o(4, false);
        OooO0o0 = oooO00o5;
        OooO00o oooO00o6 = new OooO00o(5, true);
        OooO00o oooO00o7 = new OooO00o(6, false);
        OooO0o = oooO00o7;
        OooO00o oooO00o8 = new OooO00o(7, true);
        OooO00o oooO00o9 = new OooO00o(8, false);
        OooO00o oooO00o10 = new OooO00o(9, true);
        OooO0oO = oooO00o10;
        OooO0oo = new OooO00o[]{oooO00o, oooO00o2, oooO00o3, oooO00o4, oooO00o5, oooO00o6, oooO00o7, oooO00o8, oooO00o9, oooO00o10, new OooO00o(10, false), new OooO00o(10, true)};
    }

    public OooO00o(int i11, boolean z10) {
        this.OooO00o = i11;
        this.OooO0O0 = z10;
    }

    public OooO00o OooO00o() {
        if (!this.OooO0O0) {
            return this;
        }
        OooO00o oooO00o = OooO0oo[this.OooO00o - 1];
        return !oooO00o.OooO0O0 ? oooO00o : OooO0OO;
    }

    public boolean OooO00o(OooO00o oooO00o) {
        int i11 = this.OooO00o;
        int i12 = oooO00o.OooO00o;
        return i11 < i12 || ((!this.OooO0O0 || OooO0oO == this) && i11 == i12);
    }
}
