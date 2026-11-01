package com.transsion.ad.web;

import android.app.Activity;
import com.hisavana.common.bean.TAdErrorCode;
import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.video.BiddingVideoManager;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
public final class H5VideoAdProvider {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static b f42453b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f42454c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static BiddingVideoManager f42455d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final H5VideoAdProvider f42452a = new H5VideoAdProvider();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final a f42456e = new a();

    public static final class a extends di.a {
        a() {
        }

        @Override // di.a
        public void i(TAdErrorCode tAdErrorCode) {
            super.i(tAdErrorCode);
            b bVar = H5VideoAdProvider.f42453b;
            if (bVar != null) {
                bVar.onAdStateCallback(H5AdStateEnum.MB_H5_AD_STATE_ON_FAIL.getValue(), tAdErrorCode != null ? tAdErrorCode.getErrorMessage() : null);
            }
            H5VideoAdProvider.f42452a.g();
        }

        @Override // di.a
        public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            BiddingVideoManager biddingVideoManager;
            super.j(biddingIntermediateMaterialBean);
            Activity activityB = com.blankj.utilcode.util.a.b();
            if (activityB == null || (biddingVideoManager = H5VideoAdProvider.f42455d) == null) {
                return;
            }
            AbsAdBidding.R0(biddingVideoManager, activityB, biddingIntermediateMaterialBean, false, 4, null);
        }

        @Override // di.a
        public void m(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.m(biddingIntermediateMaterialBean);
            if (H5VideoAdProvider.f42454c) {
                b bVar = H5VideoAdProvider.f42453b;
                if (bVar != null) {
                    bVar.onAdStateCallback(H5AdStateEnum.MB_H5_AD_STATE_ON_REWARDED.getValue(), "展示成功且有奖励");
                }
            } else {
                b bVar2 = H5VideoAdProvider.f42453b;
                if (bVar2 != null) {
                    bVar2.onAdStateCallback(H5AdStateEnum.MB_H5_AD_STATE_ON_FAIL.getValue(), "展示成功无奖励");
                }
            }
            H5VideoAdProvider.f42452a.g();
        }

        @Override // di.a
        public void o(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.o(biddingIntermediateMaterialBean);
            H5VideoAdProvider.f42454c = true;
        }

        @Override // di.a
        public void p(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.p(biddingIntermediateMaterialBean);
            b bVar = H5VideoAdProvider.f42453b;
            if (bVar != null) {
                bVar.onAdStateCallback(H5AdStateEnum.MB_H5_AD_STATE_ON_FAIL.getValue(), "展示失败");
            }
            H5VideoAdProvider.f42452a.g();
        }
    }

    private H5VideoAdProvider() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void g() {
        BiddingVideoManager biddingVideoManager = f42455d;
        if (biddingVideoManager != null) {
            biddingVideoManager.V();
        }
        f42455d = null;
    }

    public final void h(String str, b callback) {
        Intrinsics.h(callback, "callback");
        if (f42455d == null) {
            f42455d = new BiddingVideoManager();
        }
        f42453b = callback;
        f42454c = false;
        k.d(o0.a(y0.b()), null, null, new H5VideoAdProvider$h5OpenAd$1(str, null), 3, null);
    }
}
