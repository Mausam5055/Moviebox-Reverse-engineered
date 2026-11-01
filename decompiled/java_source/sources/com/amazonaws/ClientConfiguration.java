package com.amazonaws;

import com.amazonaws.retry.PredefinedRetryPolicies;
import com.amazonaws.retry.RetryPolicy;
import com.amazonaws.util.VersionInfoUtils;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;
import javax.net.ssl.TrustManager;

/* JADX INFO: loaded from: classes2.dex */
public class ClientConfiguration {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final String f18282u = VersionInfoUtils.b();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final RetryPolicy f18283v = PredefinedRetryPolicies.f18570b;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f18285b;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private String f18300q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f18284a = f18282u;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f18286c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private RetryPolicy f18287d = f18283v;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Protocol f18288e = Protocol.HTTPS;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f18289f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f18290g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f18291h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f18292i = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f18293j = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f18294k = null;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f18295l = 10;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f18296m = DefaultLoadControl.DEFAULT_MIN_BUFFER_MS;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f18297n = DefaultLoadControl.DEFAULT_MIN_BUFFER_MS;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f18298o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f18299p = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private TrustManager f18301r = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f18302s = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f18303t = false;

    public int a() {
        return this.f18297n;
    }

    public int b() {
        return this.f18286c;
    }

    public Protocol c() {
        return this.f18288e;
    }

    public RetryPolicy d() {
        return this.f18287d;
    }

    public String e() {
        return this.f18300q;
    }

    public int f() {
        return this.f18296m;
    }

    public TrustManager g() {
        return this.f18301r;
    }

    public String h() {
        return this.f18284a;
    }

    public String i() {
        return this.f18285b;
    }

    public boolean j() {
        return this.f18302s;
    }

    public boolean k() {
        return this.f18303t;
    }
}
