package com.google.android.gms.internal.fido;

/* JADX INFO: loaded from: classes4.dex */
final class zzaw extends zzat {
    static final zzat zza = new zzaw(new Object[0], 0);
    final transient Object[] zzb;
    private final transient int zzc;

    zzaw(Object[] objArr, int i11) {
        this.zzb = objArr;
        this.zzc = i11;
    }

    @Override // java.util.List
    public final Object get(int i11) {
        zzam.zza(i11, this.zzc, "index");
        Object obj = this.zzb[i11];
        obj.getClass();
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.fido.zzat, com.google.android.gms.internal.fido.zzaq
    final int zza(Object[] objArr, int i11) {
        System.arraycopy(this.zzb, 0, objArr, 0, this.zzc);
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.fido.zzaq
    final int zzb() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.fido.zzaq
    final int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.fido.zzaq
    final Object[] zze() {
        return this.zzb;
    }
}
