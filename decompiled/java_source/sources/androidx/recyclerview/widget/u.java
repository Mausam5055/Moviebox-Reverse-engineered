package androidx.recyclerview.widget;

import androidx.collection.x;
import androidx.collection.x0;

/* JADX INFO: loaded from: classes2.dex */
class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final x0 f14429a = new x0();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final x f14430b = new x();

    static class a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        static androidx.core.util.f f14431d = new androidx.core.util.g(20);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f14432a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        RecyclerView.j.c f14433b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        RecyclerView.j.c f14434c;

        private a() {
        }

        static void a() {
            while (f14431d.acquire() != null) {
            }
        }

        static a b() {
            a aVar = (a) f14431d.acquire();
            return aVar == null ? new a() : aVar;
        }

        static void c(a aVar) {
            aVar.f14432a = 0;
            aVar.f14433b = null;
            aVar.f14434c = null;
            f14431d.release(aVar);
        }
    }

    interface b {
        void a(RecyclerView.b0 b0Var, RecyclerView.j.c cVar, RecyclerView.j.c cVar2);

        void b(RecyclerView.b0 b0Var);

        void c(RecyclerView.b0 b0Var, RecyclerView.j.c cVar, RecyclerView.j.c cVar2);

        void d(RecyclerView.b0 b0Var, RecyclerView.j.c cVar, RecyclerView.j.c cVar2);
    }

    u() {
    }

    private RecyclerView.j.c l(RecyclerView.b0 b0Var, int i11) {
        a aVar;
        RecyclerView.j.c cVar;
        int iIndexOfKey = this.f14429a.indexOfKey(b0Var);
        if (iIndexOfKey >= 0 && (aVar = (a) this.f14429a.valueAt(iIndexOfKey)) != null) {
            int i12 = aVar.f14432a;
            if ((i12 & i11) != 0) {
                int i13 = (~i11) & i12;
                aVar.f14432a = i13;
                if (i11 == 4) {
                    cVar = aVar.f14433b;
                } else {
                    if (i11 != 8) {
                        throw new IllegalArgumentException("Must provide flag PRE or POST");
                    }
                    cVar = aVar.f14434c;
                }
                if ((i13 & 12) == 0) {
                    this.f14429a.removeAt(iIndexOfKey);
                    a.c(aVar);
                }
                return cVar;
            }
        }
        return null;
    }

    void a(RecyclerView.b0 b0Var, RecyclerView.j.c cVar) {
        a aVarB = (a) this.f14429a.get(b0Var);
        if (aVarB == null) {
            aVarB = a.b();
            this.f14429a.put(b0Var, aVarB);
        }
        aVarB.f14432a |= 2;
        aVarB.f14433b = cVar;
    }

    void b(RecyclerView.b0 b0Var) {
        a aVarB = (a) this.f14429a.get(b0Var);
        if (aVarB == null) {
            aVarB = a.b();
            this.f14429a.put(b0Var, aVarB);
        }
        aVarB.f14432a |= 1;
    }

    void c(long j11, RecyclerView.b0 b0Var) {
        this.f14430b.k(j11, b0Var);
    }

    void d(RecyclerView.b0 b0Var, RecyclerView.j.c cVar) {
        a aVarB = (a) this.f14429a.get(b0Var);
        if (aVarB == null) {
            aVarB = a.b();
            this.f14429a.put(b0Var, aVarB);
        }
        aVarB.f14434c = cVar;
        aVarB.f14432a |= 8;
    }

    void e(RecyclerView.b0 b0Var, RecyclerView.j.c cVar) {
        a aVarB = (a) this.f14429a.get(b0Var);
        if (aVarB == null) {
            aVarB = a.b();
            this.f14429a.put(b0Var, aVarB);
        }
        aVarB.f14433b = cVar;
        aVarB.f14432a |= 4;
    }

    void f() {
        this.f14429a.clear();
        this.f14430b.b();
    }

    RecyclerView.b0 g(long j11) {
        return (RecyclerView.b0) this.f14430b.e(j11);
    }

    boolean h(RecyclerView.b0 b0Var) {
        a aVar = (a) this.f14429a.get(b0Var);
        return (aVar == null || (aVar.f14432a & 1) == 0) ? false : true;
    }

    boolean i(RecyclerView.b0 b0Var) {
        a aVar = (a) this.f14429a.get(b0Var);
        return (aVar == null || (aVar.f14432a & 4) == 0) ? false : true;
    }

    void j() {
        a.a();
    }

    public void k(RecyclerView.b0 b0Var) {
        p(b0Var);
    }

    RecyclerView.j.c m(RecyclerView.b0 b0Var) {
        return l(b0Var, 8);
    }

    RecyclerView.j.c n(RecyclerView.b0 b0Var) {
        return l(b0Var, 4);
    }

    void o(b bVar) {
        for (int size = this.f14429a.size() - 1; size >= 0; size--) {
            RecyclerView.b0 b0Var = (RecyclerView.b0) this.f14429a.keyAt(size);
            a aVar = (a) this.f14429a.removeAt(size);
            int i11 = aVar.f14432a;
            if ((i11 & 3) == 3) {
                bVar.b(b0Var);
            } else if ((i11 & 1) != 0) {
                RecyclerView.j.c cVar = aVar.f14433b;
                if (cVar == null) {
                    bVar.b(b0Var);
                } else {
                    bVar.c(b0Var, cVar, aVar.f14434c);
                }
            } else if ((i11 & 14) == 14) {
                bVar.a(b0Var, aVar.f14433b, aVar.f14434c);
            } else if ((i11 & 12) == 12) {
                bVar.d(b0Var, aVar.f14433b, aVar.f14434c);
            } else if ((i11 & 4) != 0) {
                bVar.c(b0Var, aVar.f14433b, null);
            } else if ((i11 & 8) != 0) {
                bVar.a(b0Var, aVar.f14433b, aVar.f14434c);
            }
            a.c(aVar);
        }
    }

    void p(RecyclerView.b0 b0Var) {
        a aVar = (a) this.f14429a.get(b0Var);
        if (aVar == null) {
            return;
        }
        aVar.f14432a &= -2;
    }

    void q(RecyclerView.b0 b0Var) {
        for (int iN = this.f14430b.n() - 1; iN >= 0; iN--) {
            if (b0Var == this.f14430b.o(iN)) {
                this.f14430b.m(iN);
                break;
            }
        }
        a aVar = (a) this.f14429a.remove(b0Var);
        if (aVar != null) {
            a.c(aVar);
        }
    }
}
