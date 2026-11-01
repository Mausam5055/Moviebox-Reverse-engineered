package be;

import android.text.TextUtils;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.hisavana.common.constant.ComConstants;
import com.hisavana.common.mock.MockConfig;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.mediation.bean.CloudControlConfig;

/* JADX INFO: loaded from: classes4.dex */
public abstract class m {
    public static CloudControlConfig.CodeSeat a(CloudControlConfig.CodeSeat codeSeat) {
        if (ComConstants.AUTOMATIC_TEST_STATUS.booleanValue()) {
            try {
                String cloudControlConfigStr = ((MockConfig) Class.forName("com.hisavana.mock_util.MockConfigImpl").newInstance()).getCloudControlConfigStr();
                AdLogUtil.Log().d(ComConstants.SDK_INIT, "CloudControlConfigSync --> local default config from assets, json string == " + cloudControlConfigStr);
                if (!TextUtils.isEmpty(cloudControlConfigStr)) {
                    return (CloudControlConfig.CodeSeat) GsonUtil.a(cloudControlConfigStr, CloudControlConfig.CodeSeat.class);
                }
            } catch (Throwable unused) {
                AdLogUtil.Log().e("automatic_test_error - getConfigByAdUnit");
            }
        }
        return codeSeat;
    }
}
