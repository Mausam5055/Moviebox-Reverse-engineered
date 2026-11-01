package lv;

import android.app.Application;
import android.os.Build;
import android.text.TextUtils;
import androidx.compose.foundation.e;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.c;
import com.cloud.tmc.kernel.utils.NetworkUtil;
import com.transsion.transfer.wifi.util.WifiUtils;
import com.transsion.transfer.wifi.util.d;
import java.util.Locale;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import yg.b;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final C0834a f69037r = new C0834a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f69038a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f69039b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f69040c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f69041d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f69042e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f69043f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f69044g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f69045h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f69046i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f69047j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f69048k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private String f69049l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private String f69050m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private String f69051n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private String f69052o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private String f69053p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f69054q;

    /* JADX INFO: renamed from: lv.a$a, reason: collision with other inner class name */
    public static final class C0834a {
        private C0834a() {
        }

        public /* synthetic */ C0834a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final String a(a aVar) {
            if (aVar.q()) {
                throw new RuntimeException("the device isn‘t sender");
            }
            if (aVar.a()) {
                String strB = b();
                String upperCase = d.f55965a.a(4).toUpperCase(Locale.ROOT);
                Intrinsics.g(upperCase, "toUpperCase(...)");
                return strB + "-5G-" + upperCase;
            }
            String strB2 = b();
            String upperCase2 = d.f55965a.a(4).toUpperCase(Locale.ROOT);
            Intrinsics.g(upperCase2, "toUpperCase(...)");
            return strB2 + "-" + upperCase2;
        }

        private final String b() {
            String upperCase = d.f55965a.a(2).toUpperCase(Locale.ROOT);
            Intrinsics.g(upperCase, "toUpperCase(...)");
            return "DIRECT-" + upperCase + "-MOVIEBOX";
        }

        public final a c(boolean z10) {
            String str = null;
            a aVar = new a(null, null, null, null, null, null, null, null, null, null, null, null, null, null, str, str, false, 131071, null);
            aVar.y("mb_unique");
            aVar.u(Build.DEVICE);
            aVar.s(Build.BRAND);
            aVar.w(Build.PRODUCT);
            aVar.C(Build.VERSION.RELEASE);
            aVar.D(String.valueOf(Build.VERSION.SDK_INT));
            aVar.A(String.valueOf(c.f()));
            aVar.B(c.h());
            aVar.v(c.e());
            b.a aVar2 = b.f79009a;
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            aVar.t(aVar2.e(applicationA));
            aVar.z("userId");
            aVar.r("avatarIndex");
            if (z10) {
                aVar.E(NetworkUtil.NETWORK_TYPE_5G);
            } else {
                aVar.E("2.4G");
            }
            aVar.H(a(aVar));
            com.transsion.transfer.wifi.util.b bVar = com.transsion.transfer.wifi.util.b.f55963a;
            String strP = aVar.p();
            if (strP == null) {
                strP = "";
            }
            String strSubstring = bVar.a(strP).substring(0, 8);
            Intrinsics.g(strSubstring, "substring(...)");
            aVar.G(strSubstring);
            aVar.x(true);
            return aVar;
        }
    }

    public a() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, 131071, null);
    }

    public a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, boolean z10) {
        this.f69038a = str;
        this.f69039b = str2;
        this.f69040c = str3;
        this.f69041d = str4;
        this.f69042e = str5;
        this.f69043f = str6;
        this.f69044g = str7;
        this.f69045h = str8;
        this.f69046i = str9;
        this.f69047j = str10;
        this.f69048k = str11;
        this.f69049l = str12;
        this.f69050m = str13;
        this.f69051n = str14;
        this.f69052o = str15;
        this.f69053p = str16;
        this.f69054q = z10;
    }

    public /* synthetic */ a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, (i11 & 8) != 0 ? null : str4, (i11 & 16) != 0 ? null : str5, (i11 & 32) != 0 ? null : str6, (i11 & 64) != 0 ? null : str7, (i11 & 128) != 0 ? null : str8, (i11 & 256) != 0 ? null : str9, (i11 & 512) != 0 ? null : str10, (i11 & 1024) != 0 ? null : str11, (i11 & 2048) != 0 ? null : str12, (i11 & 4096) != 0 ? null : str13, (i11 & 8192) != 0 ? null : str14, (i11 & 16384) != 0 ? null : str15, (i11 & 32768) != 0 ? null : str16, (i11 & 65536) != 0 ? false : z10);
    }

    public final void A(String str) {
        this.f69044g = str;
    }

    public final void B(String str) {
        this.f69045h = str;
    }

    public final void C(String str) {
        this.f69042e = str;
    }

    public final void D(String str) {
        this.f69043f = str;
    }

    public final void E(String str) {
        this.f69052o = str;
    }

    public final void F(String str) {
        this.f69053p = str;
    }

    public final void G(String str) {
        this.f69051n = str;
    }

    public final void H(String str) {
        this.f69050m = str;
    }

    public final boolean a() {
        return WifiUtils.f55960a.n() && TextUtils.equals(this.f69052o, NetworkUtil.NETWORK_TYPE_5G);
    }

    public final String b() {
        return this.f69049l;
    }

    public final String c() {
        return this.f69040c;
    }

    public final String d() {
        return this.f69047j;
    }

    public final String e() {
        return this.f69039b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return Intrinsics.c(this.f69038a, aVar.f69038a) && Intrinsics.c(this.f69039b, aVar.f69039b) && Intrinsics.c(this.f69040c, aVar.f69040c) && Intrinsics.c(this.f69041d, aVar.f69041d) && Intrinsics.c(this.f69042e, aVar.f69042e) && Intrinsics.c(this.f69043f, aVar.f69043f) && Intrinsics.c(this.f69044g, aVar.f69044g) && Intrinsics.c(this.f69045h, aVar.f69045h) && Intrinsics.c(this.f69046i, aVar.f69046i) && Intrinsics.c(this.f69047j, aVar.f69047j) && Intrinsics.c(this.f69048k, aVar.f69048k) && Intrinsics.c(this.f69049l, aVar.f69049l) && Intrinsics.c(this.f69050m, aVar.f69050m) && Intrinsics.c(this.f69051n, aVar.f69051n) && Intrinsics.c(this.f69052o, aVar.f69052o) && Intrinsics.c(this.f69053p, aVar.f69053p) && this.f69054q == aVar.f69054q;
    }

    public final String f() {
        return this.f69046i;
    }

    public final String g() {
        return this.f69041d;
    }

    public final String h() {
        return this.f69048k;
    }

    public int hashCode() {
        String str = this.f69038a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f69039b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f69040c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f69041d;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.f69042e;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.f69043f;
        int iHashCode6 = (iHashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.f69044g;
        int iHashCode7 = (iHashCode6 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.f69045h;
        int iHashCode8 = (iHashCode7 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.f69046i;
        int iHashCode9 = (iHashCode8 + (str9 == null ? 0 : str9.hashCode())) * 31;
        String str10 = this.f69047j;
        int iHashCode10 = (iHashCode9 + (str10 == null ? 0 : str10.hashCode())) * 31;
        String str11 = this.f69048k;
        int iHashCode11 = (iHashCode10 + (str11 == null ? 0 : str11.hashCode())) * 31;
        String str12 = this.f69049l;
        int iHashCode12 = (iHashCode11 + (str12 == null ? 0 : str12.hashCode())) * 31;
        String str13 = this.f69050m;
        int iHashCode13 = (iHashCode12 + (str13 == null ? 0 : str13.hashCode())) * 31;
        String str14 = this.f69051n;
        int iHashCode14 = (iHashCode13 + (str14 == null ? 0 : str14.hashCode())) * 31;
        String str15 = this.f69052o;
        int iHashCode15 = (iHashCode14 + (str15 == null ? 0 : str15.hashCode())) * 31;
        String str16 = this.f69053p;
        return ((iHashCode15 + (str16 != null ? str16.hashCode() : 0)) * 31) + e.a(this.f69054q);
    }

    public final String i() {
        return this.f69044g;
    }

    public final String j() {
        return this.f69045h;
    }

    public final String k() {
        return this.f69042e;
    }

    public final String l() {
        return this.f69043f;
    }

    public final String m() {
        return this.f69052o;
    }

    public final String n() {
        return this.f69053p;
    }

    public final String o() {
        return this.f69051n;
    }

    public final String p() {
        return this.f69050m;
    }

    public final boolean q() {
        return this.f69054q;
    }

    public final void r(String str) {
        this.f69049l = str;
    }

    public final void s(String str) {
        this.f69040c = str;
    }

    public final void t(String str) {
        this.f69047j = str;
    }

    public String toString() {
        return "WifiInfoModel(unique=" + this.f69038a + ", device=" + this.f69039b + ", brand=" + this.f69040c + ", product=" + this.f69041d + ", versionRelease=" + this.f69042e + ", versionSdkInt=" + this.f69043f + ", versionCode=" + this.f69044g + ", versionName=" + this.f69045h + ", packageName=" + this.f69046i + ", channel=" + this.f69047j + ", userId=" + this.f69048k + ", avatarIndex=" + this.f69049l + ", wifiSsid=" + this.f69050m + ", wifiPwd=" + this.f69051n + ", wifiChannel=" + this.f69052o + ", wifiIp=" + this.f69053p + ", isSender=" + this.f69054q + ")";
    }

    public final void u(String str) {
        this.f69039b = str;
    }

    public final void v(String str) {
        this.f69046i = str;
    }

    public final void w(String str) {
        this.f69041d = str;
    }

    public final void x(boolean z10) {
        this.f69054q = z10;
    }

    public final void y(String str) {
        this.f69038a = str;
    }

    public final void z(String str) {
        this.f69048k = str;
    }
}
