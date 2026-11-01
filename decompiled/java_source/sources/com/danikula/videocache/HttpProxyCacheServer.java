package com.danikula.videocache;

import android.content.Context;
import java.io.File;
import java.io.IOException;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketException;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes.dex */
public class HttpProxyCacheServer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f24014a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ExecutorService f24015b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f24016c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ServerSocket f24017d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f24018e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Thread f24019f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private c f24020g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private j f24021h;

    /* JADX INFO: loaded from: classes3.dex */
    private final class SocketProcessorRunnable implements Runnable {
        private final d request;
        private final Socket socket;

        public SocketProcessorRunnable(Socket socket, d dVar) {
            this.socket = socket;
            this.request = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            HttpProxyCacheServer.this.n(this.socket, this.request);
        }
    }

    private final class WaitRequestsRunnable implements Runnable {
        private final CountDownLatch startSignal;

        public WaitRequestsRunnable(CountDownLatch countDownLatch) {
            this.startSignal = countDownLatch;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.startSignal.countDown();
            HttpProxyCacheServer.this.p();
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private File f24022a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private p7.b f24023b = new p7.a();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private com.danikula.videocache.a f24024c;

        public a(Context context) {
            this.f24022a = p.b(context);
        }

        private c b() {
            return new c(this.f24022a, this.f24023b, this.f24024c);
        }

        public HttpProxyCacheServer a() {
            return new HttpProxyCacheServer(b());
        }

        public a c(File file) {
            this.f24022a = (File) l.c(file);
            return this;
        }

        public a d(com.danikula.videocache.a aVar) {
            this.f24024c = aVar;
            return this;
        }
    }

    private HttpProxyCacheServer(c cVar) {
        this.f24014a = new Object();
        this.f24015b = Executors.newFixedThreadPool(8);
        this.f24016c = new ConcurrentHashMap();
        this.f24020g = (c) l.c(cVar);
        try {
            ServerSocket serverSocket = new ServerSocket(0, 8, InetAddress.getByName("127.0.0.1"));
            this.f24017d = serverSocket;
            int localPort = serverSocket.getLocalPort();
            this.f24018e = localPort;
            i.a("127.0.0.1", localPort);
            CountDownLatch countDownLatch = new CountDownLatch(1);
            Thread thread = new Thread(new WaitRequestsRunnable(countDownLatch));
            this.f24019f = thread;
            thread.start();
            countDownLatch.await();
            this.f24021h = new j("127.0.0.1", this.f24018e);
            q.a("init success");
        } catch (Throwable unused) {
            this.f24015b.shutdown();
        }
    }

    private String c(String str) {
        return String.format(Locale.US, "http://%s:%d/%s", "127.0.0.1", Integer.valueOf(this.f24018e), n.c(str));
    }

    private void d(Socket socket) {
        try {
            if (socket.isClosed()) {
                return;
            }
            socket.close();
        } catch (IOException e11) {
            m(new ProxyCacheException("Error closing socket", e11));
        }
    }

    private void e(Socket socket) {
        try {
            if (socket.isInputShutdown()) {
                return;
            }
            socket.shutdownInput();
        } catch (SocketException unused) {
            q.a("Releasing input stream… Socket is closed by client.");
        } catch (IOException e11) {
            m(new ProxyCacheException("Error closing socket input stream", e11));
        }
    }

    private void f(Socket socket) {
        try {
            if (socket.isOutputShutdown()) {
                return;
            }
            socket.shutdownOutput();
        } catch (IOException unused) {
            q.f("Failed to close socket on proxy side: {}. It seems client have already closed connection.");
        }
    }

    private g h(String str) {
        g gVar;
        synchronized (this.f24014a) {
            try {
                gVar = (g) this.f24016c.get(str);
                if (gVar == null) {
                    gVar = new g(str, this.f24020g);
                    this.f24016c.put(str, gVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return gVar;
    }

    private int i() {
        int iB;
        synchronized (this.f24014a) {
            try {
                Iterator it = this.f24016c.values().iterator();
                iB = 0;
                while (it.hasNext()) {
                    iB += ((g) it.next()).b();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return iB;
    }

    private boolean l() {
        return this.f24021h.e(3, 70);
    }

    private void m(Throwable th2) {
        q.b("HttpProxyCacheServer error");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.danikula.videocache.HttpProxyCacheServer] */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.net.Socket] */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v4, types: [java.net.Socket] */
    /* JADX WARN: Type inference failed for: r6v7, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r6v9, types: [java.lang.StringBuilder] */
    public void n(Socket socket, d dVar) {
        g gVarH = null;
        try {
            try {
                String strB = n.b(dVar.f24030a);
                q.a("Request to cache proxy， " + Thread.currentThread().getName() + "， " + dVar + ", url = " + strB);
                if (this.f24021h.d(strB)) {
                    this.f24021h.g(socket);
                } else {
                    gVarH = h(strB);
                    gVarH.d(dVar, socket);
                }
                o(socket);
                if (gVarH != null) {
                    gVarH.f();
                }
                socket = new StringBuilder();
            } catch (Throwable th2) {
                o(socket);
                if (0 != 0) {
                    gVarH.f();
                }
                q.a("Opened connections: " + i());
                throw th2;
            }
        } catch (SocketException unused) {
            q.a("Closing socket… Socket is closed by client.");
            o(socket);
            if (0 != 0) {
                gVarH.f();
            }
            socket = new StringBuilder();
        } catch (Throwable th3) {
            m(new ProxyCacheException("Error processing request", th3));
            o(socket);
            if (0 != 0) {
                gVarH.f();
            }
            socket = new StringBuilder();
        }
        socket.append("Opened connections: ");
        socket.append(i());
        q.a(socket.toString());
    }

    private void o(Socket socket) {
        e(socket);
        f(socket);
        d(socket);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        try {
            q.a("waitForRequest~ isInterrupted = " + Thread.currentThread().isInterrupted());
            while (!Thread.currentThread().isInterrupted()) {
                Socket socketAccept = this.f24017d.accept();
                q.c("Accept new socket " + socketAccept);
                d dVarC = d.c(socketAccept.getInputStream());
                String strB = n.b(dVarC.f24030a);
                g gVar = (g) this.f24016c.get(strB);
                if (gVar != null) {
                    gVar.f();
                }
                if (!this.f24021h.d(strB)) {
                    com.transsnet.downloader.util.i.f59939a.b("3");
                }
                this.f24015b.submit(new SocketProcessorRunnable(socketAccept, dVarC));
            }
        } catch (Throwable th2) {
            q.c("waitForRequest error = " + th2.toString());
            m(new ProxyCacheException("Error during waiting connection", th2));
        }
    }

    public void g() {
        synchronized (this.f24014a) {
            try {
                Iterator it = this.f24016c.values().iterator();
                while (it.hasNext()) {
                    ((g) it.next()).a();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public String j(String str, String str2, boolean z10) {
        return k(str, str2, false, z10);
    }

    public String k(String str, String str2, boolean z10, boolean z11) {
        return (!z11 || l()) ? c(str) : str;
    }
}
