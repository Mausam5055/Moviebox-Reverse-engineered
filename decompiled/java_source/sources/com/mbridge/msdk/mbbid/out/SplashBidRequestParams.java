package com.mbridge.msdk.mbbid.out;

import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.tools.k0;

/* JADX INFO: loaded from: classes5.dex */
public class SplashBidRequestParams extends BannerBidRequestParams {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static int f36227g = 1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static int f36228h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static int f36229i;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f36230f;

    public SplashBidRequestParams(String str, String str2) {
        this(str, str2, "");
    }

    public SplashBidRequestParams(String str, String str2, String str3) {
        this(str, str2, str3, false, f36227g, f36229i, f36228h);
    }

    public SplashBidRequestParams(String str, String str2, String str3, boolean z10, int i11, int i12, int i13) {
        super(str, str2, str3, 0, 0);
        this.f36230f = false;
        f36227g = i11;
        a(i12, i13);
        this.f36230f = z10;
    }

    public SplashBidRequestParams(String str, String str2, boolean z10, int i11, int i12, int i13) {
        this(str, str2, "", z10, i11, i13, i12);
    }

    private void a(int i11, int i12) {
        int iN = k0.n(c.m().d());
        int iM = k0.m(c.m().d());
        int i13 = f36227g;
        if (i13 == 1) {
            if (iM > i12 * 4) {
                setHeight(iM - i12);
                setWidth(iN);
                return;
            } else {
                setHeight(0);
                setWidth(0);
                return;
            }
        }
        if (i13 == 2) {
            if (iN > i11 * 4) {
                setWidth(iN - i11);
                setHeight(iM);
            } else {
                setHeight(0);
                setWidth(0);
            }
        }
    }

    protected boolean a() {
        return this.f36230f;
    }

    public int getOrientation() {
        return f36227g;
    }
}
