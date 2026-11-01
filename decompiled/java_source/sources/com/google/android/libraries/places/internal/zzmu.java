package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
final class zzmu extends zzmx {
    final /* synthetic */ zzmv zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzmu(zzmv zzmvVar, zzmy zzmyVar, CharSequence charSequence) {
        super(zzmyVar, charSequence);
        this.zza = zzmvVar;
    }

    @Override // com.google.android.libraries.places.internal.zzmx
    final int zzc(int i11) {
        return i11 + 1;
    }

    @Override // com.google.android.libraries.places.internal.zzmx
    final int zzd(int i11) {
        CharSequence charSequence = ((zzmx) this).zzb;
        int length = charSequence.length();
        zzmt.zzb(i11, length, "index");
        while (i11 < length) {
            zzmv zzmvVar = this.zza;
            if (zzmvVar.zza.zza(charSequence.charAt(i11))) {
                return i11;
            }
            i11++;
        }
        return -1;
    }
}
