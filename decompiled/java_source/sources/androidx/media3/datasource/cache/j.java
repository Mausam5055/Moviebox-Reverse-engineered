package androidx.media3.datasource.cache;

import androidx.media3.common.util.u;
import java.io.File;
import java.util.ArrayList;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes2.dex */
final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f10834a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f10835b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final TreeSet f10836c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ArrayList f10837d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private o f10838e;

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f10839a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f10840b;

        public a(long j11, long j12) {
            this.f10839a = j11;
            this.f10840b = j12;
        }

        public boolean a(long j11, long j12) {
            long j13 = this.f10840b;
            if (j13 == -1) {
                return j11 >= this.f10839a;
            }
            if (j12 == -1) {
                return false;
            }
            long j14 = this.f10839a;
            return j14 <= j11 && j11 + j12 <= j14 + j13;
        }

        public boolean b(long j11, long j12) {
            long j13 = this.f10839a;
            if (j13 > j11) {
                return j12 == -1 || j11 + j12 > j13;
            }
            long j14 = this.f10840b;
            return j14 == -1 || j13 + j14 > j11;
        }
    }

    public j(int i11, String str) {
        this(i11, str, o.f10861c);
    }

    public j(int i11, String str, o oVar) {
        this.f10834a = i11;
        this.f10835b = str;
        this.f10838e = oVar;
        this.f10836c = new TreeSet();
        this.f10837d = new ArrayList();
    }

    public void a(s sVar) {
        this.f10836c.add(sVar);
    }

    public boolean b(n nVar) {
        o oVar = this.f10838e;
        o oVarC = oVar.c(nVar);
        this.f10838e = oVarC;
        return !oVarC.equals(oVar);
    }

    public long c(long j11, long j12) {
        androidx.media3.common.util.a.a(j11 >= 0);
        androidx.media3.common.util.a.a(j12 >= 0);
        s sVarE = e(j11, j12);
        if (sVarE.b()) {
            return -Math.min(sVarE.d() ? Long.MAX_VALUE : sVarE.f10820c, j12);
        }
        long j13 = j11 + j12;
        long j14 = j13 >= 0 ? j13 : Long.MAX_VALUE;
        long jMax = sVarE.f10819b + sVarE.f10820c;
        if (jMax < j14) {
            for (s sVar : this.f10836c.tailSet(sVarE, false)) {
                long j15 = sVar.f10819b;
                if (j15 > jMax) {
                    break;
                }
                jMax = Math.max(jMax, j15 + sVar.f10820c);
                if (jMax >= j14) {
                    break;
                }
            }
        }
        return Math.min(jMax - j11, j12);
    }

    public o d() {
        return this.f10838e;
    }

    public s e(long j11, long j12) {
        s sVarI = s.i(this.f10835b, j11);
        s sVar = (s) this.f10836c.floor(sVarI);
        if (sVar != null && sVar.f10819b + sVar.f10820c > j11) {
            return sVar;
        }
        s sVar2 = (s) this.f10836c.ceiling(sVarI);
        if (sVar2 != null) {
            long j13 = sVar2.f10819b - j11;
            j12 = j12 == -1 ? j13 : Math.min(j13, j12);
        }
        return s.h(this.f10835b, j11, j12);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || j.class != obj.getClass()) {
            return false;
        }
        j jVar = (j) obj;
        return this.f10834a == jVar.f10834a && this.f10835b.equals(jVar.f10835b) && this.f10836c.equals(jVar.f10836c) && this.f10838e.equals(jVar.f10838e);
    }

    public TreeSet f() {
        return this.f10836c;
    }

    public boolean g() {
        return this.f10836c.isEmpty();
    }

    public boolean h(long j11, long j12) {
        for (int i11 = 0; i11 < this.f10837d.size(); i11++) {
            if (((a) this.f10837d.get(i11)).a(j11, j12)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return (((this.f10834a * 31) + this.f10835b.hashCode()) * 31) + this.f10838e.hashCode();
    }

    public boolean i() {
        return this.f10837d.isEmpty();
    }

    public boolean j(long j11, long j12) {
        for (int i11 = 0; i11 < this.f10837d.size(); i11++) {
            if (((a) this.f10837d.get(i11)).b(j11, j12)) {
                return false;
            }
        }
        this.f10837d.add(new a(j11, j12));
        return true;
    }

    public boolean k(h hVar) {
        if (!this.f10836c.remove(hVar)) {
            return false;
        }
        File file = hVar.f10822e;
        if (file == null) {
            return true;
        }
        file.delete();
        return true;
    }

    public s l(s sVar, long j11, boolean z10) {
        androidx.media3.common.util.a.g(this.f10836c.remove(sVar));
        File file = (File) androidx.media3.common.util.a.e(sVar.f10822e);
        if (z10) {
            File fileJ = s.j((File) androidx.media3.common.util.a.e(file.getParentFile()), this.f10834a, sVar.f10819b, j11);
            if (file.renameTo(fileJ)) {
                file = fileJ;
            } else {
                u.h("CachedContent", "Failed to rename " + file + " to " + fileJ);
            }
        }
        s sVarE = sVar.e(file, j11);
        this.f10836c.add(sVarE);
        return sVarE;
    }

    public void m(long j11) {
        for (int i11 = 0; i11 < this.f10837d.size(); i11++) {
            if (((a) this.f10837d.get(i11)).f10839a == j11) {
                this.f10837d.remove(i11);
                return;
            }
        }
        throw new IllegalStateException();
    }
}
