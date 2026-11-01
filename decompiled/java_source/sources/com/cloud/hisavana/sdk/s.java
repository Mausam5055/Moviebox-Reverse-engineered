package com.cloud.hisavana.sdk;

import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.ConfigTotalDTO;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.Locale;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;

/* JADX INFO: loaded from: classes3.dex */
public final class s {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f22927d = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AdsDTO f22928a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f22929b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f22930c;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public s(AdsDTO adsDTO) {
        Intrinsics.h(adsDTO, "adsDTO");
        this.f22928a = adsDTO;
    }

    private final int a() {
        return v2.f23027a.f(this.f22928a);
    }

    private final int b(boolean z10, boolean z11) {
        if (z10 && z11) {
            return Random.INSTANCE.nextInt(2) == 1 ? 1 : 2;
        }
        return z10 ? 1 : 2;
    }

    private final String c(float f11) {
        return v2.f23027a.b(f11);
    }

    private final String d(int i11) {
        if (i11 == 0) {
            return "0";
        }
        try {
            DecimalFormat decimalFormat = new DecimalFormat("#.0");
            decimalFormat.setDecimalFormatSymbols(new DecimalFormatSymbols(Locale.US));
            decimalFormat.setRoundingMode(RoundingMode.DOWN);
            if (i11 < 1000) {
                return String.valueOf(i11);
            }
            if (i11 < 1000000) {
                return decimalFormat.format(i11 / 1000.0f) + 'K';
            }
            return decimalFormat.format(i11 / 1000000.0f) + 'M';
        } catch (Exception unused) {
            return "";
        }
    }

    private final float e() {
        return v2.f23027a.j(this.f22928a);
    }

    public final int f(int i11) {
        if (i11 != 0) {
            if (i11 == 1) {
                return R$drawable.hs_ad_score;
            }
            if (i11 == 2) {
                return R$drawable.hs_ad_download;
            }
        }
        return 0;
    }

    public final int g() {
        ConfigTotalDTO.ExtInfo extInfoM = k1.o().m();
        if (extInfoM == null) {
            extInfoM = new ConfigTotalDTO.ExtInfo();
        }
        float fE = e();
        this.f22929b = fE;
        boolean z10 = fE >= extInfoM.getScoreCount();
        int iA = a();
        this.f22930c = iA;
        boolean z11 = ((long) iA) >= extInfoM.getDownloadCount();
        if (!z10 && !z11) {
            return 1;
        }
        int iB = b(z10, z11);
        if (a7.c.p()) {
            e4.b().i("BannerStyleHelper", "score: " + this.f22929b + ", \ndownloadCount: " + this.f22930c + ", \nX: " + extInfoM.getScoreCount() + ", \nY: " + extInfoM.getDownloadCount() + ", \nweightOld: " + extInfoM.getOldStyle() + ", \nweightScore: " + extInfoM.getScoreStyle() + ", \nweightDownload: " + extInfoM.getDownloadStyle() + ", \nrandomStyle: " + iB);
        }
        return iB;
    }

    public final String h(int i11) {
        if (i11 == 0) {
            return "";
        }
        if (i11 != 1) {
            return i11 != 2 ? "" : d(this.f22930c);
        }
        return c(this.f22929b);
    }
}
