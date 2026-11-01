package com.hisavana.common.param;

import android.text.TextUtils;
import android.util.Log;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.cloud.sdk.commonutil.util.MitNetUtil;
import com.cloud.sdk.commonutil.util.b;
import com.cloud.sdk.commonutil.util.d;
import com.cloud.sdk.commonutil.util.e;
import com.cloud.sdk.commonutil.util.r;
import com.hisavana.common.BuildConfig;
import com.hisavana.common.bean.AppStartInfo;
import com.hisavana.common.constant.ComConstants;
import com.hisavana.common.utils.AdLogUtil;
import i7.c;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class CloudConfigParam {
    private static final String TAG = "CloudConfigParam";
    private static CloudConfigPostBody requestParam;

    public static String getPostBody(String str, boolean z10, String str2, List<String> list) {
        boolean z11;
        DeviceDTO deviceDTO;
        try {
            if (requestParam == null) {
                CloudConfigPostBody cloudConfigPostBody = new CloudConfigPostBody();
                requestParam = cloudConfigPostBody;
                cloudConfigPostBody.applicationId = str;
                cloudConfigPostBody.testRequest = Boolean.valueOf(z10);
                requestParam.codeSeatFilterEnable = TextUtils.equals(str2, ComConstants.AHA_CHANNEL);
                Map<String, String> map = AppStartInfo.extInfo;
                if (map != null && !map.isEmpty()) {
                    Ext ext = new Ext();
                    ext.setTg(map);
                    requestParam.ext = ext;
                }
                ApplicationDTO applicationDTO = new ApplicationDTO();
                applicationDTO.setPackageName(e.d());
                applicationDTO.setInstallTime(b.a());
                applicationDTO.setVersion(c.q());
                applicationDTO.setSdkVersion(BuildConfig.VERSION_NAME);
                applicationDTO.setUserAgent(r.c());
                applicationDTO.setChannel(AppStartInfo.channel);
                applicationDTO.setFirstStart(AppStartInfo.isFirstStartToday);
                applicationDTO.setActiveTime(AppStartInfo.activeTime);
                requestParam.application = applicationDTO;
                DeviceDTO deviceDTO2 = new DeviceDTO();
                deviceDTO2.setType(c.o());
                deviceDTO2.setBrand(c.a());
                deviceDTO2.setModel(c.f());
                deviceDTO2.setMaker(c.c());
                z11 = true;
                deviceDTO2.setOsType(1);
                deviceDTO2.setOsVersion(c.h());
                deviceDTO2.setLanguage(Locale.getDefault().getLanguage());
                deviceDTO2.setNetworkConnectionType(String.valueOf(MitNetUtil.a(e.a()).ordinal()));
                deviceDTO2.setOperatorType(MitNetUtil.b());
                deviceDTO2.setIpAddress(DeviceUtil.h());
                deviceDTO2.setGaid(DeviceUtil.e());
                deviceDTO2.setImsi(c.d());
                deviceDTO2.setScreenWidth(c.k());
                deviceDTO2.setScreenHeight(c.j());
                deviceDTO2.setScreenDensity(c.i());
                deviceDTO2.setOneid(DeviceUtil.j());
                deviceDTO2.setTotalRam(Long.valueOf(DeviceUtil.n()));
                requestParam.device = deviceDTO2;
                requestParam.user = new UserDTO();
            } else {
                z11 = false;
            }
            CloudConfigPostBody cloudConfigPostBody2 = requestParam;
            if (cloudConfigPostBody2.codeSeatFilterEnable) {
                cloudConfigPostBody2.codeSeatFilterIds = list;
            }
            if (!z11 && (deviceDTO = cloudConfigPostBody2.device) != null && TextUtils.isEmpty(deviceDTO.getGaid())) {
                requestParam.device.setGaid(DeviceUtil.e());
            }
            requestParam.user.setBaseStation(DeviceUtil.g());
            requestParam.user.setLatitude(d.d());
            requestParam.user.setLongitude(d.f());
            requestParam.user.setCoordTime(d.b());
            return GsonUtil.d(requestParam);
        } catch (Throwable th2) {
            AdLogUtil.Log().e(TAG, Log.getStackTraceString(th2));
            return "";
        }
    }
}
