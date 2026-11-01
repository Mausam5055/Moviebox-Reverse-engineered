package com.mbridge.msdk.splash.middle;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.j;
import com.mbridge.msdk.out.MBSplashLoadListener;
import com.mbridge.msdk.out.MBridgeIds;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private MBSplashLoadListener f37532a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c f37533b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f37534c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f37535d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private MBridgeIds f37536e;

    public b(c cVar, MBridgeIds mBridgeIds) {
        this.f37533b = cVar;
        this.f37536e = mBridgeIds;
        if (mBridgeIds != null) {
            this.f37534c = mBridgeIds.getUnitId();
        }
    }

    public void a(CampaignEx campaignEx, int i11) {
        c cVar;
        c cVar2 = this.f37533b;
        if (cVar2 == null || !cVar2.g() || campaignEx == null) {
            return;
        }
        MBSplashLoadListener mBSplashLoadListener = this.f37532a;
        if (mBSplashLoadListener != null) {
            mBSplashLoadListener.onLoadSuccessed(this.f37536e, i11);
            this.f37532a.isSupportZoomOut(this.f37536e, campaignEx.getFlb() == 1);
        }
        this.f37533b.b(false);
        ArrayList arrayList = new ArrayList();
        arrayList.add(campaignEx);
        j.a(com.mbridge.msdk.foundation.controller.c.m().d(), arrayList, this.f37534c, campaignEx.isBidCampaign());
        if (i11 != 2 || (cVar = this.f37533b) == null) {
            return;
        }
        cVar.b(campaignEx, 0, true);
    }

    public void a(com.mbridge.msdk.foundation.error.b bVar, int i11) {
        c cVar = this.f37533b;
        if (cVar == null || !cVar.g()) {
            return;
        }
        String str = "";
        if (bVar != null) {
            String strG = bVar.g();
            if (!TextUtils.isEmpty(strG)) {
                str = strG;
            }
        }
        MBSplashLoadListener mBSplashLoadListener = this.f37532a;
        if (mBSplashLoadListener != null) {
            mBSplashLoadListener.onLoadFailed(this.f37536e, str, i11);
        }
        this.f37533b.b(false);
        j.a(com.mbridge.msdk.foundation.controller.c.m().d(), str, this.f37534c, !TextUtils.isEmpty(this.f37535d), bVar != null ? bVar.a() : null);
    }

    public void a(MBSplashLoadListener mBSplashLoadListener) {
        this.f37532a = mBSplashLoadListener;
    }

    public void a(String str) {
        this.f37535d = str;
    }
}
