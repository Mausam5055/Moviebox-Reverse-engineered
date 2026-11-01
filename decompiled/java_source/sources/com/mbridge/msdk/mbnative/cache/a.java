package com.mbridge.msdk.mbnative.cache;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.db.e;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.out.Campaign;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class a extends b<String, List<Campaign>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private e f36231a = e.a(g.a(com.mbridge.msdk.foundation.controller.c.m().d()));

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f36232b;

    /* JADX INFO: renamed from: com.mbridge.msdk.mbnative.cache.a$a, reason: collision with other inner class name */
    class RunnableC0507a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ List f36233a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f36234b;

        RunnableC0507a(List list, String str) {
            this.f36233a = list;
            this.f36234b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (int i11 = 0; i11 < this.f36233a.size(); i11++) {
                CampaignEx campaignEx = (CampaignEx) this.f36233a.get(i11);
                campaignEx.setCacheLevel(1);
                a.this.f36231a.a(campaignEx, this.f36234b, 1);
            }
        }
    }

    public a(int i11) {
        this.f36232b = i11;
    }

    @Override // com.mbridge.msdk.mbnative.cache.b
    public List<Campaign> a(String str, int i11) {
        List<CampaignEx> listA = this.f36231a.a(str, i11, 1, this.f36232b);
        if (listA == null) {
            return null;
        }
        if (a(listA, 1)) {
            a(listA, str);
            return null;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(listA);
        return arrayList;
    }

    @Override // com.mbridge.msdk.mbnative.cache.b
    public void a(String str, Campaign campaign, String str2) {
        boolean z10 = !TextUtils.isEmpty(str2);
        if (campaign == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            CampaignEx campaignEx = (CampaignEx) campaign;
            if (this.f36231a.a(campaignEx.getId(), campaignEx.getTab(), str, campaignEx.getCacheLevel(), campaignEx.getType(), z10)) {
                this.f36231a.a(campaignEx.getId(), str, campaignEx.getCacheLevel(), this.f36232b, z10);
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    @Override // com.mbridge.msdk.mbnative.cache.b
    public void a(String str, List<Campaign> list) {
        if (TextUtils.isEmpty(str) || list == null || list.size() <= 0) {
            return;
        }
        this.f36231a.a(str, 1, this.f36232b, false);
        this.f36231a.a(str, 2, this.f36232b, false);
        for (int i11 = 0; i11 < list.size(); i11++) {
            CampaignEx campaignEx = (CampaignEx) list.get(i11);
            campaignEx.setCacheLevel(1);
            this.f36231a.a(campaignEx, str, 1);
        }
    }

    @Override // com.mbridge.msdk.mbnative.cache.b
    public void a(String str, List<Campaign> list, String str2) {
        boolean z10 = !TextUtils.isEmpty(str2);
        if (TextUtils.isEmpty(str) || list == null || list.size() <= 0) {
            return;
        }
        this.f36231a.a(str, 1, this.f36232b, z10);
        this.f36231a.a(str, 2, this.f36232b, z10);
        com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new RunnableC0507a(list, str));
    }

    public void a(List<CampaignEx> list, String str) {
        for (int i11 = 0; i11 < list.size(); i11++) {
            CampaignEx campaignEx = list.get(i11);
            campaignEx.setCacheLevel(2);
            this.f36231a.a(campaignEx, str, 1);
        }
    }

    public boolean a(List<CampaignEx> list, int i11) {
        long jA;
        if (list != null && list.size() > 0) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            long timestamp = list.get(0).getTimestamp();
            if (i11 != 1) {
                jA = i11 != 2 ? 0L : b();
            } else {
                jA = a();
            }
            if (jCurrentTimeMillis - timestamp > jA) {
                return true;
            }
        }
        return false;
    }

    @Override // com.mbridge.msdk.mbnative.cache.b
    public List<Campaign> b(String str, int i11) {
        List<CampaignEx> listA = this.f36231a.a(str, i11, 2, this.f36232b);
        if (listA == null) {
            return null;
        }
        if (a(listA, 2)) {
            this.f36231a.a(str, 2, this.f36232b);
            return null;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(listA);
        return arrayList;
    }
}
