package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
final class zznl extends zznp {
    private static final zznl zzb = new zznl();

    private zznl() {
        super("");
    }

    @Override // com.google.android.libraries.places.internal.zznp, java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return zza((zznp) obj);
    }

    @Override // com.google.android.libraries.places.internal.zznp
    public final int hashCode() {
        return System.identityHashCode(this);
    }

    public final String toString() {
        return "+∞";
    }

    @Override // com.google.android.libraries.places.internal.zznp
    public final int zza(zznp zznpVar) {
        return zznpVar == this ? 0 : 1;
    }

    @Override // com.google.android.libraries.places.internal.zznp
    final void zzc(StringBuilder sb2) {
        throw new AssertionError();
    }

    @Override // com.google.android.libraries.places.internal.zznp
    final void zzd(StringBuilder sb2) {
        sb2.append("+∞)");
    }

    @Override // com.google.android.libraries.places.internal.zznp
    final boolean zze(Comparable comparable) {
        return false;
    }
}
