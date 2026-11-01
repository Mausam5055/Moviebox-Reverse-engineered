package com.mbridge.msdk.foundation.entity;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.mbridge.msdk.foundation.tools.k0;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class m {
    public static int N = 1;
    public static int O;
    private String A;
    private String B;
    private int C;
    private String D;
    private String E;
    private String G;
    private String H;
    private String I;
    private int J;
    private long K;
    private String L;
    private int M;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f35245b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f35246c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f35248e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f35249f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f35250g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f35251h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f35252i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f35253j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f35254k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private String f35255l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private String f35256m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private String f35257n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private String f35258o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f35259p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private String f35260q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private String f35261r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private String f35262s;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f35264u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private String f35265v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private String f35266w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private String f35267x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private String f35268y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private String f35269z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Map<String, String> f35244a = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f35247d = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f35263t = 0;
    private int F = 0;

    public m() {
    }

    public m(Context context, CampaignEx campaignEx, int i11, String str, long j11, int i12) {
        if (i12 == 1 || i12 == 287 || i12 == 94) {
            this.f35260q = "m_download_end";
        } else if (i12 == 95) {
            this.f35260q = "2000025";
        }
        int iS = k0.s(context);
        this.f35264u = iS;
        this.f35265v = k0.a(context, iS);
        this.J = campaignEx.getVideoLength();
        this.f35268y = campaignEx.getRequestId();
        this.f35269z = campaignEx.getRequestIdNotice();
        if (!TextUtils.isEmpty(this.f35266w)) {
            try {
                this.f35266w = URLEncoder.encode(campaignEx.getNoticeUrl() == null ? campaignEx.getClickURL() : campaignEx.getNoticeUrl(), "utf-8");
            } catch (UnsupportedEncodingException e11) {
                e11.printStackTrace();
            }
        }
        this.C = i11;
        this.f35252i = str;
        this.K = j11 == 0 ? campaignEx.getVideoSize() : j11;
    }

    public m(String str) {
        this.f35257n = str;
    }

    public m(String str, int i11, int i12, int i13, int i14, String str2, String str3, int i15, String str4, int i16, String str5) {
        this.f35260q = str;
        this.f35264u = i11;
        this.f35265v = str5;
        this.f35259p = i12;
        this.M = i13;
        this.J = i14;
        try {
            if (!TextUtils.isEmpty(str2)) {
                this.f35266w = URLEncoder.encode(str2, "utf-8");
            }
        } catch (UnsupportedEncodingException e11) {
            e11.printStackTrace();
        }
        this.f35267x = str3;
        this.C = i15;
        this.f35252i = str4;
        this.K = i16;
    }

    public m(String str, int i11, int i12, String str2, int i13, String str3, int i14, String str4) {
        this.f35260q = str;
        this.f35264u = i11;
        this.f35265v = str4;
        this.J = i12;
        if (!TextUtils.isEmpty(str2)) {
            try {
                this.f35266w = URLEncoder.encode(str2, "utf-8");
            } catch (UnsupportedEncodingException e11) {
                e11.printStackTrace();
            }
        }
        this.C = i13;
        this.f35252i = str3;
        this.K = i14;
    }

    public m(String str, int i11, String str2, String str3, String str4) {
        this.f35260q = str;
        this.f35265v = str4;
        this.f35264u = i11;
        if (!TextUtils.isEmpty(str2)) {
            try {
                this.f35266w = URLEncoder.encode(str2, "utf-8");
            } catch (UnsupportedEncodingException e11) {
                e11.printStackTrace();
            }
        }
        this.f35267x = str3;
    }

    public m(String str, int i11, String str2, String str3, String str4, String str5, String str6, String str7) {
        this.f35260q = str;
        this.C = i11;
        this.f35252i = str2;
        try {
            if (!TextUtils.isEmpty(str3)) {
                this.f35254k = URLEncoder.encode(str3, "utf-8");
            }
        } catch (UnsupportedEncodingException e11) {
            e11.printStackTrace();
        }
        this.f35249f = str4;
        this.I = str5;
        this.f35267x = str6;
        this.f35253j = str7;
        if (Integer.valueOf(str2).intValue() > com.mbridge.msdk.foundation.same.a.L) {
            this.C = 2;
        }
    }

    public m(String str, String str2, String str3, String str4, String str5, int i11) {
        this.f35260q = str;
        this.f35249f = str2;
        this.f35268y = str3;
        this.f35269z = str4;
        this.I = str5;
        this.f35264u = i11;
    }

    public m(String str, String str2, String str3, String str4, String str5, int i11, int i12, String str6) {
        this.f35260q = str;
        this.f35249f = str2;
        this.f35268y = str3;
        this.f35269z = str4;
        this.I = str5;
        this.f35264u = i11;
        this.f35267x = str6;
        this.f35248e = i12;
    }

    public m(String str, String str2, String str3, String str4, String str5, String str6, int i11, String str7) {
        this.f35260q = str;
        this.f35256m = str2;
        this.H = str3;
        this.f35261r = str4;
        this.I = str5;
        this.f35249f = str6;
        this.f35264u = i11;
        this.f35265v = str7;
    }

    public String A() {
        return this.H;
    }

    public String B() {
        return this.I;
    }

    public int C() {
        return this.J;
    }

    public long D() {
        return this.K;
    }

    public String E() {
        return this.L;
    }

    public int F() {
        return this.M;
    }

    public String a() {
        return this.f35245b;
    }

    public String a(String str, String str2) {
        Map<String, String> map;
        if (TextUtils.isEmpty(str) || (map = this.f35244a) == null) {
            return str2;
        }
        try {
            String str3 = map.get(str);
            return TextUtils.isEmpty(str3) ? str2 : str3;
        } catch (Exception unused) {
            return str2;
        }
    }

    public void a(int i11) {
        this.f35246c = i11;
    }

    public void a(String str) {
        this.f35245b = str;
    }

    public int b() {
        return this.f35246c;
    }

    public void b(int i11) {
        this.f35263t = i11;
    }

    public void b(String str) {
        this.f35249f = str;
    }

    public void b(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        if (this.f35244a == null) {
            this.f35244a = new HashMap();
        }
        try {
            this.f35244a.put(str, str2);
        } catch (Exception unused) {
        }
    }

    public int c() {
        return this.f35248e;
    }

    public void c(int i11) {
        this.f35264u = i11;
    }

    public void c(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f35250g = URLEncoder.encode(str);
    }

    public String d() {
        return this.f35249f;
    }

    public void d(int i11) {
        this.C = i11;
    }

    public void d(String str) {
        this.f35251h = str;
    }

    public String e() {
        return this.f35250g;
    }

    public void e(int i11) {
        this.F = i11;
    }

    public void e(String str) {
        this.f35252i = str;
    }

    public String f() {
        return this.f35251h;
    }

    public void f(String str) {
        this.f35253j = str;
    }

    public String g() {
        return this.f35252i;
    }

    public void g(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.f35254k = URLEncoder.encode(str, "utf-8");
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public String h() {
        return this.f35253j;
    }

    public void h(String str) {
        this.f35255l = str;
    }

    public String i() {
        return this.f35254k;
    }

    public void i(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.f35258o = URLEncoder.encode(str, "utf-8");
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public String j() {
        return this.f35255l;
    }

    public void j(String str) {
        this.f35260q = str;
    }

    public String k() {
        return this.f35256m;
    }

    public void k(String str) {
        this.f35262s = str;
    }

    public String l() {
        return this.f35258o;
    }

    public void l(String str) {
        this.f35265v = str;
    }

    public int m() {
        return this.f35259p;
    }

    public void m(String str) {
        this.f35267x = str;
    }

    public String n() {
        return this.f35260q;
    }

    public void n(String str) {
        this.f35268y = str;
    }

    public String o() {
        return this.f35261r;
    }

    public void o(String str) {
        this.f35269z = str;
    }

    public int p() {
        return this.f35263t;
    }

    public void p(String str) {
        this.A = str;
    }

    public int q() {
        return this.f35264u;
    }

    public void q(String str) {
        this.B = str;
    }

    public String r() {
        return this.f35265v;
    }

    public void r(String str) {
        this.D = str;
    }

    public String s() {
        return this.f35266w;
    }

    public void s(String str) {
        this.E = str;
    }

    public String t() {
        return TextUtils.isEmpty(this.f35267x) ? "" : this.f35267x;
    }

    public void t(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.G = URLEncoder.encode(str, "utf-8");
        } catch (UnsupportedEncodingException e11) {
            e11.printStackTrace();
        }
    }

    @NonNull
    public String toString() {
        return "RewardReportData [key=" + this.f35260q + ", networkType=" + this.f35264u + ", isCompleteView=" + this.f35259p + ", watchedMillis=" + this.M + ", videoLength=" + this.J + ", offerUrl=" + this.f35266w + ", reason=" + this.f35267x + ", result=" + this.C + ", duration=" + this.f35252i + ", videoSize=" + this.K + "]";
    }

    public String u() {
        return this.f35268y;
    }

    public void u(String str) {
        this.I = str;
    }

    public String v() {
        return this.f35269z;
    }

    public void v(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.L = URLEncoder.encode(str, "utf-8");
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public String w() {
        return this.A;
    }

    public int x() {
        return this.C;
    }

    public int y() {
        return this.F;
    }

    public String z() {
        return this.G;
    }
}
