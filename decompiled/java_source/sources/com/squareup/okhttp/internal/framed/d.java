package com.squareup.okhttp.internal.framed;

import com.squareup.okhttp.Protocol;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import okio.Source;
import okio.Timeout;

/* JADX INFO: loaded from: classes5.dex */
public final class d implements Variant {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Logger f40384a = Logger.getLogger(b.class.getName());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final ByteString f40385b = ByteString.encodeUtf8("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");

    static final class a implements Source {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final BufferedSource f40386a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f40387b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        byte f40388c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f40389d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f40390e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        short f40391f;

        public a(BufferedSource bufferedSource) {
            this.f40386a = bufferedSource;
        }

        private void d() throws IOException {
            int i11 = this.f40389d;
            int iK = d.k(this.f40386a);
            this.f40390e = iK;
            this.f40387b = iK;
            byte b11 = (byte) (this.f40386a.readByte() & 255);
            this.f40388c = (byte) (this.f40386a.readByte() & 255);
            if (d.f40384a.isLoggable(Level.FINE)) {
                d.f40384a.fine(b.b(true, this.f40389d, this.f40387b, b11, this.f40388c));
            }
            int i12 = this.f40386a.readInt() & Integer.MAX_VALUE;
            this.f40389d = i12;
            if (b11 != 9) {
                throw d.i("%s != TYPE_CONTINUATION", Byte.valueOf(b11));
            }
            if (i12 != i11) {
                throw d.i("TYPE_CONTINUATION streamId changed", new Object[0]);
            }
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // okio.Source
        public long read(Buffer buffer, long j11) throws IOException {
            while (true) {
                int i11 = this.f40390e;
                if (i11 != 0) {
                    long j12 = this.f40386a.read(buffer, Math.min(j11, i11));
                    if (j12 == -1) {
                        return -1L;
                    }
                    this.f40390e = (int) (((long) this.f40390e) - j12);
                    return j12;
                }
                this.f40386a.skip(this.f40391f);
                this.f40391f = (short) 0;
                if ((this.f40388c & 4) != 0) {
                    return -1L;
                }
                d();
            }
        }

        @Override // okio.Source
        /* JADX INFO: renamed from: timeout */
        public Timeout getTimeout() {
            return this.f40386a.getTimeout();
        }
    }

    static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final String[] f40392a = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final String[] f40393b = new String[64];

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final String[] f40394c = new String[256];

        static {
            int i11 = 0;
            int i12 = 0;
            while (true) {
                String[] strArr = f40394c;
                if (i12 >= strArr.length) {
                    break;
                }
                strArr[i12] = String.format("%8s", Integer.toBinaryString(i12)).replace(' ', '0');
                i12++;
            }
            String[] strArr2 = f40393b;
            strArr2[0] = "";
            strArr2[1] = "END_STREAM";
            int[] iArr = {1};
            strArr2[8] = "PADDED";
            int i13 = iArr[0];
            strArr2[i13 | 8] = strArr2[i13] + "|PADDED";
            strArr2[4] = "END_HEADERS";
            strArr2[32] = "PRIORITY";
            strArr2[36] = "END_HEADERS|PRIORITY";
            int[] iArr2 = {4, 32, 36};
            for (int i14 = 0; i14 < 3; i14++) {
                int i15 = iArr2[i14];
                int i16 = iArr[0];
                String[] strArr3 = f40393b;
                int i17 = i16 | i15;
                strArr3[i17] = strArr3[i16] + '|' + strArr3[i15];
                strArr3[i17 | 8] = strArr3[i16] + '|' + strArr3[i15] + "|PADDED";
            }
            while (true) {
                String[] strArr4 = f40393b;
                if (i11 >= strArr4.length) {
                    return;
                }
                if (strArr4[i11] == null) {
                    strArr4[i11] = f40394c[i11];
                }
                i11++;
            }
        }

