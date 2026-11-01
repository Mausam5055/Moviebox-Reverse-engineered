package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class zzd extends zzac {

    @Nullable
    private BaseGmsClient zza;
    private final int zzb;

    public zzd(@NonNull BaseGmsClient baseGmsClient, int i11) {
        this.zza = baseGmsClient;
        this.zzb = i11;
    }

    @Override // com.google.android.gms.common.internal.IGmsCallbacks
    public final void onPostInitComplete(int i11, @NonNull IBinder iBinder, @Nullable Bundle bundle) {
        Preconditions.checkNotNull(this.zza, "onPostInitComplete can be called only once per call to getRemoteService");
        this.zza.onPostInitHandler(i11, iBinder, bundle, this.zzb);
        this.zza = null;
    }

    @Override // com.google.android.gms.common.internal.IGmsCallbacks
    public final void zzb(int i11, @Nullable Bundle bundle) {
        Log.wtf("GmsClient", "received deprecated onAccountValidationComplete callback, ignoring", new Exception());
    }

    @Override // com.google.android.gms.common.internal.IGmsCallbacks
    public final void zzc(int i11, @NonNull IBinder iBinder, @NonNull zzk zzkVar) {
        BaseGmsClient baseGmsClient = this.zza;
        Preconditions.checkNotNull(baseGmsClient, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService");
        Preconditions.checkNotNull(zzkVar);
        BaseGmsClient.zzj(baseGmsClient, zzkVar);
        onPostInitComplete(i11, iBinder, zzkVar.zza);
    }
}
