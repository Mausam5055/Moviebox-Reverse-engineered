package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
final class zznm extends zznp {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zznm(Comparable comparable) {
        super(comparable);
        comparable.getClass();
    }

    @Override // com.google.android.libraries.places.internal.zznp
    public final int hashCode() {
        return ~this.zza.hashCode();
    }

    public final String toString() {
        return "/" + this.zza.toString() + "\\";
    }

    @Override // com.google.android.libraries.places.internal.zznp
    final void zzc(StringBuilder sb2) {
        sb2.append('(');
        sb2.append(this.zza);
    }

    @Override // com.google.android.libraries.places.internal.zznp
    final void zzd(StringBuilder sb2) {
        sb2.append(this.zza);
        sb2.append(']');
    }

    @Override // com.google.android.libraries.places.internal.zznp
    final boolean zze(Comparable comparable) {
        int i11 = zzok.zzc;
        return this.zza.compareTo(comparable) < 0;
    }
}
