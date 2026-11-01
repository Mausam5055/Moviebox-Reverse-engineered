package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
final class zzbcd extends zzbca {
    private final zzbce zza;

    /* synthetic */ zzbcd(String str, boolean z10, zzbce zzbceVar, zzbcc zzbccVar) {
        super(str, z10, zzbceVar, null);
        zzmt.zzl(!str.endsWith("-bin"), "ASCII header is named %s.  Only binary headers may end with %s", str, "-bin");
        zzmt.zzc(zzbceVar, "marshaller");
        this.zza = zzbceVar;
    }

    @Override // com.google.android.libraries.places.internal.zzbca
    final Object zza(byte[] bArr) {
        return this.zza.zza(bArr);
    }

    @Override // com.google.android.libraries.places.internal.zzbca
    final byte[] zzb(Object obj) {
        byte[] bArrZzb = this.zza.zzb(obj);
        zzmt.zzc(bArrZzb, "null marshaller.toAsciiString()");
        return bArrZzb;
    }
}
