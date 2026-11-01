package qu;

import com.google.gson.Gson;
import com.tencent.tinker.loader.shareutil.ShareTinkerLog;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.tinker.lib.custom.config.HotfixRemoteConfig;
import sm.f;

/* JADX INFO: loaded from: classes7.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Gson f73701a = new Gson();

    public static void a() {
        String strB = b();
        if (strB == null) {
            ShareTinkerLog.i("Tinker.HotfixCfgLoader", "no remote hotfix config, keep local defaults", new Object[0]);
            return;
        }
        try {
            String strTrim = strB.trim();
            if (strTrim.startsWith("\"") && strTrim.endsWith("\"")) {
                try {
                    String str = (String) f73701a.fromJson(strTrim, String.class);
                    if (str != null) {
                        strTrim = str.trim();
                    }
                } catch (Exception unused) {
                }
            }
            HotfixRemoteConfig hotfixRemoteConfig = (HotfixRemoteConfig) f73701a.fromJson(strTrim, HotfixRemoteConfig.class);
            if (hotfixRemoteConfig == null) {
                ShareTinkerLog.w("Tinker.HotfixCfgLoader", "remote hotfix config parsed as null", new Object[0]);
            } else {
                ou.a.H(c(ou.a.s(), hotfixRemoteConfig));
                ShareTinkerLog.i("Tinker.HotfixCfgLoader", "remote hotfix config applied: enabled=%s, crashThreshold=%s, logEnabed=%s", hotfixRemoteConfig.enabled, hotfixRemoteConfig.crashThreshold, hotfixRemoteConfig.logEnabled);
            }
        } catch (Exception e11) {
            ShareTinkerLog.e("Tinker.HotfixCfgLoader", "failed to apply remote hotfix config: %s", e11.getMessage());
        }
    }

    private static String b() {
        try {
            ConfigBean configBeanC = f.f75407c.a().c("hotfix_config", true);
            String value = configBeanC != null ? configBeanC.getValue() : null;
            if (value != null && !value.isEmpty()) {
                ShareTinkerLog.i("Tinker.HotfixCfgLoader", "loaded hotfix config JSON from ConfigManager, length=%d", Integer.valueOf(value.length()));
                return value;
            }
        } catch (Exception e11) {
            ShareTinkerLog.e("Tinker.HotfixCfgLoader", "failed to load hotfix config from ConfigManager: %s", e11.getMessage());
        }
        return null;
    }

    private static ou.a c(ou.a aVar, HotfixRemoteConfig hotfixRemoteConfig) {
        ou.a.b bVarZ = ou.a.b.z(aVar);
        Boolean bool = hotfixRemoteConfig.enabled;
        if (bool != null) {
            bVarZ.y(bool.booleanValue());
        }
        Integer num = hotfixRemoteConfig.httpConnectTimeoutMs;
        if (num != null) {
            bVarZ.A(num.intValue());
        }
        Integer num2 = hotfixRemoteConfig.httpReadTimeoutMs;
        if (num2 != null) {
            bVarZ.B(num2.intValue());
        }
        Long l11 = hotfixRemoteConfig.maxRetryDelayMs;
        if (l11 != null) {
            bVarZ.G(l11.longValue());
        }
        Integer num3 = hotfixRemoteConfig.defaultMaxRetry;
        if (num3 != null) {
            bVarZ.w(num3.intValue());
        }
        Long l12 = hotfixRemoteConfig.defaultRetryDelayMs;
        if (l12 != null) {
            bVarZ.x(l12.longValue());
        }
        Integer num4 = hotfixRemoteConfig.crashThreshold;
        if (num4 != null) {
            bVarZ.u(num4.intValue());
        }
        Long l13 = hotfixRemoteConfig.crashWindowMs;
        if (l13 != null) {
            bVarZ.v(l13.longValue());
        }
        Long l14 = hotfixRemoteConfig.logFileMaxSizeBytes;
        if (l14 != null) {
            bVarZ.D(l14.longValue());
        }
        String str = hotfixRemoteConfig.logFileName;
        if (str != null) {
            bVarZ.E(str);
        }
        Long l15 = hotfixRemoteConfig.maxPatchSizeBytes;
        if (l15 != null) {
            bVarZ.F(l15.longValue());
        }
        String str2 = hotfixRemoteConfig.patchCacheDir;
        if (str2 != null) {
            bVarZ.I(str2);
        }
        Long l16 = hotfixRemoteConfig.watchdogTimeoutMs;
        if (l16 != null) {
            bVarZ.J(l16.longValue());
        }
        Long l17 = hotfixRemoteConfig.workManagerBackoffMs;
        if (l17 != null) {
            bVarZ.K(l17.longValue());
        }
        Boolean bool2 = hotfixRemoteConfig.logEnabled;
        if (bool2 != null) {
            bVarZ.C(bool2.booleanValue());
        }
        return bVarZ.s();
    }
}
