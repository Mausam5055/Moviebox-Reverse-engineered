package com.google.android.libraries.places.internal;

import okhttp3.internal.http2.Settings;

/* JADX INFO: loaded from: classes4.dex */
final class zzate {
    private final Object zza;
    private final int zzb;

    zzate(Object obj, int i11) {
        this.zza = obj;
        this.zzb = i11;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzate)) {
            return false;
        }
        zzate zzateVar = (zzate) obj;
        return this.zza == zzateVar.zza && this.zzb == zzateVar.zzb;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.zza) * Settings.DEFAULT_INITIAL_WINDOW_SIZE) + this.zzb;
    }
}
