package oy;

import com.transsion.mb.config.manager.ConfigBean;
import com.transsnet.downloader.core.thread.DownloadExecutor;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import sm.f;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final a f72201k = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f72202a = "GET";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f72203b = 60000;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f72204c = 60000;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f72205d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f72206e = ((DownloadExecutor.f58633a.a() / 2) + 2) / this.f72205d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f72207f = 3;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f72208g = 5;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Lazy f72209h = LazyKt.b(new Function0() { // from class: oy.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Double.valueOf(c.c(this.f72200a));
        }
    });

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Lazy f72210i = LazyKt.b(new Function0() { // from class: oy.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Long.valueOf(c.k());
        }
    });

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f72211j = -1;

    /* JADX INFO: loaded from: classes7.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final double c(c cVar) {
        return cVar.l();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long k() {
        Long lX;
        ConfigBean configBeanC = f.f75407c.a().c("downloadRangeSize", true);
        String value = configBeanC != null ? configBeanC.getValue() : null;
        if (value == null || value.length() == 0 || (lX = StringsKt.x(value)) == null) {
            return 5242880L;
        }
        return lX.longValue();
    }

    private final double l() {
        Double dS;
        ConfigBean configBeanC = f.f75407c.a().c("download_speed_limit_ratio", true);
        String value = configBeanC != null ? configBeanC.getValue() : null;
        if (value == null || (dS = StringsKt.s(value)) == null) {
            return 0.3d;
        }
        return RangesKt.k(dS.doubleValue(), 0.0d, 1.0d);
    }

    public final double d() {
        return ((Number) this.f72209h.getValue()).doubleValue();
    }

    public final int e() {
        return this.f72205d;
    }

    public final int f() {
        return this.f72206e;
    }

    public final long g() {
        return ((Number) this.f72210i.getValue()).longValue();
    }

    public final int h() {
        return this.f72211j;
    }

    public final int i() {
        return this.f72208g;
    }

    public final int j() {
        return this.f72207f;
    }

    public final void m(int i11) {
        this.f72205d = i11;
    }
}
