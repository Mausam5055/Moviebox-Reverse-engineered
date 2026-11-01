package zd;

import android.content.Context;
import com.hisavana.adxlibrary.excuter.AdxBanner;
import com.hisavana.common.base.BaseInterstitial;
import com.hisavana.common.base.BaseNative;
import com.hisavana.common.bean.Network;
import com.hisavana.common.constant.ComConstants;
import com.hisavana.common.utils.AdLogUtil;
import java.lang.reflect.Constructor;

/* JADX INFO: loaded from: classes5.dex */
public abstract class a {
    public static AdxBanner a(Context context, Network network, AdxBanner adxBanner) {
        if (ComConstants.AUTOMATIC_TEST_STATUS.booleanValue()) {
            try {
                Constructor<?> constructor = Class.forName("com.hisavana.mock_util.ssp.MockAdxBannerAd").getConstructor(Context.class, Network.class);
                AdLogUtil.Log().d("automatic_test", "adxbanner mock");
                return (AdxBanner) constructor.newInstance(context, network);
            } catch (Exception unused) {
                AdLogUtil.Log().e("automatic_test_error - adxbanner");
            }
        }
        return adxBanner;
    }

    public static BaseInterstitial b(Context context, Network network, BaseInterstitial baseInterstitial) {
        if (ComConstants.AUTOMATIC_TEST_STATUS.booleanValue()) {
            try {
                Constructor<?> constructor = Class.forName("com.hisavana.mock_util.ssp.MockAdxInterstitialAd").getConstructor(Context.class, Network.class);
                AdLogUtil.Log().d("automatic_test", "adxInterstitialAd mock");
                return (BaseInterstitial) constructor.newInstance(context, network);
            } catch (Exception unused) {
                AdLogUtil.Log().e("automatic_test_error - adxinterstitial");
            }
        }
        return baseInterstitial;
    }

    public static BaseNative c(Context context, Network network, int i11, BaseNative baseNative) {
        if (ComConstants.AUTOMATIC_TEST_STATUS.booleanValue()) {
            try {
                Constructor<?> constructor = Class.forName("com.hisavana.mock_util.ssp.MockAdxNative").getConstructor(Context.class, Network.class, Integer.TYPE);
                AdLogUtil.Log().d("automatic_test", "adxNativeAd mock");
                return (BaseNative) constructor.newInstance(context, network, Integer.valueOf(i11));
            } catch (Exception unused) {
                AdLogUtil.Log().e("automatic_test_error - adxnative");
            }
        }
        return baseNative;
    }
}
