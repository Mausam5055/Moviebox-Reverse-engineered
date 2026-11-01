package com.cloud.hisavana.sdk;

import android.text.TextUtils;
import com.cloud.hisavana.sdk.common.bean.SSPWebPageReqInfo;
import com.cloud.hisavana.sdk.data.bean.response.ConfigCodeSeatDTO;
import com.cloud.sdk.commonutil.util.DeviceUtil;

/* JADX INFO: loaded from: classes3.dex */
public final class q3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f22865a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f22866b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f22867c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f22868d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f22869e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f22870f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f22871g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f22872h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final b7.b f22873i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final boolean f22874j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final boolean f22875k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final boolean f22876l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final boolean f22877m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final double f22878n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final boolean f22879o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final int f22880p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final String f22881q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f22882r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private ConfigCodeSeatDTO f22883s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f22884t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f22885u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private String f22886v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private SSPWebPageReqInfo f22887w;

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f22888a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f22889b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f22890c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f22891d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f22892e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f22893f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f22894g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private b7.b f22895h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private boolean f22896i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private boolean f22897j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private boolean f22898k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private boolean f22899l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private double f22900m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private boolean f22901n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private int f22902o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private String f22903p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private int f22904q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private String f22905r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private SSPWebPageReqInfo f22906s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private boolean f22907t;

        public b() {
            this("");
        }

        public b(String str) {
            this.f22892e = 1;
            this.f22896i = true;
            this.f22897j = false;
            this.f22898k = false;
            this.f22899l = false;
            this.f22901n = false;
            this.f22907t = false;
            this.f22903p = DeviceUtil.o();
            this.f22904q = 45000;
            if (TextUtils.isEmpty(str)) {
                this.f22905r = com.cloud.hisavana.sdk.common.util.m0.b();
            } else {
                this.f22905r = str;
            }
            this.f22902o = 1;
            this.f22895h = new b7.b(null, null, null);
        }

        public b a(int i11) {
            if (i11 < 1) {
                i11 = 1;
            }
            this.f22892e = i11;
            return this;
        }

        public b b(b7.a aVar) {
            if (aVar == null) {
                return this;
            }
            if (!this.f22907t) {
                String strC = aVar.c();
                if (!TextUtils.isEmpty(strC)) {
                    this.f22903p = strC.replace("hisa-", "");
                }
            }
            if (aVar.e() > 0) {
                this.f22904q = aVar.e();
            }
            if (aVar.d() != -1) {
                this.f22902o = aVar.d();
            }
            this.f22901n = aVar.g();
            String strF = aVar.f();
            if (!this.f22907t && !TextUtils.isEmpty(strF)) {
                this.f22905r = strF.replace("hisa-", "");
            }
            if (aVar.b() > 0.0d) {
                this.f22900m = aVar.b();
            }
            return this;
        }

        public b c(b7.b bVar) {
            if (bVar != null) {
                this.f22895h = bVar;
            }
            return this;
        }

        public b d(SSPWebPageReqInfo sSPWebPageReqInfo) {
            this.f22906s = sSPWebPageReqInfo;
            return this;
        }

        public b e(String str) {
            this.f22888a = str;
            return this;
        }

        public b f(boolean z10) {
            this.f22907t = z10;
            return this;
        }

        public q3 g() {
            return new q3(this);
        }

        public b i(int i11) {
            this.f22894g = i11;
            return this;
        }

        public b j(boolean z10) {
            this.f22891d = z10;
            return this;
        }

        public b l(int i11) {
            this.f22890c = i11;
            return this;
        }

        public b m(boolean z10) {
            this.f22899l = z10;
            return this;
        }

        public b o(boolean z10) {
            this.f22893f = z10;
            return this;
        }

        public b r(boolean z10) {
            this.f22889b = z10;
            return this;
        }

        public b s(boolean z10) {
            this.f22898k = z10;
            return this;
        }

        public b v(boolean z10) {
            this.f22897j = z10;
            return this;
        }
    }

    private q3(b bVar) {
        this.f22882r = false;
        this.f22866b = bVar.f22888a;
        this.f22867c = bVar.f22889b;
        this.f22868d = bVar.f22890c;
        this.f22869e = bVar.f22891d;
        this.f22870f = bVar.f22892e;
        this.f22871g = bVar.f22893f;
        this.f22872h = bVar.f22894g;
        this.f22873i = bVar.f22895h;
        this.f22874j = bVar.f22896i;
        this.f22875k = bVar.f22897j;
        this.f22876l = bVar.f22898k;
        this.f22877m = bVar.f22899l;
        this.f22878n = bVar.f22900m;
        this.f22879o = bVar.f22901n;
        this.f22880p = bVar.f22902o;
        this.f22886v = bVar.f22903p;
        this.f22881q = bVar.f22905r;
        this.f22885u = bVar.f22904q;
        this.f22865a = System.currentTimeMillis();
        this.f22887w = bVar.f22906s;
        this.f22882r = bVar.f22907t;
    }

    public int a() {
        return this.f22870f;
    }

    public void b(int i11) {
        this.f22884t = i11;
    }

    public void c(ConfigCodeSeatDTO configCodeSeatDTO) {
        this.f22883s = configCodeSeatDTO;
    }

    public void d(String str) {
        this.f22886v = str;
    }

    public int e() {
        return this.f22872h;
    }

    public ConfigCodeSeatDTO f() {
        ConfigCodeSeatDTO configCodeSeatDTO = this.f22883s;
        return configCodeSeatDTO == null ? new ConfigCodeSeatDTO() : configCodeSeatDTO;
    }

    public long g() {
        return this.f22865a;
    }

    public int h() {
        return this.f22868d;
    }

    public String i() {
        return this.f22866b;
    }

    public String j() {
        return this.f22886v;
    }

    public int k() {
        return this.f22880p;
    }

    public b7.b l() {
        return this.f22873i;
    }

    public int m() {
        return this.f22885u;
    }

    public String n() {
        return this.f22881q;
    }

    public int o() {
        return this.f22884t;
    }

    public SSPWebPageReqInfo p() {
        return this.f22887w;
    }

    public boolean q() {
        return this.f22874j;
    }

    public boolean r() {
        return this.f22882r;
    }

    public boolean s() {
        return this.f22869e;
    }

    public boolean t() {
        return this.f22877m;
    }

    public boolean u() {
        return this.f22871g;
    }

    public boolean v() {
        return this.f22867c;
    }

    public boolean w() {
        return this.f22876l;
    }

    public boolean x() {
        return this.f22875k;
    }

    public boolean y() {
        return this.f22879o;
    }
}
