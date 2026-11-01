package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
final class zzbus extends zzajp {
    private final zzayo zzc;

    zzbus(zzayo zzayoVar) {
        this.zzc = zzayoVar;
    }

    @Override // com.google.android.libraries.places.internal.zzajp
    protected final String zze() {
        zzmm zzmmVarZzb = zzmn.zzb(this);
        zzmmVarZzb.zzd("clientCall", this.zzc);
        return zzmmVarZzb.toString();
    }

    @Override // com.google.android.libraries.places.internal.zzajp
    protected final void zzk() {
        this.zzc.zza("GrpcFuture was cancelled", null);
    }

    @Override // com.google.android.libraries.places.internal.zzajp
    protected final boolean zzl(Object obj) {
        return super.zzl(obj);
    }

    @Override // com.google.android.libraries.places.internal.zzajp
    protected final boolean zzm(Throwable th2) {
        return super.zzm(th2);
    }
}
