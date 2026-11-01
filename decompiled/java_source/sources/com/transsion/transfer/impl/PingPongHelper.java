package com.transsion.transfer.impl;

import com.cloud.tmc.kernel.constants.TmcConstants;
import java.util.Stack;
import java.util.Timer;
import java.util.TimerTask;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class PingPongHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f55614a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f55615b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.transsion.transfer.androidasync.http.b0 f55616c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a f55617d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Stack f55618e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f55619f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f55620g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f55621h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Timer f55622i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final PingPongHelper$task$1 f55623j;

    public interface a {
        void a(String str, com.transsion.transfer.androidasync.http.b0 b0Var);
    }

    /* JADX WARN: Type inference failed for: r2v5, types: [com.transsion.transfer.impl.PingPongHelper$task$1] */
    public PingPongHelper(String remoteIP, boolean z10, com.transsion.transfer.androidasync.http.b0 socket, a pingPongListener) {
        Intrinsics.h(remoteIP, "remoteIP");
        Intrinsics.h(socket, "socket");
        Intrinsics.h(pingPongListener, "pingPongListener");
        this.f55614a = remoteIP;
        this.f55615b = z10;
        this.f55616c = socket;
        this.f55617d = pingPongListener;
        this.f55618e = new Stack();
        this.f55621h = 2;
        socket.G(new com.transsion.transfer.androidasync.http.b0.b() { // from class: com.transsion.transfer.impl.j
            @Override // com.transsion.transfer.androidasync.http.b0.b
            public final void a(String str) {
                PingPongHelper.b(this.f55755a, str);
            }
        });
        this.f55622i = new Timer();
        this.f55623j = new TimerTask() { // from class: com.transsion.transfer.impl.PingPongHelper$task$1
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                if (this.this$0.f55620g >= this.this$0.f55621h) {
                    this.this$0.f55617d.a(this.this$0.f55614a, this.this$0.f55616c);
                    this.this$0.f55619f = true;
                }
                if (this.this$0.f55619f) {
                    return;
                }
                String strM = this.this$0.m();
                this.this$0.f55618e.push(strM);
                this.this$0.f55616c.A(strM);
                this.this$0.f55620g++;
                if (this.this$0.f55618e.size() > this.this$0.f55621h) {
                    this.this$0.f55618e.remove(0);
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(PingPongHelper pingPongHelper, String str) {
        pingPongHelper.f55620g = 0;
        pingPongHelper.f55618e.remove(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String m() {
        return (this.f55615b ? TmcConstants.CHANNEL_REQUEST_SERVER : "client") + "-" + System.currentTimeMillis();
    }

    public final void n() {
        this.f55622i.schedule(this.f55623j, 0L, 2000L);
    }

    public final void o() {
        this.f55619f = true;
        cancel();
        this.f55622i.cancel();
    }
}
