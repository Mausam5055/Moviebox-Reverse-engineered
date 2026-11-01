package com.google.android.gms.common;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes3.dex */
public class PackageVerificationResult {
    private final String zza;
    private final boolean zzb;
    private final String zzc;
    private final Throwable zzd;

    private PackageVerificationResult(String str, int i11, boolean z10, String str2, Throwable th2) {
        this.zza = str;
        this.zzb = z10;
        this.zzc = str2;
        this.zzd = th2;
    }

    @NonNull
    public static PackageVerificationResult zza(@NonNull String str, @NonNull String str2, Throwable th2) {
        return new PackageVerificationResult(str, 1, false, str2, th2);
    }

    @NonNull
    public static PackageVerificationResult zzd(@NonNull String str, int i11) {
        return new PackageVerificationResult(str, i11, true, null, null);
    }

    public final void zzb() {
        if (this.zzb) {
            return;
        }
        String str = this.zzc;
        Throwable th2 = this.zzd;
        String strConcat = "PackageVerificationRslt: ".concat(String.valueOf(str));
        if (th2 == null) {
            throw new SecurityException(strConcat);
        }
        throw new SecurityException(strConcat, th2);
    }

    public final boolean zzc() {
        return this.zzb;
    }
}
