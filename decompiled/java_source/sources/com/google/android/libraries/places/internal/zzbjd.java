package com.google.android.libraries.places.internal;

import com.bumptech.glide.integration.cronet.BufferQueue;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.net.InetSocketAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.EnumSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbjd {
    public static final zzbca zzc;
    public static final zzbca zzd;
    public static final zzbca zze;
    public static final zzbca zzf;
    static final zzbca zzg;
    public static final zzbca zzh;
    public static final zzbca zzi;
    public static final zzbca zzj;
    public static final zzmy zzk;
    public static final long zzl;
    public static final zzbde zzm;
    public static final zzbde zzn;
    public static final zzayh zzo;
    public static final zzbql zzp;
    public static final zzbql zzq;
    public static final zznc zzr;
    private static final zzayx zzu;
    private static final Logger zzs = Logger.getLogger(zzbjd.class.getName());
    private static final Set zzt = Collections.unmodifiableSet(EnumSet.of(zzbdj.OK, zzbdj.INVALID_ARGUMENT, zzbdj.NOT_FOUND, zzbdj.ALREADY_EXISTS, zzbdj.FAILED_PRECONDITION, zzbdj.ABORTED, zzbdj.OUT_OF_RANGE, zzbdj.DATA_LOSS));
    public static final Charset zza = Charset.forName(C.ASCII_NAME);
    public static final zzbca zzb = zzbca.zzc("grpc-timeout", new zzbjc());

    static {
        zzbbx zzbbxVar = zzbcf.zzb;
        zzc = zzbca.zzc("grpc-encoding", zzbbxVar);
        zzd = zzbar.zzb("grpc-accept-encoding", new zzbja(null));
        zze = zzbca.zzc(BufferQueue.CONTENT_ENCODING, zzbbxVar);
        zzf = zzbar.zzb("accept-encoding", new zzbja(null));
        zzg = zzbca.zzc(BufferQueue.CONTENT_LENGTH, zzbbxVar);
        zzh = zzbca.zzc("content-type", zzbbxVar);
        zzi = zzbca.zzc("te", zzbbxVar);
        zzj = zzbca.zzc("user-agent", zzbbxVar);
        zzk = zzmy.zzb(zzma.zzb(',')).zzc(zzma.zzc());
        TimeUnit timeUnit = TimeUnit.SECONDS;
        zzl = timeUnit.toNanos(20L);
        TimeUnit.HOURS.toNanos(2L);
        timeUnit.toNanos(20L);
        zzm = new zzbnu();
        zzn = new zzbiu();
        zzo = zzayh.zza("io.grpc.internal.CALL_OPTIONS_RPC_OWNED_BY_BALANCER");
        zzu = new zzbiv();
        zzp = new zzbiw();
        zzq = new zzbix();
        zzr = new zzbiy();
    }

    private zzbjd() {
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0029  */
    /* JADX WARN: Code duplicated, block: B:25:0x0035  */
    public static zzbdo zza(int i11) {
        zzbdj zzbdjVar;
        if ((i11 >= 100 && i11 < 200) || i11 == 400) {
            zzbdjVar = zzbdj.INTERNAL;
        } else if (i11 == 401) {
            zzbdjVar = zzbdj.UNAUTHENTICATED;
        } else if (i11 == 403) {
            zzbdjVar = zzbdj.PERMISSION_DENIED;
        } else if (i11 == 404) {
            zzbdjVar = zzbdj.UNIMPLEMENTED;
        } else if (i11 == 429) {
            zzbdjVar = zzbdj.UNAVAILABLE;
        } else if (i11 != 431) {
            switch (i11) {
                case 502:
                case 503:
                case 504:
                    zzbdjVar = zzbdj.UNAVAILABLE;
                    break;
                default:
                    zzbdjVar = zzbdj.UNKNOWN;
                    break;
            }
        } else {
            zzbdjVar = zzbdj.INTERNAL;
        }
        return zzbdjVar.zzb().zzg("HTTP status code " + i11);
    }

    public static zzbdo zzb(zzbdo zzbdoVar) {
        if (!zzt.contains(zzbdoVar.zza())) {
            return zzbdoVar;
        }
        return zzbdo.zzo.zzg("Inappropriate status code from control plane: " + zzbdoVar.zza().toString() + " " + zzbdoVar.zzi()).zzf(zzbdoVar.zzj());
    }

    static zzbfu zzc(zzbbe zzbbeVar, boolean z10) {
        zzbfu zzbfuVarZzh;
        zzbbj zzbbjVarZze = zzbbeVar.zze();
        if (zzbbjVarZze != null) {
            zzblx zzblxVar = (zzblx) zzbbjVarZze;
            zzmt.zzp(zzblxVar.zzg, "Subchannel is not started");
            zzbfuVarZzh = zzblxVar.zzf.zzh();
        } else {
            zzbfuVarZzh = null;
        }
        if (zzbfuVarZzh != null) {
            return zzbfuVarZzh;
        }
        if (!zzbbeVar.zzf().zzl()) {
            if (zzbbeVar.zzg()) {
                return new zzbim(zzb(zzbbeVar.zzf()), zzbfs.DROPPED);
            }
            if (!z10) {
                return new zzbim(zzb(zzbbeVar.zzf()), zzbfs.PROCESSED);
            }
        }
        return null;
    }

    public static String zzd(String str, int i11) {
        try {
            return new URI(null, null, "places.googleapis.com", 443, null, null, null).getAuthority();
        } catch (URISyntaxException e11) {
            throw new IllegalArgumentException("Invalid host or port: places.googleapis.com 443", e11);
        }
    }

    public static String zze(InetSocketAddress inetSocketAddress) {
        try {
            return (String) InetSocketAddress.class.getMethod("getHostString", null).invoke(inetSocketAddress, null);
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return inetSocketAddress.getHostName();
        }
    }

    public static URI zzf(String str) {
        zzmt.zzc(str, "authority");
        try {
            return new URI(null, str, null, null, null);
        } catch (URISyntaxException e11) {
            throw new IllegalArgumentException("Invalid authority: ".concat(String.valueOf(str)), e11);
        }
    }

    public static ThreadFactory zzg(String str, boolean z10) {
        zzakd zzakdVar = new zzakd();
        zzakdVar.zza(true);
        zzakdVar.zzb(str);
        return zzakdVar.zzc();
    }

    static void zzh(zzbqq zzbqqVar) {
        while (true) {
            InputStream inputStreamZza = zzbqqVar.zza();
            if (inputStreamZza == null) {
                return;
            } else {
                zzi(inputStreamZza);
            }
        }
    }

    public static void zzi(Closeable closeable) {
        try {
            closeable.close();
        } catch (IOException e11) {
            zzs.logp(Level.WARNING, "io.grpc.internal.GrpcUtil", "closeQuietly", "exception caught in closeQuietly", (Throwable) e11);
        }
    }

    public static boolean zzj(String str, boolean z10) {
        String strTrim = System.getenv(str);
        if (strTrim == null) {
            strTrim = System.getProperty(str);
        }
        if (strTrim != null) {
            strTrim = strTrim.trim();
        }
        return zznb.zzd(strTrim) || Boolean.parseBoolean(strTrim);
    }

    public static zzayx[] zzk(zzayj zzayjVar, zzbcf zzbcfVar, int i11, boolean z10) {
        List listZzm = zzayjVar.zzm();
        int size = listZzm.size();
        zzayx[] zzayxVarArr = new zzayx[size + 1];
        zzayv zzayvVarZza = zzayw.zza();
        zzayvVarZza.zza(zzayjVar);
        zzayvVarZza.zzc(i11);
        zzayvVarZza.zzb(z10);
        zzayw zzaywVarZzd = zzayvVarZza.zzd();
        for (int i12 = 0; i12 < listZzm.size(); i12++) {
            zzayxVarArr[i12] = ((zzayu) listZzm.get(i12)).zza(zzaywVarZzd, zzbcfVar);
        }
        zzayxVarArr[size] = zzu;
        return zzayxVarArr;
    }
}
