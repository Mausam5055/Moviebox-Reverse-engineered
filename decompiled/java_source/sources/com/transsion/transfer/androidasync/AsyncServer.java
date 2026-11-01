package com.transsion.transfer.androidasync;

import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import java.io.IOException;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.nio.channels.CancelledKeyException;
import java.nio.channels.ClosedSelectorException;
import java.nio.channels.DatagramChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;
import java.nio.channels.spi.SelectorProvider;
import java.util.Arrays;
import java.util.Comparator;
import java.util.PriorityQueue;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes6.dex */
public class AsyncServer {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static AsyncServer f55137g = new AsyncServer();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static ExecutorService f55138h = A("AsyncServer-worker-");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final Comparator f55139i = new Comparator<InetAddress>() { // from class: com.transsion.transfer.androidasync.AsyncServer.5
        @Override // java.util.Comparator
        public int compare(InetAddress inetAddress, InetAddress inetAddress2) {
            boolean z10 = inetAddress instanceof Inet4Address;
            if (z10 && (inetAddress2 instanceof Inet4Address)) {
                return 0;
            }
            if ((inetAddress instanceof Inet6Address) && (inetAddress2 instanceof Inet6Address)) {
                return 0;
            }
            return (z10 && (inetAddress2 instanceof Inet6Address)) ? -1 : 1;
        }
    };

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static ExecutorService f55140j = A("AsyncServer-resolver-");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final ThreadLocal f55141k = new ThreadLocal();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private x f55142a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f55143b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f55144c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f55145d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    PriorityQueue f55146e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    Thread f55147f;

    /* JADX INFO: renamed from: com.transsion.transfer.androidasync.AsyncServer$7, reason: invalid class name */
    class AnonymousClass7 implements Runnable {
        final /* synthetic */ AsyncDatagramSocket val$handler;
        final /* synthetic */ String val$host;
        final /* synthetic */ int val$port;
        final /* synthetic */ DatagramChannel val$socket;

