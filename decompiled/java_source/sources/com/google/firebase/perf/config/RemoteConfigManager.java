package com.google.firebase.perf.config;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageManager;
import androidx.annotation.Keep;
import androidx.annotation.Nullable;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
@Keep
public class RemoteConfigManager {
    private static final long FETCH_NEVER_HAPPENED_TIMESTAMP_MS = 0;
    private static final String FIREPERF_FRC_NAMESPACE_NAME = "fireperf";
    private static final long MIN_APP_START_CONFIG_FETCH_DELAY_MS = 5000;
    private static final int RANDOM_APP_START_CONFIG_FETCH_DELAY_MS = 25000;
    private final ConcurrentHashMap<String, yc.k> allRcConfigMap;
    private final long appStartConfigFetchDelayInMs;
    private final long appStartTimeInMs;
    private final w cache;
    private final Executor executor;

    @Nullable
    private com.google.firebase.remoteconfig.a firebaseRemoteConfig;
    private long firebaseRemoteConfigLastFetchTimestampMs;

    @Nullable
    private ic.b firebaseRemoteConfigProvider;
    private static final sc.a logger = sc.a.e();
    private static final RemoteConfigManager instance = new RemoteConfigManager();
    private static final long TIME_AFTER_WHICH_A_FETCH_IS_CONSIDERED_STALE_MS = TimeUnit.HOURS.toMillis(12);

    @SuppressLint({"ThreadPoolCreation"})
    private RemoteConfigManager() {
        this(w.e(), new ThreadPoolExecutor(0, 1, 0L, TimeUnit.SECONDS, new LinkedBlockingQueue()), null, 5000 + ((long) new Random().nextInt(25000)), getInitialStartupMillis());
    }

    RemoteConfigManager(w wVar, Executor executor, com.google.firebase.remoteconfig.a aVar, long j11, long j12) {
        this.firebaseRemoteConfigLastFetchTimestampMs = 0L;
        this.cache = wVar;
        this.executor = executor;
        this.firebaseRemoteConfig = aVar;
        this.allRcConfigMap = aVar == null ? new ConcurrentHashMap<>() : new ConcurrentHashMap<>(aVar.i());
        this.appStartTimeInMs = j12;
        this.appStartConfigFetchDelayInMs = j11;
    }

    static long getInitialStartupMillis() {
        com.google.firebase.n nVar;
        try {
            nVar = (com.google.firebase.n) com.google.firebase.f.l().j(com.google.firebase.n.class);
        } catch (IllegalStateException unused) {
            logger.a("Unable to get StartupTime instance.");
            nVar = null;
        }
        return nVar != null ? nVar.c() : System.currentTimeMillis();
    }

    public static RemoteConfigManager getInstance() {
        return instance;
    }

    private yc.k getRemoteConfigValue(String str) {
        triggerRemoteConfigFetchIfNecessary();
        if (!isFirebaseRemoteConfigAvailable() || !this.allRcConfigMap.containsKey(str)) {
            return null;
        }
        yc.k kVar = this.allRcConfigMap.get(str);
        if (kVar.a() != 2) {
            return null;
        }
        logger.b("Fetched value: '%s' for key: '%s' from Firebase Remote Config.", kVar.b(), str);
        return kVar;
    }

