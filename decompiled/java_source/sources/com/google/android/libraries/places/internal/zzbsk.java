package com.google.android.libraries.places.internal;

import com.hisavana.common.tracking.TrackingKey;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLSocket;

/* JADX INFO: loaded from: classes4.dex */
class zzbsk {
    private static final Logger zzb = Logger.getLogger(zzbsk.class.getName());
    private static final zzbtl zzc = zzbtl.zze();
    private static final zzbsk zzd;
    protected final zzbtl zza;

    static {
        zzbsk zzbskVar;
        ClassLoader classLoader = zzbsk.class.getClassLoader();
        try {
            classLoader.loadClass("com.android.org.conscrypt.OpenSSLSocketImpl");
        } catch (ClassNotFoundException e11) {
            zzb.logp(Level.FINE, "io.grpc.okhttp.OkHttpProtocolNegotiator", "createNegotiator", "Unable to find Conscrypt. Skipping", (Throwable) e11);
            try {
                classLoader.loadClass("org.apache.harmony.xnet.provider.jsse.OpenSSLSocketImpl");
            } catch (ClassNotFoundException e12) {
                zzb.logp(Level.FINE, "io.grpc.okhttp.OkHttpProtocolNegotiator", "createNegotiator", "Unable to find any OpenSSLSocketImpl. Skipping", (Throwable) e12);
                zzbskVar = new zzbsk(zzc);
            }
        }
        zzbskVar = new zzbsj(zzc);
        zzd = zzbskVar;
    }

    zzbsk(zzbtl zzbtlVar) {
        zzmt.zzc(zzbtlVar, TrackingKey.PLATFORM);
        this.zza = zzbtlVar;
    }

    public static zzbsk zzd() {
        return zzd;
    }

    public String zza(SSLSocket sSLSocket) {
        return this.zza.zza(sSLSocket);
    }

    public String zzb(SSLSocket sSLSocket, String str, List list) throws IOException {
        if (list != null) {
            zzc(sSLSocket, str, list);
        }
        try {
            sSLSocket.startHandshake();
            String strZza = zza(sSLSocket);
            if (strZza != null) {
                this.zza.zzd(sSLSocket);
                return strZza;
            }
            throw new RuntimeException("TLS ALPN negotiation failed with protocols: " + String.valueOf(list));
        } catch (Throwable th2) {
            this.zza.zzd(sSLSocket);
            throw th2;
        }
    }

    protected void zzc(SSLSocket sSLSocket, String str, List list) {
        this.zza.zzb(sSLSocket, str, list);
    }
}