        static String a(byte b11, byte b12) {
            if (b12 == 0) {
                return "";
            }
            if (b11 != 2 && b11 != 3) {
                if (b11 == 4 || b11 == 6) {
                    return b12 == 1 ? "ACK" : f40394c[b12];
                }
                if (b11 != 7 && b11 != 8) {
                    String[] strArr = f40393b;
                    String str = b12 < strArr.length ? strArr[b12] : f40394c[b12];
                    if (b11 != 5 || (b12 & 4) == 0) {
                        return (b11 != 0 || (b12 & 32) == 0) ? str : str.replace("PRIORITY", "COMPRESSED");
                    }
                    return str.replace("HEADERS", "PUSH_PROMISE");
                }
            }
            return f40394c[b12];
        }

        static String b(boolean z10, int i11, int i12, byte b11, byte b12) {
            String[] strArr = f40392a;
            return String.format("%s 0x%08x %5d %-13s %s", z10 ? "<<" : ">>", Integer.valueOf(i11), Integer.valueOf(i12), b11 < strArr.length ? strArr[b11] : String.format("0x%02x", Byte.valueOf(b11)), a(b11, b12));
        }
    }

    static final class c implements FrameReader {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final BufferedSource f40395a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final a f40396b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f40397c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final com.squareup.okhttp.internal.framed.c.a f40398d;

        c(BufferedSource bufferedSource, int i11, boolean z10) {
            this.f40395a = bufferedSource;
            this.f40397c = z10;
            a aVar = new a(bufferedSource);
            this.f40396b = aVar;
            this.f40398d = new com.squareup.okhttp.internal.framed.c.a(i11, aVar);
        }

