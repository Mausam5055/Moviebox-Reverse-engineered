package com.cloud.hisavana.sdk.common.tranmeasure;

import com.cloud.hisavana.sdk.c1;
import com.cloud.hisavana.sdk.common.bean.TaNativeInfo;
import com.cloud.hisavana.sdk.common.tracking.DownUpPointBean;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.e4;
import com.cloud.hisavana.sdk.j3;
import com.cloud.hisavana.sdk.k4;
import com.cloud.hisavana.sdk.y;

/* JADX INFO: loaded from: classes3.dex */
public class a implements d.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f22092a = "AdImpressionListenerImpl";

    private void b(AdsDTO adsDTO) {
        if (!com.cloud.hisavana.sdk.common.util.b.f22148a.g(adsDTO)) {
            adsDTO.setPreloadStatus(1);
            return;
        }
        com.cloud.hisavana.sdk.manager.a aVar = com.cloud.hisavana.sdk.manager.a.f22653a;
        int iB0 = aVar.b0();
        e4.b().w("AdImpressionListenerImpl", "preloadLandingPage: ccTabTestCode is " + iB0);
        if (iB0 != 7018 && iB0 != 7019) {
            k4.f22600a.l(com.cloud.sdk.commonutil.util.e.a(), adsDTO);
        } else if (aVar.c(adsDTO) == 7016) {
            adsDTO.setPreloadStatus(4);
        } else {
            aVar.s(com.cloud.sdk.commonutil.util.e.a(), adsDTO, true);
        }
    }

    @Override // com.cloud.hisavana.sdk.common.tranmeasure.d.b
    public void a(Object obj) {
        AdsDTO adItem;
        e4.b().d("ssp", "-------------------------> onViewImpressed");
        if (obj instanceof AdsDTO) {
            adItem = (AdsDTO) obj;
        } else {
            adItem = obj instanceof TaNativeInfo ? ((TaNativeInfo) obj).getAdItem() : null;
        }
        if (adItem != null) {
            DownUpPointBean downUpPointBean = new DownUpPointBean(0.0f, 0.0f, 0.0f, 0.0f, adItem.getImageWidth().intValue(), adItem.getImageHeight().intValue());
            adItem.setClickid(j3.a());
            c1.o(adItem.getShowTrackingUrls(), adItem, downUpPointBean);
            y.f23090a.C(adItem);
            b(adItem);
        }
        y.f23090a.Q();
    }
}
