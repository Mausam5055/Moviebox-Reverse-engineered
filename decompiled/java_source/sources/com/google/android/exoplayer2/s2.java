package com.google.android.exoplayer2;

import android.os.Looper;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes3.dex */
public final class s2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f25628a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a f25629b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.google.android.exoplayer2.util.e f25630c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final k3 f25631d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f25632e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Object f25633f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Looper f25634g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f25635h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f25636i = C.TIME_UNSET;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f25637j = true;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f25638k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f25639l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f25640m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f25641n;

    public interface a {
        void b(s2 s2Var);
    }

    public interface b {
        void handleMessage(int i11, Object obj);
    }

    public s2(a aVar, b bVar, k3 k3Var, int i11, com.google.android.exoplayer2.util.e eVar, Looper looper) {
        this.f25629b = aVar;
        this.f25628a = bVar;
        this.f25631d = k3Var;
        this.f25634g = looper;
        this.f25630c = eVar;
        this.f25635h = i11;
    }

    public synchronized boolean a(long j11) {
        boolean z10;
        try {
            com.google.android.exoplayer2.util.a.g(this.f25638k);
            com.google.android.exoplayer2.util.a.g(this.f25634g.getThread() != Thread.currentThread());
            long jElapsedRealtime = this.f25630c.elapsedRealtime() + j11;
            while (true) {
                z10 = this.f25640m;
                if (z10 || j11 <= 0) {
                    break;
                }
                this.f25630c.a();
                wait(j11);
                j11 = jElapsedRealtime - this.f25630c.elapsedRealtime();
            }
            if (!z10) {
                throw new TimeoutException("Message delivery timed out.");
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f25639l;
    }

    public boolean b() {
        return this.f25637j;
    }

    public Looper c() {
        return this.f25634g;
    }

    public int d() {
        return this.f25635h;
    }

    public Object e() {
        return this.f25633f;
    }

    public long f() {
        return this.f25636i;
    }

    public b g() {
        return this.f25628a;
    }

    public k3 h() {
        return this.f25631d;
    }

    public int i() {
        return this.f25632e;
    }

    public synchronized boolean j() {
        return this.f25641n;
    }

    public synchronized void k(boolean z10) {
        this.f25639l = z10 | this.f25639l;
        this.f25640m = true;
        notifyAll();
    }

    public s2 l() {
        com.google.android.exoplayer2.util.a.g(!this.f25638k);
        if (this.f25636i == C.TIME_UNSET) {
            com.google.android.exoplayer2.util.a.a(this.f25637j);
        }
        this.f25638k = true;
        this.f25629b.b(this);
        return this;
    }

    public s2 m(Object obj) {
        com.google.android.exoplayer2.util.a.g(!this.f25638k);
        this.f25633f = obj;
        return this;
    }

    public s2 n(int i11) {
        com.google.android.exoplayer2.util.a.g(!this.f25638k);
        this.f25632e = i11;
        return this;
    }
}
