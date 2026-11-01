package com.google.android.libraries.places.internal;

import java.security.GeneralSecurityException;
import java.util.EnumSet;
import java.util.concurrent.TimeUnit;
import java.util.logging.Logger;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import okhttp3.internal.http2.Settings;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbrv extends zzazt {
    static final zzbsz zza;
    static final zzbqn zzb;
    private static final Logger zzc = Logger.getLogger(zzbrv.class.getName());
    private static final zzbql zzd;
    private static final EnumSet zze;
    private final zzbmd zzf;
    private SSLSocketFactory zzh;
    private final zzbqw zzg = zzbqz.zza();
    private final zzbqn zzl = zzb;
    private final zzbqn zzm = zzbqn.zza(zzbjd.zzq);
    private final zzbsz zzi = zza;
    private int zzk = 1;
    private final long zzj = zzbjd.zzl;

    static {
        zzbsx zzbsxVar = new zzbsx(zzbsz.zza);
        zzbsxVar.zza(zzbsw.TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256, zzbsw.TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256, zzbsw.TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384, zzbsw.TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384, zzbsw.TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256, zzbsw.TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256);
        zzbsxVar.zzd(zzbtn.TLS_1_2);
        zzbsxVar.zzc(true);
        zza = zzbsxVar.zzf();
        TimeUnit.DAYS.toNanos(1000L);
        zzbrn zzbrnVar = new zzbrn();
        zzd = zzbrnVar;
        zzb = zzbqn.zza(zzbrnVar);
        zze = EnumSet.of(zzbdy.MTLS, zzbdy.CUSTOM_MANAGERS);
    }

    private zzbrv(String str) {
        this.zzf = new zzbmd(str, null, null, new zzbrr(this, null), new zzbrp(this, null));
    }

    public static zzbrv zze(String str, int i11) {
        return new zzbrv(zzbjd.zzd("places.googleapis.com", 443));
    }

    @Override // com.google.android.libraries.places.internal.zzazt
    protected final zzbbs zzb() {
        return this.zzf;
    }

    final int zzc() {
        int i11 = this.zzk;
        int i12 = i11 - 1;
        if (i11 == 0) {
            throw null;
        }
        if (i12 == 0) {
            return 443;
        }
        throw new AssertionError("TLS not handled");
    }

    final zzbru zzd() {
        long j11 = this.zzj;
        zzbsz zzbszVar = this.zzi;
        zzbqw zzbqwVar = this.zzg;
        return new zzbru(this.zzl, this.zzm, null, zzg(), null, zzbszVar, 4194304, false, Long.MAX_VALUE, j11, Settings.DEFAULT_INITIAL_WINDOW_SIZE, false, Integer.MAX_VALUE, zzbqwVar, false, null);
    }

    public final zzbrv zzf() {
        this.zzk = 1;
        return this;
    }

    final SSLSocketFactory zzg() {
        int i11 = this.zzk;
        int i12 = i11 - 1;
        if (i11 == 0) {
            throw null;
        }
        if (i12 != 0) {
            throw new RuntimeException("Unknown negotiation type: TLS");
        }
        try {
            if (this.zzh == null) {
                this.zzh = SSLContext.getInstance("Default", zzbtl.zze().zzf()).getSocketFactory();
            }
            return this.zzh;
        } catch (GeneralSecurityException e11) {
            throw new RuntimeException("TLS Provider failure", e11);
        }
    }
}
