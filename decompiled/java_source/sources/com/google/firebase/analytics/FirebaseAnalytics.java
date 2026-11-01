package com.google.firebase.analytics;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzdy;
import com.google.android.gms.measurement.internal.zzlb;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.util.Map;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public final class FirebaseAnalytics {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile FirebaseAnalytics f31048c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzdy f31049a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ExecutorService f31050b;

    /* JADX INFO: loaded from: classes4.dex */
    public enum ConsentStatus {
        GRANTED,
        DENIED
    }

    /* JADX INFO: loaded from: classes4.dex */
    public enum ConsentType {
        AD_STORAGE,
        ANALYTICS_STORAGE,
        AD_USER_DATA,
        AD_PERSONALIZATION
    }

    private FirebaseAnalytics(zzdy zzdyVar) {
        Preconditions.checkNotNull(zzdyVar);
        this.f31049a = zzdyVar;
    }

    private final ExecutorService b() {
        ExecutorService executorService;
        synchronized (FirebaseAnalytics.class) {
            try {
                if (this.f31050b == null) {
                    this.f31050b = new a(this, 0, 1, 30L, TimeUnit.SECONDS, new ArrayBlockingQueue(100));
                }
                executorService = this.f31050b;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return executorService;
    }

    @NonNull
    @Keep
    public static FirebaseAnalytics getInstance(@NonNull Context context) {
        if (f31048c == null) {
            synchronized (FirebaseAnalytics.class) {
                try {
                    if (f31048c == null) {
                        f31048c = new FirebaseAnalytics(zzdy.zza(context));
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f31048c;
    }

    @Nullable
    @Keep
    public static zzlb getScionFrontendApiImplementation(Context context, @Nullable Bundle bundle) {
        zzdy zzdyVarZza = zzdy.zza(context, (String) null, (String) null, (String) null, bundle);
        if (zzdyVarZza == null) {
            return null;
        }
        return new d(zzdyVarZza);
    }

    @NonNull
    public final Task<String> getAppInstanceId() {
        try {
            return Tasks.call(b(), new c(this));
        } catch (RuntimeException e11) {
            this.f31049a.zza(5, "Failed to schedule task for getAppInstanceId", (Object) null, (Object) null, (Object) null);
            return Tasks.forException(e11);
        }
    }

    @NonNull
    @Keep
    public final String getFirebaseInstanceId() {
        try {
            return (String) Tasks.await(com.google.firebase.installations.c.p().getId(), 30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e11) {
            throw new IllegalStateException(e11);
        } catch (ExecutionException e12) {
            throw new IllegalStateException(e12.getCause());
        } catch (TimeoutException unused) {
            throw new IllegalThreadStateException("Firebase Installations getId Task has timed out.");
        }
    }

    @NonNull
    public final Task<Long> getSessionId() {
        try {
            return Tasks.call(b(), new b(this));
        } catch (RuntimeException e11) {
            this.f31049a.zza(5, "Failed to schedule task for getSessionId", (Object) null, (Object) null, (Object) null);
            return Tasks.forException(e11);
        }
    }

    public final void logEvent(@NonNull String str, @Nullable Bundle bundle) {
        this.f31049a.zza(str, bundle);
    }

    public final void resetAnalyticsData() {
        this.f31049a.zzj();
    }

    public final void setAnalyticsCollectionEnabled(boolean z10) {
        this.f31049a.zza(Boolean.valueOf(z10));
    }

    public final void setConsent(@NonNull Map<ConsentType, ConsentStatus> map) {
        Bundle bundle = new Bundle();
        ConsentStatus consentStatus = map.get(ConsentType.AD_STORAGE);
        if (consentStatus != null) {
            int iOrdinal = consentStatus.ordinal();
            if (iOrdinal == 0) {
                bundle.putString("ad_storage", "granted");
            } else if (iOrdinal == 1) {
                bundle.putString("ad_storage", "denied");
            }
        }
        ConsentStatus consentStatus2 = map.get(ConsentType.ANALYTICS_STORAGE);
        if (consentStatus2 != null) {
            int iOrdinal2 = consentStatus2.ordinal();
            if (iOrdinal2 == 0) {
                bundle.putString("analytics_storage", "granted");
            } else if (iOrdinal2 == 1) {
                bundle.putString("analytics_storage", "denied");
            }
        }
        ConsentStatus consentStatus3 = map.get(ConsentType.AD_USER_DATA);
        if (consentStatus3 != null) {
            int iOrdinal3 = consentStatus3.ordinal();
            if (iOrdinal3 == 0) {
                bundle.putString("ad_user_data", "granted");
            } else if (iOrdinal3 == 1) {
                bundle.putString("ad_user_data", "denied");
            }
        }
        ConsentStatus consentStatus4 = map.get(ConsentType.AD_PERSONALIZATION);
        if (consentStatus4 != null) {
            int iOrdinal4 = consentStatus4.ordinal();
            if (iOrdinal4 == 0) {
                bundle.putString("ad_personalization", "granted");
            } else if (iOrdinal4 == 1) {
                bundle.putString("ad_personalization", "denied");
            }
        }
        this.f31049a.zzc(bundle);
    }

    @Keep
    @Deprecated
    public final void setCurrentScreen(@NonNull Activity activity, @Nullable String str, @Nullable String str2) {
        this.f31049a.zza(activity, str, str2);
    }

    public final void setDefaultEventParameters(@Nullable Bundle bundle) {
        if (bundle != null) {
            bundle = new Bundle(bundle);
        }
        this.f31049a.zzd(bundle);
    }

    public final void setSessionTimeoutDuration(long j11) {
        this.f31049a.zza(j11);
    }

    public final void setUserId(@Nullable String str) {
        this.f31049a.zzd(str);
    }

    public final void setUserProperty(@NonNull String str, @Nullable String str2) {
        this.f31049a.zzb(str, str2);
    }
}
