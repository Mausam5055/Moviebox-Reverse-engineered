package com.mbridge.msdk.dycreator.bridge;

import com.mbridge.msdk.dycreator.viewdata.base.a;
import com.mbridge.msdk.dycreator.wrapper.DyOption;
import com.mbridge.msdk.foundation.entity.CampaignEx;

/* JADX INFO: loaded from: classes5.dex */
public class MBSplashData implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private DyOption f34763a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f34764b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f34765c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f34766d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f34767e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private CampaignEx f34768f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f34769g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f34770h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f34771i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f34772j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f34773k = 0;

    public MBSplashData(DyOption dyOption) {
        this.f34763a = dyOption;
        this.f34768f = dyOption.getCampaignEx();
    }

    public String getAdClickText() {
        return this.f34765c;
    }

    public String getAppInfo() {
        return this.f34764b;
    }

    @Override // com.mbridge.msdk.dycreator.viewdata.base.a
    public CampaignEx getBindData() {
        return this.f34768f;
    }

    public int getClickType() {
        return this.f34773k;
    }

    public String getCountDownText() {
        return this.f34766d;
    }

    public DyOption getDyOption() {
        return this.f34763a;
    }

    @Override // com.mbridge.msdk.dycreator.viewdata.base.a
    public DyOption getEffectData() {
        return this.f34763a;
    }

    public int getLogoImage() {
        return this.f34770h;
    }

    public String getLogoText() {
        return this.f34767e;
    }

    public int getNoticeImage() {
        return this.f34769g;
    }

    public float getxInScreen() {
        return this.f34771i;
    }

    public float getyInScreen() {
        return this.f34772j;
    }

    public void setAdClickText(String str) {
        this.f34765c = str;
    }

    public void setAppInfo(String str) {
        this.f34764b = str;
    }

    public void setClickType(int i11) {
        this.f34773k = i11;
    }

    public void setCountDownText(String str) {
        this.f34766d = str;
    }

    public void setLogoImage(int i11) {
        this.f34770h = i11;
    }

    public void setLogoText(String str) {
        this.f34767e = str;
    }

    public void setNoticeImage(int i11) {
        this.f34769g = i11;
    }

    public void setxInScreen(float f11) {
        this.f34771i = f11;
    }

    public void setyInScreen(float f11) {
        this.f34772j = f11;
    }
}
