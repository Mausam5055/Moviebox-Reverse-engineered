package com.mbridge.msdk.thrid.okhttp.internal.http2;

import com.mbridge.msdk.thrid.okio.s;
import com.mbridge.msdk.thrid.okio.t;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
final class h implements Closeable {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final Logger f38166e = Logger.getLogger(e.class.getName());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.mbridge.msdk.thrid.okio.e f38167a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a f38168b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f38169c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final d.a f38170d;

    static final class a implements s {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final com.mbridge.msdk.thrid.okio.e f38171a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f38172b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        byte f38173c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f38174d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f38175e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        short f38176f;

        a(com.mbridge.msdk.thrid.okio.e eVar) {
            this.f38171a = eVar;
        }

        private void d() throws IOException {
            int i11 = this.f38174d;
            int iA = h.a(this.f38171a);
            this.f38175e = iA;
            this.f38172b = iA;
            byte b11 = (byte) (this.f38171a.readByte() & 255);
            this.f38173c = (byte) (this.f38171a.readByte() & 255);
            Logger logger = h.f38166e;
            if (logger.isLoggable(Level.FINE)) {
                logger.fine(e.a(true, this.f38174d, this.f38172b, b11, this.f38173c));
            }
            int i12 = this.f38171a.readInt() & Integer.MAX_VALUE;
            this.f38174d = i12;
            if (b11 != 9) {
                throw e.b("%s != TYPE_CONTINUATION", Byte.valueOf(b11));
            }
            if (i12 != i11) {
                throw e.b("TYPE_CONTINUATION streamId changed", new Object[0]);
            }
        }

        @Override // com.mbridge.msdk.thrid.okio.s
        public long b(com.mbridge.msdk.thrid.okio.c cVar, long j11) throws IOException {
            while (true) {
                int i11 = this.f38175e;
                if (i11 != 0) {
                    long jB = this.f38171a.b(cVar, Math.min(j11, i11));
                    if (jB == -1) {
                        return -1L;
                    }
                    this.f38175e = (int) (((long) this.f38175e) - jB);
                    return jB;
                }
                this.f38171a.skip(this.f38176f);
                this.f38176f = (short) 0;
                if ((this.f38173c & 4) != 0) {
                    return -1L;
                }
                d();
            }
        }

        @Override // com.mbridge.msdk.thrid.okio.s
        public t b() {
            return this.f38171a.b();
        }

        @Override // com.mbridge.msdk.thrid.okio.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }
    }

    interface b {
        void a();

        void a(int i11, int i12, int i13, boolean z10);

        void a(int i11, int i12, List<c> list) throws IOException;

        void a(int i11, long j11);

        void a(int i11, com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar);

        void a(int i11, com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar, com.mbridge.msdk.thrid.okio.f fVar);

        void a(boolean z10, int i11, int i12);

        void a(boolean z10, int i11, int i12, List<c> list);

        void a(boolean z10, int i11, com.mbridge.msdk.thrid.okio.e eVar, int i12) throws IOException;

        void a(boolean z10, m mVar);
    }

    h(com.mbridge.msdk.thrid.okio.e eVar, boolean z10) {
        this.f38167a = eVar;
        this.f38169c = z10;
        a aVar = new a(eVar);
        this.f38168b = aVar;
        this.f38170d = new d.a(4096, aVar);
    }

    static int a(int i11, byte b11, short s11) throws IOException {
        if ((b11 & 8) != 0) {
            i11--;
        }
        if (s11 <= i11) {
            return (short) (i11 - s11);
        }
        throw e.b("PROTOCOL_ERROR padding %s > remaining length %s", Short.valueOf(s11), Integer.valueOf(i11));
    }

    static int a(com.mbridge.msdk.thrid.okio.e eVar) throws IOException {
        return (eVar.readByte() & 255) | ((eVar.readByte() & 255) << 16) | ((eVar.readByte() & 255) << 8);
    }

    private List<c> a(int i11, short s11, byte b11, int i12) throws IOException {
        a aVar = this.f38168b;
        aVar.f38175e = i11;
        aVar.f38172b = i11;
        aVar.f38176f = s11;
        aVar.f38173c = b11;
        aVar.f38174d = i12;
        this.f38170d.f();
        return this.f38170d.c();
    }

