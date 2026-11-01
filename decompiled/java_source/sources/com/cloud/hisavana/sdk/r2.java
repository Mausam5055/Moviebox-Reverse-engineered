package com.cloud.hisavana.sdk;

import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;

/* JADX INFO: loaded from: classes3.dex */
public abstract class r2 {
    public static void a(AdsDTO adsDTO) {
        if (adsDTO == null) {
            e4.b().d("ssp_measure", "exposureInvalid --> null == info");
            return;
        }
        adsDTO.setIsEffectiveShow(0);
        e4.b().d("ssp_measure", "invalid exposure --> to server info = " + adsDTO);
        if (adsDTO.getSource() == 4) {
            AthenaTracker.N(adsDTO);
        } else {
            AthenaTracker.b0(adsDTO);
        }
    }

    public static void b(AdsDTO adsDTO) {
        if (adsDTO == null) {
            e4.b().d("ssp_measure", "exposureInvalid --> null == info");
            return;
        }
        adsDTO.setIsEffectiveShow(1);
        e4.b().d("ssp_measure", "valid exposure --> to server info = " + adsDTO);
        if (adsDTO.getSource() == 4) {
            AthenaTracker.N(adsDTO);
        } else {
            AthenaTracker.b0(adsDTO);
        }
    }
}
