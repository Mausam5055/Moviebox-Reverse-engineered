package com.transsion.athena.hatnea;

import android.text.TextUtils;
import androidx.core.util.j;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public class athena {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile athena f42770a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Deque<anateh> f42771b = new ArrayDeque();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ThreadPoolExecutor f42772c;

    private static class aethna implements ThreadFactory {
        private aethna() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, "Athena Dispatcher");
            thread.setDaemon(false);
            return thread;
        }
    }

    private athena() {
    }

    public static athena a() {
        if (f42770a == null) {
            synchronized (athena.class) {
                try {
                    if (f42770a == null) {
                        f42770a = new athena();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f42770a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean a(String str, anateh anatehVar) {
        return TextUtils.equals(anatehVar.b(), str);
    }

    private synchronized boolean c() {
        return com.transsion.athena.config.data.model.anehat.a(this.f42771b, new j() { // from class: com.transsion.athena.hatnea.c
            @Override // androidx.core.util.j
            public final boolean a(Object obj) {
                return athena.c((anateh) obj);
            }
        }) > 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean c(anateh anatehVar) {
        return anatehVar instanceof atenha;
    }

    public synchronized int a(final String str) {
        return com.transsion.athena.config.data.model.anehat.a(this.f42771b, new j() { // from class: com.transsion.athena.hatnea.b
            @Override // androidx.core.util.j
            public final boolean a(Object obj) {
                return athena.a(str, (anateh) obj);
            }
        });
    }

    public synchronized void a(anateh anatehVar) {
        if (a(anatehVar.b()) <= 0 && !c()) {
            this.f42771b.add(anatehVar);
            synchronized (this) {
                try {
                    if (this.f42772c == null) {
                        this.f42772c = new ThreadPoolExecutor(2, 2, 0L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new aethna());
                    }
                    this.f42772c.execute(anatehVar);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public void b() {
        enatha enathaVar;
        Thread thread;
        for (anateh anatehVar : this.f42771b) {
            if ((anatehVar instanceof enatha) && (thread = (enathaVar = (enatha) anatehVar).f42762b) != null && !thread.isInterrupted()) {
                enathaVar.f42762b.interrupt();
            }
        }
    }

    public synchronized void b(anateh anatehVar) {
        this.f42771b.remove(anatehVar);
    }
}
