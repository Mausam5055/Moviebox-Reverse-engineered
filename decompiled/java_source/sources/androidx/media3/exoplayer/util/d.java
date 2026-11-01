package androidx.media3.exoplayer.util;

import android.os.SystemClock;
import androidx.media3.exoplayer.upstream.Loader;
import androidx.media3.exoplayer.upstream.o;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.SocketTimeoutException;
import java.util.Arrays;
import java.util.ConcurrentModificationException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f13039a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Object f13040b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f13041c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static long f13042d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static String f13043e = "time.android.com";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f13044f = 1000;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static long f13045g = -9223372036854775807L;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static long f13046h = -9223372036854775807L;

    public interface b {
        void a(IOException iOException);

        void onInitialized();
    }

    private static final class c implements Loader.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final b f13047a;

        public c(b bVar) {
            this.f13047a = bVar;
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.b
        public Loader.c k(Loader.d dVar, long j11, long j12, IOException iOException, int i11) {
            b bVar = this.f13047a;
            if (bVar != null) {
                bVar.a(iOException);
            }
            return Loader.f12949f;
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.b
        public /* synthetic */ void o(Loader.d dVar, long j11, long j12, int i11) {
            o.a(this, dVar, j11, j12, i11);
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.b
        public void p(Loader.d dVar, long j11, long j12) {
            if (this.f13047a != null) {
                if (d.m()) {
                    this.f13047a.onInitialized();
                } else {
                    this.f13047a.a(new IOException(new ConcurrentModificationException()));
                }
            }
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.b
        public void q(Loader.d dVar, long j11, long j12, boolean z10) {
        }
    }

    /* JADX INFO: renamed from: androidx.media3.exoplayer.util.d$d, reason: collision with other inner class name */
    private static final class C0104d implements Loader.d {
        private C0104d() {
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.d
        public void cancelLoad() {
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.d
        public void load() {
            synchronized (d.f13039a) {
                synchronized (d.f13040b) {
                    if (d.f13041c) {
                        return;
                    }
                    long jN = d.n();
                    synchronized (d.f13040b) {
                        long unused = d.f13046h = SystemClock.elapsedRealtime();
                        long unused2 = d.f13042d = jN;
                        boolean unused3 = d.f13041c = true;
                    }
                }
            }
        }
    }

    private static void h(byte b11, byte b12, int i11, long j11) throws IOException {
        if (b11 == 3) {
            throw new IOException("SNTP: Unsynchronized server");
        }
        if (b12 != 4 && b12 != 5) {
            throw new IOException("SNTP: Untrusted mode: " + ((int) b12));
        }
        if (i11 != 0 && i11 <= 15) {
            if (j11 == 0) {
                throw new IOException("SNTP: Zero transmitTime");
            }
        } else {
            throw new IOException("SNTP: Untrusted stratum: " + i11);
        }
    }

    public static long i() {
        long j11;
        synchronized (f13040b) {
            try {
                j11 = f13041c ? f13042d : C.TIME_UNSET;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return j11;
    }

    public static String j() {
        String str;
        synchronized (f13040b) {
            str = f13043e;
        }
        return str;
    }

    public static int k() {
        int i11;
        synchronized (f13040b) {
            i11 = f13044f;
        }
        return i11;
    }

    public static void l(Loader loader, b bVar) {
        if (m()) {
            if (bVar != null) {
                bVar.onInitialized();
            }
        } else {
            if (loader == null) {
                loader = new Loader("SntpClient");
            }
            loader.m(new C0104d(), new c(bVar), 1);
        }
    }

    public static boolean m() {
        boolean z10;
        synchronized (f13040b) {
            try {
                if (f13046h != C.TIME_UNSET && f13045g != C.TIME_UNSET) {
                    f13041c = f13041c && SystemClock.elapsedRealtime() - f13046h < f13045g;
                }
                z10 = f13041c;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long n() {
        DatagramSocket datagramSocket = new DatagramSocket();
        try {
            datagramSocket.setSoTimeout(k());
            InetAddress[] allByName = InetAddress.getAllByName(j());
            int length = allByName.length;
            SocketTimeoutException socketTimeoutException = null;
            int i11 = 0;
            int i12 = 0;
            while (i11 < length) {
                byte[] bArr = new byte[48];
                DatagramPacket datagramPacket = new DatagramPacket(bArr, 48, allByName[i11], Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE);
                bArr[0] = 27;
                long jCurrentTimeMillis = System.currentTimeMillis();
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                q(bArr, 40, jCurrentTimeMillis);
                datagramSocket.send(datagramPacket);
                try {
                    datagramSocket.receive(new DatagramPacket(bArr, 48));
                    long jElapsedRealtime2 = SystemClock.elapsedRealtime();
                    long j11 = jCurrentTimeMillis + (jElapsedRealtime2 - jElapsedRealtime);
                    byte b11 = bArr[0];
                    int i13 = bArr[1] & 255;
                    long jP = p(bArr, 24);
                    long jP2 = p(bArr, 32);
                    long jP3 = p(bArr, 40);
                    h((byte) ((b11 >> 6) & 3), (byte) (b11 & 7), i13, jP3);
                    long j12 = (j11 + (((jP2 - jP) + (jP3 - j11)) / 2)) - jElapsedRealtime2;
                    datagramSocket.close();
                    return j12;
                } catch (SocketTimeoutException e11) {
                    if (socketTimeoutException == null) {
                        socketTimeoutException = e11;
                    } else {
                        socketTimeoutException.addSuppressed(e11);
                    }
                    int i14 = i12 + 1;
                    if (i12 >= 10) {
                        throw ((SocketTimeoutException) androidx.media3.common.util.a.e(socketTimeoutException));
                    }
                    i11++;
                    i12 = i14;
                }
            }
            throw ((SocketTimeoutException) androidx.media3.common.util.a.e(socketTimeoutException));
        } catch (Throwable th2) {
            try {
                datagramSocket.close();
                throw th2;
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
                throw th2;
            }
        }
    }

    private static long o(byte[] bArr, int i11) {
        int i12 = bArr[i11];
        int i13 = bArr[i11 + 1];
        int i14 = bArr[i11 + 2];
        int i15 = bArr[i11 + 3];
        if ((i12 & 128) == 128) {
            i12 = (i12 & 127) + 128;
        }
        if ((i13 & 128) == 128) {
            i13 = (i13 & 127) + 128;
        }
        if ((i14 & 128) == 128) {
            i14 = (i14 & 127) + 128;
        }
        if ((i15 & 128) == 128) {
            i15 = (i15 & 127) + 128;
        }
        return (((long) i12) << 24) + (((long) i13) << 16) + (((long) i14) << 8) + ((long) i15);
    }

    private static long p(byte[] bArr, int i11) {
        long jO = o(bArr, i11);
        long jO2 = o(bArr, i11 + 4);
        if (jO == 0 && jO2 == 0) {
            return 0L;
        }
        return ((jO - 2208988800L) * 1000) + ((jO2 * 1000) / TmcConstants.TEMP_FILE_RUNTIME_MAX_SIZE);
    }

    private static void q(byte[] bArr, int i11, long j11) {
        if (j11 == 0) {
            Arrays.fill(bArr, i11, i11 + 8, (byte) 0);
            return;
        }
        long j12 = j11 / 1000;
        long j13 = j11 - (j12 * 1000);
        long j14 = j12 + 2208988800L;
        bArr[i11] = (byte) (j14 >> 24);
        bArr[i11 + 1] = (byte) (j14 >> 16);
        bArr[i11 + 2] = (byte) (j14 >> 8);
        bArr[i11 + 3] = (byte) j14;
        long j15 = (j13 * TmcConstants.TEMP_FILE_RUNTIME_MAX_SIZE) / 1000;
        bArr[i11 + 4] = (byte) (j15 >> 24);
        bArr[i11 + 5] = (byte) (j15 >> 16);
        bArr[i11 + 6] = (byte) (j15 >> 8);
        bArr[i11 + 7] = (byte) (Math.random() * 255.0d);
    }
}
