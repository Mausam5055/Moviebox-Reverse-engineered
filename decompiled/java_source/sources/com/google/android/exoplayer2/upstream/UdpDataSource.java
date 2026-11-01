package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MulticastSocket;
import java.net.SocketTimeoutException;

/* JADX INFO: loaded from: classes3.dex */
public final class UdpDataSource extends f {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f27260e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final byte[] f27261f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final DatagramPacket f27262g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Uri f27263h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private DatagramSocket f27264i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private MulticastSocket f27265j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private InetAddress f27266k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f27267l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f27268m;

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
        this.f27260e = i12;
        byte[] bArr = new byte[i11];
        this.f27261f = bArr;
        this.f27262g = new DatagramPacket(bArr, 0, i11);
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public long a(n nVar) throws UdpDataSourceException {
        Uri uri = nVar.f27437a;
        this.f27263h = uri;
        String str = (String) com.google.android.exoplayer2.util.a.e(uri.getHost());
        int port = this.f27263h.getPort();
        j(nVar);
        try {
            this.f27266k = InetAddress.getByName(str);
            InetSocketAddress inetSocketAddress = new InetSocketAddress(this.f27266k, port);
            if (this.f27266k.isMulticastAddress()) {
                MulticastSocket multicastSocket = new MulticastSocket(inetSocketAddress);
                this.f27265j = multicastSocket;
                multicastSocket.joinGroup(this.f27266k);
                this.f27264i = this.f27265j;
            } else {
                this.f27264i = new DatagramSocket(inetSocketAddress);
            }
            this.f27264i.setSoTimeout(this.f27260e);
            this.f27267l = true;
            k(nVar);
            return -1L;
        } catch (IOException e11) {
            throw new UdpDataSourceException(e11, 2001);
        } catch (SecurityException e12) {
            throw new UdpDataSourceException(e12, 2006);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public void close() {
        this.f27263h = null;
        MulticastSocket multicastSocket = this.f27265j;
        if (multicastSocket != null) {
            try {
                multicastSocket.leaveGroup((InetAddress) com.google.android.exoplayer2.util.a.e(this.f27266k));
            } catch (IOException unused) {
            }
            this.f27265j = null;
        }
        DatagramSocket datagramSocket = this.f27264i;
        if (datagramSocket != null) {
            datagramSocket.close();
            this.f27264i = null;
        }
        this.f27266k = null;
        this.f27268m = 0;
        if (this.f27267l) {
            this.f27267l = false;
            i();
        }
    }

    public int d() {
        DatagramSocket datagramSocket = this.f27264i;
        if (datagramSocket == null) {
            return -1;
        }
        return datagramSocket.getLocalPort();
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public Uri getUri() {
        return this.f27263h;
    }

    @Override // com.google.android.exoplayer2.upstream.g
    public int read(byte[] bArr, int i11, int i12) throws UdpDataSourceException {
        if (i12 == 0) {
            return 0;
        }
        if (this.f27268m == 0) {
            try {
                ((DatagramSocket) com.google.android.exoplayer2.util.a.e(this.f27264i)).receive(this.f27262g);
                int length = this.f27262g.getLength();
                this.f27268m = length;
                h(length);
            } catch (SocketTimeoutException e11) {
                throw new UdpDataSourceException(e11, 2002);
            } catch (IOException e12) {
                throw new UdpDataSourceException(e12, 2001);
            }
        }
        int length2 = this.f27262g.getLength();
        int i13 = this.f27268m;
        int iMin = Math.min(i13, i12);
        System.arraycopy(this.f27261f, length2 - i13, bArr, i11, iMin);
        this.f27268m -= iMin;
        return iMin;
    }
}
