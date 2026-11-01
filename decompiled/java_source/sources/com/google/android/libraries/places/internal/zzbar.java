package com.google.android.libraries.places.internal;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbar {
    public static final Charset zza = Charset.forName(C.ASCII_NAME);
    public static final zzsi zzb = zzbcf.zzc;

    public static int zza(zzbcf zzbcfVar) {
        return zzbcfVar.zza();
    }

    public static zzbca zzb(String str, zzbaq zzbaqVar) {
        boolean z10 = false;
        if (!str.isEmpty() && str.charAt(0) == ':') {
            z10 = true;
        }
        return new zzbcd(str, z10, zzbaqVar, null);
    }

    public static zzbcf zzc(byte[]... bArr) {
        return new zzbcf(bArr.length >> 1, bArr);
    }

    public static byte[][] zzd(zzbcf zzbcfVar) {
        return zzbcfVar.zzg();
    }
}
