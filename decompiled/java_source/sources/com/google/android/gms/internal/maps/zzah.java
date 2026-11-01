package com.google.android.gms.internal.maps;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.maps.model.Tile;

/* JADX INFO: loaded from: classes4.dex */
public final class zzah extends zza implements zzaf {
    zzah(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.model.internal.ITileProviderDelegate");
    }

    @Override // com.google.android.gms.internal.maps.zzaf
    public final Tile getTile(int i11, int i12, int i13) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeInt(i11);
        parcelZza.writeInt(i12);
        parcelZza.writeInt(i13);
        Parcel parcelZza2 = zza(1, parcelZza);
        Tile tile = (Tile) zzc.zza(parcelZza2, Tile.CREATOR);
        parcelZza2.recycle();
        return tile;
    }
}
