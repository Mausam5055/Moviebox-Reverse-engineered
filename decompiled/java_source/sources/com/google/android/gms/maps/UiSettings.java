package com.google.android.gms.maps;

import android.os.RemoteException;
import com.google.android.gms.maps.internal.IUiSettingsDelegate;
import com.google.android.gms.maps.model.RuntimeRemoteException;

/* JADX INFO: loaded from: classes4.dex */
public final class UiSettings {
    private final IUiSettingsDelegate zzcj;

    UiSettings(IUiSettingsDelegate iUiSettingsDelegate) {
        this.zzcj = iUiSettingsDelegate;
    }

    public final boolean isCompassEnabled() {
        try {
            return this.zzcj.isCompassEnabled();
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final boolean isIndoorLevelPickerEnabled() {
        try {
            return this.zzcj.isIndoorLevelPickerEnabled();
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final boolean isMapToolbarEnabled() {
        try {
            return this.zzcj.isMapToolbarEnabled();
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final boolean isMyLocationButtonEnabled() {
        try {
            return this.zzcj.isMyLocationButtonEnabled();
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final boolean isRotateGesturesEnabled() {
        try {
            return this.zzcj.isRotateGesturesEnabled();
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final boolean isScrollGesturesEnabled() {
        try {
            return this.zzcj.isScrollGesturesEnabled();
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final boolean isScrollGesturesEnabledDuringRotateOrZoom() {
        try {
            return this.zzcj.isScrollGesturesEnabled();
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final boolean isTiltGesturesEnabled() {
        try {
            return this.zzcj.isTiltGesturesEnabled();
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final boolean isZoomControlsEnabled() {
        try {
            return this.zzcj.isZoomControlsEnabled();
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final boolean isZoomGesturesEnabled() {
        try {
            return this.zzcj.isZoomGesturesEnabled();
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final void setAllGesturesEnabled(boolean z10) {
        try {
            this.zzcj.setAllGesturesEnabled(z10);
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final void setCompassEnabled(boolean z10) {
        try {
            this.zzcj.setCompassEnabled(z10);
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final void setIndoorLevelPickerEnabled(boolean z10) {
        try {
            this.zzcj.setIndoorLevelPickerEnabled(z10);
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final void setMapToolbarEnabled(boolean z10) {
        try {
            this.zzcj.setMapToolbarEnabled(z10);
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final void setMyLocationButtonEnabled(boolean z10) {
        try {
            this.zzcj.setMyLocationButtonEnabled(z10);
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final void setRotateGesturesEnabled(boolean z10) {
        try {
            this.zzcj.setRotateGesturesEnabled(z10);
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final void setScrollGesturesEnabled(boolean z10) {
        try {
            this.zzcj.setScrollGesturesEnabled(z10);
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final void setScrollGesturesEnabledDuringRotateOrZoom(boolean z10) {
        try {
            this.zzcj.setScrollGesturesEnabledDuringRotateOrZoom(z10);
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final void setTiltGesturesEnabled(boolean z10) {
        try {
            this.zzcj.setTiltGesturesEnabled(z10);
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final void setZoomControlsEnabled(boolean z10) {
        try {
            this.zzcj.setZoomControlsEnabled(z10);
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final void setZoomGesturesEnabled(boolean z10) {
        try {
            this.zzcj.setZoomGesturesEnabled(z10);
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }
}
