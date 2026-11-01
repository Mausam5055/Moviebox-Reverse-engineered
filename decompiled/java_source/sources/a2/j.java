package a2;

import android.net.Uri;
import androidx.media3.common.r;
import com.google.common.collect.ImmutableList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f95a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final r f96b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImmutableList f97c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f98d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f99e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f100f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final List f101g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final i f102h;

    public static class b extends j implements z1.e {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        final k.a f103i;

        public b(long j11, r rVar, List list, k.a aVar, List list2, List list3, List list4) {
            super(j11, rVar, list, aVar, list2, list3, list4);
            this.f103i = aVar;
        }

        @Override // z1.e
        public long a(long j11, long j12) {
            return this.f103i.h(j11, j12);
        }

        @Override // z1.e
        public long b(long j11, long j12) {
            return this.f103i.d(j11, j12);
        }

        @Override // z1.e
        public long c(long j11, long j12) {
            return this.f103i.f(j11, j12);
        }

        @Override // z1.e
        public i d(long j11) {
            return this.f103i.k(this, j11);
        }

        @Override // z1.e
        public long e(long j11, long j12) {
            return this.f103i.i(j11, j12);
        }

        @Override // z1.e
        public long f(long j11) {
            return this.f103i.g(j11);
        }

        @Override // z1.e
        public boolean g() {
            return this.f103i.l();
        }

        @Override // z1.e
        public long getTimeUs(long j11) {
            return this.f103i.j(j11);
        }

        @Override // z1.e
        public long h() {
            return this.f103i.e();
        }

        @Override // z1.e
        public long i(long j11, long j12) {
            return this.f103i.c(j11, j12);
        }

        @Override // a2.j
        public String j() {
            return null;
        }

        @Override // a2.j
        public z1.e k() {
            return this;
        }

        @Override // a2.j
        public i l() {
            return null;
        }
    }

    public static class c extends j {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final Uri f104i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final long f105j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private final String f106k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private final i f107l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private final m f108m;

        public c(long j11, r rVar, List list, k.e eVar, List list2, List list3, List list4, String str, long j12) {
            super(j11, rVar, list, eVar, list2, list3, list4);
            this.f104i = Uri.parse(((a2.b) list.get(0)).f41a);
            i iVarC = eVar.c();
            this.f107l = iVarC;
            this.f106k = str;
            this.f105j = j12;
            this.f108m = iVarC != null ? null : new m(new i(null, 0L, j12));
        }

        @Override // a2.j
        public String j() {
            return this.f106k;
        }

        @Override // a2.j
        public z1.e k() {
            return this.f108m;
        }

        @Override // a2.j
        public i l() {
            return this.f107l;
        }
    }

    private j(long j11, r rVar, List list, k kVar, List list2, List list3, List list4) {
        androidx.media3.common.util.a.a(!list.isEmpty());
        this.f95a = j11;
        this.f96b = rVar;
        this.f97c = ImmutableList.copyOf((Collection) list);
        this.f99e = list2 == null ? Collections.emptyList() : Collections.unmodifiableList(list2);
        this.f100f = list3;
        this.f101g = list4;
        this.f102h = kVar.a(this);
        this.f98d = kVar.b();
    }

    public static j n(long j11, r rVar, List list, k kVar, List list2, List list3, List list4, String str) {
        if (kVar instanceof k.e) {
            return new c(j11, rVar, list, (k.e) kVar, list2, list3, list4, str, -1L);
        }
        if (kVar instanceof k.a) {
            return new b(j11, rVar, list, (k.a) kVar, list2, list3, list4);
        }
        throw new IllegalArgumentException("segmentBase must be of type SingleSegmentBase or MultiSegmentBase");
    }

    public abstract String j();

    public abstract z1.e k();

    public abstract i l();

    public i m() {
        return this.f102h;
    }
}
