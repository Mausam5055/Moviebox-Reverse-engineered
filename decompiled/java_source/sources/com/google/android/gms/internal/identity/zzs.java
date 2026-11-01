package com.google.android.gms.internal.identity;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzs extends zzb implements zzt {
    public zzs() {
        super("com.google.android.gms.location.internal.IGeofencerCallbacks");
    }

    @Override // com.google.android.gms.internal.identity.zzb
    protected final boolean zza(int i11, Parcel parcel, Parcel parcel2, int i12) throws RemoteException {
        if (i11 == 1) {
            int i13 = parcel.readInt();
            String[] strArrCreateStringArray = parcel.createStringArray();
            zzc.zzd(parcel);
            zzb(i13, strArrCreateStringArray);
        } else if (i11 == 2) {
            int i14 = parcel.readInt();
            String[] strArrCreateStringArray2 = parcel.createStringArray();
            zzc.zzd(parcel);
            zzc(i14, strArrCreateStringArray2);
        } else {
            if (i11 != 3) {
                return false;
            }
            int i15 = parcel.readInt();
            PendingIntent pendingIntent = (PendingIntent) zzc.zza(parcel, PendingIntent.CREATOR);
            zzc.zzd(parcel);
            zzd(i15, pendingIntent);
        }
        return true;
    }
}
