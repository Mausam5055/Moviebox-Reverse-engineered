package com.google.android.exoplayer2.source.rtsp;

import android.os.Handler;
import android.os.HandlerThread;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.common.collect.ImmutableList;
import com.google.common.primitives.Ints;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
final class u implements Closeable {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final Charset f26488g = com.google.common.base.c.f30228c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d f26489a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Loader f26490b = new Loader("ExoPlayer:RtspMessageChannel:ReceiverLoader");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f26491c = Collections.synchronizedMap(new HashMap());

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private g f26492d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Socket f26493e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile boolean f26494f;

    public interface b {
        void f(byte[] bArr);
    }

    private final class c implements Loader.b {
        private c() {
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.b
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void j(f fVar, long j11, long j12, boolean z10) {
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.b
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void l(f fVar, long j11, long j12) {
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.b
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public Loader.c n(f fVar, long j11, long j12, IOException iOException, int i11) {
            if (!u.this.f26494f) {
                u.this.f26489a.a(iOException);
            }
            return Loader.f27246f;
        }
    }

    public interface d {
        void a(Exception exc);

        void b(List list, Exception exc);

        void c(List list);
    }

    private static final class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List f26496a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f26497b = 1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private long f26498c;

        private ImmutableList a(byte[] bArr) {
            com.google.android.exoplayer2.util.a.g(this.f26497b == 3);
            if (bArr.length <= 0 || bArr[bArr.length - 1] != 10) {
                throw new IllegalArgumentException("Message body is empty or does not end with a LF.");
            }
            this.f26496a.add((bArr.length <= 1 || bArr[bArr.length + (-2)] != 13) ? new String(bArr, 0, bArr.length - 1, u.f26488g) : new String(bArr, 0, bArr.length - 2, u.f26488g));
            ImmutableList immutableListCopyOf = ImmutableList.copyOf((Collection) this.f26496a);
            e();
            return immutableListCopyOf;
        }

        private ImmutableList b(byte[] bArr) {
            com.google.android.exoplayer2.util.a.a(bArr.length >= 2 && bArr[bArr.length - 2] == 13 && bArr[bArr.length - 1] == 10);
            String str = new String(bArr, 0, bArr.length - 2, u.f26488g);
            this.f26496a.add(str);
            int i11 = this.f26497b;
            if (i11 == 1) {
                if (!y.e(str)) {
                    return null;
                }
                this.f26497b = 2;
                return null;
            }
            if (i11 != 2) {
                throw new IllegalStateException();
            }
            long jF = y.f(str);
            if (jF != -1) {
                this.f26498c = jF;
            }
            if (!str.isEmpty()) {
                return null;
            }
            if (this.f26498c > 0) {
                this.f26497b = 3;
                return null;
            }
            ImmutableList immutableListCopyOf = ImmutableList.copyOf((Collection) this.f26496a);
            e();
            return immutableListCopyOf;
        }

        private static byte[] d(byte b11, DataInputStream dataInputStream) throws IOException {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = {b11, dataInputStream.readByte()};
            byteArrayOutputStream.write(bArr);
            while (true) {
                if (bArr[0] == 13 && bArr[1] == 10) {
                    return byteArrayOutputStream.toByteArray();
                }
                bArr[0] = bArr[1];
                byte b12 = dataInputStream.readByte();
                bArr[1] = b12;
                byteArrayOutputStream.write(b12);
            }
        }

        private void e() {
            this.f26496a.clear();
            this.f26497b = 1;
            this.f26498c = 0L;
        }

        public ImmutableList c(byte b11, DataInputStream dataInputStream) throws IOException {
            ImmutableList immutableListB = b(d(b11, dataInputStream));
            while (immutableListB == null) {
                if (this.f26497b == 3) {
                    long j11 = this.f26498c;
                    if (j11 <= 0) {
                        throw new IllegalStateException("Expects a greater than zero Content-Length.");
                    }
                    int iD = Ints.d(j11);
                    com.google.android.exoplayer2.util.a.g(iD != -1);
                    byte[] bArr = new byte[iD];
                    dataInputStream.readFully(bArr, 0, iD);
                    immutableListB = a(bArr);
                } else {
                    immutableListB = b(d(dataInputStream.readByte(), dataInputStream));
                }
            }
            return immutableListB;
        }
    }

    private final class f implements Loader.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final DataInputStream f26499a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final e f26500b = new e();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private volatile boolean f26501c;

        public f(InputStream inputStream) {
            this.f26499a = new DataInputStream(inputStream);
        }

        private void a() throws IOException {
            int unsignedByte = this.f26499a.readUnsignedByte();
            int unsignedShort = this.f26499a.readUnsignedShort();
            byte[] bArr = new byte[unsignedShort];
            this.f26499a.readFully(bArr, 0, unsignedShort);
            b bVar = (b) u.this.f26491c.get(Integer.valueOf(unsignedByte));
            if (bVar == null || u.this.f26494f) {
                return;
            }
            bVar.f(bArr);
        }

        private void b(byte b11) {
            if (u.this.f26494f) {
                return;
            }
            u.this.f26489a.c(this.f26500b.c(b11, this.f26499a));
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.d
        public void cancelLoad() {
            this.f26501c = true;
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.d
        public void load() throws IOException {
            while (!this.f26501c) {
                byte b11 = this.f26499a.readByte();
                if (b11 == 36) {
                    a();
                } else {
                    b(b11);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class g implements Closeable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final OutputStream f26503a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final HandlerThread f26504b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Handler f26505c;

        public g(OutputStream outputStream) {
            this.f26503a = outputStream;
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:RtspMessageChannel:Sender");
            this.f26504b = handlerThread;
            handlerThread.start();
            this.f26505c = new Handler(handlerThread.getLooper());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(byte[] bArr, List list) {
            try {
                this.f26503a.write(bArr);
            } catch (Exception e11) {
                if (u.this.f26494f) {
                    return;
                }
                u.this.f26489a.b(list, e11);
            }
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            Handler handler = this.f26505c;
            final HandlerThread handlerThread = this.f26504b;
            Objects.requireNonNull(handlerThread);
            handler.post(new Runnable() { // from class: com.google.android.exoplayer2.source.rtsp.x
                @Override // java.lang.Runnable
                public final void run() {
                    handlerThread.quit();
                }
            });
            try {
                this.f26504b.join();
            } catch (InterruptedException unused) {
                this.f26504b.interrupt();
            }
        }

        public void h(final List list) {
            final byte[] bArrA = y.a(list);
            this.f26505c.post(new Runnable() { // from class: com.google.android.exoplayer2.source.rtsp.w
                @Override // java.lang.Runnable
                public final void run() {
                    this.f26507a.d(bArrA, list);
                }
            });
        }
    }

    public u(d dVar) {
        this.f26489a = dVar;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f26494f) {
            return;
        }
        try {
            g gVar = this.f26492d;
            if (gVar != null) {
                gVar.close();
            }
            this.f26490b.k();
            Socket socket = this.f26493e;
            if (socket != null) {
                socket.close();
            }
        } finally {
            this.f26494f = true;
        }
    }

    public void i(Socket socket) {
        this.f26493e = socket;
        this.f26492d = new g(socket.getOutputStream());
        this.f26490b.m(new f(socket.getInputStream()), new c(), 0);
    }

    public void k(int i11, b bVar) {
        this.f26491c.put(Integer.valueOf(i11), bVar);
    }

    public void l(List list) {
        com.google.android.exoplayer2.util.a.i(this.f26492d);
        this.f26492d.h(list);
    }
}
