package com.mbridge.msdk.mbnative.listener;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.out.Frame;
import com.mbridge.msdk.out.NativeListener;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes5.dex */
public class a implements NativeListener.NativeAdListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private NativeListener.NativeAdListener f36399a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f36400b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f36401c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f36402d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f36403e;

    public a() {
    }

    public a(NativeListener.NativeAdListener nativeAdListener) {
        this.f36399a = nativeAdListener;
    }

    public void a(CampaignEx campaignEx, String str) {
        this.f36400b = false;
        NativeListener.NativeAdListener nativeAdListener = this.f36399a;
        if (nativeAdListener != null) {
            nativeAdListener.onAdLoadError(str);
            if (this.f36402d == null) {
                this.f36402d = c.m().d();
            }
            if (TextUtils.isEmpty(this.f36401c)) {
                return;
            }
            com.mbridge.msdk.mbnative.report.a.a(this.f36402d, str, this.f36401c, this.f36403e, campaignEx);
        }
    }

    public void a(String str) {
        this.f36401c = str;
    }

    public void a(boolean z10) {
        this.f36403e = z10;
    }

    public boolean a() {
        return this.f36400b;
    }

    public void b() {
        this.f36400b = true;
    }

    @Override // com.mbridge.msdk.out.NativeListener.NativeAdListener
    public void onAdClick(Campaign campaign) {
        NativeListener.NativeAdListener nativeAdListener = this.f36399a;
        if (nativeAdListener != null) {
            nativeAdListener.onAdClick(campaign);
        }
    }

    @Override // com.mbridge.msdk.out.NativeListener.NativeAdListener
    public void onAdFramesLoaded(List<Frame> list) {
        NativeListener.NativeAdListener nativeAdListener = this.f36399a;
        if (nativeAdListener != null) {
            nativeAdListener.onAdFramesLoaded(list);
        }
    }

    @Override // com.mbridge.msdk.out.NativeListener.NativeAdListener
    public void onAdLoadError(String str) {
        this.f36400b = false;
        NativeListener.NativeAdListener nativeAdListener = this.f36399a;
        if (nativeAdListener != null) {
            nativeAdListener.onAdLoadError(str);
            if (this.f36402d == null) {
                this.f36402d = c.m().d();
            }
            if (TextUtils.isEmpty(this.f36401c)) {
                return;
            }
            com.mbridge.msdk.mbnative.report.a.a(this.f36402d, str, this.f36401c, this.f36403e, (CampaignEx) null);
        }
    }

    @Override // com.mbridge.msdk.out.NativeListener.NativeAdListener
    public void onAdLoaded(List<Campaign> list, int i11) {
        CopyOnWriteArrayList copyOnWriteArrayList;
        try {
            this.f36400b = false;
            synchronized (list) {
                copyOnWriteArrayList = new CopyOnWriteArrayList(list);
            }
            if (this.f36399a != null) {
                if (copyOnWriteArrayList.size() > 0) {
                    this.f36399a.onAdLoaded(copyOnWriteArrayList, i11);
                } else {
                    this.f36399a.onAdLoaded(list, i11);
                }
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    @Override // com.mbridge.msdk.out.NativeListener.NativeAdListener
    public void onLoggingImpression(int i11) {
        NativeListener.NativeAdListener nativeAdListener = this.f36399a;
        if (nativeAdListener != null) {
            nativeAdListener.onLoggingImpression(i11);
        }
    }
}
