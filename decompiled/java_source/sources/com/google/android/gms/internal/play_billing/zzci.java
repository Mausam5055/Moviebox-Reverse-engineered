package com.google.android.gms.internal.play_billing;

import java.util.Set;
import java.util.logging.Level;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: loaded from: classes4.dex */
final class zzci extends zzby {
    private final zzbd zza;
    private final Level zzb;
    private final Set zzc;
    private final zzbq zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzci(String str, @NullableDecl String str2, boolean z10, zzbd zzbdVar, boolean z11, boolean z12) {
        super(str2);
        Level level = Level.ALL;
        Set set = zzck.zza;
        zzbq zzbqVar = zzck.zzb;
        this.zza = zzbdVar;
        this.zzb = level;
        this.zzc = set;
        this.zzd = zzbqVar;
    }
}
