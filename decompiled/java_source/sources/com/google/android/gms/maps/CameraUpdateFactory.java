package com.google.android.gms.maps;

import android.graphics.Point;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.RuntimeRemoteException;

/* JADX INFO: loaded from: classes4.dex */
public final class CameraUpdateFactory {
    private static ICameraUpdateFactoryDelegate zzf;

    private CameraUpdateFactory() {
    }

    public static CameraUpdate newCameraPosition(CameraPosition cameraPosition) {
        try {
            return new CameraUpdate(zzc().newCameraPosition(cameraPosition));
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public static CameraUpdate newLatLng(LatLng latLng) {
        try {
            return new CameraUpdate(zzc().newLatLng(latLng));
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public static CameraUpdate newLatLngBounds(LatLngBounds latLngBounds, int i11) {
        try {
            return new CameraUpdate(zzc().newLatLngBounds(latLngBounds, i11));
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public static CameraUpdate newLatLngBounds(LatLngBounds latLngBounds, int i11, int i12, int i13) {
        try {
            return new CameraUpdate(zzc().newLatLngBoundsWithSize(latLngBounds, i11, i12, i13));
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public static CameraUpdate newLatLngZoom(LatLng latLng, float f11) {
        try {
            return new CameraUpdate(zzc().newLatLngZoom(latLng, f11));
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public static CameraUpdate scrollBy(float f11, float f12) {
        try {
            return new CameraUpdate(zzc().scrollBy(f11, f12));
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public static CameraUpdate zoomBy(float f11) {
        try {
            return new CameraUpdate(zzc().zoomBy(f11));
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public static CameraUpdate zoomBy(float f11, Point point) {
        try {
            return new CameraUpdate(zzc().zoomByWithFocus(f11, point.x, point.y));
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public static CameraUpdate zoomIn() {
        try {
            return new CameraUpdate(zzc().zoomIn());
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public static CameraUpdate zoomOut() {
        try {
            return new CameraUpdate(zzc().zoomOut());
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public static CameraUpdate zoomTo(float f11) {
        try {
            return new CameraUpdate(zzc().zoomTo(f11));
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public static void zza(ICameraUpdateFactoryDelegate iCameraUpdateFactoryDelegate) {
        zzf = (ICameraUpdateFactoryDelegate) Preconditions.checkNotNull(iCameraUpdateFactoryDelegate);
    }

    private static ICameraUpdateFactoryDelegate zzc() {
        return (ICameraUpdateFactoryDelegate) Preconditions.checkNotNull(zzf, "CameraUpdateFactory is not initialized");
    }
}
