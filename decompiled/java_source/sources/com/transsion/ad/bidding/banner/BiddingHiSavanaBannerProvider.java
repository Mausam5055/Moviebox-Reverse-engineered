package com.transsion.ad.bidding.banner;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.hisavana.common.bean.AdditionalInfo;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.bean.TAdRequestBody;
import com.hisavana.mediation.ad.TBannerView;
import com.transsion.ad.bidding.base.x;
import com.transsion.ad.hi.HiSavanaAdManager;
import com.transsion.ad.strategy.d;
import java.util.Map;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
public final class BiddingHiSavanaBannerProvider extends x {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f41785d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Map f41786e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private di.a f41787f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Context f41788g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private TBannerView f41789h;

    private final Context e() {
        return this.f41788g;
    }

    private final Map f() {
        Map map = this.f41786e;
        return map == null ? MapsKt.h() : map;
    }

    private final di.a g() {
        return this.f41787f;
    }

    private final void i(String str) {
        di.a aVarG = g();
        if (aVarG != null) {
            aVarG.onLoadFailure(new TAdErrorCode(103, str), new AdditionalInfo());
        }
    }

    public final void b() {
        TBannerView tBannerView = this.f41789h;
        ViewParent parent = tBannerView != null ? tBannerView.getParent() : null;
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup != null) {
            viewGroup.removeView(this.f41789h);
        }
        TBannerView tBannerView2 = this.f41789h;
        if (tBannerView2 != null) {
            tBannerView2.destroy();
        }
        this.f41789h = null;
    }

    public final void c(String sceneId) {
        Intrinsics.h(sceneId, "sceneId");
        k.d(o0.a(y0.c()), null, null, new BiddingHiSavanaBannerProvider$enterScene$1(this, sceneId, null), 3, null);
    }

    public final View d() {
        return this.f41789h;
    }

    public final String getSceneId() {
        String str = this.f41785d;
        return str == null ? "" : str;
    }

    public final void h() {
        TBannerView tBannerView;
        if (!HiSavanaAdManager.f42117a.i()) {
            i("HiSavana 广告SDK未初始化");
            return;
        }
        if (com.transsion.ad.scene.c.b(com.transsion.ad.scene.c.f42203a, getSceneId(), false, 2, null)) {
            i("广告位已关闭");
            return;
        }
        if (TextUtils.isEmpty(getSceneId())) {
            i("sceneId is empty");
            return;
        }
        if (e() == null) {
            i("context is null");
            return;
        }
        if (this.f41789h == null) {
            this.f41789h = new TBannerView(e());
            if (d.f42231a.d(f()) && (tBannerView = this.f41789h) != null) {
                tBannerView.setContainVulgarContent(true);
            }
            TBannerView tBannerView2 = this.f41789h;
            if (tBannerView2 != null) {
                tBannerView2.setAdSize(2);
            }
            TBannerView tBannerView3 = this.f41789h;
            if (tBannerView3 != null) {
                tBannerView3.setAdUnitId(com.transsion.ad.scene.a.f42201a.h(this.f41785d));
            }
            TBannerView tBannerView4 = this.f41789h;
            if (tBannerView4 != null) {
                tBannerView4.setHideAdCloseView(true);
            }
            TAdRequestBody tAdRequestBodyBuild = new TAdRequestBody.AdRequestBodyBuild().setAdditionalListener(this).build();
            TBannerView tBannerView5 = this.f41789h;
            if (tBannerView5 != null) {
                tBannerView5.setRequestBody(tAdRequestBodyBuild);
            }
        }
        TBannerView tBannerView6 = this.f41789h;
        if (tBannerView6 != null) {
            tBannerView6.loadAd();
        }
    }

    public final void j(Context context) {
        this.f41788g = context;
    }

    public final void k(Map map) {
        this.f41786e = map;
    }

    public final void l(di.a aVar) {
        this.f41787f = aVar;
    }

    public final void m(String str) {
        this.f41785d = str;
    }

    @Override // com.hisavana.common.interfacz.TAdditionalListener
    public void onClick(TAdNativeInfo tAdNativeInfo, AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
        super.onClick(tAdNativeInfo, additionalInfo);
        di.a aVarG = g();
        if (aVarG != null) {
            aVarG.onClick(tAdNativeInfo, additionalInfo);
        }
    }

    @Override // com.hisavana.common.interfacz.TAdditionalListener
    public void onLoadFailure(TAdErrorCode tAdErrorCode, AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
        super.onLoadFailure(tAdErrorCode, additionalInfo);
        di.a aVarG = g();
        if (aVarG != null) {
            aVarG.onLoadFailure(tAdErrorCode, additionalInfo);
        }
    }

    @Override // com.hisavana.common.interfacz.TAdditionalListener
    public void onLoadSuccess(AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
        super.onLoadSuccess(additionalInfo);
        di.a aVarG = g();
        if (aVarG != null) {
            aVarG.onLoadSuccess(additionalInfo);
        }
    }

    @Override // com.hisavana.common.interfacz.TAdditionalListener
    public void onShow(TAdNativeInfo tAdNativeInfo, AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
        super.onShow(tAdNativeInfo, additionalInfo);
        di.a aVarG = g();
        if (aVarG != null) {
            aVarG.onShow(tAdNativeInfo, additionalInfo);
        }
    }

    @Override // com.hisavana.common.interfacz.TAdditionalListener
    public void onShowError(TAdErrorCode tAdErrorCode, AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
        super.onShowError(tAdErrorCode, additionalInfo);
        di.a aVarG = g();
        if (aVarG != null) {
            aVarG.onShowError(tAdErrorCode, additionalInfo);
        }
    }
}
