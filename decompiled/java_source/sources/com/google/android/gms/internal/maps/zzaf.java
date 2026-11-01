package com.google.android.gms.internal.maps;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.maps.model.Tile;

/* JADX INFO: loaded from: classes4.dex */
public interface zzaf extends IInterface {
    Tile getTile(int i11, int i12, int i13) throws RemoteException;
}
