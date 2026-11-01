package com.mbridge.msdk.tracker.network;

import android.net.Uri;
import android.os.SystemClock;
import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public abstract class t<T> implements Comparable<t<T>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private c f38621a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f38622b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile p f38623c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f38624d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Map<String, String> f38625e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f38626f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f38627g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f38628h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final String f38629i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f38630j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Object f38631k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private v.a f38632l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Integer f38633m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private u f38634n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f38635o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f38636p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f38637q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f38638r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f38639s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private x f38640t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private b.a f38641u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private long f38642v;

    public enum a {
        LOW,
        NORMAL,
        HIGH,
        IMMEDIATE
    }

    public t(int i11, String str) {
        this(i11, str, 0);
    }

    public t(int i11, String str, int i12) {
        this(i11, str, i12, "un_known");
    }

    public t(int i11, String str, int i12, String str2) {
        this.f38631k = new Object();
        this.f38635o = false;
        this.f38636p = false;
        this.f38637q = false;
        this.f38638r = false;
        this.f38639s = false;
        this.f38641u = null;
        this.f38642v = 0L;
        this.f38626f = i11;
        this.f38627g = str;
        this.f38628h = i12;
        this.f38629i = str2;
        a((x) new e());
        this.f38630j = b(str);
        this.f38624d = SystemClock.elapsedRealtime();
    }

    private byte[] a(Map<String, String> map, String str) {
        StringBuilder sb2 = new StringBuilder();
        try {
            int i11 = 0;
            for (Map.Entry<String, String> entry : map.entrySet()) {
                i11++;
                if (entry.getKey() != null) {
                    sb2.append(URLEncoder.encode(entry.getKey(), str));
                    sb2.append('=');
                    sb2.append(URLEncoder.encode(entry.getValue() == null ? "" : entry.getValue(), str));
                    if (i11 <= map.size() - 1) {
                        sb2.append('&');
                    }
                }
            }
            return sb2.toString().getBytes(str);
        } catch (UnsupportedEncodingException e11) {
            throw new RuntimeException("Encoding not supported: " + str, e11);
        }
    }

    private static int b(String str) {
        Uri uri;
        String host;
        if (TextUtils.isEmpty(str) || (uri = Uri.parse(str)) == null || (host = uri.getHost()) == null) {
            return 0;
        }
        return host.hashCode();
    }

    public final boolean A() {
        return this.f38639s;
    }

    public final boolean B() {
        return this.f38638r;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(t<T> tVar) {
        a aVarL = l();
        a aVarL2 = tVar.l();
        return aVarL == aVarL2 ? this.f38633m.intValue() - tVar.f38633m.intValue() : aVarL2.ordinal() - aVarL.ordinal();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public t<?> a(u uVar) {
        this.f38634n = uVar;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public t<?> a(x xVar) {
        this.f38640t = xVar;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final t<?> a(boolean z10) {
        this.f38635o = z10;
        return this;
    }

    protected abstract v<T> a(q qVar);

    void a(int i11) {
        u uVar = this.f38634n;
        if (uVar != null) {
            uVar.a(this, i11);
        }
    }

    public void a(p pVar) {
        this.f38623c = pVar;
    }

    public void a(v.a aVar) {
        this.f38632l = aVar;
    }

    void a(v<?> vVar) {
        synchronized (this.f38631k) {
        }
    }

    protected abstract void a(T t11);

    public void a(String str) {
    }

    public void a(String str, String str2) {
        if (this.f38625e == null) {
            this.f38625e = new HashMap();
        }
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        try {
            this.f38625e.put(str, str2);
        } catch (Exception unused) {
        }
    }

    public boolean a() {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final t<?> b(int i11) {
        this.f38633m = Integer.valueOf(i11);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final t<?> b(boolean z10) {
        this.f38639s = z10;
        return this;
    }

    public void b(b0 b0Var) {
        v.a aVar;
        synchronized (this.f38631k) {
            aVar = this.f38632l;
        }
        if (aVar != null) {
            aVar.a(b0Var);
        }
    }

    public byte[] b() {
        Map<String, String> mapI = i();
        if (mapI == null || mapI.size() <= 0) {
            this.f38642v = 0L;
            return null;
        }
        byte[] bArrA = a(mapI, j());
        this.f38642v = bArrA.length;
        return bArrA;
    }

    protected b0 c(b0 b0Var) {
        return b0Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final t<?> c(boolean z10) {
        this.f38638r = z10;
        return this;
    }

    public String c() {
        return "application/x-www-form-urlencoded; charset=" + j();
    }

    void c(String str) {
        u uVar = this.f38634n;
        if (uVar != null) {
            uVar.c(this);
        }
    }

    public b.a d() {
        return this.f38641u;
    }

    public String d(String str) {
        if (this.f38625e != null && !TextUtils.isEmpty(str)) {
            try {
                return this.f38625e.get(str);
            } catch (Exception unused) {
            }
        }
        return "";
    }

    public String e() {
        if (!TextUtils.isEmpty(this.f38622b)) {
            return this.f38622b;
        }
        if (this.f38621a == null) {
            this.f38621a = new com.mbridge.msdk.tracker.network.toolbox.e();
        }
        String strA = this.f38621a.a(this);
        this.f38622b = strA;
        return strA;
    }

    public Map<String, String> f() {
        return Collections.emptyMap();
    }

    public int g() {
        return this.f38626f;
    }

    public p h() {
        return this.f38623c;
    }

    protected Map<String, String> i() {
        return null;
    }

    protected String j() {
        return "UTF-8";
    }

    public int k() {
        return this.f38628h;
    }

    public a l() {
        return a.NORMAL;
    }

    public long m() {
        return this.f38642v;
    }

    public long n() {
        return SystemClock.elapsedRealtime() - this.f38624d;
    }

    public x o() {
        return this.f38640t;
    }

    public String p() {
        return this.f38629i;
    }

    public final int q() {
        x xVarO = o();
        if (xVarO == null) {
            return 30000;
        }
        return xVarO.b();
    }

    public final long r() {
        x xVarO = o();
        if (xVarO == null) {
            return 30000L;
        }
        long jA = xVarO.a();
        if (jA < 0) {
            return 30000L;
        }
        return jA;
    }

    public int s() {
        return this.f38630j;
    }

    public String t() {
        return this.f38627g;
    }

    public String toString() {
        String str = "0x" + Integer.toHexString(s());
        StringBuilder sb2 = new StringBuilder();
        sb2.append(v() ? "[X] " : "[ ] ");
        sb2.append(t());
        sb2.append(" ");
        sb2.append(str);
        sb2.append(" ");
        sb2.append(l());
        sb2.append(" ");
        sb2.append(this.f38633m);
        return sb2.toString();
    }

    public boolean u() {
        boolean z10;
        synchronized (this.f38631k) {
            z10 = this.f38637q;
        }
        return z10;
    }

    public boolean v() {
        boolean z10;
        synchronized (this.f38631k) {
            z10 = this.f38636p;
        }
        return z10;
    }

    public void w() {
        synchronized (this.f38631k) {
            this.f38637q = true;
        }
    }

    void x() {
        synchronized (this.f38631k) {
        }
    }

    public boolean y() {
        return true;
    }

    public final boolean z() {
        return this.f38635o;
    }
}
