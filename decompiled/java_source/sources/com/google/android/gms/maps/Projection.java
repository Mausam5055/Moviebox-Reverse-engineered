package com.google.android.gms.maps;

import android.graphics.Point;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.maps.internal.IProjectionDelegate;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.google.android.gms.maps.model.VisibleRegion;

/* JADX INFO: loaded from: classes4.dex */
public final class Projection {
    private final IProjectionDelegate zzbn;

    Projection(IProjectionDelegate iProjectionDelegate) {
        this.zzbn = iProjectionDelegate;
    }

    public final LatLng fromScreenLocation(Point point) {
        try {
            return this.zzbn.fromScreenLocation(ObjectWrapper.wrap(point));
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final VisibleRegion getVisibleRegion() {
        try {
            return this.zzbn.getVisibleRegion();
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final Point toScreenLocation(LatLng latLng) {
        try {
            return (Point) ObjectWrapper.unwrap(this.zzbn.toScreenLocation(latLng));
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }
}
