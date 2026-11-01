package com.cloud.hisavana.sdk;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.cloud.hisavana.sdk.api.listener.AdCallback;
import com.cloud.hisavana.sdk.api.view.AdChoicesView;
import com.cloud.hisavana.sdk.api.view.AdCloseView;
import com.cloud.hisavana.sdk.api.view.TNativeView;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.athena.SSPTrackingHelper;
import com.cloud.hisavana.sdk.common.bean.TaNativeInfo;
import com.cloud.hisavana.sdk.common.constant.Constants;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.data.bean.request.AdxImpBean;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.BidInfo;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.CommonConfigDTO;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.CustomConfigManager;
import com.cloud.hisavana.sdk.manager.VideoMeasureManager;
import com.cloud.sdk.commonutil.util.Preconditions;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public final class u3 extends G implements z3 {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private f f23014i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private b f23015j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final AtomicInteger f23016k;

    class a implements Preconditions.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ TaNativeInfo f23017a;

        a(TaNativeInfo taNativeInfo) {
            this.f23017a = taNativeInfo;
        }

        @Override // com.cloud.sdk.commonutil.util.Preconditions.a
        public void onRun() {
            u3.this.U(this.f23017a);
            VideoMeasureManager.INSTANCE.f(this.f23017a.getAdItem());
            u3.this.X(this.f23017a);
            k4.f22600a.j(this.f23017a.getUuid());
        }
    }

    private static class b extends com.cloud.hisavana.sdk.common.tranmeasure.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final WeakReference f23019b;

        public b(u3 u3Var) {
            this.f23019b = new WeakReference(u3Var);
        }

        @Override // com.cloud.hisavana.sdk.common.tranmeasure.a, com.cloud.hisavana.sdk.common.tranmeasure.d.b
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void a(TaNativeInfo taNativeInfo) {
            super.a(taNativeInfo);
            e4.b().d("TranNative", "onViewImpressed: start impression report");
            u3 u3Var = (u3) this.f23019b.get();
            if (u3Var == null || u3Var.f23014i == null || taNativeInfo == null) {
                return;
            }
            u3Var.f23014i.f(taNativeInfo);
        }
    }

    public u3(q3 q3Var) {
        super(q3Var);
        this.f23016k = new AtomicInteger(1);
    }

    private void I(int i11) {
        if (i11 == 0) {
            i11 = 1;
        }
        this.f23016k.set(i11);
    }

    private void J(Bundle bundle) {
        try {
            AdCallback adCallback = this.f21504e;
            if (adCallback != null) {
                adCallback.v(TaErrorCode.ERROR_AD_BIDDING_AD_IS_NULL, this, bundle);
            }
        } catch (Throwable unused) {
        }
    }

    private void K(View view, TaNativeInfo taNativeInfo) {
        e4.b().d("ssp", "current native did not showed...");
        com.cloud.hisavana.sdk.common.tranmeasure.e.c().e(taNativeInfo, view, this.f23015j);
    }

    private void L(ViewGroup viewGroup, List list, TaNativeInfo taNativeInfo) {
        e4.b().d("ssp", "registerClickAndImpression");
        Preconditions.a();
        if (this.f23014i == null || taNativeInfo == null) {
            return;
        }
        AdsDTO adsDTOF = N0.f(taNativeInfo);
        if (adsDTOF == null) {
            e4.b().d("ssp", "adItem is null");
            return;
        }
        adsDTOF.setSecondPrice(taNativeInfo.getSecondPrice());
        K(viewGroup, taNativeInfo);
        AthenaTracker.A(adsDTOF);
        this.f23014i.e(viewGroup, list, taNativeInfo, adsDTOF);
        e4.b().d("ssp", "Native Ad start registered");
        if (viewGroup == null || 8 != viewGroup.getVisibility()) {
            return;
        }
        viewGroup.setVisibility(0);
    }

    private void N(List list, Bundle bundle) {
        AdsDTO adsDTO = (AdsDTO) list.get(0);
        BidInfo bidInfo = new BidInfo();
        bidInfo.setPrice(adsDTO.getFirstPrice());
        bidInfo.setCodeSeatId(this.f21501b.i());
        bidInfo.setAdCreativeId(adsDTO.getAdCreativeId());
        bidInfo.setBiddingToken(this.f21501b.n());
        bidInfo.setCurrency(Constants.CURRENCY.USD);
        this.f21503d = bidInfo;
        this.f21504e.w(bidInfo, this, bundle);
    }

    private void O(List list, Bundle bundle, List list2) {
        if (this.f21502c) {
            this.f21505f = list;
            if (bundle.getBoolean("s_rec_temp_data", false)) {
                J(bundle);
                return;
            } else {
                N(list, bundle);
                return;
            }
        }
        this.f21505f = list;
        List<TaNativeInfo> listG = N0.G(list);
        if (listG == null) {
            listG = new ArrayList();
        }
        if (listG.isEmpty()) {
            listG.add(new TaNativeInfo());
        }
        for (TaNativeInfo taNativeInfo : listG) {
            if (taNativeInfo != null) {
                taNativeInfo.setNativeBridge(this);
            }
        }
        I(listG.size());
        try {
            if (!listG.isEmpty()) {
                TaNativeInfo taNativeInfo2 = (TaNativeInfo) listG.get(0);
                taNativeInfo2.setUseRecommend(true);
                taNativeInfo2.setRecommendInfos(list2);
            }
            e4.b().d("TranNative", "use recommendInfo");
            bundle.putInt("s_recommend_req", 1);
        } catch (Throwable unused) {
        }
        AdCallback adCallback = this.f21504e;
        if (adCallback != null) {
            adCallback.r(this, listG, bundle);
        }
        k1.o().n(3);
    }

    private void P(List list, Bundle bundle, List list2, AdxImpBean adxImpBean) {
        int iIntValue;
        Integer showWebLetterAdPrice;
        if (list2 == null || list2.isEmpty()) {
            T(list, bundle);
            return;
        }
        if (list == null || list.isEmpty()) {
            list = new ArrayList();
            AdsDTO adsDTO = new AdsDTO();
            try {
                adsDTO.setImpBeanRequest(adxImpBean);
                e4.b().d("TranNative", "adsdto is empty,creat a new adsdto data");
                bundle.putBoolean("s_rec_temp_data", true);
            } catch (Throwable unused) {
            }
            list.add(adsDTO);
        } else {
            AdsDTO adsDTO2 = (AdsDTO) list.get(0);
            if (!TextUtils.isEmpty(adsDTO2.getMaterialStyle())) {
                e4.b().d("TranNative", "materialStyle is not empty not use recommend");
                T(list, bundle);
                return;
            }
            Double firstPrice = adsDTO2.getFirstPrice();
            try {
                CommonConfigDTO commonConfigData = CustomConfigManager.getCommonConfigData();
                iIntValue = (commonConfigData == null || (showWebLetterAdPrice = commonConfigData.getShowWebLetterAdPrice()) == null) ? 10 : showWebLetterAdPrice.intValue();
            } catch (Throwable unused2) {
            }
            if (firstPrice.doubleValue() >= iIntValue) {
                e4.b().d("TranNative", "high price ,not use recommend -> firstPrice:" + firstPrice + ",showWebLetterAdPrice -> " + iIntValue);
                T(list, bundle);
                return;
            }
        }
        O(list, bundle, list2);
    }

    private void T(List list, Bundle bundle) {
        if (this.f21502c) {
            this.f21505f = list;
            N(list, bundle);
            return;
        }
        if (list == null || list.isEmpty()) {
            return;
        }
        this.f21505f = list;
        List<TaNativeInfo> listG = N0.G(list);
        for (TaNativeInfo taNativeInfo : listG) {
            if (taNativeInfo != null) {
                taNativeInfo.setNativeBridge(this);
            }
        }
        I(listG.size());
        AdCallback adCallback = this.f21504e;
        if (adCallback != null) {
            adCallback.r(this, listG, bundle);
        }
        k1.o().n(3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U(TaNativeInfo taNativeInfo) {
        if (taNativeInfo != null) {
            com.cloud.hisavana.sdk.common.tranmeasure.e.c().g(taNativeInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X(TaNativeInfo taNativeInfo) {
        f fVar = this.f23014i;
        if (fVar != null) {
            fVar.k(taNativeInfo);
        }
    }

    private void Y() {
        f fVar = this.f23014i;
        if (fVar == null || fVar.j() == null) {
            return;
        }
        Iterator it = this.f23014i.j().iterator();
        while (it.hasNext()) {
            U((TaNativeInfo) it.next());
        }
    }

    private void a0() {
        this.f23014i = new f(this);
        this.f23015j = new b(this);
    }

    public AdChoicesView G(Context context, TaNativeInfo taNativeInfo) {
        return N0.e(context, N0.f(taNativeInfo), null);
    }

    public AdCloseView H(Context context) {
        AdCloseView adCloseView = new AdCloseView(context);
        int dimensionPixelOffset = context.getResources().getDimensionPixelOffset(R$dimen.ad_badge_height);
        adCloseView.setLayoutParams(new RelativeLayout.LayoutParams(dimensionPixelOffset, dimensionPixelOffset));
        return adCloseView;
    }

    public void Q(ViewGroup viewGroup, List list, TaNativeInfo taNativeInfo) {
        Preconditions.a();
        a0();
        if (viewGroup != null && (viewGroup instanceof TNativeView)) {
            ((TNativeView) viewGroup).setupViews(taNativeInfo);
        }
        L(viewGroup, list, taNativeInfo);
    }

    public void R(TaNativeInfo taNativeInfo) {
        e4.b().d("ssp", "native close ad ----》");
        AdCallback adCallback = this.f21504e;
        if (adCallback != null) {
            adCallback.o(taNativeInfo, SSPTrackingHelper.f21953a.m(this));
        }
    }

    public int V(TaNativeInfo taNativeInfo) {
        AdsDTO adsDTOF = N0.f(taNativeInfo);
        int iL = l(adsDTOF);
        if (a7.c.p()) {
            e4.b().i("TranNative", "isReady(), adId=" + v2.d(adsDTOF) + ", isReady=" + iL);
        }
        return iL;
    }

    public void W(TaNativeInfo taNativeInfo) {
        if (taNativeInfo != null) {
            try {
                if (taNativeInfo.isAdShowed()) {
                    e4.b().d("TranNative", "ad has been showed");
                    return;
                }
            } catch (Throwable unused) {
                return;
            }
        }
        if (taNativeInfo != null) {
            h(taNativeInfo.getAdItem());
            taNativeInfo.setAdShowed(true);
        }
        Z().z(taNativeInfo);
    }

    public AdCallback Z() {
        return this.f21504e;
    }

    @Override // com.cloud.hisavana.sdk.z3
    public void a(TaNativeInfo taNativeInfo) {
        Preconditions.d(new a(taNativeInfo));
    }

    @Override // com.cloud.hisavana.sdk.G, com.cloud.hisavana.sdk.api.listener.f
    public void c(List list, List list2, Bundle bundle, AdxImpBean adxImpBean) {
        P(list, bundle, list2, adxImpBean);
    }

    @Override // com.cloud.hisavana.sdk.G, com.cloud.hisavana.sdk.api.listener.f
    public void d(List list, Bundle bundle) {
        P(list, bundle, null, null);
    }

    @Override // com.cloud.hisavana.sdk.G
    public void m() {
        super.m();
        Y();
        f fVar = this.f23014i;
        if (fVar != null) {
            fVar.d();
        }
    }
}
