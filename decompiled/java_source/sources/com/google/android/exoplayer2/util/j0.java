package com.google.android.exoplayer2.util;

import android.os.Handler;
import android.os.Message;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
final class j0 implements o {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final List f27595b = new ArrayList(50);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Handler f27596a;

    private static final class b implements o.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Message f27597a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private j0 f27598b;

        private b() {
        }

        private void b() {
            this.f27597a = null;
            this.f27598b = null;
            j0.e(this);
        }

        @Override // com.google.android.exoplayer2.util.o.a
        public void a() {
            ((Message) com.google.android.exoplayer2.util.a.e(this.f27597a)).sendToTarget();
            b();
        }

        public boolean c(Handler handler) {
            boolean zSendMessageAtFrontOfQueue = handler.sendMessageAtFrontOfQueue((Message) com.google.android.exoplayer2.util.a.e(this.f27597a));
            b();
            return zSendMessageAtFrontOfQueue;
        }

        public b d(Message message, j0 j0Var) {
            this.f27597a = message;
            this.f27598b = j0Var;
            return this;
        }
    }

    public j0(Handler handler) {
        this.f27596a = handler;
    }

    private static b d() {
        b bVar;
        List list = f27595b;
        synchronized (list) {
            try {
                bVar = list.isEmpty() ? new b() : (b) list.remove(list.size() - 1);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void e(b bVar) {
        List list = f27595b;
        synchronized (list) {
            try {
                if (list.size() < 50) {
                    list.add(bVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.google.android.exoplayer2.util.o
    public boolean a(int i11) {
        return this.f27596a.hasMessages(i11);
    }

    @Override // com.google.android.exoplayer2.util.o
    public boolean b(o.a aVar) {
        return ((b) aVar).c(this.f27596a);
    }

    @Override // com.google.android.exoplayer2.util.o
    public o.a obtainMessage(int i11) {
        return d().d(this.f27596a.obtainMessage(i11), this);
    }

    @Override // com.google.android.exoplayer2.util.o
    public o.a obtainMessage(int i11, int i12, int i13) {
        return d().d(this.f27596a.obtainMessage(i11, i12, i13), this);
    }

    @Override // com.google.android.exoplayer2.util.o
    public o.a obtainMessage(int i11, int i12, int i13, Object obj) {
        return d().d(this.f27596a.obtainMessage(i11, i12, i13, obj), this);
    }

    @Override // com.google.android.exoplayer2.util.o
    public o.a obtainMessage(int i11, Object obj) {
        return d().d(this.f27596a.obtainMessage(i11, obj), this);
    }

    @Override // com.google.android.exoplayer2.util.o
    public boolean post(Runnable runnable) {
        return this.f27596a.post(runnable);
    }

    @Override // com.google.android.exoplayer2.util.o
    public void removeCallbacksAndMessages(Object obj) {
        this.f27596a.removeCallbacksAndMessages(obj);
    }

    @Override // com.google.android.exoplayer2.util.o
    public void removeMessages(int i11) {
        this.f27596a.removeMessages(i11);
    }

    @Override // com.google.android.exoplayer2.util.o
    public boolean sendEmptyMessage(int i11) {
        return this.f27596a.sendEmptyMessage(i11);
    }

    @Override // com.google.android.exoplayer2.util.o
    public boolean sendEmptyMessageAtTime(int i11, long j11) {
        return this.f27596a.sendEmptyMessageAtTime(i11, j11);
    }
}
