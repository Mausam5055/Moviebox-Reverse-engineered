package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
@DynamiteApi
public class AppMeasurementDynamiteService extends com.google.android.gms.internal.measurement.zzdm {
    zzhy zza = null;
    private final Map<Integer, zzjl> zzb = new androidx.collection.a();

    class zza implements zzjm {
        private com.google.android.gms.internal.measurement.zzdp zza;

        zza(com.google.android.gms.internal.measurement.zzdp zzdpVar) {
            this.zza = zzdpVar;
        }

        @Override // com.google.android.gms.measurement.internal.zzjm
        public final void interceptEvent(String str, String str2, Bundle bundle, long j11) {
            try {
                this.zza.zza(str, str2, bundle, j11);
            } catch (RemoteException e11) {
                zzhy zzhyVar = AppMeasurementDynamiteService.this.zza;
                if (zzhyVar != null) {
                    zzhyVar.zzj().zzu().zza("Event interceptor threw exception", e11);
                }
            }
        }
    }

    class zzb implements zzjl {
        private com.google.android.gms.internal.measurement.zzdp zza;

        zzb(com.google.android.gms.internal.measurement.zzdp zzdpVar) {
            this.zza = zzdpVar;
        }

        @Override // com.google.android.gms.measurement.internal.zzjl
        public final void onEvent(String str, String str2, Bundle bundle, long j11) {
            try {
                this.zza.zza(str, str2, bundle, j11);
            } catch (RemoteException e11) {
                zzhy zzhyVar = AppMeasurementDynamiteService.this.zza;
                if (zzhyVar != null) {
                    zzhyVar.zzj().zzu().zza("Event listener threw exception", e11);
                }
            }
        }
    }

    private final void zza() {
        if (this.zza == null) {
            throw new IllegalStateException("Attempting to perform action before initialize.");
        }
    }

