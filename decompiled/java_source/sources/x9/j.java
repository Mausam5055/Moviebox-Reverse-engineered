package x9;

import android.net.Uri;
import com.google.android.exoplayer2.o1;
import com.google.common.collect.ImmutableList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f78110a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final o1 f78111b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImmutableList f78112c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f78113d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f78114e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f78115f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final List f78116g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final i f78117h;

    public static class b extends j implements w9.e {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        final k.a f78118i;

        public b(long j11, o1 o1Var, List list, k.a aVar, List list2, List list3, List list4) {
            super(j11, o1Var, list, aVar, list2, list3, list4);
            this.f78118i = aVar;
        }

        @Override // w9.e
        public long a(long j11, long j12) {
            return this.f78118i.h(j11, j12);
        }

        @Override // w9.e
        public long b(long j11, long j12) {
            return this.f78118i.d(j11, j12);
        }

        @Override // w9.e
        public long c(long j11, long j12) {
            return this.f78118i.f(j11, j12);
        }

        @Override // w9.e
        public i d(long j11) {
            return this.f78118i.k(this, j11);
        }

        @Override // w9.e
        public long e(long j11, long j12) {
            return this.f78118i.i(j11, j12);
        }

        @Override // w9.e
        public long f(long j11) {
            return this.f78118i.g(j11);
        }

        @Override // w9.e
        public boolean g() {
            return this.f78118i.l();
        }

        @Override // w9.e
        public long getTimeUs(long j11) {
            return this.f78118i.j(j11);
        }

        @Override // w9.e
        public long h() {
            return this.f78118i.e();
        }

        @Override // w9.e
        public long i(long j11, long j12) {
            return this.f78118i.c(j11, j12);
        }

        @Override // x9.j
        public String j() {
            return null;
        }

        @Override // x9.j
        public w9.e k() {
            return this;
        }

        @Override // x9.j
        public i l() {
            return null;
        }
    }

    public static class c extends j {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final Uri f78119i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final long f78120j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private final String f78121k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private final i f78122l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private final m f78123m;

        public c(long j11, o1 o1Var, List list, k.e eVar, List list2, List list3, List list4, String str, long j12) {
            super(j11, o1Var, list, eVar, list2, list3, list4);
            this.f78119i = Uri.parse(((x9.b) list.get(0)).f78057a);
            i iVarC = eVar.c();
            this.f78122l = iVarC;
            this.f78121k = str;
            this.f78120j = j12;
            this.f78123m = iVarC != null ? null : new m(new i(null, 0L, j12));
        }

        @Override // x9.j
        public String j() {
            return this.f78121k;
        }

        @Override // x9.j
        public w9.e k() {
            return this.f78123m;
        }

        @Override // x9.j
        public i l() {
            return this.f78122l;
        }
    }

    private j(long j11, o1 o1Var, List list, k kVar, List list2, List list3, List list4) {
        com.google.android.exoplayer2.util.a.a(!list.isEmpty());
        this.f78110a = j11;
        this.f78111b = o1Var;
        this.f78112c = ImmutableList.copyOf((Collection) list);
        this.f78114e = list2 == null ? Collections.emptyList() : Collections.unmodifiableList(list2);
        this.f78115f = list3;
        this.f78116g = list4;
        this.f78117h = kVar.a(this);
        this.f78113d = kVar.b();
    }

    public static j n(long j11, o1 o1Var, List list, k kVar, List list2, List list3, List list4, String str) {
        if (kVar instanceof k.e) {
            return new c(j11, o1Var, list, (k.e) kVar, list2, list3, list4, str, -1L);
        }
        if (kVar instanceof k.a) {
            return new b(j11, o1Var, list, (k.a) kVar, list2, list3, list4);
        }
        throw new IllegalArgumentException("segmentBase must be of type SingleSegmentBase or MultiSegmentBase");
    }

    public abstract String j();

    public abstract w9.e k();

    public abstract i l();

    public i m() {
        return this.f78117h;
    }
}
