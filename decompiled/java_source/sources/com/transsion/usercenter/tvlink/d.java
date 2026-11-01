package com.transsion.usercenter.tvlink;

import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import com.transsion.mb.config.manager.ConfigBean;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import sm.f;

/* JADX INFO: loaded from: classes7.dex */
public final class d extends t0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f57500c = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b0 f57501a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final LiveData f57502b;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f57503a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f57504b;

        public b(String tvDownloadUrl, String webLinkUrl) {
            Intrinsics.h(tvDownloadUrl, "tvDownloadUrl");
            Intrinsics.h(webLinkUrl, "webLinkUrl");
            this.f57503a = tvDownloadUrl;
            this.f57504b = webLinkUrl;
        }

        public final b a(String tvDownloadUrl, String webLinkUrl) {
            Intrinsics.h(tvDownloadUrl, "tvDownloadUrl");
            Intrinsics.h(webLinkUrl, "webLinkUrl");
            return new b(tvDownloadUrl, webLinkUrl);
        }

        public final String b() {
            return this.f57503a;
        }

        public final String c() {
            return this.f57504b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return Intrinsics.c(this.f57503a, bVar.f57503a) && Intrinsics.c(this.f57504b, bVar.f57504b);
        }

        public int hashCode() {
            return (this.f57503a.hashCode() * 31) + this.f57504b.hashCode();
        }

        public String toString() {
            return "TvLinkUrls(tvDownloadUrl=" + this.f57503a + ", webLinkUrl=" + this.f57504b + ")";
        }
    }

    public d() {
        b0 b0Var = new b0();
        this.f57501a = b0Var;
        this.f57502b = b0Var;
    }

    public final LiveData b() {
        return this.f57502b;
    }

    public final void c() {
        b0 b0Var = this.f57501a;
        f.a aVar = f.f75407c;
        ConfigBean configBeanC = aVar.a().c("sa_me_tv_download_url", true);
        String value = configBeanC != null ? configBeanC.getValue() : null;
        if (value == null) {
            value = "";
        }
        ConfigBean configBeanC2 = aVar.a().c("sa_me_web_link_url", true);
        String value2 = configBeanC2 != null ? configBeanC2.getValue() : null;
        b0Var.q(new b(value, value2 != null ? value2 : ""));
    }
}
