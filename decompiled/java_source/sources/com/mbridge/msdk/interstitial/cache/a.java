package com.mbridge.msdk.interstitial.cache;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.db.e;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.o0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f35914b = "com.mbridge.msdk.interstitial.cache.a";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static a f35915c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private e f35916a;

    private a() {
        try {
            Context contextD = c.m().d();
            if (contextD != null) {
                this.f35916a = e.a(g.a(contextD));
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public static synchronized a a() {
        try {
            if (f35915c == null) {
                f35915c = new a();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f35915c;
    }

    public List<CampaignEx> a(String str, int i11) {
        List<CampaignEx> listA;
        ArrayList arrayList = null;
        try {
            if (TextUtils.isEmpty(str) || (listA = this.f35916a.a(str, i11, 0, 1)) == null) {
                return null;
            }
            ArrayList arrayList2 = new ArrayList();
            try {
                Iterator<CampaignEx> it = listA.iterator();
                while (it.hasNext()) {
                    arrayList2.add(it.next());
                }
                return arrayList2;
            } catch (Exception e11) {
                e = e11;
                arrayList = arrayList2;
            }
        } catch (Exception e12) {
            e = e12;
        }
        e.printStackTrace();
        return arrayList;
    }

    public synchronized void a(long j11, String str) {
        try {
            if (this.f35916a != null && j11 != 0 && !TextUtils.isEmpty(str)) {
                this.f35916a.a(j11, str);
            }
        } catch (Exception e11) {
            e11.printStackTrace();
            o0.b(f35914b, e11.getMessage());
        }
    }

    public void a(CampaignEx campaignEx, String str) {
        if (campaignEx != null) {
            try {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                this.f35916a.e(campaignEx.getId(), str);
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    public void a(String str, List<CampaignEx> list) {
        try {
            if (TextUtils.isEmpty(str) || list == null || list.size() <= 0) {
                return;
            }
            Iterator<CampaignEx> it = list.iterator();
            while (it.hasNext()) {
                b(it.next(), str);
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public void a(List<CampaignEx> list, String str) {
        if (list == null || list.size() <= 0 || TextUtils.isEmpty(str)) {
            return;
        }
        Iterator<CampaignEx> it = list.iterator();
        while (it.hasNext()) {
            a(it.next(), str);
        }
    }

    public void b(CampaignEx campaignEx, String str) {
        try {
            if (this.f35916a == null || campaignEx == null || TextUtils.isEmpty(str)) {
                return;
            }
            this.f35916a.a(campaignEx, str, 0);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }
}
