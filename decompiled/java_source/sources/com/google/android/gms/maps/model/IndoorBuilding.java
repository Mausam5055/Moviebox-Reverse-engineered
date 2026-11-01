package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class IndoorBuilding {

    @NonNull
    private final com.google.android.gms.internal.maps.zzn zzdd;

    @NonNull
    private final zza zzde;

    @VisibleForTesting
    static class zza {
        public static final zza zzdf = new zza();

        private zza() {
        }

        @NonNull
        public static com.google.android.gms.internal.maps.zzq zza(IBinder iBinder) {
            return com.google.android.gms.internal.maps.zzr.zzf(iBinder);
        }

        @NonNull
        public static IndoorLevel zza(@NonNull com.google.android.gms.internal.maps.zzq zzqVar) {
            return new IndoorLevel(zzqVar);
        }
    }

    public IndoorBuilding(@NonNull com.google.android.gms.internal.maps.zzn zznVar) {
        this(zznVar, zza.zzdf);
    }

    @VisibleForTesting
    private IndoorBuilding(@NonNull com.google.android.gms.internal.maps.zzn zznVar, @NonNull zza zzaVar) {
        this.zzdd = (com.google.android.gms.internal.maps.zzn) Preconditions.checkNotNull(zznVar, "delegate");
        this.zzde = (zza) Preconditions.checkNotNull(zzaVar, "shim");
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof IndoorBuilding)) {
            return false;
        }
        try {
            return this.zzdd.zzb(((IndoorBuilding) obj).zzdd);
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final int getActiveLevelIndex() {
        try {
            return this.zzdd.getActiveLevelIndex();
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final int getDefaultLevelIndex() {
        try {
            return this.zzdd.getDefaultLevelIndex();
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final List<IndoorLevel> getLevels() {
        try {
            List<IBinder> levels = this.zzdd.getLevels();
            ArrayList arrayList = new ArrayList(levels.size());
            Iterator<IBinder> it = levels.iterator();
            while (it.hasNext()) {
                arrayList.add(zza.zza(zza.zza(it.next())));
            }
            return arrayList;
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final int hashCode() {
        try {
            return this.zzdd.zzj();
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }

    public final boolean isUnderground() {
        try {
            return this.zzdd.isUnderground();
        } catch (RemoteException e11) {
            throw new RuntimeRemoteException(e11);
        }
    }
}
