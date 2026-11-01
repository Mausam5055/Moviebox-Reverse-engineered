package com.google.android.gms.maps.model;

import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class Circle {
    private final com.google.android.gms.internal.maps.zzh zzco;

    public Circle(com.google.android.gms.internal.maps.zzh zzhVar) {
        this.zzco = (com.google.android.gms.internal.maps.zzh) Preconditions.checkNotNull(zzhVar);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Circle)) {
            return false;
        }
        try {
            return this.zzco.zzb(((Circle) obj).zzco);
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final LatLng getCenter() {
        try {
            return this.zzco.getCenter();
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final int getFillColor() {
        try {
            return this.zzco.getFillColor();
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final String getId() {
        try {
            return this.zzco.getId();
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final double getRadius() {
        try {
            return this.zzco.getRadius();
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final int getStrokeColor() {
        try {
            return this.zzco.getStrokeColor();
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    @Nullable
    public final List<PatternItem> getStrokePattern() {
        try {
            return PatternItem.zza(this.zzco.getStrokePattern());
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final float getStrokeWidth() {
        try {
            return this.zzco.getStrokeWidth();
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    @Nullable
    public final Object getTag() {
        try {
            return ObjectWrapper.unwrap(this.zzco.zzk());
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final float getZIndex() {
        try {
            return this.zzco.getZIndex();
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final int hashCode() {
        try {
            return this.zzco.zzj();
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final boolean isClickable() {
        try {
            return this.zzco.isClickable();
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final boolean isVisible() {
        try {
            return this.zzco.isVisible();
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final void remove() {
        try {
            this.zzco.remove();
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final void setCenter(LatLng latLng) {
        try {
            this.zzco.setCenter(latLng);
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final void setClickable(boolean z10) {
        try {
            this.zzco.setClickable(z10);
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final void setFillColor(int i11) {
        try {
            this.zzco.setFillColor(i11);
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final void setRadius(double d11) {
        try {
            this.zzco.setRadius(d11);
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final void setStrokeColor(int i11) {
        try {
            this.zzco.setStrokeColor(i11);
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final void setStrokePattern(@Nullable List<PatternItem> list) {
        try {
            this.zzco.setStrokePattern(list);
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final void setStrokeWidth(float f11) {
        try {
            this.zzco.setStrokeWidth(f11);
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final void setTag(@Nullable Object obj) {
        try {
            this.zzco.zze(ObjectWrapper.wrap(obj));
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final void setVisible(boolean z10) {
        try {
            this.zzco.setVisible(z10);
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final void setZIndex(float f11) {
        try {
            this.zzco.setZIndex(f11);
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }
}
