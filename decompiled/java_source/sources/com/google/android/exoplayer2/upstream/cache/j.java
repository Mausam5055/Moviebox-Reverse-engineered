package com.google.android.exoplayer2.upstream.cache;

import java.io.File;
import java.util.ArrayList;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes3.dex */
final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f27353a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f27354b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final TreeSet f27355c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ArrayList f27356d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private o f27357e;

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f27358a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f27359b;

        public a(long j11, long j12) {
            this.f27358a = j11;
            this.f27359b = j12;
        }

        public boolean a(long j11, long j12) {
            long j13 = this.f27359b;
            if (j13 == -1) {
                return j11 >= this.f27358a;
            }
            if (j12 == -1) {
                return false;
            }
            long j14 = this.f27358a;
            return j14 <= j11 && j11 + j12 <= j14 + j13;
        }

        public boolean b(long j11, long j12) {
            long j13 = this.f27358a;
            if (j13 > j11) {
                return j12 == -1 || j11 + j12 > j13;
            }
            long j14 = this.f27359b;
            return j14 == -1 || j13 + j14 > j11;
        }
    }

    public j(int i11, String str) {
        this(i11, str, o.f27380c);
    }

    public j(int i11, String str, o oVar) {
        this.f27353a = i11;
        this.f27354b = str;
        this.f27357e = oVar;
        this.f27355c = new TreeSet();
        this.f27356d = new ArrayList();
    }

    public void a(s sVar) {
        this.f27355c.add(sVar);
    }

    public boolean b(n nVar) {
        o oVar = this.f27357e;
        o oVarC = oVar.c(nVar);
        this.f27357e = oVarC;
        return !oVarC.equals(oVar);
    }

    public long c(long j11, long j12) {
        com.google.android.exoplayer2.util.a.a(j11 >= 0);
        com.google.android.exoplayer2.util.a.a(j12 >= 0);
        s sVarE = e(j11, j12);
        if (sVarE.b()) {
            return -Math.min(sVarE.d() ? Long.MAX_VALUE : sVarE.f27339c, j12);
        }
        long j13 = j11 + j12;
        long j14 = j13 >= 0 ? j13 : Long.MAX_VALUE;
        long jMax = sVarE.f27338b + sVarE.f27339c;
        if (jMax < j14) {
            for (s sVar : this.f27355c.tailSet(sVarE, false)) {
                long j15 = sVar.f27338b;
                if (j15 > jMax) {
                    break;
                }
                jMax = Math.max(jMax, j15 + sVar.f27339c);
                if (jMax >= j14) {
                    break;
                }
            }
        }
        return Math.min(jMax - j11, j12);
    }

    public o d() {
        return this.f27357e;
    }

    public s e(long j11, long j12) {
        s sVarI = s.i(this.f27354b, j11);
        s sVar = (s) this.f27355c.floor(sVarI);
        if (sVar != null && sVar.f27338b + sVar.f27339c > j11) {
            return sVar;
        }
        s sVar2 = (s) this.f27355c.ceiling(sVarI);
        if (sVar2 != null) {
            long j13 = sVar2.f27338b - j11;
            j12 = j12 == -1 ? j13 : Math.min(j13, j12);
        }
        return s.h(this.f27354b, j11, j12);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || j.class != obj.getClass()) {
            return false;
        }
        j jVar = (j) obj;
        return this.f27353a == jVar.f27353a && this.f27354b.equals(jVar.f27354b) && this.f27355c.equals(jVar.f27355c) && this.f27357e.equals(jVar.f27357e);
    }

    public TreeSet f() {
        return this.f27355c;
    }

    public boolean g() {
        return this.f27355c.isEmpty();
    }

    public boolean h(long j11, long j12) {
        for (int i11 = 0; i11 < this.f27356d.size(); i11++) {
            if (((a) this.f27356d.get(i11)).a(j11, j12)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return (((this.f27353a * 31) + this.f27354b.hashCode()) * 31) + this.f27357e.hashCode();
    }

    public boolean i() {
        return this.f27356d.isEmpty();
    }

    public boolean j(long j11, long j12) {
        for (int i11 = 0; i11 < this.f27356d.size(); i11++) {
            if (((a) this.f27356d.get(i11)).b(j11, j12)) {
                return false;
            }
        }
        this.f27356d.add(new a(j11, j12));
        return true;
    }

    public boolean k(h hVar) {
        if (!this.f27355c.remove(hVar)) {
            return false;
        }
        File file = hVar.f27341e;
        if (file == null) {
            return true;
        }
        file.delete();
        return true;
    }

    public s l(s sVar, long j11, boolean z10) {
        com.google.android.exoplayer2.util.a.g(this.f27355c.remove(sVar));
        File file = (File) com.google.android.exoplayer2.util.a.e(sVar.f27341e);
        if (z10) {
            File fileJ = s.j((File) com.google.android.exoplayer2.util.a.e(file.getParentFile()), this.f27353a, sVar.f27338b, j11);
            if (file.renameTo(fileJ)) {
                file = fileJ;
            } else {
                com.google.android.exoplayer2.util.s.i("CachedContent", "Failed to rename " + file + " to " + fileJ);
            }
        }
        s sVarE = sVar.e(file, j11);
        this.f27355c.add(sVarE);
        return sVarE;
    }

    public void m(long j11) {
        for (int i11 = 0; i11 < this.f27356d.size(); i11++) {
            if (((a) this.f27356d.get(i11)).f27358a == j11) {
                this.f27356d.remove(i11);
                return;
            }
        }
        throw new IllegalStateException();
    }
}
