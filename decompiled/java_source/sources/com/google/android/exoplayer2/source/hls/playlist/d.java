package com.google.android.exoplayer2.source.hls.playlist;

import android.net.Uri;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.g3;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class d extends y9.d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f26123d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f26124e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f26125f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f26126g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f26127h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f26128i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f26129j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final long f26130k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f26131l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final long f26132m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final long f26133n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final boolean f26134o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final boolean f26135p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final DrmInitData f26136q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final List f26137r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final List f26138s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final Map f26139t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final long f26140u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final f f26141v;

    public static final class b extends e {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public final boolean f26142l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final boolean f26143m;

        public b(String str, C0373d c0373d, long j11, int i11, long j12, DrmInitData drmInitData, String str2, String str3, long j13, long j14, boolean z10, boolean z11, boolean z12) {
            super(str, c0373d, j11, i11, j12, drmInitData, str2, str3, j13, j14, z10);
            this.f26142l = z11;
            this.f26143m = z12;
        }

        public b b(long j11, int i11) {
            return new b(this.f26149a, this.f26150b, this.f26151c, i11, j11, this.f26154f, this.f26155g, this.f26156h, this.f26157i, this.f26158j, this.f26159k, this.f26142l, this.f26143m);
        }
    }

    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Uri f26144a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f26145b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f26146c;

        public c(Uri uri, long j11, int i11) {
            this.f26144a = uri;
            this.f26145b = j11;
            this.f26146c = i11;
        }
    }

    /* JADX INFO: renamed from: com.google.android.exoplayer2.source.hls.playlist.d$d, reason: collision with other inner class name */
    public static final class C0373d extends e {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public final String f26147l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final List f26148m;

        public C0373d(String str, long j11, long j12, String str2, String str3) {
            this(str, null, "", 0L, -1, C.TIME_UNSET, null, str2, str3, j11, j12, false, ImmutableList.of());
        }

        public C0373d(String str, C0373d c0373d, String str2, long j11, int i11, long j12, DrmInitData drmInitData, String str3, String str4, long j13, long j14, boolean z10, List list) {
            super(str, c0373d, j11, i11, j12, drmInitData, str3, str4, j13, j14, z10);
            this.f26147l = str2;
            this.f26148m = ImmutableList.copyOf((Collection) list);
        }

        public C0373d b(long j11, int i11) {
            ArrayList arrayList = new ArrayList();
            long j12 = j11;
            for (int i12 = 0; i12 < this.f26148m.size(); i12++) {
                b bVar = (b) this.f26148m.get(i12);
                arrayList.add(bVar.b(j12, i11));
                j12 += bVar.f26151c;
            }
            return new C0373d(this.f26149a, this.f26150b, this.f26147l, this.f26151c, i11, j11, this.f26154f, this.f26155g, this.f26156h, this.f26157i, this.f26158j, this.f26159k, arrayList);
        }
    }

    public static class e implements Comparable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f26149a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final C0373d f26150b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f26151c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f26152d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final long f26153e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final DrmInitData f26154f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final String f26155g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final String f26156h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final long f26157i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final long f26158j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final boolean f26159k;

        private e(String str, C0373d c0373d, long j11, int i11, long j12, DrmInitData drmInitData, String str2, String str3, long j13, long j14, boolean z10) {
            this.f26149a = str;
            this.f26150b = c0373d;
            this.f26151c = j11;
            this.f26152d = i11;
            this.f26153e = j12;
            this.f26154f = drmInitData;
            this.f26155g = str2;
            this.f26156h = str3;
            this.f26157i = j13;
            this.f26158j = j14;
            this.f26159k = z10;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(Long l11) {
            if (this.f26153e > l11.longValue()) {
                return 1;
            }
            return this.f26153e < l11.longValue() ? -1 : 0;
        }
    }

    public static final class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f26160a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f26161b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f26162c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final long f26163d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f26164e;

        public f(long j11, boolean z10, long j12, long j13, boolean z11) {
            this.f26160a = j11;
            this.f26161b = z10;
            this.f26162c = j12;
            this.f26163d = j13;
            this.f26164e = z11;
        }
    }

    public d(int i11, String str, List list, long j11, boolean z10, long j12, boolean z11, int i12, long j13, int i13, long j14, long j15, boolean z12, boolean z13, boolean z14, DrmInitData drmInitData, List list2, List list3, f fVar, Map map) {
        super(str, list, z12);
        this.f26123d = i11;
        this.f26127h = j12;
        this.f26126g = z10;
        this.f26128i = z11;
        this.f26129j = i12;
        this.f26130k = j13;
        this.f26131l = i13;
        this.f26132m = j14;
        this.f26133n = j15;
        this.f26134o = z13;
        this.f26135p = z14;
        this.f26136q = drmInitData;
        this.f26137r = ImmutableList.copyOf((Collection) list2);
        this.f26138s = ImmutableList.copyOf((Collection) list3);
        this.f26139t = ImmutableMap.copyOf(map);
        if (!list3.isEmpty()) {
            b bVar = (b) g3.g(list3);
            this.f26140u = bVar.f26153e + bVar.f26151c;
        } else if (list2.isEmpty()) {
            this.f26140u = 0L;
        } else {
            C0373d c0373d = (C0373d) g3.g(list2);
            this.f26140u = c0373d.f26153e + c0373d.f26151c;
        }
        this.f26124e = j11 != C.TIME_UNSET ? j11 >= 0 ? Math.min(this.f26140u, j11) : Math.max(0L, this.f26140u + j11) : C.TIME_UNSET;
        this.f26125f = j11 >= 0;
        this.f26141v = fVar;
    }

    @Override // com.google.android.exoplayer2.offline.c
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public d copy(List list) {
        return this;
    }

    public d b(long j11, int i11) {
        return new d(this.f26123d, this.f78950a, this.f78951b, this.f26124e, this.f26126g, j11, true, i11, this.f26130k, this.f26131l, this.f26132m, this.f26133n, this.f78952c, this.f26134o, this.f26135p, this.f26136q, this.f26137r, this.f26138s, this.f26141v, this.f26139t);
    }

    public d c() {
        return this.f26134o ? this : new d(this.f26123d, this.f78950a, this.f78951b, this.f26124e, this.f26126g, this.f26127h, this.f26128i, this.f26129j, this.f26130k, this.f26131l, this.f26132m, this.f26133n, this.f78952c, true, this.f26135p, this.f26136q, this.f26137r, this.f26138s, this.f26141v, this.f26139t);
    }

    public long d() {
        return this.f26127h + this.f26140u;
    }

    public boolean e(d dVar) {
        if (dVar == null) {
            return true;
        }
        long j11 = this.f26130k;
        long j12 = dVar.f26130k;
        if (j11 > j12) {
            return true;
        }
        if (j11 < j12) {
            return false;
        }
        int size = this.f26137r.size() - dVar.f26137r.size();
        if (size != 0) {
            return size > 0;
        }
        int size2 = this.f26138s.size();
        int size3 = dVar.f26138s.size();
        if (size2 <= size3) {
            return size2 == size3 && this.f26134o && !dVar.f26134o;
        }
        return true;
    }
}
