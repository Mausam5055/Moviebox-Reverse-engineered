package com.google.android.gms.internal.measurement;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class zzdl extends zzbu implements zzdj {
    zzdl(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void beginAdUnitExposure(String str, long j11) throws RemoteException {
        Parcel parcelA_ = a_();
        parcelA_.writeString(str);
        parcelA_.writeLong(j11);
        zzb(23, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void clearConditionalUserProperty(String str, String str2, Bundle bundle) throws RemoteException {
        Parcel parcelA_ = a_();
        parcelA_.writeString(str);
        parcelA_.writeString(str2);
        zzbw.zza(parcelA_, bundle);
        zzb(9, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void clearMeasurementEnabled(long j11) throws RemoteException {
        Parcel parcelA_ = a_();
        parcelA_.writeLong(j11);
        zzb(43, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void endAdUnitExposure(String str, long j11) throws RemoteException {
        Parcel parcelA_ = a_();
        parcelA_.writeString(str);
        parcelA_.writeLong(j11);
        zzb(24, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void generateEventId(zzdo zzdoVar) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, zzdoVar);
        zzb(22, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void getAppInstanceId(zzdo zzdoVar) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, zzdoVar);
        zzb(20, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void getCachedAppInstanceId(zzdo zzdoVar) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, zzdoVar);
        zzb(19, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void getConditionalUserProperties(String str, String str2, zzdo zzdoVar) throws RemoteException {
        Parcel parcelA_ = a_();
        parcelA_.writeString(str);
        parcelA_.writeString(str2);
        zzbw.zza(parcelA_, zzdoVar);
        zzb(10, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void getCurrentScreenClass(zzdo zzdoVar) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, zzdoVar);
        zzb(17, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void getCurrentScreenName(zzdo zzdoVar) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, zzdoVar);
        zzb(16, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void getGmpAppId(zzdo zzdoVar) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, zzdoVar);
        zzb(21, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void getMaxUserProperties(String str, zzdo zzdoVar) throws RemoteException {
        Parcel parcelA_ = a_();
        parcelA_.writeString(str);
        zzbw.zza(parcelA_, zzdoVar);
        zzb(6, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void getSessionId(zzdo zzdoVar) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, zzdoVar);
        zzb(46, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void getTestFlag(zzdo zzdoVar, int i11) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, zzdoVar);
        parcelA_.writeInt(i11);
        zzb(38, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void getUserProperties(String str, String str2, boolean z10, zzdo zzdoVar) throws RemoteException {
        Parcel parcelA_ = a_();
        parcelA_.writeString(str);
        parcelA_.writeString(str2);
        zzbw.zza(parcelA_, z10);
        zzbw.zza(parcelA_, zzdoVar);
        zzb(5, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void initForTests(Map map) throws RemoteException {
        Parcel parcelA_ = a_();
        parcelA_.writeMap(map);
        zzb(37, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void initialize(IObjectWrapper iObjectWrapper, zzdw zzdwVar, long j11) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, iObjectWrapper);
        zzbw.zza(parcelA_, zzdwVar);
        parcelA_.writeLong(j11);
        zzb(1, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void isDataCollectionEnabled(zzdo zzdoVar) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, zzdoVar);
        zzb(40, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void logEvent(String str, String str2, Bundle bundle, boolean z10, boolean z11, long j11) throws RemoteException {
        Parcel parcelA_ = a_();
        parcelA_.writeString(str);
        parcelA_.writeString(str2);
        zzbw.zza(parcelA_, bundle);
        zzbw.zza(parcelA_, z10);
        zzbw.zza(parcelA_, z11);
        parcelA_.writeLong(j11);
        zzb(2, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void logEventAndBundle(String str, String str2, Bundle bundle, zzdo zzdoVar, long j11) throws RemoteException {
        Parcel parcelA_ = a_();
        parcelA_.writeString(str);
        parcelA_.writeString(str2);
        zzbw.zza(parcelA_, bundle);
        zzbw.zza(parcelA_, zzdoVar);
        parcelA_.writeLong(j11);
        zzb(3, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void logHealthData(int i11, String str, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) throws RemoteException {
        Parcel parcelA_ = a_();
        parcelA_.writeInt(i11);
        parcelA_.writeString(str);
        zzbw.zza(parcelA_, iObjectWrapper);
        zzbw.zza(parcelA_, iObjectWrapper2);
        zzbw.zza(parcelA_, iObjectWrapper3);
        zzb(33, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void onActivityCreated(IObjectWrapper iObjectWrapper, Bundle bundle, long j11) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, iObjectWrapper);
        zzbw.zza(parcelA_, bundle);
        parcelA_.writeLong(j11);
        zzb(27, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void onActivityDestroyed(IObjectWrapper iObjectWrapper, long j11) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, iObjectWrapper);
        parcelA_.writeLong(j11);
        zzb(28, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void onActivityPaused(IObjectWrapper iObjectWrapper, long j11) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, iObjectWrapper);
        parcelA_.writeLong(j11);
        zzb(29, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void onActivityResumed(IObjectWrapper iObjectWrapper, long j11) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, iObjectWrapper);
        parcelA_.writeLong(j11);
        zzb(30, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void onActivitySaveInstanceState(IObjectWrapper iObjectWrapper, zzdo zzdoVar, long j11) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, iObjectWrapper);
        zzbw.zza(parcelA_, zzdoVar);
        parcelA_.writeLong(j11);
        zzb(31, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void onActivityStarted(IObjectWrapper iObjectWrapper, long j11) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, iObjectWrapper);
        parcelA_.writeLong(j11);
        zzb(25, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void onActivityStopped(IObjectWrapper iObjectWrapper, long j11) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, iObjectWrapper);
        parcelA_.writeLong(j11);
        zzb(26, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void performAction(Bundle bundle, zzdo zzdoVar, long j11) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, bundle);
        zzbw.zza(parcelA_, zzdoVar);
        parcelA_.writeLong(j11);
        zzb(32, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void registerOnMeasurementEventListener(zzdp zzdpVar) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, zzdpVar);
        zzb(35, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void resetAnalyticsData(long j11) throws RemoteException {
        Parcel parcelA_ = a_();
        parcelA_.writeLong(j11);
        zzb(12, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void setConditionalUserProperty(Bundle bundle, long j11) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, bundle);
        parcelA_.writeLong(j11);
        zzb(8, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void setConsent(Bundle bundle, long j11) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, bundle);
        parcelA_.writeLong(j11);
        zzb(44, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void setConsentThirdParty(Bundle bundle, long j11) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, bundle);
        parcelA_.writeLong(j11);
        zzb(45, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void setCurrentScreen(IObjectWrapper iObjectWrapper, String str, String str2, long j11) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, iObjectWrapper);
        parcelA_.writeString(str);
        parcelA_.writeString(str2);
        parcelA_.writeLong(j11);
        zzb(15, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void setDataCollectionEnabled(boolean z10) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, z10);
        zzb(39, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void setDefaultEventParameters(Bundle bundle) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, bundle);
        zzb(42, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void setEventInterceptor(zzdp zzdpVar) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, zzdpVar);
        zzb(34, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void setInstanceIdProvider(zzdu zzduVar) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, zzduVar);
        zzb(18, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void setMeasurementEnabled(boolean z10, long j11) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, z10);
        parcelA_.writeLong(j11);
        zzb(11, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void setMinimumSessionDuration(long j11) throws RemoteException {
        Parcel parcelA_ = a_();
        parcelA_.writeLong(j11);
        zzb(13, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void setSessionTimeoutDuration(long j11) throws RemoteException {
        Parcel parcelA_ = a_();
        parcelA_.writeLong(j11);
        zzb(14, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void setSgtmDebugInfo(Intent intent) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, intent);
        zzb(48, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void setUserId(String str, long j11) throws RemoteException {
        Parcel parcelA_ = a_();
        parcelA_.writeString(str);
        parcelA_.writeLong(j11);
        zzb(7, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void setUserProperty(String str, String str2, IObjectWrapper iObjectWrapper, boolean z10, long j11) throws RemoteException {
        Parcel parcelA_ = a_();
        parcelA_.writeString(str);
        parcelA_.writeString(str2);
        zzbw.zza(parcelA_, iObjectWrapper);
        zzbw.zza(parcelA_, z10);
        parcelA_.writeLong(j11);
        zzb(4, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void unregisterOnMeasurementEventListener(zzdp zzdpVar) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, zzdpVar);
        zzb(36, parcelA_);
    }
}
