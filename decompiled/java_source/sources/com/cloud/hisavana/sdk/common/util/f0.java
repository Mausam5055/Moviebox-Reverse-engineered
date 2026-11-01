package com.cloud.hisavana.sdk.common.util;

import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;

/* JADX INFO: loaded from: classes3.dex */
public class f0 {
    public static String a(AdsDTO adsDTO) {
        return (adsDTO == null || adsDTO.getRuData() == null) ? "" : adsDTO.getRuData().getAdvertiserInfo();
    }

    public static String b(AdsDTO adsDTO) {
        return (adsDTO == null || adsDTO.getRuData() == null) ? "" : adsDTO.getRuData().getAdvertiserLink();
    }

    public static int c(AdsDTO adsDTO) {
        if (adsDTO == null || adsDTO.getRuData() == null) {
            return 0;
        }
        return adsDTO.getRuData().getIntAgeValue();
    }

    public static String d(AdsDTO adsDTO) {
        return (adsDTO == null || adsDTO.getRuData() == null) ? "" : adsDTO.getRuData().getCopyAdvertiserLink();
    }

    public static String e(AdsDTO adsDTO) {
        return (adsDTO == null || adsDTO.getRuData() == null) ? "" : adsDTO.getRuData().getDisclaimerPercent();
    }

    public static String f(AdsDTO adsDTO) {
        return (adsDTO == null || adsDTO.getRuData() == null) ? "" : adsDTO.getRuData().getDisclaimerText();
    }
}
