package com.cloud.tmc.ad.p000interface;

import com.cloud.tmc.ad.bean.AdClickBean;
import com.cloud.tmc.ad.bean.AdShowBean;
import com.cloud.tmc.ad.bean.DownUpPointBean;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J$\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005H&J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\rH&J\u0018\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0010H&J \u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0013H&¨\u0006\u0014"}, d2 = {"Lcom/cloud/tmc/ad/interface/AdEventListener;", "", "click", "", "triggerId", "", "pointBean", "Lcom/cloud/tmc/ad/bean/DownUpPointBean;", "admUrl", "clickHomePage", "clickPersonalization", "closeAd", "adClickBean", "Lcom/cloud/tmc/ad/bean/AdClickBean;", "fillingResult", NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, "", "showResult", "adShowBean", "Lcom/cloud/tmc/ad/bean/AdShowBean;", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface AdEventListener {

    @Metadata(k = 3, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class DefaultImpls {
        public static /* synthetic */ void click$default(AdEventListener adEventListener, String str, DownUpPointBean downUpPointBean, String str2, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: click");
            }
            if ((i11 & 4) != 0) {
                str2 = null;
            }
            adEventListener.click(str, downUpPointBean, str2);
        }

        public static void clickHomePage(AdEventListener adEventListener, String triggerId) {
            Intrinsics.h(triggerId, "triggerId");
        }

        public static void clickPersonalization(AdEventListener adEventListener, String triggerId) {
            Intrinsics.h(triggerId, "triggerId");
        }
    }

    void click(String triggerId, DownUpPointBean pointBean, String admUrl);

    void clickHomePage(String triggerId);

    void clickPersonalization(String triggerId);

    void closeAd(String triggerId, AdClickBean adClickBean);

    void fillingResult(String triggerId, boolean success);

    void showResult(String triggerId, boolean success, AdShowBean adShowBean);
}
