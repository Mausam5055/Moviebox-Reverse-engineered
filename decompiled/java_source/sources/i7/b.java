package i7;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.cloud.sdk.commonutil.util.r;
import com.cloud.tmc.integration.net.UrlKt;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.transsion.ga.AthenaAnalytics;
import com.transsion.push.PushConstants;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f64998a;

    public static Bundle a(Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        bundle.putString("session_id", c.n());
        bundle.putString("sdk_version", c.l());
        bundle.putInt("sdk_version_int", c.m());
        bundle.putString("user_agent", r.c());
        bundle.putInt(NativeComponentConstants.KEY_COMPONENT_TYPE, c.o());
        bundle.putString("make", c.c());
        bundle.putString("ostype", "Android");
        bundle.putInt("screen_width", c.k());
        bundle.putInt("screen_height", c.j());
        bundle.putInt("screen_density", c.i());
        bundle.putString("base_station", DeviceUtil.g());
        bundle.putDouble("latitude", com.cloud.sdk.commonutil.util.d.d());
        bundle.putDouble("longitude", com.cloud.sdk.commonutil.util.d.f());
        bundle.putLong("coordtime", com.cloud.sdk.commonutil.util.d.b());
        bundle.putString("oneid", DeviceUtil.j());
        bundle.putInt("turn_off_per_ads", DeviceUtil.f());
        if (TextUtils.isEmpty(f64998a)) {
            try {
                f64998a = AthenaAnalytics.H(com.cloud.sdk.commonutil.util.e.a(), true);
            } catch (Exception e11) {
                com.cloud.sdk.commonutil.util.c.Log().e("ssp", "getAppVAID " + Log.getStackTraceString(e11));
            }
        }
        bundle.putString(PushConstants.PROVIDER_VAID, f64998a);
        bundle.putString(UrlKt.KEY_MINI_GAID, DeviceUtil.e());
        return bundle;
    }

    public static boolean b(List list, String str) {
        if (list == null || list.isEmpty()) {
            return false;
        }
        return list.contains(str);
    }

    public static void c(Runnable runnable) {
        HSScopeHelper.f23167a.i(runnable);
    }
}
