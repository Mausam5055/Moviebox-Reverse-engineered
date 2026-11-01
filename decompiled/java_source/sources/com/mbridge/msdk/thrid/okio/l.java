package com.mbridge.msdk.thrid.okio;

import androidx.annotation.Nullable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Logger f38451a = Logger.getLogger(l.class.getName());

    static class a implements r {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ t f38452a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ OutputStream f38453b;

        a(t tVar, OutputStream outputStream) {
            this.f38452a = tVar;
            this.f38453b = outputStream;
        }

        @Override // com.mbridge.msdk.thrid.okio.r
        public void a(com.mbridge.msdk.thrid.okio.c cVar, long j11) throws IOException {
            u.a(cVar.f38432b, 0L, j11);
            while (j11 > 0) {
                this.f38452a.e();
                o oVar = cVar.f38431a;
                int iMin = (int) Math.min(j11, oVar.f38466c - oVar.f38465b);
                this.f38453b.write(oVar.f38464a, oVar.f38465b, iMin);
                int i11 = oVar.f38465b + iMin;
                oVar.f38465b = i11;
                long j12 = iMin;
                j11 -= j12;
                cVar.f38432b -= j12;
                if (i11 == oVar.f38466c) {
                    cVar.f38431a = oVar.b();
                    p.a(oVar);
                }
            }
        }

        @Override // com.mbridge.msdk.thrid.okio.r
        public t b() {
            return this.f38452a;
        }

        @Override // com.mbridge.msdk.thrid.okio.r, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f38453b.close();
        }

        @Override // com.mbridge.msdk.thrid.okio.r, java.io.Flushable
        public void flush() throws IOException {
            this.f38453b.flush();
        }

        public String toString() {
            return "sink(" + this.f38453b + ")";
        }
    }

    static class b implements s {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ t f38454a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ InputStream f38455b;

        b(t tVar, InputStream inputStream) {
            this.f38454a = tVar;
            this.f38455b = inputStream;
        }

        @Override // com.mbridge.msdk.thrid.okio.s
        public long b(com.mbridge.msdk.thrid.okio.c cVar, long j11) throws IOException {
            if (j11 < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j11);
            }
            if (j11 == 0) {
                return 0L;
            }
            try {
                this.f38454a.e();
                o oVarB = cVar.b(1);
                int i11 = this.f38455b.read(oVarB.f38464a, oVarB.f38466c, (int) Math.min(j11, 8192 - oVarB.f38466c));
                if (i11 == -1) {
                    return -1L;
                }
                oVarB.f38466c += i11;
                long j12 = i11;
                cVar.f38432b += j12;
                return j12;
            } catch (AssertionError e11) {
                if (l.a(e11)) {
                    throw new IOException(e11);
                }
                throw e11;
            }
        }

        @Override // com.mbridge.msdk.thrid.okio.s
        public t b() {
            return this.f38454a;
        }

        @Override // com.mbridge.msdk.thrid.okio.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f38455b.close();
        }

        public String toString() {
            return "source(" + this.f38455b + ")";
        }
    }

    static class c extends com.mbridge.msdk.thrid.okio.a {

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        final /* synthetic */ Socket f38456k;

        c(Socket socket) {
            this.f38456k = socket;
        }

        @Override // com.mbridge.msdk.thrid.okio.a
        protected IOException b(@Nullable IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        @Override // com.mbridge.msdk.thrid.okio.a
        protected void j() {
            try {
                this.f38456k.close();
            } catch (AssertionError e11) {
                if (!l.a(e11)) {
                    throw e11;
                }
                l.f38451a.log(Level.WARNING, "Failed to close timed out socket " + this.f38456k, (Throwable) e11);
            } catch (Exception e12) {
                l.f38451a.log(Level.WARNING, "Failed to close timed out socket " + this.f38456k, (Throwable) e12);
            }
        }
    }

    private l() {
    }

    public static d a(r rVar) {
        return new m(rVar);
    }

    public static e a(s sVar) {
        return new n(sVar);
    }

    private static r a(OutputStream outputStream, t tVar) {
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        }
        if (tVar != null) {
            return new a(tVar, outputStream);
        }
        throw new IllegalArgumentException("timeout == null");
    }

    public static r a(Socket socket) throws IOException {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        }
        if (socket.getOutputStream() == null) {
            throw new IOException("socket's output stream == null");
        }
        com.mbridge.msdk.thrid.okio.a aVarC = c(socket);
        return aVarC.a(a(socket.getOutputStream(), aVarC));
    }

    public static s a(InputStream inputStream) {
        return a(inputStream, new t());
    }

    private static s a(InputStream inputStream, t tVar) {
        if (inputStream == null) {
            throw new IllegalArgumentException("in == null");
        }
        if (tVar != null) {
            return new b(tVar, inputStream);
        }
        throw new IllegalArgumentException("timeout == null");
    }

    static boolean a(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }

    public static s b(Socket socket) throws IOException {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        }
        if (socket.getInputStream() == null) {
            throw new IOException("socket's input stream == null");
        }
        com.mbridge.msdk.thrid.okio.a aVarC = c(socket);
        return aVarC.a(a(socket.getInputStream(), aVarC));
    }

    private static com.mbridge.msdk.thrid.okio.a c(Socket socket) {
        return new c(socket);
    }
}