    public static int getVersionCode(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException unused) {
            return 0;
        }
    }

    private boolean hasAppStartConfigFetchDelayElapsed(long j11) {
        return j11 - this.appStartTimeInMs >= this.appStartConfigFetchDelayInMs;
    }

    private boolean hasLastFetchBecomeStale(long j11) {
        return j11 - this.firebaseRemoteConfigLastFetchTimestampMs > TIME_AFTER_WHICH_A_FETCH_IS_CONSIDERED_STALE_MS;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$triggerFirebaseRemoteConfigFetchAndActivateOnSuccessfulFetch$0(Boolean bool) {
        syncConfigValues(this.firebaseRemoteConfig.i());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$triggerFirebaseRemoteConfigFetchAndActivateOnSuccessfulFetch$1(Exception exc) {
        logger.k("Call to Remote Config failed: %s. This may cause a degraded experience with Firebase Performance. Please reach out to Firebase Support https://firebase.google.com/support/", exc);
        this.firebaseRemoteConfigLastFetchTimestampMs = 0L;
    }

    private boolean shouldFetchAndActivateRemoteConfigValues() {
        long currentSystemTimeMillis = getCurrentSystemTimeMillis();
        return hasAppStartConfigFetchDelayElapsed(currentSystemTimeMillis) && hasLastFetchBecomeStale(currentSystemTimeMillis);
    }

    private void triggerFirebaseRemoteConfigFetchAndActivateOnSuccessfulFetch() {
        this.firebaseRemoteConfigLastFetchTimestampMs = getCurrentSystemTimeMillis();
        this.firebaseRemoteConfig.h().addOnSuccessListener(this.executor, new OnSuccessListener() { // from class: com.google.firebase.perf.config.x
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                this.f32257a.lambda$triggerFirebaseRemoteConfigFetchAndActivateOnSuccessfulFetch$0((Boolean) obj);
            }
        }).addOnFailureListener(this.executor, new OnFailureListener() { // from class: com.google.firebase.perf.config.y
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                this.f32258a.lambda$triggerFirebaseRemoteConfigFetchAndActivateOnSuccessfulFetch$1(exc);
            }
        });
    }

    private void triggerRemoteConfigFetchIfNecessary() {
        if (isFirebaseRemoteConfigAvailable()) {
            if (this.allRcConfigMap.isEmpty()) {
                this.allRcConfigMap.putAll(this.firebaseRemoteConfig.i());
            }
            if (shouldFetchAndActivateRemoteConfigValues()) {
                triggerFirebaseRemoteConfigFetchAndActivateOnSuccessfulFetch();
            }
        }
    }

    public com.google.firebase.perf.util.e getBoolean(String str) {
        if (str == null) {
            logger.a("The key to get Remote Config boolean value is null.");
            return com.google.firebase.perf.util.e.a();
        }
        yc.k remoteConfigValue = getRemoteConfigValue(str);
        if (remoteConfigValue != null) {
            try {
                return com.google.firebase.perf.util.e.e(Boolean.valueOf(remoteConfigValue.e()));
            } catch (IllegalArgumentException unused) {
                if (!remoteConfigValue.b().isEmpty()) {
                    logger.b("Could not parse value: '%s' for key: '%s'.", remoteConfigValue.b(), str);
                }
            }
        }
        return com.google.firebase.perf.util.e.a();
    }

    protected long getCurrentSystemTimeMillis() {
        return System.currentTimeMillis();
    }

    public com.google.firebase.perf.util.e getDouble(String str) {
        if (str == null) {
            logger.a("The key to get Remote Config double value is null.");
            return com.google.firebase.perf.util.e.a();
        }
        yc.k remoteConfigValue = getRemoteConfigValue(str);
        if (remoteConfigValue != null) {
            try {
                return com.google.firebase.perf.util.e.e(Double.valueOf(remoteConfigValue.d()));
            } catch (IllegalArgumentException unused) {
                if (!remoteConfigValue.b().isEmpty()) {
                    logger.b("Could not parse value: '%s' for key: '%s'.", remoteConfigValue.b(), str);
                }
            }
        }
        return com.google.firebase.perf.util.e.a();
    }

    public com.google.firebase.perf.util.e getLong(String str) {
        if (str == null) {
            logger.a("The key to get Remote Config long value is null.");
            return com.google.firebase.perf.util.e.a();
        }
        yc.k remoteConfigValue = getRemoteConfigValue(str);
        if (remoteConfigValue != null) {
            try {
                return com.google.firebase.perf.util.e.e(Long.valueOf(remoteConfigValue.c()));
            } catch (IllegalArgumentException unused) {
                if (!remoteConfigValue.b().isEmpty()) {
                    logger.b("Could not parse value: '%s' for key: '%s'.", remoteConfigValue.b(), str);
                }
            }
        }
        return com.google.firebase.perf.util.e.a();
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public <T> T getRemoteConfigValueOrDefault(String str, T t11) {
        Object objValueOf;
        yc.k remoteConfigValue = getRemoteConfigValue(str);
        if (remoteConfigValue == null) {
            return t11;
        }
        try {
            if (t11 instanceof Boolean) {
                objValueOf = Boolean.valueOf(remoteConfigValue.e());
            } else if (t11 instanceof Double) {
                objValueOf = Double.valueOf(remoteConfigValue.d());
            } else if ((t11 instanceof Long) || (t11 instanceof Integer)) {
                objValueOf = Long.valueOf(remoteConfigValue.c());
            } else {
                if (!(t11 instanceof String)) {
                    T t12 = (T) remoteConfigValue.b();
                    try {
                        logger.b("No matching type found for the defaultValue: '%s', using String.", t11);
                        return t12;
                    } catch (IllegalArgumentException unused) {
                        t11 = t12;
                        if (remoteConfigValue.b().isEmpty()) {
                            return t11;
                        }
                        logger.b("Could not parse value: '%s' for key: '%s'.", remoteConfigValue.b(), str);
                        return t11;
                    }
                }
                objValueOf = remoteConfigValue.b();
            }
            return (T) objValueOf;
        } catch (IllegalArgumentException unused2) {
        }
    }

    public com.google.firebase.perf.util.e getString(String str) {
        if (str == null) {
            logger.a("The key to get Remote Config String value is null.");
            return com.google.firebase.perf.util.e.a();
        }
        yc.k remoteConfigValue = getRemoteConfigValue(str);
        return remoteConfigValue != null ? com.google.firebase.perf.util.e.e(remoteConfigValue.b()) : com.google.firebase.perf.util.e.a();
    }

    public boolean isFirebaseRemoteConfigAvailable() {
        ic.b bVar;
        com.google.firebase.remoteconfig.c cVar;
        if (this.firebaseRemoteConfig == null && (bVar = this.firebaseRemoteConfigProvider) != null && (cVar = (com.google.firebase.remoteconfig.c) bVar.get()) != null) {
            this.firebaseRemoteConfig = cVar.e(FIREPERF_FRC_NAMESPACE_NAME);
        }
        return this.firebaseRemoteConfig != null;
    }

    public boolean isLastFetchFailed() {
        com.google.firebase.remoteconfig.a aVar = this.firebaseRemoteConfig;
        return aVar == null || aVar.j().a() == 1 || this.firebaseRemoteConfig.j().a() == 2;
    }

    public void setFirebaseRemoteConfigProvider(@Nullable ic.b bVar) {
        this.firebaseRemoteConfigProvider = bVar;
    }

    protected void syncConfigValues(Map<String, yc.k> map) {
        this.allRcConfigMap.putAll(map);
        for (String str : this.allRcConfigMap.keySet()) {
            if (!map.containsKey(str)) {
                this.allRcConfigMap.remove(str);
            }
        }
        d dVarE = d.e();
        yc.k kVar = this.allRcConfigMap.get(dVarE.c());
        if (kVar == null) {
            logger.a("ExperimentTTID remote config flag does not exist.");
            return;
        }
        try {
            this.cache.m(dVarE.a(), kVar.e());
        } catch (Exception unused) {
            logger.a("ExperimentTTID remote config flag has invalid value, expected boolean.");
        }
    }
}