    private void a(b bVar, int i11) throws IOException {
        int i12 = this.f38167a.readInt();
        bVar.a(i11, i12 & Integer.MAX_VALUE, (this.f38167a.readByte() & 255) + 1, (Integer.MIN_VALUE & i12) != 0);
    }

    private void a(b bVar, int i11, byte b11, int i12) throws IOException {
        if (i12 == 0) {
            throw e.b("PROTOCOL_ERROR: TYPE_DATA streamId == 0", new Object[0]);
        }
        boolean z10 = (b11 & 1) != 0;
        if ((b11 & 32) != 0) {
            throw e.b("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
        }
        short s11 = (b11 & 8) != 0 ? (short) (this.f38167a.readByte() & 255) : (short) 0;
        bVar.a(z10, i12, this.f38167a, a(i11, b11, s11));
        this.f38167a.skip(s11);
    }

    private void b(b bVar, int i11, byte b11, int i12) throws IOException {
        if (i11 < 8) {
            throw e.b("TYPE_GOAWAY length < 8: %s", Integer.valueOf(i11));
        }
        if (i12 != 0) {
            throw e.b("TYPE_GOAWAY streamId != 0", new Object[0]);
        }
        int i13 = this.f38167a.readInt();
        int i14 = this.f38167a.readInt();
        int i15 = i11 - 8;
        com.mbridge.msdk.thrid.okhttp.internal.http2.b bVarA = com.mbridge.msdk.thrid.okhttp.internal.http2.b.a(i14);
        if (bVarA == null) {
            throw e.b("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(i14));
        }
        com.mbridge.msdk.thrid.okio.f fVarB = com.mbridge.msdk.thrid.okio.f.f38435e;
        if (i15 > 0) {
            fVarB = this.f38167a.b(i15);
        }
        bVar.a(i13, bVarA, fVarB);
    }

    private void c(b bVar, int i11, byte b11, int i12) throws IOException {
        if (i12 == 0) {
            throw e.b("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
        }
        boolean z10 = (b11 & 1) != 0;
        short s11 = (b11 & 8) != 0 ? (short) (this.f38167a.readByte() & 255) : (short) 0;
        if ((b11 & 32) != 0) {
            a(bVar, i12);
            i11 -= 5;
        }
        bVar.a(z10, i12, -1, a(a(i11, b11, s11), s11, b11, i12));
    }

    private void d(b bVar, int i11, byte b11, int i12) throws IOException {
        if (i11 != 8) {
            throw e.b("TYPE_PING length != 8: %s", Integer.valueOf(i11));
        }
        if (i12 != 0) {
            throw e.b("TYPE_PING streamId != 0", new Object[0]);
        }
        bVar.a((b11 & 1) != 0, this.f38167a.readInt(), this.f38167a.readInt());
    }

    private void e(b bVar, int i11, byte b11, int i12) throws IOException {
        if (i11 != 5) {
            throw e.b("TYPE_PRIORITY length: %d != 5", Integer.valueOf(i11));
        }
        if (i12 == 0) {
            throw e.b("TYPE_PRIORITY streamId == 0", new Object[0]);
        }
        a(bVar, i12);
    }

    private void f(b bVar, int i11, byte b11, int i12) throws IOException {
        if (i12 == 0) {
            throw e.b("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
        }
        short s11 = (b11 & 8) != 0 ? (short) (this.f38167a.readByte() & 255) : (short) 0;
        bVar.a(i12, this.f38167a.readInt() & Integer.MAX_VALUE, a(a(i11 - 4, b11, s11), s11, b11, i12));
    }

    private void g(b bVar, int i11, byte b11, int i12) throws IOException {
        if (i11 != 4) {
            throw e.b("TYPE_RST_STREAM length: %d != 4", Integer.valueOf(i11));
        }
        if (i12 == 0) {
            throw e.b("TYPE_RST_STREAM streamId == 0", new Object[0]);
        }
        int i13 = this.f38167a.readInt();
        com.mbridge.msdk.thrid.okhttp.internal.http2.b bVarA = com.mbridge.msdk.thrid.okhttp.internal.http2.b.a(i13);
        if (bVarA == null) {
            throw e.b("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(i13));
        }
        bVar.a(i12, bVarA);
    }

    private void h(b bVar, int i11, byte b11, int i12) throws IOException {
        if (i12 != 0) {
            throw e.b("TYPE_SETTINGS streamId != 0", new Object[0]);
        }
        if ((b11 & 1) != 0) {
            if (i11 != 0) {
                throw e.b("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
            }
            bVar.a();
            return;
        }
        if (i11 % 6 != 0) {
            throw e.b("TYPE_SETTINGS length %% 6 != 0: %s", Integer.valueOf(i11));
        }
        m mVar = new m();
        for (int i13 = 0; i13 < i11; i13 += 6) {
            int i14 = this.f38167a.readShort() & 65535;
            int i15 = this.f38167a.readInt();
            if (i14 == 2) {
                if (i15 != 0 && i15 != 1) {
                    throw e.b("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
                }
            } else if (i14 == 3) {
                i14 = 4;
            } else if (i14 != 4) {
                if (i14 == 5 && (i15 < 16384 || i15 > 16777215)) {
                    throw e.b("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", Integer.valueOf(i15));
                }
            } else {
                if (i15 < 0) {
                    throw e.b("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
                }
                i14 = 7;
            }
            mVar.a(i14, i15);
        }
        bVar.a(false, mVar);
    }

    private void i(b bVar, int i11, byte b11, int i12) throws IOException {
        if (i11 != 4) {
            throw e.b("TYPE_WINDOW_UPDATE length !=4: %s", Integer.valueOf(i11));
        }
        long j11 = ((long) this.f38167a.readInt()) & 2147483647L;
        if (j11 == 0) {
            throw e.b("windowSizeIncrement was 0", Long.valueOf(j11));
        }
        bVar.a(i12, j11);
    }

    public void a(b bVar) throws IOException {
        if (this.f38169c) {
            if (!a(true, bVar)) {
                throw e.b("Required SETTINGS preface not received", new Object[0]);
            }
            return;
        }
        com.mbridge.msdk.thrid.okio.e eVar = this.f38167a;
        com.mbridge.msdk.thrid.okio.f fVar = e.f38082a;
        com.mbridge.msdk.thrid.okio.f fVarB = eVar.b(fVar.e());
        Logger logger = f38166e;
        if (logger.isLoggable(Level.FINE)) {
            logger.fine(com.mbridge.msdk.thrid.okhttp.internal.c.a("<< CONNECTION %s", fVarB.b()));
        }
        if (!fVar.equals(fVarB)) {
            throw e.b("Expected a connection header but was %s", fVarB.h());
        }
    }

    public boolean a(boolean z10, b bVar) throws IOException {
        try {
            this.f38167a.e(9L);
            int iA = a(this.f38167a);
            if (iA < 0 || iA > 16384) {
                throw e.b("FRAME_SIZE_ERROR: %s", Integer.valueOf(iA));
            }
            byte b11 = (byte) (this.f38167a.readByte() & 255);
            if (z10 && b11 != 4) {
                throw e.b("Expected a SETTINGS frame but was %s", Byte.valueOf(b11));
            }
            byte b12 = (byte) (this.f38167a.readByte() & 255);
            int i11 = this.f38167a.readInt() & Integer.MAX_VALUE;
            Logger logger = f38166e;
            if (logger.isLoggable(Level.FINE)) {
                logger.fine(e.a(true, i11, iA, b11, b12));
            }
            switch (b11) {
                case 0:
                    a(bVar, iA, b12, i11);
                    return true;
                case 1:
                    c(bVar, iA, b12, i11);
                    return true;
                case 2:
                    e(bVar, iA, b12, i11);
                    return true;
                case 3:
                    g(bVar, iA, b12, i11);
                    return true;
                case 4:
                    h(bVar, iA, b12, i11);
                    return true;
                case 5:
                    f(bVar, iA, b12, i11);
                    return true;
                case 6:
                    d(bVar, iA, b12, i11);
                    return true;
                case 7:
                    b(bVar, iA, b12, i11);
                    return true;
                case 8:
                    i(bVar, iA, b12, i11);
                    return true;
                default:
                    this.f38167a.skip(iA);
                    return true;
            }
        } catch (IOException unused) {
            return false;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f38167a.close();
    }
}
