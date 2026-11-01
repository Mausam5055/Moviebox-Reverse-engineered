package androidx.media3.datasource;

import android.net.Uri;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MulticastSocket;
import java.net.SocketTimeoutException;
import w1.h;

/* JADX INFO: loaded from: classes2.dex */
public final class UdpDataSource extends w1.a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f10709e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final byte[] f10710f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final DatagramPacket f10711g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Uri f10712h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private DatagramSocket f10713i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private MulticastSocket f10714j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private InetAddress f10715k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f10716l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f10717m;

    public static final class UdpDataSourceException extends DataSourceException {
        public UdpDataSourceException(Throwable th2, int i11) {
            super(th2, i11);
        }
    }

    public UdpDataSource() {
        this(2000);
    }

    public UdpDataSource(int i11) {
        this(i11, 8000);
    }

    public UdpDataSource(int i11, int i12) {
        super(true);
        this.f10709e = i12;
        byte[] bArr = new byte[i11];
        this.f10710f = bArr;
        this.f10711g = new DatagramPacket(bArr, 0, i11);
    }

    @Override // androidx.media3.datasource.a
    public long a(h hVar) throws UdpDataSourceException {
        Uri uri = hVar.f77511a;
        this.f10712h = uri;
        String str = (String) androidx.media3.common.util.a.e(uri.getHost());
        int port = this.f10712h.getPort();
        f(hVar);
        try {
            this.f10715k = InetAddress.getByName(str);
            InetSocketAddress inetSocketAddress = new InetSocketAddress(this.f10715k, port);
            if (this.f10715k.isMulticastAddress()) {
                MulticastSocket multicastSocket = new MulticastSocket(inetSocketAddress);
                this.f10714j = multicastSocket;
                multicastSocket.joinGroup(this.f10715k);
                this.f10713i = this.f10714j;
            } else {
                this.f10713i = new DatagramSocket(inetSocketAddress);
            }
            this.f10713i.setSoTimeout(this.f10709e);
            this.f10716l = true;
            g(hVar);
            return -1L;
        } catch (IOException e11) {
            throw new UdpDataSourceException(e11, 2001);
        } catch (SecurityException e12) {
            throw new UdpDataSourceException(e12, 2006);
        }
    }

    @Override // androidx.media3.datasource.a
    public void close() {
        this.f10712h = null;
        MulticastSocket multicastSocket = this.f10714j;
        if (multicastSocket != null) {
            try {
                multicastSocket.leaveGroup((InetAddress) androidx.media3.common.util.a.e(this.f10715k));
            } catch (IOException unused) {
            }
            this.f10714j = null;
        }
        DatagramSocket datagramSocket = this.f10713i;
        if (datagramSocket != null) {
            datagramSocket.close();
            this.f10713i = null;
        }
        this.f10715k = null;
        this.f10717m = 0;
        if (this.f10716l) {
            this.f10716l = false;
            e();
        }
    }

    @Override // androidx.media3.datasource.a
    public Uri getUri() {
        return this.f10712h;
    }

    @Override // androidx.media3.common.j
    public int read(byte[] bArr, int i11, int i12) throws UdpDataSourceException {
        if (i12 == 0) {
            return 0;
        }
        if (this.f10717m == 0) {
            try {
                ((DatagramSocket) androidx.media3.common.util.a.e(this.f10713i)).receive(this.f10711g);
                int length = this.f10711g.getLength();
                this.f10717m = length;
                d(length);
            } catch (SocketTimeoutException e11) {
                throw new UdpDataSourceException(e11, 2002);
            } catch (IOException e12) {
                throw new UdpDataSourceException(e12, 2001);
            }
        }
        int length2 = this.f10711g.getLength();
        int i13 = this.f10717m;
        int iMin = Math.min(i13, i12);
        System.arraycopy(this.f10710f, length2 - i13, bArr, i11, iMin);
        this.f10717m -= iMin;
        return iMin;
    }
}
