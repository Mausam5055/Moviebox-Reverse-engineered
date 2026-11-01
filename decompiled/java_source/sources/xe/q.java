package xe;

/* JADX INFO: loaded from: classes5.dex */
public class q implements Comparable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f78234a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f78235b;

    public q(int i11, int i12) {
        this.f78234a = i11;
        this.f78235b = i12;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(q qVar) {
        int i11 = this.f78235b * this.f78234a;
        int i12 = qVar.f78235b * qVar.f78234a;
        if (i12 < i11) {
            return 1;
        }
        return i12 > i11 ? -1 : 0;
    }

    public boolean b(q qVar) {
        return this.f78234a <= qVar.f78234a && this.f78235b <= qVar.f78235b;
    }

    public q d() {
        return new q(this.f78235b, this.f78234a);
    }

    public q e(int i11, int i12) {
        return new q((this.f78234a * i11) / i12, (this.f78235b * i11) / i12);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        q qVar = (q) obj;
        return this.f78234a == qVar.f78234a && this.f78235b == qVar.f78235b;
    }

    public q f(q qVar) {
        int i11 = this.f78234a;
        int i12 = qVar.f78235b;
        int i13 = i11 * i12;
        int i14 = qVar.f78234a;
        int i15 = this.f78235b;
        return i13 <= i14 * i15 ? new q(i14, (i15 * i14) / i11) : new q((i11 * i12) / i15, i12);
    }

    public q g(q qVar) {
        int i11 = this.f78234a;
        int i12 = qVar.f78235b;
        int i13 = i11 * i12;
        int i14 = qVar.f78234a;
        int i15 = this.f78235b;
        return i13 >= i14 * i15 ? new q(i14, (i15 * i14) / i11) : new q((i11 * i12) / i15, i12);
    }

    public int hashCode() {
        return (this.f78234a * 31) + this.f78235b;
    }

    public String toString() {
        return this.f78234a + "x" + this.f78235b;
    }
}
