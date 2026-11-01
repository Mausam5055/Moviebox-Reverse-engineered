package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzka {
    abstract zzka zzb(int i11);

    abstract zzkb zzc();

    public abstract zzka zzd(int i11);

    public final zzkb zze() {
        zzkb zzkbVarZzc = zzc();
        zzmt.zzp(!zzkbVarZzc.zzb().isEmpty(), "Package name must not be empty.");
        return zzkbVarZzc;
    }
}
