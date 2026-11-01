package h10;

/* JADX INFO: loaded from: classes7.dex */
final class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final q f64155a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final q f64156b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final q f64157c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final int f64158d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final String f64159e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    p f64160f;

    p(p pVar, q qVar, q qVar2) {
        this(qVar, qVar2, pVar.f64157c, pVar.f64158d, pVar.f64159e);
        this.f64160f = pVar.f64160f;
    }

    p(q qVar, q qVar2, q qVar3, int i11, String str) {
        this.f64155a = qVar;
        this.f64156b = qVar2;
        this.f64157c = qVar3;
        this.f64158d = i11;
        this.f64159e = str;
    }

    static int a(p pVar) {
        int i11 = 0;
        while (pVar != null) {
            i11++;
            pVar = pVar.f64160f;
        }
        return i11;
    }

    static int b(p pVar) {
        return (a(pVar) * 8) + 2;
    }

    static void c(p pVar, d dVar) {
        dVar.k(a(pVar));
        while (pVar != null) {
            dVar.k(pVar.f64155a.f64165d).k(pVar.f64156b.f64165d).k(pVar.f64157c.f64165d).k(pVar.f64158d);
            pVar = pVar.f64160f;
        }
    }

    static p d(p pVar, q qVar, q qVar2) {
        if (pVar == null) {
            return null;
        }
        p pVarD = d(pVar.f64160f, qVar, qVar2);
        pVar.f64160f = pVarD;
        q qVar3 = pVar.f64155a;
        int i11 = qVar3.f64165d;
        q qVar4 = pVar.f64156b;
        int i12 = qVar4.f64165d;
        int i13 = qVar.f64165d;
        int i14 = qVar2 == null ? Integer.MAX_VALUE : qVar2.f64165d;
        if (i13 >= i12 || i14 <= i11) {
            return pVar;
        }
        if (i13 <= i11) {
            return i14 >= i12 ? pVarD : new p(pVar, qVar2, qVar4);
        }
        if (i14 >= i12) {
            return new p(pVar, qVar3, qVar);
        }
        pVar.f64160f = new p(pVar, qVar2, qVar4);
        return new p(pVar, pVar.f64155a, qVar);
    }
}
