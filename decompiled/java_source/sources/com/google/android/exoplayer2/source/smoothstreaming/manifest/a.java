package com.google.android.exoplayer2.source.smoothstreaming.manifest;

import android.net.Uri;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.offline.StreamKey;
import com.google.android.exoplayer2.offline.c;
import com.google.android.exoplayer2.util.n0;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
import o9.p;

/* JADX INFO: loaded from: classes3.dex */
public class a implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f26609a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f26610b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f26611c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f26612d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final C0377a f26613e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final b[] f26614f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final long f26615g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f26616h;

    /* JADX INFO: renamed from: com.google.android.exoplayer2.source.smoothstreaming.manifest.a$a, reason: collision with other inner class name */
    public static class C0377a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final UUID f26617a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final byte[] f26618b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final p[] f26619c;

        public C0377a(UUID uuid, byte[] bArr, p[] pVarArr) {
            this.f26617a = uuid;
            this.f26618b = bArr;
            this.f26619c = pVarArr;
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f26620a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f26621b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f26622c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final String f26623d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f26624e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f26625f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final int f26626g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f26627h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final String f26628i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final o1[] f26629j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final int f26630k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private final String f26631l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private final String f26632m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private final List f26633n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final long[] f26634o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final long f26635p;

        public b(String str, String str2, int i11, String str3, long j11, String str4, int i12, int i13, int i14, int i15, String str5, o1[] o1VarArr, List list, long j12) {
            this(str, str2, i11, str3, j11, str4, i12, i13, i14, i15, str5, o1VarArr, list, p0.O0(list, 1000000L, j11), p0.N0(j12, 1000000L, j11));
        }

        private b(String str, String str2, int i11, String str3, long j11, String str4, int i12, int i13, int i14, int i15, String str5, o1[] o1VarArr, List list, long[] jArr, long j12) {
            this.f26631l = str;
            this.f26632m = str2;
            this.f26620a = i11;
            this.f26621b = str3;
            this.f26622c = j11;
            this.f26623d = str4;
            this.f26624e = i12;
            this.f26625f = i13;
            this.f26626g = i14;
            this.f26627h = i15;
            this.f26628i = str5;
            this.f26629j = o1VarArr;
            this.f26633n = list;
            this.f26634o = jArr;
            this.f26635p = j12;
            this.f26630k = list.size();
        }

        public Uri a(int i11, int i12) {
            com.google.android.exoplayer2.util.a.g(this.f26629j != null);
            com.google.android.exoplayer2.util.a.g(this.f26633n != null);
            com.google.android.exoplayer2.util.a.g(i12 < this.f26633n.size());
            String string = Integer.toString(this.f26629j[i11].f25492h);
            String string2 = ((Long) this.f26633n.get(i12)).toString();
            return n0.e(this.f26631l, this.f26632m.replace("{bitrate}", string).replace("{Bitrate}", string).replace("{start time}", string2).replace("{start_time}", string2));
        }

        public b b(o1[] o1VarArr) {
            return new b(this.f26631l, this.f26632m, this.f26620a, this.f26621b, this.f26622c, this.f26623d, this.f26624e, this.f26625f, this.f26626g, this.f26627h, this.f26628i, o1VarArr, this.f26633n, this.f26634o, this.f26635p);
        }

        public long c(int i11) {
            if (i11 == this.f26630k - 1) {
                return this.f26635p;
            }
            long[] jArr = this.f26634o;
            return jArr[i11 + 1] - jArr[i11];
        }

        public int d(long j11) {
            return p0.i(this.f26634o, j11, true, true);
        }

        public long e(int i11) {
            return this.f26634o[i11];
        }
    }

    private a(int i11, int i12, long j11, long j12, int i13, boolean z10, C0377a c0377a, b[] bVarArr) {
        this.f26609a = i11;
        this.f26610b = i12;
        this.f26615g = j11;
        this.f26616h = j12;
        this.f26611c = i13;
        this.f26612d = z10;
        this.f26613e = c0377a;
        this.f26614f = bVarArr;
    }

    public a(int i11, int i12, long j11, long j12, long j13, int i13, boolean z10, C0377a c0377a, b[] bVarArr) {
        this(i11, i12, j12 == 0 ? -9223372036854775807L : p0.N0(j12, 1000000L, j11), j13 != 0 ? p0.N0(j13, 1000000L, j11) : C.TIME_UNSET, i13, z10, c0377a, bVarArr);
    }

    @Override // com.google.android.exoplayer2.offline.c
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final a copy(List list) {
        ArrayList arrayList = new ArrayList(list);
        Collections.sort(arrayList);
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        b bVar = null;
        int i11 = 0;
        while (i11 < arrayList.size()) {
            StreamKey streamKey = (StreamKey) arrayList.get(i11);
            b bVar2 = this.f26614f[streamKey.groupIndex];
            if (bVar2 != bVar && bVar != null) {
                arrayList2.add(bVar.b((o1[]) arrayList3.toArray(new o1[0])));
                arrayList3.clear();
            }
            arrayList3.add(bVar2.f26629j[streamKey.streamIndex]);
            i11++;
            bVar = bVar2;
        }
        if (bVar != null) {
            arrayList2.add(bVar.b((o1[]) arrayList3.toArray(new o1[0])));
        }
        return new a(this.f26609a, this.f26610b, this.f26615g, this.f26616h, this.f26611c, this.f26612d, this.f26613e, (b[]) arrayList2.toArray(new b[0]));
    }
}
