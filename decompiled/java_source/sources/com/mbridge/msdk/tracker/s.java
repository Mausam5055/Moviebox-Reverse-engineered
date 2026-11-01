package com.mbridge.msdk.tracker;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.cloud.tmc.kernel.constants.TmcConstants;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes5.dex */
class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f38711a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f38712b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f38713c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f38714d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final k f38715e;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Handler f38719i;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final AtomicInteger f38716f = new AtomicInteger(0);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final AtomicInteger f38717g = new AtomicInteger(0);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Object f38718h = new Object();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f38720j = true;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f38721k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private volatile boolean f38722l = false;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private volatile boolean f38723m = false;

    private static final class a implements r {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Handler f38724a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final s f38725b;

        public a(Handler handler, s sVar) {
            this.f38724a = handler;
            this.f38725b = sVar;
        }

        @Override // com.mbridge.msdk.tracker.r
        public void a(t tVar) {
            this.f38725b.b(tVar.a());
            this.f38725b.i();
            this.f38725b.f38721k = 0L;
            if (this.f38725b.f()) {
                Handler handler = this.f38724a;
                handler.sendMessage(Message.obtain(handler, 2));
            }
            if (com.mbridge.msdk.tracker.a.f38496a) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(this.f38725b.f38715e.v());
                sb2.append(" report success ");
                sb2.append(tVar.a().size());
                sb2.append(" 剩余事件数：");
                sb2.append(this.f38725b.f38717g.addAndGet(0));
                sb2.append(" 个，数据库记录数：");
                sb2.append(this.f38725b.f38711a.b());
                sb2.append(" 个");
            }
        }

        @Override // com.mbridge.msdk.tracker.r
        public void a(t tVar, int i11, String str) {
            this.f38725b.a(tVar.a(), str);
            this.f38725b.f38721k = System.currentTimeMillis();
            int iD = this.f38725b.d();
            if (iD <= 10) {
                this.f38724a.removeMessages(3);
                Handler handler = this.f38724a;
                handler.sendMessageDelayed(Message.obtain(handler, 3), ((long) iD) * 1000);
            }
            if (com.mbridge.msdk.tracker.a.f38496a) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(this.f38725b.f38715e.v());
                sb2.append(" report failed ");
                sb2.append(tVar.a().size());
                sb2.append(" 剩余事件数：");
                sb2.append(this.f38725b.f38717g.addAndGet(0));
                sb2.append(" 个，数据库记录数：");
                sb2.append(this.f38725b.f38711a.b());
                sb2.append(" 个 连续失败次数： ");
                sb2.append(iD);
            }
        }
    }

    private static final class b extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final s f38726a;

        public b(Looper looper, s sVar) {
            super(looper);
            this.f38726a = sVar;
        }

        private synchronized void a() {
            try {
                this.f38726a.h();
            } catch (Exception e11) {
                if (com.mbridge.msdk.tracker.a.f38496a) {
                    Log.e("TrackManager", this.f38726a.f38715e.v() + " report failed ", e11);
                }
            }
        }

        private void a(String str) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.f38726a.f38715e.v());
            sb2.append(" ");
            sb2.append(str);
            sb2.append(this.f38726a.f38717g.addAndGet(0));
            sb2.append(" 数据库记录数：");
            sb2.append(this.f38726a.f38711a.b());
        }

        private void b() {
            try {
                removeMessages(1);
                removeMessages(6);
                removeMessages(2);
                removeMessages(3);
            } catch (Exception e11) {
                if (com.mbridge.msdk.tracker.a.f38496a) {
                    Log.e("TrackManager", this.f38726a.f38715e.v() + " removeMessages failed ", e11);
                }
            }
            if (this.f38726a.g()) {
                return;
            }
            try {
                sendMessageDelayed(Message.obtain(this, 1), y.a(this.f38726a.f38716f.get(), this.f38726a.f38721k, this.f38726a.f38713c));
            } catch (Exception e12) {
                if (com.mbridge.msdk.tracker.a.f38496a) {
                    Log.e("TrackManager", this.f38726a.f38715e.v() + " sendMessageDelayed failed ", e12);
                }
            }
        }

        @Override // android.os.Handler
        public void dispatchMessage(Message message) {
            super.dispatchMessage(message);
            int i11 = message.what;
            if (i11 == 2 || i11 == 3) {
                b();
                if (com.mbridge.msdk.tracker.a.f38496a) {
                    a("触发上报（report result）当前 Event 数量：");
                }
                a();
                return;
            }
            if (i11 == 5) {
                if (com.mbridge.msdk.tracker.a.f38496a) {
                    a("触发删除 当前 Event 数量：");
                }
                this.f38726a.a();
                sendMessageDelayed(Message.obtain(this, 5), TmcConstants.DEBUG_REQUEST_TIME_INTERVAL);
                return;
            }
            if (i11 != 6) {
                if (i11 != 7) {
                    b();
                    if (com.mbridge.msdk.tracker.a.f38496a) {
                        a("触发上报（timer）当前 Event 数量：");
                    }
                    a();
                    return;
                }
                this.f38726a.k();
                b();
                if (com.mbridge.msdk.tracker.a.f38496a) {
                    a("触发上报（flush）当前 Event 数量：");
                }
                a();
                return;
            }
            Object obj = message.obj;
            e eVar = obj instanceof e ? (e) obj : null;
            if (com.mbridge.msdk.tracker.a.f38496a && !y.b(eVar)) {
                a(String.format("收到 Event( %s )，当前 Event 数量：", eVar.b()));
            }
            if (y.a(eVar) || this.f38726a.f()) {
                b();
                if (com.mbridge.msdk.tracker.a.f38496a) {
                    a("触发上报（notice check）当前 Event 数量：");
                }
                a();
            }
        }
    }

    public s(k kVar) {
        this.f38711a = kVar.d();
        this.f38712b = kVar.i();
        this.f38713c = kVar.l();
        this.f38714d = kVar.j();
        this.f38715e = kVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        if (com.mbridge.msdk.tracker.a.f38496a) {
            return;
        }
        int iA = this.f38711a.a();
        if (com.mbridge.msdk.tracker.a.f38496a) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.f38715e.v());
            sb2.append(" 删除无效数据的数量 = ");
            sb2.append(iA);
            sb2.append(" 当前剩余事件数 = ");
            sb2.append(this.f38717g.addAndGet(0));
            sb2.append(" 数据库中剩余事件数 = ");
            sb2.append(this.f38711a.b());
        }
    }

    private void a(List<i> list) {
        this.f38711a.b(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(List<i> list, String str) {
        if (y.b((List<?>) list)) {
            return;
        }
        int i11 = 0;
        for (i iVar : list) {
            if (!y.b(iVar)) {
                boolean z10 = !iVar.g() && iVar.c() >= this.f38714d;
                boolean z11 = !iVar.h() && iVar.b() < System.currentTimeMillis();
                if (z10 || z11) {
                    iVar.b(-1);
                } else {
                    iVar.a(iVar.c() + 1);
                    iVar.b(3);
                    iVar.a(str);
                    i11++;
                }
            }
        }
        this.f38711a.a(list);
        this.f38717g.addAndGet(i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(List<i> list) {
        if (y.b((List<?>) list)) {
            return;
        }
        this.f38711a.c(list);
    }

    private List<i> c() {
        return this.f38711a.a(this.f38712b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int d() {
        return this.f38716f.getAndIncrement();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        List<i> listC = c();
        if (y.b((List<?>) listC)) {
            if (com.mbridge.msdk.tracker.a.f38496a) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(this.f38715e.v());
                sb2.append(" report: 没有可以上报的数据");
                return;
            }
            return;
        }
        a(listC);
        int size = listC.size();
        this.f38717g.addAndGet(-size);
        boolean zA = false;
        if (com.mbridge.msdk.tracker.a.f38496a) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(this.f38715e.v());
            sb3.append(" report: 上报的数量 = ");
            sb3.append(size);
            sb3.append(" 当前剩余事件数 = ");
            sb3.append(this.f38717g.addAndGet(0));
            sb3.append(" 数据库中剩余事件数 = ");
            sb3.append(this.f38711a.b());
        }
        try {
            zA = this.f38715e.a();
        } catch (IllegalStateException e11) {
            if (com.mbridge.msdk.tracker.a.f38496a) {
                Log.e("TrackManager", this.f38715e.v() + " report environment check failed ", e11);
            }
        }
        if (!zA) {
            if (com.mbridge.msdk.tracker.a.f38496a) {
                Log.e("TrackManager", this.f38715e.v() + " report 失败，请检查 TrackConfig 配置是否正确");
                return;
            }
            return;
        }
        o oVarM = this.f38715e.m();
        oVarM.a(new a(this.f38719i, this));
        Map<String, String> map = new HashMap<>();
        try {
            map = this.f38715e.f().a(this.f38715e.u(), listC, this.f38715e.o());
        } catch (Exception e12) {
            if (com.mbridge.msdk.tracker.a.f38496a) {
                Log.e("TrackManager", this.f38715e.v() + " report decorate request params failed ", e12);
            }
        }
        oVarM.b(new t(listC), map, y.a(listC));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        this.f38716f.set(0);
    }

    private void l() {
        this.f38711a.c();
    }

    public void a(e eVar) {
        if (this.f38719i.hasMessages(6)) {
            return;
        }
        long jA = y.a(this.f38716f.get(), this.f38721k, this.f38713c);
        if (jA > this.f38713c) {
            Handler handler = this.f38719i;
            handler.sendMessageDelayed(Message.obtain(handler, 6, eVar), (long) (jA * 0.1f));
        } else {
            Handler handler2 = this.f38719i;
            handler2.sendMessage(Message.obtain(handler2, 6, eVar));
        }
    }

    public void b() {
        this.f38719i.removeMessages(1);
        Handler handler = this.f38719i;
        handler.sendMessage(Message.obtain(handler, 7));
    }

    public void e() {
        this.f38717g.incrementAndGet();
    }

    protected boolean f() {
        return this.f38717g.addAndGet(0) >= this.f38712b;
    }

    boolean g() {
        return this.f38720j;
    }

    public void j() {
        HandlerThread handlerThread = new HandlerThread("report_timer");
        handlerThread.start();
        b bVar = new b(handlerThread.getLooper(), this);
        this.f38719i = bVar;
        bVar.sendMessageDelayed(Message.obtain(bVar, 5), 5000L);
        Handler handler = this.f38719i;
        handler.sendMessageDelayed(Message.obtain(handler, 1), this.f38713c);
        this.f38720j = false;
    }

    public void k() {
        synchronized (this.f38718h) {
            try {
                if (!this.f38722l) {
                    this.f38722l = true;
                    l();
                }
                if (!this.f38723m) {
                    this.f38723m = true;
                    this.f38717g.addAndGet(this.f38711a.b());
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
