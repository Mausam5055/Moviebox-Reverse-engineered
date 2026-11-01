package com.google.android.gms.auth.account;

import android.accounts.Account;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes3.dex */
public abstract class zza extends com.google.android.gms.internal.auth.zzb implements zzb {
    public zza() {
        super("com.google.android.gms.auth.account.IWorkAccountCallback");
    }

    @Override // com.google.android.gms.internal.auth.zzb
    protected final boolean zza(int i11, Parcel parcel, Parcel parcel2, int i12) throws RemoteException {
        if (i11 == 1) {
            Account account = (Account) com.google.android.gms.internal.auth.zzc.zza(parcel, Account.CREATOR);
            com.google.android.gms.internal.auth.zzc.zzb(parcel);
            zzb(account);
        } else {
            if (i11 != 2) {
                return false;
            }
            boolean zZzf = com.google.android.gms.internal.auth.zzc.zzf(parcel);
            com.google.android.gms.internal.auth.zzc.zzb(parcel);
            zzc(zZzf);
        }
        return true;
    }
}
