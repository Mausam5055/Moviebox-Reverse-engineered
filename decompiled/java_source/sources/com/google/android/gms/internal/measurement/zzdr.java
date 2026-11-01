package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes4.dex */
public final class zzdr extends zzbu implements zzdp {
    zzdr(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
    }

    @Override // com.google.android.gms.internal.measurement.zzdp
    public final int zza() throws RemoteException {
        Parcel parcelZza = zza(2, a_());
        int i11 = parcelZza.readInt();
        parcelZza.recycle();
        return i11;
    }

    @Override // com.google.android.gms.internal.measurement.zzdp
    public final void zza(String str, String str2, Bundle bundle, long j11) throws RemoteException {
        Parcel parcelA_ = a_();
        parcelA_.writeString(str);
        parcelA_.writeString(str2);
        zzbw.zza(parcelA_, bundle);
        parcelA_.writeLong(j11);
        zzb(1, parcelA_);
    }
}
