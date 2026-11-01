package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.internal.maps.zzaf;

/* JADX INFO: loaded from: classes4.dex */
final class zzs implements TileProvider {
    private final zzaf zzel;
    private final /* synthetic */ TileOverlayOptions zzem;

    zzs(TileOverlayOptions tileOverlayOptions) {
        this.zzem = tileOverlayOptions;
        this.zzel = tileOverlayOptions.zzei;
    }

    @Override // com.google.android.gms.maps.model.TileProvider
    public final Tile getTile(int i11, int i12, int i13) {
        try {
            return this.zzel.getTile(i11, i12, i13);
        } catch (RemoteException unused) {
            return null;
        }
    }
}
