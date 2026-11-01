package com.mbridge.msdk.advanced.middle;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.j;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.out.NativeAdvancedAdListener;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private NativeAdvancedAdListener f34168a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c f34169b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private MBridgeIds f34170c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f34171d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f34172e;

    public b(c cVar, MBridgeIds mBridgeIds) {
        this.f34169b = cVar;
        this.f34170c = mBridgeIds;
        this.f34171d = mBridgeIds.getUnitId();
    }

    public void a(CampaignEx campaignEx, int i11) {
        c cVar;
        o0.b("NativeAdvancedLoadManager", "onLoadSuccessed: " + i11);
        c cVar2 = this.f34169b;
        if (cVar2 == null || !cVar2.g() || campaignEx == null) {
            return;
        }
        NativeAdvancedAdListener nativeAdvancedAdListener = this.f34168a;
        if (nativeAdvancedAdListener != null && this.f34169b != null) {
            nativeAdvancedAdListener.onLoadSuccessed(this.f34170c);
        }
        this.f34169b.a(false);
        ArrayList arrayList = new ArrayList();
        arrayList.add(campaignEx);
        j.a(com.mbridge.msdk.foundation.controller.c.m().d(), arrayList, this.f34171d, campaignEx.isBidCampaign());
        if (i11 != 2 || (cVar = this.f34169b) == null) {
            return;
        }
        cVar.a(campaignEx, true);
    }

    public void a(com.mbridge.msdk.foundation.error.b bVar, int i11) {
        c cVar = this.f34169b;
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
        NativeAdvancedAdListener nativeAdvancedAdListener = this.f34168a;
        if (nativeAdvancedAdListener != null) {
            nativeAdvancedAdListener.onLoadFailed(this.f34170c, str);
        }
        this.f34169b.a(false);
        j.a(com.mbridge.msdk.foundation.controller.c.m().d(), str, this.f34171d, !TextUtils.isEmpty(this.f34172e), bVar != null ? bVar.a() : null);
    }

    public void a(NativeAdvancedAdListener nativeAdvancedAdListener) {
        this.f34168a = nativeAdvancedAdListener;
    }

    public void a(String str) {
        this.f34172e = str;
    }
}
