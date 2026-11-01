package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public interface zzgb extends IInterface {
    zzaj zza(zzo zzoVar) throws RemoteException;

    List<zzno> zza(zzo zzoVar, Bundle bundle) throws RemoteException;

    @Nullable
    List<zzon> zza(zzo zzoVar, boolean z10) throws RemoteException;

    List<zzae> zza(@Nullable String str, @Nullable String str2, zzo zzoVar) throws RemoteException;

    List<zzae> zza(String str, @Nullable String str2, @Nullable String str3) throws RemoteException;

    List<zzon> zza(String str, @Nullable String str2, @Nullable String str3, boolean z10) throws RemoteException;

    List<zzon> zza(@Nullable String str, @Nullable String str2, boolean z10, zzo zzoVar) throws RemoteException;

    void zza(long j11, @Nullable String str, @Nullable String str2, String str3) throws RemoteException;

    void zza(Bundle bundle, zzo zzoVar) throws RemoteException;

    void zza(zzae zzaeVar) throws RemoteException;

    void zza(zzae zzaeVar, zzo zzoVar) throws RemoteException;

    void zza(zzbf zzbfVar, zzo zzoVar) throws RemoteException;

    void zza(zzbf zzbfVar, String str, @Nullable String str2) throws RemoteException;

    void zza(zzon zzonVar, zzo zzoVar) throws RemoteException;

    @Nullable
    byte[] zza(zzbf zzbfVar, String str) throws RemoteException;

    @Nullable
    String zzb(zzo zzoVar) throws RemoteException;

    void zzb(Bundle bundle, zzo zzoVar) throws RemoteException;

    void zzc(zzo zzoVar) throws RemoteException;

    void zzd(zzo zzoVar) throws RemoteException;

    void zze(zzo zzoVar) throws RemoteException;

    void zzf(zzo zzoVar) throws RemoteException;

    void zzg(zzo zzoVar) throws RemoteException;

    void zzh(zzo zzoVar) throws RemoteException;

    void zzi(zzo zzoVar) throws RemoteException;
}
