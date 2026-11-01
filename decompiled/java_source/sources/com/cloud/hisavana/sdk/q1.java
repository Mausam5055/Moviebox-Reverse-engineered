package com.cloud.hisavana.sdk;

import com.cloud.hisavana.sdk.common.bean.DiskTrackingBean;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class q1 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f22849f = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f22850a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Long f22851b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Integer f22852c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f22853d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f22854e;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final q1 a(DiskTrackingBean bean) {
            Intrinsics.h(bean, "bean");
            q1 q1Var = new q1(null, null, null, null, null, 31, null);
            q1Var.h(bean.getUuid());
            q1Var.c(Long.valueOf(bean.getCreateTime()));
            q1Var.b(Integer.valueOf(bean.getRetryTimes().get()));
            q1Var.f(GsonUtil.d(bean));
            q1Var.d(bean.getMd5());
            return q1Var;
        }
    }

    public q1() {
        this(null, null, null, null, null, 31, null);
    }

    public q1(String uuid, Long l11, Integer num, String str, String str2) {
        Intrinsics.h(uuid, "uuid");
        this.f22850a = uuid;
        this.f22851b = l11;
        this.f22852c = num;
        this.f22853d = str;
        this.f22854e = str2;
    }

    public /* synthetic */ q1(String str, Long l11, Integer num, String str2, String str3, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? "" : str, (i11 & 2) != 0 ? 0L : l11, (i11 & 4) != 0 ? 0 : num, (i11 & 8) != 0 ? null : str2, (i11 & 16) != 0 ? null : str3);
    }

    public final Long a() {
        return this.f22851b;
    }

    public final void b(Integer num) {
        this.f22852c = num;
    }

    public final void c(Long l11) {
        this.f22851b = l11;
    }

    public final void d(String str) {
        this.f22854e = str;
    }

    public final String e() {
        return this.f22854e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q1)) {
            return false;
        }
        q1 q1Var = (q1) obj;
        return Intrinsics.c(this.f22850a, q1Var.f22850a) && Intrinsics.c(this.f22851b, q1Var.f22851b) && Intrinsics.c(this.f22852c, q1Var.f22852c) && Intrinsics.c(this.f22853d, q1Var.f22853d) && Intrinsics.c(this.f22854e, q1Var.f22854e);
    }

    public final void f(String str) {
        this.f22853d = str;
    }

    public final Integer g() {
        return this.f22852c;
    }

    public final void h(String str) {
        Intrinsics.h(str, "<set-?>");
        this.f22850a = str;
    }

    public int hashCode() {
        int iHashCode = this.f22850a.hashCode() * 31;
        Long l11 = this.f22851b;
        int iHashCode2 = (iHashCode + (l11 == null ? 0 : l11.hashCode())) * 31;
        Integer num = this.f22852c;
        int iHashCode3 = (iHashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        String str = this.f22853d;
        int iHashCode4 = (iHashCode3 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f22854e;
        return iHashCode4 + (str2 != null ? str2.hashCode() : 0);
    }

    public final String i() {
        return this.f22853d;
    }

    public final String j() {
        return this.f22850a;
    }

    public String toString() {
        return "RetryTrackingEntity(uuid=" + this.f22850a + ", create_time=" + this.f22851b + ", retry_times=" + this.f22852c + ", tracking_data=" + this.f22853d + ", md5=" + this.f22854e + ')';
    }
}
