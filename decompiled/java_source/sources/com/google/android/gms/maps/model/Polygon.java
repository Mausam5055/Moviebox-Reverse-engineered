package com.google.android.gms.maps.model;

import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.maps.zzw;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class Polygon {
    private final zzw zzdw;

    public Polygon(zzw zzwVar) {
        this.zzdw = (zzw) Preconditions.checkNotNull(zzwVar);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Polygon)) {
            return false;
        }
        try {
            return this.zzdw.zzb(((Polygon) obj).zzdw);
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final int getFillColor() {
        try {
            return this.zzdw.getFillColor();
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final List<List<LatLng>> getHoles() {
        try {
            return this.zzdw.getHoles();
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final String getId() {
        try {
            return this.zzdw.getId();
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final List<LatLng> getPoints() {
        try {
            return this.zzdw.getPoints();
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final int getStrokeColor() {
        try {
            return this.zzdw.getStrokeColor();
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final int getStrokeJointType() {
        try {
            return this.zzdw.getStrokeJointType();
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    @Nullable
    public final List<PatternItem> getStrokePattern() {
        try {
            return PatternItem.zza(this.zzdw.getStrokePattern());
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final float getStrokeWidth() {
        try {
            return this.zzdw.getStrokeWidth();
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    @Nullable
    public final Object getTag() {
        try {
            return ObjectWrapper.unwrap(this.zzdw.zzk());
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final float getZIndex() {
        try {
            return this.zzdw.getZIndex();
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final int hashCode() {
        try {
            return this.zzdw.zzj();
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final boolean isClickable() {
        try {
            return this.zzdw.isClickable();
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final boolean isGeodesic() {
        try {
            return this.zzdw.isGeodesic();
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final boolean isVisible() {
        try {
            return this.zzdw.isVisible();
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final void remove() {
        try {
            this.zzdw.remove();
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final void setClickable(boolean z10) {
        try {
            this.zzdw.setClickable(z10);
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final void setFillColor(int i11) {
        try {
            this.zzdw.setFillColor(i11);
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final void setGeodesic(boolean z10) {
        try {
            this.zzdw.setGeodesic(z10);
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final void setHoles(List<? extends List<LatLng>> list) {
        try {
            this.zzdw.setHoles(list);
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final void setPoints(List<LatLng> list) {
        try {
            this.zzdw.setPoints(list);
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final void setStrokeColor(int i11) {
        try {
            this.zzdw.setStrokeColor(i11);
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final void setStrokeJointType(int i11) {
        try {
            this.zzdw.setStrokeJointType(i11);
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final void setStrokePattern(@Nullable List<PatternItem> list) {
        try {
            this.zzdw.setStrokePattern(list);
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final void setStrokeWidth(float f11) {
        try {
            this.zzdw.setStrokeWidth(f11);
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final void setTag(@Nullable Object obj) {
        try {
            this.zzdw.zze(ObjectWrapper.wrap(obj));
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final void setVisible(boolean z10) {
        try {
            this.zzdw.setVisible(z10);
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final void setZIndex(float f11) {
        try {
            this.zzdw.setZIndex(f11);
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }
}
