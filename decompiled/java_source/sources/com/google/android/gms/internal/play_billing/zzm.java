package com.google.android.gms.internal.play_billing;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes4.dex */
public interface zzm extends IInterface {
    int zza(int i11, String str, String str2) throws RemoteException;

    int zzc(int i11, String str, String str2, Bundle bundle) throws RemoteException;

    Bundle zzd(int i11, String str, String str2, Bundle bundle) throws RemoteException;

    Bundle zze(int i11, String str, String str2, Bundle bundle) throws RemoteException;

    Bundle zzf(int i11, String str, String str2, String str3, String str4) throws RemoteException;

    Bundle zzg(int i11, String str, String str2, String str3, String str4, Bundle bundle) throws RemoteException;

    Bundle zzh(int i11, String str, String str2, String str3, Bundle bundle) throws RemoteException;

    Bundle zzi(int i11, String str, String str2, String str3) throws RemoteException;

    Bundle zzj(int i11, String str, String str2, String str3, Bundle bundle) throws RemoteException;

    Bundle zzk(int i11, String str, String str2, Bundle bundle) throws RemoteException;

    Bundle zzl(int i11, String str, String str2, Bundle bundle, Bundle bundle2) throws RemoteException;

    void zzm(int i11, String str, Bundle bundle, zzd zzdVar) throws RemoteException;

    void zzn(int i11, String str, Bundle bundle, zzf zzfVar) throws RemoteException;

    void zzo(int i11, String str, Bundle bundle, zzh zzhVar) throws RemoteException;

    void zzp(int i11, String str, Bundle bundle, zzj zzjVar) throws RemoteException;

    void zzq(int i11, String str, Bundle bundle, zzo zzoVar) throws RemoteException;

    int zzv(int i11, String str, String str2) throws RemoteException;
}
