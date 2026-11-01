package com.cloud.hisavana.sdk;

import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class y3 {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final a f23113i = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f23114a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f23115b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f23116c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f23117d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Double f23118e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Integer f23119f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Integer f23120g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f23121h;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final List a(List list) {
            if (list == null) {
                return CollectionsKt.l();
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                AdsDTO adsDTO = (AdsDTO) it.next();
                y3 y3Var = new y3(0, null, null, null, null, null, null, null, 255, null);
                y3Var.b(adsDTO.getTableId());
                y3Var.h(adsDTO.getAdCreativeId());
                y3Var.j(adsDTO.getCodeSeatId());
                y3Var.l(adsDTO.getFilePath());
                y3Var.c(adsDTO.getFirstPrice());
                y3Var.g(Integer.valueOf(adsDTO.isOfflineAd() ? 1 : 0));
                y3Var.d(Integer.valueOf(adsDTO.getAdRequestVer()));
                y3Var.e(GsonUtil.d(adsDTO));
                arrayList.add(y3Var);
            }
            return arrayList;
        }
    }

    public y3() {
        this(0, null, null, null, null, null, null, null, 255, null);
    }

    public y3(int i11, String str, String str2, String str3, Double d11, Integer num, Integer num2, String str4) {
        this.f23114a = i11;
        this.f23115b = str;
        this.f23116c = str2;
        this.f23117d = str3;
        this.f23118e = d11;
        this.f23119f = num;
        this.f23120g = num2;
        this.f23121h = str4;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ y3(int i11, String str, String str2, String str3, Double d11, Integer num, Integer num2, String str4, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        Integer num3 = 0;
        this((i12 & 1) == 0 ? i11 : 0, (i12 & 2) != 0 ? null : str, (i12 & 4) != 0 ? null : str2, (i12 & 8) != 0 ? null : str3, (i12 & 16) != 0 ? Double.valueOf(0.0d) : d11, (i12 & 32) != 0 ? num3 : num, (i12 & 64) == 0 ? num2 : 0, (i12 & 128) == 0 ? str4 : null);
    }

    public final String a() {
        return this.f23121h;
    }

    public final void b(int i11) {
        this.f23114a = i11;
    }

    public final void c(Double d11) {
        this.f23118e = d11;
    }

    public final void d(Integer num) {
        this.f23120g = num;
    }

    public final void e(String str) {
        this.f23121h = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof y3)) {
            return false;
        }
        y3 y3Var = (y3) obj;
        return this.f23114a == y3Var.f23114a && Intrinsics.c(this.f23115b, y3Var.f23115b) && Intrinsics.c(this.f23116c, y3Var.f23116c) && Intrinsics.c(this.f23117d, y3Var.f23117d) && Intrinsics.c(this.f23118e, y3Var.f23118e) && Intrinsics.c(this.f23119f, y3Var.f23119f) && Intrinsics.c(this.f23120g, y3Var.f23120g) && Intrinsics.c(this.f23121h, y3Var.f23121h);
    }

    public final String f() {
        return this.f23115b;
    }

    public final void g(Integer num) {
        this.f23119f = num;
    }

    public final void h(String str) {
        this.f23115b = str;
    }

    public int hashCode() {
        int i11 = this.f23114a * 31;
        String str = this.f23115b;
        int iHashCode = (i11 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f23116c;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f23117d;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Double d11 = this.f23118e;
        int iHashCode4 = (iHashCode3 + (d11 == null ? 0 : d11.hashCode())) * 31;
        Integer num = this.f23119f;
        int iHashCode5 = (iHashCode4 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.f23120g;
        int iHashCode6 = (iHashCode5 + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str4 = this.f23121h;
        return iHashCode6 + (str4 != null ? str4.hashCode() : 0);
    }

    public final Integer i() {
        return this.f23120g;
    }

    public final void j(String str) {
        this.f23116c = str;
    }

    public final String k() {
        return this.f23116c;
    }

    public final void l(String str) {
        this.f23117d = str;
    }

    public final String m() {
        return this.f23117d;
    }

    public final Double n() {
        return this.f23118e;
    }

    public final int o() {
        return this.f23114a;
    }

    public final Integer p() {
        return this.f23119f;
    }

    public String toString() {
        return "AdListEntity(_id=" + this.f23114a + ", ad_creative_id=" + this.f23115b + ", codeSeatId=" + this.f23116c + ", file_path=" + this.f23117d + ", price=" + this.f23118e + ", is_offline_ad=" + this.f23119f + ", ad_request_ver=" + this.f23120g + ", ad_bean=" + this.f23121h + ')';
    }
}
