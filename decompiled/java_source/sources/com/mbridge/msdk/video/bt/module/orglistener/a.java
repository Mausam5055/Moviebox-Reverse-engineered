package com.mbridge.msdk.video.bt.module.orglistener;

import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.out.RewardInfo;
import com.mbridge.msdk.videocommon.listener.InterVideoOutListener;

/* JADX INFO: loaded from: classes5.dex */
public class a implements InterVideoOutListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private g f38946a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f38947b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f38948c;

    public a(g gVar) {
        this.f38947b = "";
        this.f38946a = gVar;
    }

    public a(g gVar, String str, boolean z10) {
        this.f38946a = gVar;
        this.f38947b = str;
        this.f38948c = z10;
    }

    @Override // com.mbridge.msdk.videocommon.listener.InterVideoOutListener
    public void onAdClose(MBridgeIds mBridgeIds, RewardInfo rewardInfo) {
        g gVar = this.f38946a;
        if (gVar != null) {
            gVar.onAdClose(mBridgeIds, rewardInfo);
        }
    }

    @Override // com.mbridge.msdk.videocommon.listener.InterVideoOutListener
    public void onAdCloseWithIVReward(MBridgeIds mBridgeIds, RewardInfo rewardInfo) {
    }

    @Override // com.mbridge.msdk.videocommon.listener.InterVideoOutListener
    public void onAdShow(MBridgeIds mBridgeIds) {
        g gVar = this.f38946a;
        if (gVar != null) {
            gVar.onAdShow(mBridgeIds);
        }
    }

    @Override // com.mbridge.msdk.videocommon.listener.InterVideoOutListener
    public void onEndcardShow(MBridgeIds mBridgeIds) {
        g gVar = this.f38946a;
        if (gVar != null) {
            gVar.onEndcardShow(mBridgeIds);
        }
    }

    @Override // com.mbridge.msdk.videocommon.listener.InterVideoOutListener
    public void onLoadSuccess(MBridgeIds mBridgeIds) {
        g gVar = this.f38946a;
        if (gVar != null) {
            gVar.onLoadSuccess(mBridgeIds);
        }
    }

    @Override // com.mbridge.msdk.videocommon.listener.InterVideoOutListener
    public void onShowFail(com.mbridge.msdk.foundation.same.report.metrics.c cVar, MBridgeIds mBridgeIds, String str) {
        g gVar = this.f38946a;
        if (gVar != null) {
            gVar.onShowFail(mBridgeIds, str);
        }
    }

    @Override // com.mbridge.msdk.videocommon.listener.InterVideoOutListener
    public void onVideoAdClicked(boolean z10, MBridgeIds mBridgeIds) {
        g gVar = this.f38946a;
        if (gVar != null) {
            gVar.onVideoAdClicked(mBridgeIds);
        }
    }

    @Override // com.mbridge.msdk.videocommon.listener.InterVideoOutListener
    public void onVideoComplete(MBridgeIds mBridgeIds) {
        g gVar = this.f38946a;
        if (gVar != null) {
            gVar.onVideoComplete(mBridgeIds);
        }
    }

    @Override // com.mbridge.msdk.videocommon.listener.InterVideoOutListener
    public void onVideoLoadFail(MBridgeIds mBridgeIds, String str) {
        g gVar = this.f38946a;
        if (gVar != null) {
            gVar.onVideoLoadFail(mBridgeIds, str);
        }
    }

    @Override // com.mbridge.msdk.videocommon.listener.InterVideoOutListener
    public void onVideoLoadSuccess(MBridgeIds mBridgeIds) {
        g gVar = this.f38946a;
        if (gVar != null) {
            gVar.onVideoLoadSuccess(mBridgeIds);
        }
    }
}
