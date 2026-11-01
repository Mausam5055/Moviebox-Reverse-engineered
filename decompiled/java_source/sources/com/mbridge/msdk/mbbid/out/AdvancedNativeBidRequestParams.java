package com.mbridge.msdk.mbbid.out;

/* JADX INFO: loaded from: classes5.dex */
public class AdvancedNativeBidRequestParams extends CommonBidRequestParams {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f36217d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f36218e;

    public AdvancedNativeBidRequestParams(String str, String str2, int i11, int i12) {
        super(str, str2);
        this.f36217d = i12;
        this.f36218e = i11;
    }

    public AdvancedNativeBidRequestParams(String str, String str2, String str3, int i11, int i12) {
        super(str, str2, str3);
        this.f36217d = i12;
        this.f36218e = i11;
    }

    public int getHeight() {
        return this.f36217d;
    }

    public int getWidth() {
        return this.f36218e;
    }

    public void setHeight(int i11) {
        this.f36217d = i11;
    }

    public void setWidth(int i11) {
        this.f36218e = i11;
    }
}