    private final void zza(com.google.android.gms.internal.measurement.zzdo zzdoVar, String str) {
        zza();
        this.zza.zzt().zza(zzdoVar, str);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void beginAdUnitExposure(@NonNull String str, long j11) throws RemoteException {
        zza();
        this.zza.zze().zza(str, j11);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void clearConditionalUserProperty(@NonNull String str, @NonNull String str2, @NonNull Bundle bundle) throws RemoteException {
        zza();
        this.zza.zzp().zza(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void clearMeasurementEnabled(long j11) throws RemoteException {
        zza();
        this.zza.zzp().zza((Boolean) null);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void endAdUnitExposure(@NonNull String str, long j11) throws RemoteException {
        zza();
        this.zza.zze().zzb(str, j11);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void generateEventId(com.google.android.gms.internal.measurement.zzdo zzdoVar) throws RemoteException {
        zza();
        long jZzn = this.zza.zzt().zzn();
        zza();
        this.zza.zzt().zza(zzdoVar, jZzn);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void getAppInstanceId(com.google.android.gms.internal.measurement.zzdo zzdoVar) throws RemoteException {
        zza();
        this.zza.zzl().zzb(new zzi(this, zzdoVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void getCachedAppInstanceId(com.google.android.gms.internal.measurement.zzdo zzdoVar) throws RemoteException {
        zza();
        zza(zzdoVar, this.zza.zzp().zzag());
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void getConditionalUserProperties(String str, String str2, com.google.android.gms.internal.measurement.zzdo zzdoVar) throws RemoteException {
        zza();
        this.zza.zzl().zzb(new zzl(this, zzdoVar, str, str2));
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void getCurrentScreenClass(com.google.android.gms.internal.measurement.zzdo zzdoVar) throws RemoteException {
        zza();
        zza(zzdoVar, this.zza.zzp().zzah());
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void getCurrentScreenName(com.google.android.gms.internal.measurement.zzdo zzdoVar) throws RemoteException {
        zza();
        zza(zzdoVar, this.zza.zzp().zzai());
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void getGmpAppId(com.google.android.gms.internal.measurement.zzdo zzdoVar) throws RemoteException {
        zza();
        zza(zzdoVar, this.zza.zzp().zzaj());
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void getMaxUserProperties(String str, com.google.android.gms.internal.measurement.zzdo zzdoVar) throws RemoteException {
        zza();
        this.zza.zzp();
        zzjq.zza(str);
        zza();
        this.zza.zzt().zza(zzdoVar, 25);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void getSessionId(com.google.android.gms.internal.measurement.zzdo zzdoVar) throws RemoteException {
        zza();
        this.zza.zzp().zza(zzdoVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void getTestFlag(com.google.android.gms.internal.measurement.zzdo zzdoVar, int i11) throws RemoteException {
        zza();
        if (i11 == 0) {
            this.zza.zzt().zza(zzdoVar, this.zza.zzp().zzak());
            return;
        }
        if (i11 == 1) {
            this.zza.zzt().zza(zzdoVar, this.zza.zzp().zzaf().longValue());
            return;
        }
        if (i11 != 2) {
            if (i11 == 3) {
                this.zza.zzt().zza(zzdoVar, this.zza.zzp().zzae().intValue());
                return;
            } else {
                if (i11 != 4) {
                    return;
                }
                this.zza.zzt().zza(zzdoVar, this.zza.zzp().zzac().booleanValue());
                return;
            }
        }
        zzos zzosVarZzt = this.zza.zzt();
        double dDoubleValue = this.zza.zzp().zzad().doubleValue();
        Bundle bundle = new Bundle();
        bundle.putDouble(CampaignEx.JSON_KEY_AD_R, dDoubleValue);
        try {
            zzdoVar.zza(bundle);
        } catch (RemoteException e11) {
            zzosVarZzt.zzu.zzj().zzu().zza("Error returning double value to wrapper", e11);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void getUserProperties(String str, String str2, boolean z10, com.google.android.gms.internal.measurement.zzdo zzdoVar) throws RemoteException {
        zza();
        this.zza.zzl().zzb(new zzj(this, zzdoVar, str, str2, z10));
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void initForTests(@NonNull Map map) throws RemoteException {
        zza();
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void initialize(IObjectWrapper iObjectWrapper, com.google.android.gms.internal.measurement.zzdw zzdwVar, long j11) throws RemoteException {
        zzhy zzhyVar = this.zza;
        if (zzhyVar == null) {
            this.zza = zzhy.zza((Context) Preconditions.checkNotNull((Context) ObjectWrapper.unwrap(iObjectWrapper)), zzdwVar, Long.valueOf(j11));
        } else {
            zzhyVar.zzj().zzu().zza("Attempting to initialize multiple times");
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void isDataCollectionEnabled(com.google.android.gms.internal.measurement.zzdo zzdoVar) throws RemoteException {
        zza();
        this.zza.zzl().zzb(new zzn(this, zzdoVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void logEvent(@NonNull String str, @NonNull String str2, @NonNull Bundle bundle, boolean z10, boolean z11, long j11) throws RemoteException {
        zza();
        this.zza.zzp().zza(str, str2, bundle, z10, z11, j11);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void logEventAndBundle(String str, String str2, Bundle bundle, com.google.android.gms.internal.measurement.zzdo zzdoVar, long j11) throws RemoteException {
        zza();
        Preconditions.checkNotEmpty(str2);
        (bundle != null ? new Bundle(bundle) : new Bundle()).putString("_o", "app");
        this.zza.zzl().zzb(new zzk(this, zzdoVar, new zzbf(str2, new zzbe(bundle), "app", j11), str));
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void logHealthData(int i11, @NonNull String str, @NonNull IObjectWrapper iObjectWrapper, @NonNull IObjectWrapper iObjectWrapper2, @NonNull IObjectWrapper iObjectWrapper3) throws RemoteException {
        zza();
        this.zza.zzj().zza(i11, true, false, str, iObjectWrapper == null ? null : ObjectWrapper.unwrap(iObjectWrapper), iObjectWrapper2 == null ? null : ObjectWrapper.unwrap(iObjectWrapper2), iObjectWrapper3 != null ? ObjectWrapper.unwrap(iObjectWrapper3) : null);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void onActivityCreated(@NonNull IObjectWrapper iObjectWrapper, @NonNull Bundle bundle, long j11) throws RemoteException {
        zza();
        Application.ActivityLifecycleCallbacks activityLifecycleCallbacksZzaa = this.zza.zzp().zzaa();
        if (activityLifecycleCallbacksZzaa != null) {
            this.zza.zzp().zzao();
            activityLifecycleCallbacksZzaa.onActivityCreated((Activity) ObjectWrapper.unwrap(iObjectWrapper), bundle);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void onActivityDestroyed(@NonNull IObjectWrapper iObjectWrapper, long j11) throws RemoteException {
        zza();
        Application.ActivityLifecycleCallbacks activityLifecycleCallbacksZzaa = this.zza.zzp().zzaa();
        if (activityLifecycleCallbacksZzaa != null) {
            this.zza.zzp().zzao();
            activityLifecycleCallbacksZzaa.onActivityDestroyed((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void onActivityPaused(@NonNull IObjectWrapper iObjectWrapper, long j11) throws RemoteException {
        zza();
        Application.ActivityLifecycleCallbacks activityLifecycleCallbacksZzaa = this.zza.zzp().zzaa();
        if (activityLifecycleCallbacksZzaa != null) {
            this.zza.zzp().zzao();
            activityLifecycleCallbacksZzaa.onActivityPaused((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void onActivityResumed(@NonNull IObjectWrapper iObjectWrapper, long j11) throws RemoteException {
        zza();
        Application.ActivityLifecycleCallbacks activityLifecycleCallbacksZzaa = this.zza.zzp().zzaa();
        if (activityLifecycleCallbacksZzaa != null) {
            this.zza.zzp().zzao();
            activityLifecycleCallbacksZzaa.onActivityResumed((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void onActivitySaveInstanceState(IObjectWrapper iObjectWrapper, com.google.android.gms.internal.measurement.zzdo zzdoVar, long j11) throws RemoteException {
        zza();
        Application.ActivityLifecycleCallbacks activityLifecycleCallbacksZzaa = this.zza.zzp().zzaa();
        Bundle bundle = new Bundle();
        if (activityLifecycleCallbacksZzaa != null) {
            this.zza.zzp().zzao();
            activityLifecycleCallbacksZzaa.onActivitySaveInstanceState((Activity) ObjectWrapper.unwrap(iObjectWrapper), bundle);
        }
        try {
            zzdoVar.zza(bundle);
        } catch (RemoteException e11) {
            this.zza.zzj().zzu().zza("Error returning bundle value to wrapper", e11);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void onActivityStarted(@NonNull IObjectWrapper iObjectWrapper, long j11) throws RemoteException {
        zza();
        Application.ActivityLifecycleCallbacks activityLifecycleCallbacksZzaa = this.zza.zzp().zzaa();
        if (activityLifecycleCallbacksZzaa != null) {
            this.zza.zzp().zzao();
            activityLifecycleCallbacksZzaa.onActivityStarted((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void onActivityStopped(@NonNull IObjectWrapper iObjectWrapper, long j11) throws RemoteException {
        zza();
        Application.ActivityLifecycleCallbacks activityLifecycleCallbacksZzaa = this.zza.zzp().zzaa();
        if (activityLifecycleCallbacksZzaa != null) {
            this.zza.zzp().zzao();
            activityLifecycleCallbacksZzaa.onActivityStopped((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void performAction(Bundle bundle, com.google.android.gms.internal.measurement.zzdo zzdoVar, long j11) throws RemoteException {
        zza();
        zzdoVar.zza(null);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void registerOnMeasurementEventListener(com.google.android.gms.internal.measurement.zzdp zzdpVar) throws RemoteException {
        zzjl zzbVar;
        zza();
        synchronized (this.zzb) {
            try {
                zzbVar = this.zzb.get(Integer.valueOf(zzdpVar.zza()));
                if (zzbVar == null) {
                    zzbVar = new zzb(zzdpVar);
                    this.zzb.put(Integer.valueOf(zzdpVar.zza()), zzbVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        this.zza.zzp().zza(zzbVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void resetAnalyticsData(long j11) throws RemoteException {
        zza();
        this.zza.zzp().zza(j11);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void setConditionalUserProperty(@NonNull Bundle bundle, long j11) throws RemoteException {
        zza();
        if (bundle == null) {
            this.zza.zzj().zzg().zza("Conditional user property must not be null");
        } else {
            this.zza.zzp().zzb(bundle, j11);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void setConsent(@NonNull Bundle bundle, long j11) throws RemoteException {
        zza();
        this.zza.zzp().zzc(bundle, j11);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void setConsentThirdParty(@NonNull Bundle bundle, long j11) throws RemoteException {
        zza();
        this.zza.zzp().zzd(bundle, j11);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void setCurrentScreen(@NonNull IObjectWrapper iObjectWrapper, @NonNull String str, @NonNull String str2, long j11) throws RemoteException {
        zza();
        this.zza.zzq().zza((Activity) ObjectWrapper.unwrap(iObjectWrapper), str, str2);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void setDataCollectionEnabled(boolean z10) throws RemoteException {
        zza();
        this.zza.zzp().zzc(z10);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void setDefaultEventParameters(@NonNull Bundle bundle) {
        zza();
        this.zza.zzp().zzc(bundle);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void setEventInterceptor(com.google.android.gms.internal.measurement.zzdp zzdpVar) throws RemoteException {
        zza();
        zza zzaVar = new zza(zzdpVar);
        if (this.zza.zzl().zzg()) {
            this.zza.zzp().zza(zzaVar);
        } else {
            this.zza.zzl().zzb(new zzm(this, zzaVar));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void setInstanceIdProvider(com.google.android.gms.internal.measurement.zzdu zzduVar) throws RemoteException {
        zza();
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void setMeasurementEnabled(boolean z10, long j11) throws RemoteException {
        zza();
        this.zza.zzp().zza(Boolean.valueOf(z10));
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void setMinimumSessionDuration(long j11) throws RemoteException {
        zza();
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void setSessionTimeoutDuration(long j11) throws RemoteException {
        zza();
        this.zza.zzp().zzc(j11);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void setSgtmDebugInfo(@NonNull Intent intent) throws RemoteException {
        zza();
        this.zza.zzp().zza(intent);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void setUserId(@NonNull String str, long j11) throws RemoteException {
        zza();
        this.zza.zzp().zza(str, j11);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void setUserProperty(@NonNull String str, @NonNull String str2, @NonNull IObjectWrapper iObjectWrapper, boolean z10, long j11) throws RemoteException {
        zza();
        this.zza.zzp().zza(str, str2, ObjectWrapper.unwrap(iObjectWrapper), z10, j11);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public void unregisterOnMeasurementEventListener(com.google.android.gms.internal.measurement.zzdp zzdpVar) throws RemoteException {
        zzjl zzjlVarRemove;
        zza();
        synchronized (this.zzb) {
            zzjlVarRemove = this.zzb.remove(Integer.valueOf(zzdpVar.zza()));
        }
        if (zzjlVarRemove == null) {
            zzjlVarRemove = new zzb(zzdpVar);
        }
        this.zza.zzp().zzb(zzjlVarRemove);
    }
}
