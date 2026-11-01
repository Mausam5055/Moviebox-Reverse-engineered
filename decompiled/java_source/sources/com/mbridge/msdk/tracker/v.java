package com.mbridge.msdk.tracker;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class v<T> extends com.mbridge.msdk.tracker.network.t<T> {
    private com.mbridge.msdk.tracker.network.e A;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private Map<String, String> f38736w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private com.mbridge.msdk.tracker.network.t.a f38737x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private com.mbridge.msdk.tracker.network.v.b<T> f38738y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private w f38739z;

    public v(String str, int i11) {
        super(i11, str);
    }

    public v(String str, int i11, int i12) {
        super(i11, str, i12);
    }

    public com.mbridge.msdk.tracker.network.v.b<T> C() {
        return this.f38738y;
    }

    @Override // com.mbridge.msdk.tracker.network.t
    protected com.mbridge.msdk.tracker.network.v<T> a(com.mbridge.msdk.tracker.network.q qVar) {
        return this.f38739z.a(qVar);
    }

    public void a(com.mbridge.msdk.tracker.network.t.a aVar) {
        this.f38737x = aVar;
    }

    public void a(com.mbridge.msdk.tracker.network.v.b<T> bVar) {
        this.f38738y = bVar;
    }

    public void a(w wVar) {
        this.f38739z = wVar;
    }

    @Override // com.mbridge.msdk.tracker.network.t
    protected void a(T t11) {
        com.mbridge.msdk.tracker.network.v.b<T> bVarC = C();
        this.f38738y = bVarC;
        if (bVarC != null) {
            bVarC.a(t11);
        }
    }

    public void a(Map<String, String> map) {
        this.f38736w = map;
    }

    @Override // com.mbridge.msdk.tracker.network.t
    public boolean a() {
        return false;
    }

    @Override // com.mbridge.msdk.tracker.network.t
    public Map<String, String> f() {
        HashMap map = new HashMap();
        map.put(HttpHeaders.CONTENT_TYPE, "application/x-www-form-urlencoded");
        map.put("Charset", "UTF-8");
        return map;
    }

    @Override // com.mbridge.msdk.tracker.network.t
    protected Map<String, String> i() {
        return this.f38736w;
    }

    @Override // com.mbridge.msdk.tracker.network.t
    public com.mbridge.msdk.tracker.network.t.a l() {
        return this.f38737x;
    }

    @Override // com.mbridge.msdk.tracker.network.t
    public com.mbridge.msdk.tracker.network.x o() {
        if (y.b(this.A)) {
            this.A = new com.mbridge.msdk.tracker.network.e(30000, 0);
        }
        return this.A;
    }
}