        private void b(FrameReader.Handler handler, int i11, byte b11, int i12) throws IOException {
            boolean z10 = (b11 & 1) != 0;
            if ((b11 & 32) != 0) {
                throw d.i("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
            }
            short s11 = (b11 & 8) != 0 ? (short) (this.f40395a.readByte() & 255) : (short) 0;
            handler.data(z10, i12, this.f40395a, d.j(i11, b11, s11));
            this.f40395a.skip(s11);
        }

        private void d(FrameReader.Handler handler, int i11, byte b11, int i12) throws IOException {
            if (i11 < 8) {
                throw d.i("TYPE_GOAWAY length < 8: %s", Integer.valueOf(i11));
            }
            if (i12 != 0) {
                throw d.i("TYPE_GOAWAY streamId != 0", new Object[0]);
            }
            int i13 = this.f40395a.readInt();
            int i14 = this.f40395a.readInt();
            int i15 = i11 - 8;
            ErrorCode errorCodeFromHttp2 = ErrorCode.fromHttp2(i14);
            if (errorCodeFromHttp2 == null) {
                throw d.i("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(i14));
            }
            ByteString byteString = ByteString.EMPTY;
            if (i15 > 0) {
                byteString = this.f40395a.readByteString(i15);
            }
            handler.goAway(i13, errorCodeFromHttp2, byteString);
        }

        private List h(int i11, short s11, byte b11, int i12) throws IOException {
            a aVar = this.f40396b;
            aVar.f40390e = i11;
            aVar.f40387b = i11;
            aVar.f40391f = s11;
            aVar.f40388c = b11;
            aVar.f40389d = i12;
            this.f40398d.l();
            return this.f40398d.e();
        }

        private void i(FrameReader.Handler handler, int i11, byte b11, int i12) throws IOException {
            if (i12 == 0) {
                throw d.i("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
            }
            boolean z10 = (b11 & 1) != 0;
            short s11 = (b11 & 8) != 0 ? (short) (this.f40395a.readByte() & 255) : (short) 0;
            if ((b11 & 32) != 0) {
                l(handler, i12);
                i11 -= 5;
            }
            handler.headers(false, z10, i12, -1, h(d.j(i11, b11, s11), s11, b11, i12), HeadersMode.HTTP_20_HEADERS);
        }

        private void k(FrameReader.Handler handler, int i11, byte b11, int i12) throws IOException {
            if (i11 != 8) {
                throw d.i("TYPE_PING length != 8: %s", Integer.valueOf(i11));
            }
            if (i12 != 0) {
                throw d.i("TYPE_PING streamId != 0", new Object[0]);
            }
            handler.ping((b11 & 1) != 0, this.f40395a.readInt(), this.f40395a.readInt());
        }

        private void l(FrameReader.Handler handler, int i11) throws IOException {
            int i12 = this.f40395a.readInt();
            handler.priority(i11, i12 & Integer.MAX_VALUE, (this.f40395a.readByte() & 255) + 1, (Integer.MIN_VALUE & i12) != 0);
        }

        private void m(FrameReader.Handler handler, int i11, byte b11, int i12) throws IOException {
            if (i11 != 5) {
                throw d.i("TYPE_PRIORITY length: %d != 5", Integer.valueOf(i11));
            }
            if (i12 == 0) {
                throw d.i("TYPE_PRIORITY streamId == 0", new Object[0]);
            }
            l(handler, i12);
        }

        private void n(FrameReader.Handler handler, int i11, byte b11, int i12) throws IOException {
            if (i12 == 0) {
                throw d.i("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
            }
            short s11 = (b11 & 8) != 0 ? (short) (this.f40395a.readByte() & 255) : (short) 0;
            handler.pushPromise(i12, this.f40395a.readInt() & Integer.MAX_VALUE, h(d.j(i11 - 4, b11, s11), s11, b11, i12));
        }

        private void o(FrameReader.Handler handler, int i11, byte b11, int i12) throws IOException {
            if (i11 != 4) {
                throw d.i("TYPE_RST_STREAM length: %d != 4", Integer.valueOf(i11));
            }
            if (i12 == 0) {
                throw d.i("TYPE_RST_STREAM streamId == 0", new Object[0]);
            }
            int i13 = this.f40395a.readInt();
            ErrorCode errorCodeFromHttp2 = ErrorCode.fromHttp2(i13);
            if (errorCodeFromHttp2 == null) {
                throw d.i("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(i13));
            }
            handler.rstStream(i12, errorCodeFromHttp2);
        }

        private void p(FrameReader.Handler handler, int i11, byte b11, int i12) throws IOException {
            if (i12 != 0) {
                throw d.i("TYPE_SETTINGS streamId != 0", new Object[0]);
            }
            if ((b11 & 1) != 0) {
                if (i11 != 0) {
                    throw d.i("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
                }
                handler.ackSettings();
                return;
            }
            if (i11 % 6 != 0) {
                throw d.i("TYPE_SETTINGS length %% 6 != 0: %s", Integer.valueOf(i11));
            }
            h hVar = new h();
            for (int i13 = 0; i13 < i11; i13 += 6) {
                short s11 = this.f40395a.readShort();
                int i14 = this.f40395a.readInt();
                switch (s11) {
                    case 1:
                    case 6:
                        break;
                    case 2:
                        if (i14 != 0 && i14 != 1) {
                            throw d.i("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
                        }
                        break;
                        break;
                    case 3:
                        s11 = 4;
                        break;
                    case 4:
                        if (i14 < 0) {
                            throw d.i("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
                        }
                        s11 = 7;
                        break;
                        break;
                    case 5:
                        if (i14 < 16384 || i14 > 16777215) {
                            throw d.i("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", Integer.valueOf(i14));
                        }
                        break;
                        break;
                    default:
                        throw d.i("PROTOCOL_ERROR invalid settings id: %s", Short.valueOf(s11));
                }
                hVar.l(s11, 0, i14);
            }
            handler.settings(false, hVar);
            if (hVar.d() >= 0) {
                this.f40398d.g(hVar.d());
            }
        }

        private void q(FrameReader.Handler handler, int i11, byte b11, int i12) throws IOException {
            if (i11 != 4) {
                throw d.i("TYPE_WINDOW_UPDATE length !=4: %s", Integer.valueOf(i11));
            }
            long j11 = ((long) this.f40395a.readInt()) & 2147483647L;
            if (j11 == 0) {
                throw d.i("windowSizeIncrement was 0", Long.valueOf(j11));
            }
            handler.windowUpdate(i12, j11);
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f40395a.close();
        }

        @Override // com.squareup.okhttp.internal.framed.FrameReader
        public boolean nextFrame(FrameReader.Handler handler) throws IOException {
            try {
                this.f40395a.require(9L);
                int iK = d.k(this.f40395a);
                if (iK < 0 || iK > 16384) {
                    throw d.i("FRAME_SIZE_ERROR: %s", Integer.valueOf(iK));
                }
                byte b11 = (byte) (this.f40395a.readByte() & 255);
                byte b12 = (byte) (this.f40395a.readByte() & 255);
                int i11 = this.f40395a.readInt() & Integer.MAX_VALUE;
                if (d.f40384a.isLoggable(Level.FINE)) {
                    d.f40384a.fine(b.b(true, i11, iK, b11, b12));
                }
                switch (b11) {
                    case 0:
                        b(handler, iK, b12, i11);
                        return true;
                    case 1:
                        i(handler, iK, b12, i11);
                        return true;
                    case 2:
                        m(handler, iK, b12, i11);
                        return true;
                    case 3:
                        o(handler, iK, b12, i11);
                        return true;
                    case 4:
                        p(handler, iK, b12, i11);
                        return true;
                    case 5:
                        n(handler, iK, b12, i11);
                        return true;
                    case 6:
                        k(handler, iK, b12, i11);
                        return true;
                    case 7:
                        d(handler, iK, b12, i11);
                        return true;
                    case 8:
                        q(handler, iK, b12, i11);
                        return true;
                    default:
                        this.f40395a.skip(iK);
                        return true;
                }
            } catch (IOException unused) {
                return false;
            }
        }

        @Override // com.squareup.okhttp.internal.framed.FrameReader
        public void readConnectionPreface() throws IOException {
            if (this.f40397c) {
                return;
            }
            ByteString byteString = this.f40395a.readByteString(d.f40385b.size());
            if (d.f40384a.isLoggable(Level.FINE)) {
                d.f40384a.fine(String.format("<< CONNECTION %s", byteString.hex()));
            }
            if (!d.f40385b.equals(byteString)) {
                throw d.i("Expected a connection header but was %s", byteString.utf8());
            }
        }
    }

    /* JADX INFO: renamed from: com.squareup.okhttp.internal.framed.d$d, reason: collision with other inner class name */
    static final class C0579d implements FrameWriter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final BufferedSink f40399a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f40400b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Buffer f40401c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final com.squareup.okhttp.internal.framed.c.b f40402d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f40403e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f40404f;

        C0579d(BufferedSink bufferedSink, boolean z10) {
            this.f40399a = bufferedSink;
            this.f40400b = z10;
            Buffer buffer = new Buffer();
            this.f40401c = buffer;
            this.f40402d = new com.squareup.okhttp.internal.framed.c.b(buffer);
            this.f40403e = 16384;
        }

        private void i(int i11, long j11) throws IOException {
            while (j11 > 0) {
                int iMin = (int) Math.min(this.f40403e, j11);
                long j12 = iMin;
                j11 -= j12;
                d(i11, iMin, (byte) 9, j11 == 0 ? (byte) 4 : (byte) 0);
                this.f40399a.write(this.f40401c, j12);
            }
        }

        @Override // com.squareup.okhttp.internal.framed.FrameWriter
        public synchronized void ackSettings(h hVar) {
            if (this.f40404f) {
                throw new IOException("closed");
            }
            this.f40403e = hVar.g(this.f40403e);
            d(0, 0, (byte) 4, (byte) 1);
            this.f40399a.flush();
        }

        void b(int i11, byte b11, Buffer buffer, int i12) throws IOException {
            d(i11, i12, (byte) 0, b11);
            if (i12 > 0) {
                this.f40399a.write(buffer, i12);
            }
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public synchronized void close() {
            this.f40404f = true;
            this.f40399a.close();
        }

        @Override // com.squareup.okhttp.internal.framed.FrameWriter
        public synchronized void connectionPreface() {
            try {
                if (this.f40404f) {
                    throw new IOException("closed");
                }
                if (this.f40400b) {
                    if (d.f40384a.isLoggable(Level.FINE)) {
                        d.f40384a.fine(String.format(">> CONNECTION %s", d.f40385b.hex()));
                    }
                    this.f40399a.write(d.f40385b.toByteArray());
                    this.f40399a.flush();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }

        void d(int i11, int i12, byte b11, byte b12) throws IOException {
            if (d.f40384a.isLoggable(Level.FINE)) {
                d.f40384a.fine(b.b(false, i11, i12, b11, b12));
            }
            int i13 = this.f40403e;
            if (i12 > i13) {
                throw d.h("FRAME_SIZE_ERROR length > %d: %d", Integer.valueOf(i13), Integer.valueOf(i12));
            }
            if ((Integer.MIN_VALUE & i11) != 0) {
                throw d.h("reserved bit set: %s", Integer.valueOf(i11));
            }
            d.l(this.f40399a, i12);
            this.f40399a.writeByte(b11 & 255);
            this.f40399a.writeByte(b12 & 255);
            this.f40399a.writeInt(i11 & Integer.MAX_VALUE);
        }

        @Override // com.squareup.okhttp.internal.framed.FrameWriter
        public synchronized void data(boolean z10, int i11, Buffer buffer, int i12) {
            if (this.f40404f) {
                throw new IOException("closed");
            }
            b(i11, z10 ? (byte) 1 : (byte) 0, buffer, i12);
        }

        @Override // com.squareup.okhttp.internal.framed.FrameWriter
        public synchronized void flush() {
            if (this.f40404f) {
                throw new IOException("closed");
            }
            this.f40399a.flush();
        }

        @Override // com.squareup.okhttp.internal.framed.FrameWriter
        public synchronized void goAway(int i11, ErrorCode errorCode, byte[] bArr) {
            try {
                if (this.f40404f) {
                    throw new IOException("closed");
                }
                if (errorCode.httpCode == -1) {
                    throw d.h("errorCode.httpCode == -1", new Object[0]);
                }
                d(0, bArr.length + 8, (byte) 7, (byte) 0);
                this.f40399a.writeInt(i11);
                this.f40399a.writeInt(errorCode.httpCode);
                if (bArr.length > 0) {
                    this.f40399a.write(bArr);
                }
                this.f40399a.flush();
            } catch (Throwable th2) {
                throw th2;
            }
        }

        void h(boolean z10, int i11, List list) throws IOException {
            if (this.f40404f) {
                throw new IOException("closed");
            }
            this.f40402d.b(list);
            long size = this.f40401c.size();
            int iMin = (int) Math.min(this.f40403e, size);
            long j11 = iMin;
            byte b11 = size == j11 ? (byte) 4 : (byte) 0;
            if (z10) {
                b11 = (byte) (b11 | 1);
            }
            d(i11, iMin, (byte) 1, b11);
            this.f40399a.write(this.f40401c, j11);
            if (size > j11) {
                i(i11, size - j11);
            }
        }

        @Override // com.squareup.okhttp.internal.framed.FrameWriter
        public synchronized void headers(int i11, List list) {
            if (this.f40404f) {
                throw new IOException("closed");
            }
            h(false, i11, list);
        }

        @Override // com.squareup.okhttp.internal.framed.FrameWriter
        public int maxDataLength() {
            return this.f40403e;
        }

        @Override // com.squareup.okhttp.internal.framed.FrameWriter
        public synchronized void ping(boolean z10, int i11, int i12) {
            if (this.f40404f) {
                throw new IOException("closed");
            }
            d(0, 8, (byte) 6, z10 ? (byte) 1 : (byte) 0);
            this.f40399a.writeInt(i11);
            this.f40399a.writeInt(i12);
            this.f40399a.flush();
        }

        @Override // com.squareup.okhttp.internal.framed.FrameWriter
        public synchronized void pushPromise(int i11, int i12, List list) {
            if (this.f40404f) {
                throw new IOException("closed");
            }
            this.f40402d.b(list);
            long size = this.f40401c.size();
            int iMin = (int) Math.min(this.f40403e - 4, size);
            long j11 = iMin;
            d(i11, iMin + 4, (byte) 5, size == j11 ? (byte) 4 : (byte) 0);
            this.f40399a.writeInt(i12 & Integer.MAX_VALUE);
            this.f40399a.write(this.f40401c, j11);
            if (size > j11) {
                i(i11, size - j11);
            }
        }

        @Override // com.squareup.okhttp.internal.framed.FrameWriter
        public synchronized void rstStream(int i11, ErrorCode errorCode) {
            if (this.f40404f) {
                throw new IOException("closed");
            }
            if (errorCode.httpCode == -1) {
                throw new IllegalArgumentException();
            }
            d(i11, 4, (byte) 3, (byte) 0);
            this.f40399a.writeInt(errorCode.httpCode);
            this.f40399a.flush();
        }

        @Override // com.squareup.okhttp.internal.framed.FrameWriter
        public synchronized void settings(h hVar) {
            int i11;
            try {
                if (this.f40404f) {
                    throw new IOException("closed");
                }
                int i12 = 0;
                d(0, hVar.m() * 6, (byte) 4, (byte) 0);
                while (i12 < 10) {
                    if (hVar.i(i12)) {
                        if (i12 == 4) {
                            i11 = 3;
                        } else {
                            i11 = i12 == 7 ? 4 : i12;
                        }
                        this.f40399a.writeShort(i11);
                        this.f40399a.writeInt(hVar.c(i12));
                    }
                    i12++;
                }
                this.f40399a.flush();
            } catch (Throwable th2) {
                throw th2;
            }
        }

        @Override // com.squareup.okhttp.internal.framed.FrameWriter
        public synchronized void synReply(boolean z10, int i11, List list) {
            if (this.f40404f) {
                throw new IOException("closed");
            }
            h(z10, i11, list);
        }

        @Override // com.squareup.okhttp.internal.framed.FrameWriter
        public synchronized void synStream(boolean z10, boolean z11, int i11, int i12, List list) {
            try {
                if (z11) {
                    throw new UnsupportedOperationException();
                }
                if (this.f40404f) {
                    throw new IOException("closed");
                }
                h(z10, i11, list);
            } catch (Throwable th2) {
                throw th2;
            }
        }

        @Override // com.squareup.okhttp.internal.framed.FrameWriter
        public synchronized void windowUpdate(int i11, long j11) {
            if (this.f40404f) {
                throw new IOException("closed");
            }
            if (j11 == 0 || j11 > 2147483647L) {
                throw d.h("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", Long.valueOf(j11));
            }
            d(i11, 4, (byte) 8, (byte) 0);
            this.f40399a.writeInt((int) j11);
            this.f40399a.flush();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static IllegalArgumentException h(String str, Object... objArr) {
        throw new IllegalArgumentException(String.format(str, objArr));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static IOException i(String str, Object... objArr) throws IOException {
        throw new IOException(String.format(str, objArr));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int j(int i11, byte b11, short s11) throws IOException {
        if ((b11 & 8) != 0) {
            i11--;
        }
        if (s11 <= i11) {
            return (short) (i11 - s11);
        }
        throw i("PROTOCOL_ERROR padding %s > remaining length %s", Short.valueOf(s11), Integer.valueOf(i11));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int k(BufferedSource bufferedSource) {
        return (bufferedSource.readByte() & 255) | ((bufferedSource.readByte() & 255) << 16) | ((bufferedSource.readByte() & 255) << 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void l(BufferedSink bufferedSink, int i11) throws IOException {
        bufferedSink.writeByte((i11 >>> 16) & 255);
        bufferedSink.writeByte((i11 >>> 8) & 255);
        bufferedSink.writeByte(i11 & 255);
    }

    @Override // com.squareup.okhttp.internal.framed.Variant
    public Protocol getProtocol() {
        return Protocol.HTTP_2;
    }

    @Override // com.squareup.okhttp.internal.framed.Variant
    public FrameReader newReader(BufferedSource bufferedSource, boolean z10) {
        return new c(bufferedSource, 4096, z10);
    }

    @Override // com.squareup.okhttp.internal.framed.Variant
    public FrameWriter newWriter(BufferedSink bufferedSink, boolean z10) {
        return new C0579d(bufferedSink, z10);
    }
}
