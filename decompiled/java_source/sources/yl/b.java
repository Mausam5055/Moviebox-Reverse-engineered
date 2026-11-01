package yl;

import java.util.LinkedHashMap;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes6.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected String f79032a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected Object f79033b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected Map f79034c = new LinkedHashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected boolean f79035d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected int f79036e = 10000;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected int f79037f = 10000;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected boolean f79038g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected SSLSocketFactory f79039h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected HostnameVerifier f79040i;

    public b a(int i11) {
        this.f79036e = i11;
        return this;
    }

    public b b(boolean z10) {
        this.f79035d = z10;
        return this;
    }

    public b c(int i11) {
        this.f79037f = i11;
        return this;
    }

    public b d(String str) {
        this.f79032a = str;
        return this;
    }
}
