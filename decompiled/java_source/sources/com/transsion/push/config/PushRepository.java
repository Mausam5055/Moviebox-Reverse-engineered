package com.transsion.push.config;

import android.text.TextUtils;
import android.util.Base64;
import com.transsion.core.utils.f;
import com.transsion.crypto.TCrypterSdk;
import com.transsion.gslb.GslbSdk;
import com.transsion.json.b;
import com.transsion.push.IClientIdListener;
import com.transsion.push.ITopicListener;
import com.transsion.push.PushConstants;
import com.transsion.push.PushManager;
import com.transsion.push.bean.ConfigInfo;
import com.transsion.push.bean.SelfDestroyInfo;
import com.transsion.push.tracker.Tracker;
import com.transsion.push.utils.FirebaseUtils;
import com.transsion.push.utils.PushLogUtils;
import com.transsion.push.utils.PushUtils;
import com.transsion.push.utils.ThreadManager;
import com.transsion.push.utils.v;
import com.transsion.push.utils.z;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class PushRepository implements IDataSource {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static PushRepository f50794e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static long f50795f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static long f50796g = -1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private f f50797a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.transsion.push.config.a f50798b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ConfigInfo.Config f50799c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f50800d;

    /* JADX INFO: loaded from: classes6.dex */
    class a implements FirebaseUtils.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IClientIdListener f50804a;

        a(IClientIdListener iClientIdListener) {
            this.f50804a = iClientIdListener;
        }

        @Override // com.transsion.push.utils.FirebaseUtils.b
        public void onFail() {
            IClientIdListener iClientIdListener = this.f50804a;
            if (iClientIdListener != null) {
                iClientIdListener.onFail("get token fail");
            }
        }

        @Override // com.transsion.push.utils.FirebaseUtils.b
        public void onSuccess() {
            PushRepository.this.d(this.f50804a);
        }
    }

    private PushRepository() {
        try {
            this.f50797a = f.e(PushConstants.SP_FILENAME);
        } catch (Exception unused) {
        }
        this.f50798b = new com.transsion.push.config.a();
    }

    private void c() {
        int iIntValue = ((Integer) getSpValue(PushConstants.SP_KEY_RETRY_COUNT, 0)).intValue();
        int iC = v.c();
        PushLogUtils.LOG.g("Reporting Failure, Retry Reporting,retryCount：" + iIntValue + ", max retryCount：" + iC);
        if (iIntValue < iC) {
            putSpValue(PushConstants.SP_KEY_RETRY_COUNT, Integer.valueOf(iIntValue + 1));
            saveReportTime(System.currentTimeMillis() + v.d());
        } else {
            PushLogUtils.LOG.g("More than the maximum number of retries");
            saveReportTime(System.currentTimeMillis() + v.b());
            putSpValue(PushConstants.SP_KEY_RETRY_COUNT, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(final IClientIdListener iClientIdListener) {
        if (this.f50798b != null) {
            ThreadManager.executeInBackground(new Runnable() { // from class: com.transsion.push.config.PushRepository.4
                @Override // java.lang.Runnable
                public void run() {
                    ConfigInfo.Whitelist whitelist;
                    ConfigInfo.Config config;
                    ConfigInfo configInfoF = PushRepository.this.f50798b.f();
                    if (configInfoF == null) {
                        IClientIdListener iClientIdListener2 = iClientIdListener;
                        if (iClientIdListener2 != null) {
                            iClientIdListener2.onFail("get client id fail");
                        }
                        PushLogUtils.LOG.g("get client id fail");
                        return;
                    }
                    PushLogUtils.LOG.g("get config response data: " + configInfoF.toString());
                    PushRepository.this.putSpValue(PushConstants.SP_KEY_IS_NEXT_WITH_APP, Boolean.valueOf(configInfoF.nextWithApp));
                    PushRepository.this.putSpValue(PushConstants.SP_KEY_IS_REPORT_DETAIL, Boolean.valueOf(configInfoF.nextWithDetail));
                    PushRepository.this.putSpValue(PushConstants.SP_KEY_CLIENT_ID, configInfoF.clientId);
                    z.f(configInfoF.destroyAppIds, configInfoF.syncInfoInterval);
                    if (configInfoF.configRefresh && (config = configInfoF.config) != null && config.version > 0) {
                        PushRepository.this.saveConfig(config);
                        PushRepository.this.putSpValue(PushConstants.SP_KEY_SELF_DESTROYING, Integer.valueOf(configInfoF.config.destroy));
                    }
                    if (configInfoF.whitelistRefresh && (whitelist = configInfoF.whitelist) != null && whitelist.version > 0) {
                        PushRepository.this.saveWhiteList(whitelist);
                    }
                    IClientIdListener iClientIdListener3 = iClientIdListener;
                    if (iClientIdListener3 != null) {
                        iClientIdListener3.onSuccess(configInfoF.clientId);
                    }
                }
            });
            return;
        }
        if (iClientIdListener != null) {
            iClientIdListener.onFail("mRemoteDataSource is null");
        }
        PushLogUtils.LOG.z("mRemoteDataSource is null");
    }

    public static synchronized PushRepository getInstance() {
        try {
            if (f50794e == null) {
                f50794e = new PushRepository();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f50794e;
    }

    @Override // com.transsion.push.config.IDataSource
    public void getClientId(IClientIdListener iClientIdListener) {
        PushLogUtils.LOG.g("get client id");
        String str = (String) getSpValue(PushConstants.SP_KEY_CLIENT_ID, "");
        if (!TextUtils.isEmpty(str) && iClientIdListener != null) {
            iClientIdListener.onSuccess(str);
        } else if (TextUtils.isEmpty((CharSequence) getSpValue(PushConstants.SP_KEY_FCM_TOKEN, ""))) {
            FirebaseUtils.d(new a(iClientIdListener));
        } else {
            d(iClientIdListener);
        }
    }

    @Override // com.transsion.push.config.IDataSource
    public ConfigInfo.Config getConfig() {
        ConfigInfo.Config config = this.f50799c;
        if (config != null) {
            return config;
        }
        f fVar = this.f50797a;
        if (fVar == null) {
            return null;
        }
        String strJ = fVar.j(PushConstants.SP_KEY_CONFIG, null);
        if (TextUtils.isEmpty(strJ)) {
            return null;
        }
        try {
            return (ConfigInfo.Config) b.a(new String(Base64.decode(strJ, 0)), ConfigInfo.Config.class);
        } catch (Exception e11) {
            PushLogUtils.LOG.i("get config fail, e:" + e11.getMessage());
            return null;
        }
    }

    public long getLastTpmsReportTime() {
        long jCurrentTimeMillis = System.currentTimeMillis() - 1;
        long j11 = f50796g;
        if (j11 > 0) {
            return j11;
        }
        f fVar = this.f50797a;
        if (fVar == null) {
            return jCurrentTimeMillis;
        }
        f50796g = fVar.h(PushConstants.SP_KEY_REPORT_TPMS_TIME, 0L);
        PushLogUtils.LOG.g("sLocalTpmsReportTime" + f50796g);
        if (f50796g <= 0) {
            this.f50797a.o(PushConstants.SP_KEY_REPORT_TPMS_TIME, jCurrentTimeMillis);
            f50796g = jCurrentTimeMillis;
        }
        return f50796g;
    }

    @Override // com.transsion.push.config.IDataSource
    public long getReportTime() {
        long jCurrentTimeMillis = System.currentTimeMillis() - 1;
        long j11 = f50795f;
        if (j11 > 0) {
            return j11;
        }
        f fVar = this.f50797a;
        if (fVar == null) {
            return jCurrentTimeMillis;
        }
        long jH = fVar.h(PushConstants.SP_KEY_REPORT_ACTIVE_TIME, 0L);
        f50795f = jH;
        if (jH <= 0) {
            this.f50797a.o(PushConstants.SP_KEY_REPORT_ACTIVE_TIME, jCurrentTimeMillis);
            f50795f = jCurrentTimeMillis;
        }
        return f50795f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.push.config.IDataSource
    public <T> T getSpValue(String str, T t11) {
        f fVar = this.f50797a;
        if (fVar == null) {
            return t11;
        }
        try {
            if (t11 instanceof String) {
                return (T) fVar.j(str, (String) t11);
            }
            if (t11 instanceof Boolean) {
                return (T) Boolean.valueOf(fVar.c(str, ((Boolean) t11).booleanValue()));
            }
            if (t11 instanceof Integer) {
                return (T) Integer.valueOf(fVar.f(str, ((Integer) t11).intValue()));
            }
            if (t11 instanceof Long) {
                return (T) Long.valueOf(fVar.h(str, ((Long) t11).longValue()));
            }
            if (t11 instanceof Float) {
                return (T) Float.valueOf(fVar.d(str, ((Float) t11).floatValue()));
            }
            if (t11 instanceof Set) {
                return (T) fVar.k(str, new HashSet());
            }
            PushLogUtils.LOG.i("Type of " + t11.getClass().getSimpleName() + " is not supported.");
            return t11;
        } catch (ClassCastException e11) {
            PushLogUtils.LOG.i("Type of default value is not match with value stored." + System.lineSeparator() + e11.getMessage());
            return t11;
        }
    }

    @Override // com.transsion.push.config.IDataSource
    public ConfigInfo.Whitelist getWhiteList() {
        if (!TextUtils.isEmpty(this.f50800d)) {
            try {
                return (ConfigInfo.Whitelist) b.a(this.f50800d, ConfigInfo.Whitelist.class);
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
        try {
            String strA = TCrypterSdk.a(qk.a.a(), PushConstants.SP_KEY_WHITE_LIST);
            if (TextUtils.isEmpty(strA)) {
                return null;
            }
            this.f50800d = strA;
            return (ConfigInfo.Whitelist) b.a(strA, ConfigInfo.Whitelist.class);
        } catch (Exception e12) {
            PushLogUtils.LOG.i("get white list fail, e:" + e12.getMessage());
            return null;
        }
    }

    @Override // com.transsion.push.config.IDataSource
    public boolean isReported() {
        f fVar = this.f50797a;
        if (fVar == null) {
            return false;
        }
        try {
            return fVar.b(PushConstants.SP_KEY_REPORT_ACTIVE_SUCCESS);
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // com.transsion.push.config.IDataSource
    public void putSpValue(String str, Object obj) {
        f fVar = this.f50797a;
        if (fVar == null) {
            return;
        }
        try {
            if (obj instanceof String) {
                fVar.p(str, (String) obj);
            } else if (obj instanceof Boolean) {
                fVar.l(str, ((Boolean) obj).booleanValue());
            } else if (obj instanceof Integer) {
                fVar.n(str, ((Integer) obj).intValue());
            } else if (obj instanceof Long) {
                fVar.o(str, ((Long) obj).longValue());
            } else if (obj instanceof Float) {
                fVar.m(str, ((Float) obj).floatValue());
            } else if (obj instanceof Set) {
                fVar.q(str, (Set) obj);
            }
        } catch (Exception e11) {
            PushLogUtils.LOG.i("put sp, Type of default value is not match with value stored." + System.lineSeparator() + e11.getMessage());
        }
    }

    @Override // com.transsion.push.config.IDataSource
    public void removeSpValue(String str) {
        try {
            f fVar = this.f50797a;
            if (fVar != null) {
                fVar.r(str);
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    @Override // com.transsion.push.config.IDataSource
    public void saveConfig(ConfigInfo.Config config) {
        f fVar;
        if (config == null || (fVar = this.f50797a) == null) {
            return;
        }
        try {
            this.f50799c = config;
            fVar.p(PushConstants.SP_KEY_CONFIG, new String(Base64.encode(b.b(config).getBytes(), 0)));
        } catch (Exception e11) {
            PushLogUtils.LOG.i("save config fail, e:" + e11.getMessage());
        }
    }

    @Override // com.transsion.push.config.IDataSource
    public void saveReportTime(long j11) {
        if (this.f50797a == null) {
            return;
        }
        PushLogUtils.LOG.g("Update reporting time，reportTime:" + j11);
        f50795f = j11;
        this.f50797a.o(PushConstants.SP_KEY_REPORT_ACTIVE_TIME, j11);
    }

    public void saveTpmsReportTime(long j11) {
        if (this.f50797a == null) {
            return;
        }
        PushLogUtils.LOG.g("Update reporting time，reportTime:" + j11);
        f50796g = j11;
        this.f50797a.o(PushConstants.SP_KEY_REPORT_TPMS_TIME, j11);
    }

    @Override // com.transsion.push.config.IDataSource
    public void saveWhiteList(ConfigInfo.Whitelist whitelist) {
        List<ConfigInfo.Apps> list;
        if (whitelist == null || (list = whitelist.apps) == null || list.size() == 0) {
            return;
        }
        try {
            if (TextUtils.isEmpty(this.f50800d)) {
                this.f50800d = b.b(whitelist);
                TCrypterSdk.c(qk.a.a(), PushConstants.SP_KEY_WHITE_LIST, this.f50800d);
                return;
            }
            List<ConfigInfo.Apps> list2 = ((ConfigInfo.Whitelist) b.a(this.f50800d, ConfigInfo.Whitelist.class)).apps;
            for (ConfigInfo.Apps apps : whitelist.apps) {
                if (!list2.contains(apps)) {
                    list2.add(apps);
                }
            }
            ConfigInfo.Whitelist whitelist2 = new ConfigInfo.Whitelist();
            whitelist2.version = whitelist.version;
            whitelist2.apps = new ArrayList(list2);
            this.f50800d = b.b(whitelist2);
            TCrypterSdk.c(qk.a.a(), PushConstants.SP_KEY_WHITE_LIST, this.f50800d);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    @Override // com.transsion.push.config.IDataSource
    public void subscribeToTopic(final String str, final ITopicListener iTopicListener) {
        if (TextUtils.isEmpty(str)) {
            if (iTopicListener != null) {
                iTopicListener.onFail("subscribe topic is empty");
                PushLogUtils.LOG.i("subscribe topic is empty");
                return;
            }
            return;
        }
        if (!TextUtils.isEmpty((CharSequence) getInstance().getSpValue(PushConstants.SP_KEY_CLIENT_ID, ""))) {
            ThreadManager.executeInBackground(new Runnable() { // from class: com.transsion.push.config.PushRepository.1

                /* JADX INFO: renamed from: com.transsion.push.config.PushRepository$1$a */
                class a implements ITopicListener {

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    final /* synthetic */ HashSet f50801a;

                    a(HashSet hashSet) {
                        this.f50801a = hashSet;
                    }

                    @Override // com.transsion.push.ITopicListener
                    public void onFail(String str) {
                        ITopicListener iTopicListener = iTopicListener;
                        if (iTopicListener != null) {
                            iTopicListener.onFail(str);
                        }
                    }

                    @Override // com.transsion.push.ITopicListener
                    public void onSuccess() {
                        if (str.contains(",")) {
                            for (String str : str.split(",")) {
                                this.f50801a.add(str);
                            }
                        } else {
                            this.f50801a.add(str);
                        }
                        PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_SUBSCRIBE_TOPICS, this.f50801a);
                        ITopicListener iTopicListener = iTopicListener;
                        if (iTopicListener != null) {
                            iTopicListener.onSuccess();
                        }
                    }
                }

                @Override // java.lang.Runnable
                public void run() {
                    HashSet hashSet = (HashSet) PushRepository.this.getSpValue(PushConstants.SP_KEY_SUBSCRIBE_TOPICS, new HashSet());
                    if (!hashSet.contains(str)) {
                        PushRepository.this.f50798b.g(str, PushConstants.TOPIC_SUBSCRIBE, new a(hashSet));
                        return;
                    }
                    PushLogUtils.LOG.g("subscribe topic, " + str + " has been subscribed");
                    ITopicListener iTopicListener2 = iTopicListener;
                    if (iTopicListener2 != null) {
                        iTopicListener2.onSuccess();
                    }
                }
            });
        } else if (iTopicListener != null) {
            iTopicListener.onFail("subscribe clientId is empty");
            PushLogUtils.LOG.i("subscribe clientId is empty");
        }
    }

    @Override // com.transsion.push.config.IDataSource
    public void syncActive() {
        ConfigInfo.Whitelist whitelist;
        ConfigInfo.Config config;
        if (TextUtils.isEmpty((CharSequence) getSpValue(PushConstants.SP_KEY_FCM_TOKEN, ""))) {
            PushLogUtils.LOG.z("Token is empty");
            return;
        }
        if (this.f50798b == null) {
            PushLogUtils.LOG.z("mRemoteDataSource is null");
            return;
        }
        if (!PushManager.getInstance().getDebug() && !PushManager.getInstance().getTestEnv() && !GslbSdk.isInitSuccess(PushConstants.BASE_RELEASE_URL_V2)) {
            GslbSdk.getDomain(PushConstants.BASE_RELEASE_URL_V2, true);
        }
        ConfigInfo configInfoF = this.f50798b.f();
        if (configInfoF == null) {
            PushLogUtils.LOG.g("syncActive onFail");
            if (TextUtils.isEmpty((CharSequence) getSpValue(PushConstants.SP_KEY_CLIENT_ID, ""))) {
                return;
            }
            c();
            return;
        }
        putSpValue(PushConstants.SP_KEY_RETRY_COUNT, 0);
        PushLogUtils.LOG.g("get config response data: " + configInfoF.toString());
        putSpValue(PushConstants.SP_KEY_IS_NEXT_WITH_APP, Boolean.valueOf(configInfoF.nextWithApp));
        putSpValue(PushConstants.SP_KEY_IS_REPORT_DETAIL, Boolean.valueOf(configInfoF.nextWithDetail));
        putSpValue(PushConstants.SP_KEY_CLIENT_ID, configInfoF.clientId);
        putSpValue(PushConstants.SP_KEY_START_POINT_REPORT, Boolean.valueOf(configInfoF.startPointReport));
        z.f(configInfoF.destroyAppIds, configInfoF.syncInfoInterval);
        PushUtils.w();
        if (configInfoF.configRefresh && (config = configInfoF.config) != null && config.version > 0) {
            saveConfig(config);
            putSpValue(PushConstants.SP_KEY_SELF_DESTROYING, Integer.valueOf(configInfoF.config.destroy));
        }
        if (configInfoF.whitelistRefresh && (whitelist = configInfoF.whitelist) != null && whitelist.version > 0) {
            saveWhiteList(whitelist);
        }
        saveReportTime(System.currentTimeMillis() + v.b());
        putSpValue(PushConstants.SP_KEY_REPORT_ACTIVE_SUCCESS, Boolean.TRUE);
    }

    @Override // com.transsion.push.config.IDataSource
    public void syncSelfDestroying() {
        if (this.f50798b == null) {
            PushLogUtils.LOG.z("mRemoteDataSource is null");
            return;
        }
        if (!PushManager.getInstance().getDebug() && !PushManager.getInstance().getTestEnv() && !GslbSdk.isInitSuccess(PushConstants.BASE_RELEASE_URL_V2)) {
            PushLogUtils.LOG.z("gslb not inited");
            return;
        }
        Tracker.getInstance().trackReport();
        SelfDestroyInfo selfDestroyInfoE = this.f50798b.e();
        if (selfDestroyInfoE == null) {
            PushLogUtils.LOG.i("sync self-destroying fail");
            putSpValue(PushConstants.SP_KEY_SELF_DESTROYING_TIME, Long.valueOf(System.currentTimeMillis() + v.e()));
            return;
        }
        PushLogUtils.LOG.g("get self-destroying response data: " + selfDestroyInfoE.toString());
        putSpValue(PushConstants.SP_KEY_SELF_DESTROYING, Integer.valueOf(selfDestroyInfoE.destroy));
        putSpValue(PushConstants.SP_KEY_SELF_DESTROYING_INTERVAL, Integer.valueOf(selfDestroyInfoE.interval));
        putSpValue(PushConstants.SP_KEY_SELF_DESTROYING_TIME, Long.valueOf(System.currentTimeMillis() + v.e()));
    }

    @Override // com.transsion.push.config.IDataSource
    public void unsubscribeFromTopic(final String str, final ITopicListener iTopicListener) {
        if (TextUtils.isEmpty(str)) {
            if (iTopicListener != null) {
                iTopicListener.onFail("unsubscribe topic is empty");
                PushLogUtils.LOG.i("unsubscribe topic is empty");
                return;
            }
            return;
        }
        if (!TextUtils.isEmpty((CharSequence) getInstance().getSpValue(PushConstants.SP_KEY_CLIENT_ID, ""))) {
            ThreadManager.executeInBackground(new Runnable() { // from class: com.transsion.push.config.PushRepository.2

                /* JADX INFO: renamed from: com.transsion.push.config.PushRepository$2$a */
                class a implements ITopicListener {
                    a() {
                    }

                    @Override // com.transsion.push.ITopicListener
                    public void onFail(String str) {
                        ITopicListener iTopicListener = iTopicListener;
                        if (iTopicListener != null) {
                            iTopicListener.onFail(str);
                        }
                    }

                    @Override // com.transsion.push.ITopicListener
                    public void onSuccess() {
                        HashSet hashSet = (HashSet) PushRepository.this.getSpValue(PushConstants.SP_KEY_SUBSCRIBE_TOPICS, new HashSet());
                        if (str.equals(PushConstants.SP_KEY_APP_TOPIC_UNSUBSCRIBE_ALL)) {
                            hashSet.clear();
                        } else if (str.contains(",")) {
                            for (String str : str.split(",")) {
                                hashSet.remove(str);
                            }
                        } else {
                            hashSet.remove(str);
                        }
                        PushRepository.this.putSpValue(PushConstants.SP_KEY_SUBSCRIBE_TOPICS, hashSet);
                        ITopicListener iTopicListener = iTopicListener;
                        if (iTopicListener != null) {
                            iTopicListener.onSuccess();
                        }
                    }
                }

                @Override // java.lang.Runnable
                public void run() {
                    PushRepository.this.f50798b.g(str, PushConstants.TOPIC_UNSUBSCRIBE, new a());
                }
            });
        } else if (iTopicListener != null) {
            iTopicListener.onFail("unsubscribe clientId is empty");
            PushLogUtils.LOG.i("unsubscribe clientId is empty");
        }
    }

    @Override // com.transsion.push.config.IDataSource
    public void updateNewToken(String str) {
        putSpValue(PushConstants.SP_KEY_FCM_TOKEN, str);
        putSpValue(PushConstants.SP_KEY_IS_REPORT_DETAIL, Boolean.TRUE);
        putSpValue(PushConstants.SP_KEY_REPORT_ACTIVE_SUCCESS, Boolean.FALSE);
    }
}
