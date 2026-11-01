package com.google.android.gms.maps.model;

import android.os.RemoteException;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public final class IndoorLevel {
    private final com.google.android.gms.internal.maps.zzq zzdg;

    public IndoorLevel(com.google.android.gms.internal.maps.zzq zzqVar) {
        this.zzdg = (com.google.android.gms.internal.maps.zzq) Preconditions.checkNotNull(zzqVar);
    }

    public final void activate() {
        try {
            this.zzdg.activate();
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof IndoorLevel)) {
            return false;
        }
        try {
            return this.zzdg.zzb(((IndoorLevel) obj).zzdg);
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    @NonNull
    public final String getName() {
        try {
            return this.zzdg.getName();
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    @NonNull
    public final String getShortName() {
        try {
            return this.zzdg.getShortName();
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final int hashCode() {
        try {
            return this.zzdg.zzj();
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }
}
