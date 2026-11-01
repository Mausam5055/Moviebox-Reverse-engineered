package com.danikula.videocache;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.net.Socket;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicInteger f24035a = new AtomicInteger(0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f24036b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile e f24037c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List f24038d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final b f24039e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final c f24040f;

    private static final class a extends Handler implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f24041a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final List f24042b;

        public a(String str, List list) {
            super(Looper.getMainLooper());
            this.f24041a = str;
            this.f24042b = list;
        }

        @Override // com.danikula.videocache.b
        public void a(String str, int i11) {
            Message messageObtainMessage = obtainMessage();
            messageObtainMessage.arg1 = i11;
            sendMessage(messageObtainMessage);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Iterator it = this.f24042b.iterator();
            while (it.hasNext()) {
                ((b) it.next()).a(this.f24041a, message.arg1);
            }
        }
    }

    public g(String str, c cVar) {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        this.f24038d = copyOnWriteArrayList;
        this.f24036b = (String) l.c(str);
        this.f24040f = (c) l.c(cVar);
        this.f24039e = new a(str, copyOnWriteArrayList);
    }

    private e c() {
        e eVar = new e(this.f24040f.f24027c);
        this.f24040f.f24027c.B();
        eVar.l(this.f24039e);
        return eVar;
    }

    private synchronized void e() {
        try {
            this.f24037c = this.f24037c == null ? c() : this.f24037c;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void a() {
        try {
            if (this.f24035a.decrementAndGet() <= 0) {
                if (this.f24037c != null) {
                    this.f24037c.e();
                }
                this.f24037c = null;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public int b() {
        return this.f24035a.get();
    }

    public void d(d dVar, Socket socket) {
        e();
        try {
            this.f24035a.incrementAndGet();
            this.f24037c.f();
            this.f24037c.k(dVar, socket);
        } finally {
            q.f("processRequest， shutdown, threadName = " + Thread.currentThread().getName());
            a();
        }
    }

    public void f() {
        if (this.f24037c != null) {
            this.f24037c.g();
        }
    }
}