        AnonymousClass7(String str, int i11, AsyncDatagramSocket asyncDatagramSocket, DatagramChannel datagramChannel) {
            this.val$host = str;
            this.val$port = i11;
            this.val$handler = asyncDatagramSocket;
            this.val$socket = datagramChannel;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                InetSocketAddress inetSocketAddress = new InetSocketAddress(this.val$host, this.val$port);
                AsyncServer.this.s(this.val$handler);
                this.val$socket.connect(inetSocketAddress);
            } catch (IOException e11) {
                Log.e("NIO", "Datagram error", e11);
                com.transsion.transfer.androidasync.util.d.a(this.val$socket);
            }
        }
    }

    /* JADX INFO: renamed from: com.transsion.transfer.androidasync.AsyncServer$9, reason: invalid class name */
    class AnonymousClass9 implements Runnable {
        AnonymousClass9() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (AsyncServer.this.f55142a == null) {
                return;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Key Count: ");
            sb2.append(AsyncServer.this.f55142a.h().size());
            for (SelectionKey selectionKey : AsyncServer.this.f55142a.h()) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Key: ");
                sb3.append(selectionKey);
            }
        }
    }

    private static class AsyncSelectorException extends IOException {
        public AsyncSelectorException(Exception exc) {
            super(exc);
        }
    }

    private static class RunnableWrapper implements Runnable {
        Handler handler;
        boolean hasRun;
        Runnable runnable;
        ThreadQueue threadQueue;

        private RunnableWrapper() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            synchronized (this) {
                try {
                    if (this.hasRun) {
                        return;
                    }
                    this.hasRun = true;
                    try {
                        this.runnable.run();
                    } finally {
                        this.threadQueue.remove(this);
                        this.handler.removeCallbacks(this);
                        this.threadQueue = null;
                        this.handler = null;
                        this.runnable = null;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    private static class Scheduled implements com.transsion.transfer.androidasync.future.a, Runnable {
        boolean cancelled;
        public Runnable runnable;
        public AsyncServer server;
        public long time;

        public Scheduled(AsyncServer asyncServer, Runnable runnable, long j11) {
            this.server = asyncServer;
            this.runnable = runnable;
            this.time = j11;
        }

        @Override // com.transsion.transfer.androidasync.future.a
        public boolean cancel() {
            boolean zRemove;
            synchronized (this.server) {
                zRemove = this.server.f55146e.remove(this);
                this.cancelled = zRemove;
            }
            return zRemove;
        }

        @Override // com.transsion.transfer.androidasync.future.a
        public boolean isCancelled() {
            return this.cancelled;
        }

        public boolean isDone() {
            boolean z10;
            synchronized (this.server) {
                try {
                    z10 = (this.cancelled || this.server.f55146e.contains(this)) ? false : true;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return z10;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.runnable.run();
        }
    }

    static class Scheduler implements Comparator<Scheduled> {
        public static Scheduler INSTANCE = new Scheduler();

        private Scheduler() {
        }

        @Override // java.util.Comparator
        public int compare(Scheduled scheduled, Scheduled scheduled2) {
            long j11 = scheduled.time;
            long j12 = scheduled2.time;
            if (j11 == j12) {
                return 0;
            }
            return j11 > j12 ? 1 : -1;
        }
    }

    class a implements com.transsion.transfer.androidasync.future.g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ bv.b f55152a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.transsion.transfer.androidasync.future.w f55153b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ InetSocketAddress f55154c;

        a(bv.b bVar, com.transsion.transfer.androidasync.future.w wVar, InetSocketAddress inetSocketAddress) {
            this.f55152a = bVar;
            this.f55153b = wVar;
            this.f55154c = inetSocketAddress;
        }

        @Override // com.transsion.transfer.androidasync.future.g
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(Exception exc, InetAddress inetAddress) {
            if (exc == null) {
                this.f55153b.E((b) AsyncServer.this.l(new InetSocketAddress(inetAddress, this.f55154c.getPort()), this.f55152a));
            } else {
                this.f55152a.a(exc, null);
                this.f55153b.G(exc);
            }
        }
    }

    private class b extends com.transsion.transfer.androidasync.future.w {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        SocketChannel f55156f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        bv.b f55157g;

        private b() {
        }

        @Override // com.transsion.transfer.androidasync.future.n
        protected void cancelCleanup() {
            super.cancelCleanup();
            try {
                SocketChannel socketChannel = this.f55156f;
                if (socketChannel != null) {
                    socketChannel.close();
                }
            } catch (IOException unused) {
            }
        }
    }

    private static class c implements ThreadFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ThreadGroup f55159a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final AtomicInteger f55160b = new AtomicInteger(1);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final String f55161c;

        c(String str) {
            SecurityManager securityManager = System.getSecurityManager();
            this.f55159a = securityManager != null ? securityManager.getThreadGroup() : Thread.currentThread().getThreadGroup();
            this.f55161c = str;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(this.f55159a, runnable, this.f55161c + this.f55160b.getAndIncrement(), 0L);
            if (thread.isDaemon()) {
                thread.setDaemon(false);
            }
            if (thread.getPriority() != 5) {
                thread.setPriority(5);
            }
            return thread;
        }
    }

    private static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Object f55162a;

        private d() {
        }
    }

    public AsyncServer() {
        this(null);
    }

    public AsyncServer(String str) {
        this.f55145d = 0;
        this.f55146e = new PriorityQueue(1, Scheduler.INSTANCE);
        this.f55143b = str == null ? "AsyncServer" : str;
    }

    private static ExecutorService A(String str) {
        return new ThreadPoolExecutor(0, 4, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new c(str));
    }

    private void F() {
        synchronized (this) {
            try {
                x xVar = this.f55142a;
                if (xVar != null) {
                    PriorityQueue priorityQueue = this.f55146e;
                    try {
                        try {
                            I(this, xVar, priorityQueue);
                            return;
                        } catch (Exception unused) {
                            return;
                        }
                    } catch (AsyncSelectorException unused2) {
                        xVar.d().close();
                        return;
                    }
                }
                try {
                    final x xVar2 = new x(SelectorProvider.provider().openSelector());
                    this.f55142a = xVar2;
                    final PriorityQueue priorityQueue2 = this.f55146e;
                    Thread thread = new Thread(this.f55143b) { // from class: com.transsion.transfer.androidasync.AsyncServer.8
                        @Override // java.lang.Thread, java.lang.Runnable
                        public void run() {
                            try {
                                AsyncServer.f55141k.set(AsyncServer.this);
                                AsyncServer.G(AsyncServer.this, xVar2, priorityQueue2);
                            } finally {
                                AsyncServer.f55141k.remove();
                            }
                        }
                    };
                    this.f55147f = thread;
                    thread.start();
                } catch (IOException e11) {
                    throw new RuntimeException("unable to create selector?", e11);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void G(AsyncServer asyncServer, x xVar, PriorityQueue priorityQueue) {
        while (true) {
            try {
                I(asyncServer, xVar, priorityQueue);
            } catch (AsyncSelectorException e11) {
                boolean z10 = e11.getCause() instanceof ClosedSelectorException;
                com.transsion.transfer.androidasync.util.d.a(xVar);
            }
            synchronized (asyncServer) {
                try {
                    if (!xVar.isOpen() || (xVar.h().size() <= 0 && priorityQueue.size() <= 0)) {
                        break;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        J(xVar);
        if (asyncServer.f55142a == xVar) {
            asyncServer.f55146e = new PriorityQueue(1, Scheduler.INSTANCE);
            asyncServer.f55142a = null;
            asyncServer.f55147f = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r3v18, types: [bv.b] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.nio.channels.SelectionKey] */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.nio.channels.SelectionKey] */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v7, types: [bv.f] */
    /* JADX WARN: Type inference failed for: r4v11, types: [com.transsion.transfer.androidasync.AsyncServer$b, com.transsion.transfer.androidasync.future.w] */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v4, types: [java.nio.channels.SelectionKey] */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r6v4, types: [com.transsion.transfer.androidasync.AsyncNetworkSocket, com.transsion.transfer.androidasync.j, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v4, types: [com.transsion.transfer.androidasync.AsyncNetworkSocket, com.transsion.transfer.androidasync.j, java.lang.Object] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private static void I(AsyncServer asyncServer, x xVar, PriorityQueue priorityQueue) throws AsyncSelectorException {
        ?? r11;
        ?? r12;
        long jZ = z(asyncServer, priorityQueue);
        try {
            synchronized (asyncServer) {
                try {
                    if (xVar.m() != 0) {
                        r11 = false;
                    } else if (xVar.h().size() == 0 && jZ == Long.MAX_VALUE) {
                        return;
                    } else {
                        r11 = true;
                    }
                    if (r11 != false) {
                        if (jZ == Long.MAX_VALUE) {
                            xVar.k();
                        } else {
                            xVar.l(jZ);
                        }
                    }
                    Set<??> setN = xVar.n();
                    for (?? r13 : setN) {
                        try {
                            SocketChannel socketChannel = null;
                            ?? Register = 0;
                            if (r13.isAcceptable()) {
                                try {
                                    SocketChannel socketChannelAccept = ((ServerSocketChannel) r13.channel()).accept();
                                    if (socketChannelAccept != null) {
                                        try {
                                            socketChannelAccept.configureBlocking(false);
                                            socketChannelAccept.socket().setKeepAlive(true);
                                            socketChannelAccept.socket().setTcpNoDelay(true);
                                            socketChannelAccept.socket().setSoLinger(true, 0);
                                            Register = socketChannelAccept.register(xVar.d(), 1);
                                            ?? r14 = (bv.f) r13.attachment();
                                            ?? asyncNetworkSocket = new AsyncNetworkSocket();
                                            asyncNetworkSocket.f(socketChannelAccept, (InetSocketAddress) socketChannelAccept.socket().getRemoteSocketAddress());
                                            asyncNetworkSocket.y(asyncServer, Register);
                                            Register.attach(asyncNetworkSocket);
                                            r14.w(asyncNetworkSocket);
                                        } catch (IOException unused) {
                                            r12 = Register;
                                            socketChannel = socketChannelAccept;
                                            com.transsion.transfer.androidasync.util.d.a(socketChannel);
                                            if (r12 != 0) {
                                                r12.cancel();
                                            }
                                        }
                                    }
                                } catch (IOException unused2) {
                                    r12 = 0;
                                }
                            } else if (r13.isReadable()) {
                                asyncServer.B(((AsyncNetworkSocket) r13.attachment()).q());
                            } else if (r13.isWritable()) {
                                ((AsyncNetworkSocket) r13.attachment()).m();
                            } else {
                                if (!r13.isConnectable()) {
                                    throw new RuntimeException("Unknown key state.");
                                }
                                ?? r15 = (b) r13.attachment();
                                SocketChannel socketChannel2 = (SocketChannel) r13.channel();
                                r13.interestOps(1);
                                try {
                                    socketChannel2.finishConnect();
                                    ?? asyncNetworkSocket2 = new AsyncNetworkSocket();
                                    asyncNetworkSocket2.y(asyncServer, r13);
                                    asyncNetworkSocket2.f(socketChannel2, (InetSocketAddress) socketChannel2.socket().getRemoteSocketAddress());
                                    r13.attach(asyncNetworkSocket2);
                                    if (r15.J(asyncNetworkSocket2)) {
                                        r15.f55157g.a(null, asyncNetworkSocket2);
                                    }
                                } catch (IOException e11) {
                                    r13.cancel();
                                    com.transsion.transfer.androidasync.util.d.a(socketChannel2);
                                    if (r15.G(e11)) {
                                        r15.f55157g.a(e11, null);
                                    }
                                }
                            }
                        } catch (CancelledKeyException unused3) {
                        }
                    }
                    setN.clear();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        } catch (Exception e12) {
            throw new AsyncSelectorException(e12);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void J(x xVar) {
        K(xVar);
        com.transsion.transfer.androidasync.util.d.a(xVar);
    }

    private static void K(x xVar) {
        try {
            for (SelectionKey selectionKey : xVar.h()) {
                com.transsion.transfer.androidasync.util.d.a(selectionKey.channel());
                try {
                    selectionKey.cancel();
                } catch (Exception unused) {
                }
            }
        } catch (Exception unused2) {
        }
    }

    private static void N(final x xVar) {
        f55138h.execute(new Runnable() { // from class: com.transsion.transfer.androidasync.e
            @Override // java.lang.Runnable
            public final void run() {
                AsyncServer.x(xVar);
            }
        });
    }

    public static AsyncServer r() {
        return f55137g;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s(AsyncNetworkSocket asyncNetworkSocket) {
        SelectionKey selectionKeyI = asyncNetworkSocket.j().i(this.f55142a.d());
        selectionKeyI.attach(asyncNetworkSocket);
        asyncNetworkSocket.y(this, selectionKeyI);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ InetAddress u(InetAddress[] inetAddressArr) {
        return inetAddressArr[0];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void v(Runnable runnable, Semaphore semaphore) {
        runnable.run();
        semaphore.release();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void w(x xVar) {
        try {
            xVar.p();
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void x(x xVar) {
        try {
            xVar.p();
        } catch (Exception unused) {
        }
    }

    private static long z(AsyncServer asyncServer, PriorityQueue priorityQueue) {
        Scheduled scheduled;
        long j11 = Long.MAX_VALUE;
        while (true) {
            synchronized (asyncServer) {
                try {
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    scheduled = null;
                    if (priorityQueue.size() > 0) {
                        Scheduled scheduled2 = (Scheduled) priorityQueue.remove();
                        long j12 = scheduled2.time;
                        if (j12 <= jElapsedRealtime) {
                            scheduled = scheduled2;
                        } else {
                            priorityQueue.add(scheduled2);
                            j11 = j12 - jElapsedRealtime;
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (scheduled == null) {
                asyncServer.f55145d = 0;
                return j11;
            }
            scheduled.run();
        }
    }

    protected void B(int i11) {
    }

    protected void C(int i11) {
    }

    public com.transsion.transfer.androidasync.future.a D(Runnable runnable) {
        return E(runnable, 0L);
    }

    public com.transsion.transfer.androidasync.future.a E(Runnable runnable, long j11) {
        synchronized (this) {
            try {
                if (this.f55144c) {
                    return com.transsion.transfer.androidasync.future.n.CANCELLED;
                }
                long jMin = 0;
                if (j11 > 0) {
                    jMin = SystemClock.elapsedRealtime() + j11;
                } else if (j11 == 0) {
                    int i11 = this.f55145d;
                    this.f55145d = i11 + 1;
                    jMin = i11;
                } else if (this.f55146e.size() > 0) {
                    jMin = Math.min(0L, ((Scheduled) this.f55146e.peek()).time - 1);
                }
                PriorityQueue priorityQueue = this.f55146e;
                Scheduled scheduled = new Scheduled(this, runnable, jMin);
                priorityQueue.add(scheduled);
                if (this.f55142a == null) {
                    F();
                }
                if (!t()) {
                    N(this.f55142a);
                }
                return scheduled;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void H(final Runnable runnable) {
        if (Thread.currentThread() == this.f55147f) {
            D(runnable);
            z(this, this.f55146e);
            return;
        }
        synchronized (this) {
            try {
                if (this.f55144c) {
                    return;
                }
                final Semaphore semaphore = new Semaphore(0);
                D(new Runnable() { // from class: com.transsion.transfer.androidasync.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        AsyncServer.v(runnable, semaphore);
                    }
                });
                try {
                    semaphore.acquire();
                } catch (InterruptedException e11) {
                    Log.e("NIO", "run", e11);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void L() {
        M(false);
    }

    public void M(boolean z10) {
        synchronized (this) {
            try {
                boolean zT = t();
                final x xVar = this.f55142a;
                if (xVar == null) {
                    return;
                }
                final Semaphore semaphore = new Semaphore(0);
                this.f55146e.add(new Scheduled(this, new Runnable() { // from class: com.transsion.transfer.androidasync.AsyncServer.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AsyncServer.J(xVar);
                        semaphore.release();
                    }
                }, 0L));
                f55138h.execute(new Runnable() { // from class: com.transsion.transfer.androidasync.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        AsyncServer.w(xVar);
                    }
                });
                K(xVar);
                this.f55146e = new PriorityQueue(1, Scheduler.INSTANCE);
                this.f55142a = null;
                this.f55147f = null;
                if (zT || !z10) {
                    return;
                }
                try {
                    semaphore.acquire();
                } catch (Exception unused) {
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public b k(InetSocketAddress inetSocketAddress, bv.b bVar, bv.h hVar) {
        b bVar2 = new b();
        D(new Runnable(bVar2, bVar, hVar, inetSocketAddress) { // from class: com.transsion.transfer.androidasync.AsyncServer.3
            final /* synthetic */ InetSocketAddress val$address;
            final /* synthetic */ bv.b val$callback;
            final /* synthetic */ b val$cancel;
            final /* synthetic */ bv.h val$createCallback;

            {
                this.val$address = inetSocketAddress;
            }

            @Override // java.lang.Runnable
            public void run() {
                SocketChannel socketChannelOpen;
                if (this.val$cancel.isCancelled()) {
                    return;
                }
                b bVar3 = this.val$cancel;
                bVar3.f55157g = this.val$callback;
                SelectionKey selectionKeyRegister = null;
                try {
                    socketChannelOpen = SocketChannel.open();
                    bVar3.f55156f = socketChannelOpen;
                    try {
                        socketChannelOpen.configureBlocking(false);
                        selectionKeyRegister = socketChannelOpen.register(AsyncServer.this.f55142a.d(), 8);
                        selectionKeyRegister.attach(this.val$cancel);
                        socketChannelOpen.connect(this.val$address);
                    } catch (Throwable th2) {
                        th = th2;
                        if (selectionKeyRegister != null) {
                            selectionKeyRegister.cancel();
                        }
                        com.transsion.transfer.androidasync.util.d.a(socketChannelOpen);
                        this.val$cancel.G(new RuntimeException(th));
                    }
                } catch (Throwable th3) {
                    th = th3;
                    socketChannelOpen = null;
                }
            }
        });
        return bVar2;
    }

    public com.transsion.transfer.androidasync.future.a l(InetSocketAddress inetSocketAddress, bv.b bVar) {
        return k(inetSocketAddress, bVar, null);
    }

    public com.transsion.transfer.androidasync.future.a m(String str, int i11, bv.b bVar) {
        return n(InetSocketAddress.createUnresolved(str, i11), bVar);
    }

    public com.transsion.transfer.androidasync.future.a n(InetSocketAddress inetSocketAddress, bv.b bVar) {
        if (!inetSocketAddress.isUnresolved()) {
            return l(inetSocketAddress, bVar);
        }
        com.transsion.transfer.androidasync.future.w wVar = new com.transsion.transfer.androidasync.future.w();
        com.transsion.transfer.androidasync.future.f fVarQ = q(inetSocketAddress.getHostName());
        wVar.setParent(fVarQ);
        fVarQ.f(new a(bVar, wVar, inetSocketAddress));
        return wVar;
    }

    public Thread o() {
        return this.f55147f;
    }

    public com.transsion.transfer.androidasync.future.f p(final String str) {
        final com.transsion.transfer.androidasync.future.w wVar = new com.transsion.transfer.androidasync.future.w();
        f55140j.execute(new Runnable() { // from class: com.transsion.transfer.androidasync.AsyncServer.6
            @Override // java.lang.Runnable
            public void run() {
                try {
                    final InetAddress[] allByName = InetAddress.getAllByName(str);
                    Arrays.sort(allByName, AsyncServer.f55139i);
                    if (allByName == null || allByName.length == 0) {
                        throw new HostnameResolutionException("no addresses for host");
                    }
                    AsyncServer.this.D(new Runnable() { // from class: com.transsion.transfer.androidasync.AsyncServer.6.1
                        @Override // java.lang.Runnable
                        public void run() {
                            wVar.H(null, allByName);
                        }
                    });
                } catch (Exception e11) {
                    AsyncServer.this.D(new Runnable() { // from class: com.transsion.transfer.androidasync.AsyncServer.6.2
                        @Override // java.lang.Runnable
                        public void run() {
                            wVar.H(e11, null);
                        }
                    });
                }
            }
        });
        return wVar;
    }

    public com.transsion.transfer.androidasync.future.f q(String str) {
        return p(str).h(new com.transsion.transfer.androidasync.future.y() { // from class: com.transsion.transfer.androidasync.g
            @Override // com.transsion.transfer.androidasync.future.y
            public final Object then(Object obj) {
                return AsyncServer.u((InetAddress[]) obj);
            }
        });
    }

    public boolean t() {
        return this.f55147f == Thread.currentThread();
    }

    public i y(final InetAddress inetAddress, final int i11, final bv.f fVar) {
        final d dVar = new d();
        H(new Runnable() { // from class: com.transsion.transfer.androidasync.AsyncServer.2

            /* JADX INFO: renamed from: com.transsion.transfer.androidasync.AsyncServer$2$a */
            class a implements i {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                final /* synthetic */ ServerSocketChannel f55148a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                final /* synthetic */ y f55149b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                final /* synthetic */ SelectionKey f55150c;

                a(ServerSocketChannel serverSocketChannel, y yVar, SelectionKey selectionKey) {
                    this.f55148a = serverSocketChannel;
                    this.f55149b = yVar;
                    this.f55150c = selectionKey;
                }

                @Override // com.transsion.transfer.androidasync.i
                public void stop() {
                    com.transsion.transfer.androidasync.util.d.a(this.f55149b);
                    try {
                        this.f55150c.cancel();
                    } catch (Exception unused) {
                    }
                }
            }

            @Override // java.lang.Runnable
            public void run() {
                y yVar;
                IOException e11;
                ServerSocketChannel serverSocketChannelOpen;
                try {
                    serverSocketChannelOpen = ServerSocketChannel.open();
                    try {
                        yVar = new y(serverSocketChannelOpen);
                        try {
                            serverSocketChannelOpen.socket().bind(inetAddress == null ? new InetSocketAddress(i11) : new InetSocketAddress(inetAddress, i11));
                            SelectionKey selectionKeyI = yVar.i(AsyncServer.this.f55142a.d());
                            selectionKeyI.attach(fVar);
                            bv.f fVar2 = fVar;
                            d dVar2 = dVar;
                            a aVar = new a(serverSocketChannelOpen, yVar, selectionKeyI);
                            dVar2.f55162a = aVar;
                            fVar2.q(aVar);
                        } catch (IOException e12) {
                            e11 = e12;
                            Log.e("NIO", "wtf", e11);
                            com.transsion.transfer.androidasync.util.d.a(yVar, serverSocketChannelOpen);
                            fVar.g(e11);
                        }
                    } catch (IOException e13) {
                        yVar = null;
                        e11 = e13;
                    }
                } catch (IOException e14) {
                    yVar = null;
                    e11 = e14;
                    serverSocketChannelOpen = null;
                }
            }
        });
        return (i) dVar.f55162a;
    }
}
