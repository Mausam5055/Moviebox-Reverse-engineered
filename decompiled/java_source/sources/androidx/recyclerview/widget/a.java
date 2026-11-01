package androidx.recyclerview.widget;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class a implements l.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private androidx.core.util.f f14336a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final ArrayList f14337b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final ArrayList f14338c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final InterfaceC0111a f14339d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Runnable f14340e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final boolean f14341f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final l f14342g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f14343h;

    /* JADX INFO: renamed from: androidx.recyclerview.widget.a$a, reason: collision with other inner class name */
    interface InterfaceC0111a {
        void a(int i11, int i12);

        void b(b bVar);

        void c(b bVar);

        void d(int i11, int i12);

        void e(int i11, int i12, Object obj);

        RecyclerView.b0 f(int i11);

        void g(int i11, int i12);

        void h(int i11, int i12);
    }

    static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f14344a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f14345b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        Object f14346c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f14347d;

        b(int i11, int i12, int i13, Object obj) {
            this.f14344a = i11;
            this.f14345b = i12;
            this.f14347d = i13;
            this.f14346c = obj;
        }

        String a() {
            int i11 = this.f14344a;
            if (i11 == 1) {
                return "add";
            }
            if (i11 == 2) {
                return "rm";
            }
            if (i11 != 4) {
                return i11 != 8 ? "??" : "mv";
            }
            return "up";
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            int i11 = this.f14344a;
            if (i11 != bVar.f14344a) {
                return false;
            }
            if (i11 == 8 && Math.abs(this.f14347d - this.f14345b) == 1 && this.f14347d == bVar.f14345b && this.f14345b == bVar.f14347d) {
                return true;
            }
            if (this.f14347d != bVar.f14347d || this.f14345b != bVar.f14345b) {
                return false;
            }
            Object obj2 = this.f14346c;
            if (obj2 != null) {
                if (!obj2.equals(bVar.f14346c)) {
                    return false;
                }
            } else if (bVar.f14346c != null) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return (((this.f14344a * 31) + this.f14345b) * 31) + this.f14347d;
        }

        public String toString() {
            return Integer.toHexString(System.identityHashCode(this)) + "[" + a() + ",s:" + this.f14345b + "c:" + this.f14347d + ",p:" + this.f14346c + "]";
        }
    }

    a(InterfaceC0111a interfaceC0111a) {
        this(interfaceC0111a, false);
    }

    a(InterfaceC0111a interfaceC0111a, boolean z10) {
        this.f14336a = new androidx.core.util.g(30);
        this.f14337b = new ArrayList();
        this.f14338c = new ArrayList();
        this.f14343h = 0;
        this.f14339d = interfaceC0111a;
        this.f14341f = z10;
        this.f14342g = new l(this);
    }

    private void c(b bVar) {
        v(bVar);
    }

    private void d(b bVar) {
        v(bVar);
    }

    private void f(b bVar) {
        boolean z10;
        byte b11;
        int i11 = bVar.f14345b;
        int i12 = bVar.f14347d + i11;
        byte b12 = -1;
        int i13 = i11;
        int i14 = 0;
        while (i13 < i12) {
            if (this.f14339d.f(i13) != null || h(i13)) {
                if (b12 == 0) {
                    k(a(2, i11, i14, null));
                    z10 = true;
                } else {
                    z10 = false;
                }
                b11 = 1;
            } else {
                if (b12 == 1) {
                    v(a(2, i11, i14, null));
                    z10 = true;
                } else {
                    z10 = false;
                }
                b11 = 0;
            }
            if (z10) {
                i13 -= i14;
                i12 -= i14;
                i14 = 1;
            } else {
                i14++;
            }
            i13++;
            b12 = b11;
        }
        if (i14 != bVar.f14347d) {
            b(bVar);
            bVar = a(2, i11, i14, null);
        }
        if (b12 == 0) {
            k(bVar);
        } else {
            v(bVar);
        }
    }

    private void g(b bVar) {
        int i11 = bVar.f14345b;
        int i12 = bVar.f14347d + i11;
        int i13 = 0;
        byte b11 = -1;
        int i14 = i11;
        while (i11 < i12) {
            if (this.f14339d.f(i11) != null || h(i11)) {
                if (b11 == 0) {
                    k(a(4, i14, i13, bVar.f14346c));
                    i14 = i11;
                    i13 = 0;
                }
                b11 = 1;
            } else {
                if (b11 == 1) {
                    v(a(4, i14, i13, bVar.f14346c));
                    i14 = i11;
                    i13 = 0;
                }
                b11 = 0;
            }
            i13++;
            i11++;
        }
        if (i13 != bVar.f14347d) {
            Object obj = bVar.f14346c;
            b(bVar);
            bVar = a(4, i14, i13, obj);
        }
        if (b11 == 0) {
            k(bVar);
        } else {
            v(bVar);
        }
    }

    private boolean h(int i11) {
        int size = this.f14338c.size();
        for (int i12 = 0; i12 < size; i12++) {
            b bVar = (b) this.f14338c.get(i12);
            int i13 = bVar.f14344a;
            if (i13 == 8) {
                if (n(bVar.f14347d, i12 + 1) == i11) {
                    return true;
                }
            } else if (i13 == 1) {
                int i14 = bVar.f14345b;
                int i15 = bVar.f14347d + i14;
                while (i14 < i15) {
                    if (n(i14, i12 + 1) == i11) {
                        return true;
                    }
                    i14++;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    private void k(b bVar) {
        int i11;
        int i12 = bVar.f14344a;
        if (i12 == 1 || i12 == 8) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int iZ = z(bVar.f14345b, i12);
        int i13 = bVar.f14345b;
        int i14 = bVar.f14344a;
        if (i14 == 2) {
            i11 = 0;
        } else {
            if (i14 != 4) {
                throw new IllegalArgumentException("op should be remove or update." + bVar);
            }
            i11 = 1;
        }
        int i15 = 1;
        for (int i16 = 1; i16 < bVar.f14347d; i16++) {
            int iZ2 = z(bVar.f14345b + (i11 * i16), bVar.f14344a);
            int i17 = bVar.f14344a;
            if (i17 == 2 ? iZ2 != iZ : !(i17 == 4 && iZ2 == iZ + 1)) {
                b bVarA = a(i17, iZ, i15, bVar.f14346c);
                l(bVarA, i13);
                b(bVarA);
                if (bVar.f14344a == 4) {
                    i13 += i15;
                }
                i15 = 1;
                iZ = iZ2;
            } else {
                i15++;
            }
        }
        Object obj = bVar.f14346c;
        b(bVar);
        if (i15 > 0) {
            b bVarA2 = a(bVar.f14344a, iZ, i15, obj);
            l(bVarA2, i13);
            b(bVarA2);
        }
    }

    private void v(b bVar) {
        this.f14338c.add(bVar);
        int i11 = bVar.f14344a;
        if (i11 == 1) {
            this.f14339d.g(bVar.f14345b, bVar.f14347d);
            return;
        }
        if (i11 == 2) {
            this.f14339d.d(bVar.f14345b, bVar.f14347d);
            return;
        }
        if (i11 == 4) {
            this.f14339d.e(bVar.f14345b, bVar.f14347d, bVar.f14346c);
        } else {
            if (i11 == 8) {
                this.f14339d.a(bVar.f14345b, bVar.f14347d);
                return;
            }
            throw new IllegalArgumentException("Unknown update op type for " + bVar);
        }
    }

    private int z(int i11, int i12) {
        int i13;
        int i14;
        for (int size = this.f14338c.size() - 1; size >= 0; size--) {
            b bVar = (b) this.f14338c.get(size);
            int i15 = bVar.f14344a;
            if (i15 == 8) {
                int i16 = bVar.f14345b;
                int i17 = bVar.f14347d;
                if (i16 < i17) {
                    i14 = i16;
                    i13 = i17;
                } else {
                    i13 = i16;
                    i14 = i17;
                }
                if (i11 < i14 || i11 > i13) {
                    if (i11 < i16) {
                        if (i12 == 1) {
                            bVar.f14345b = i16 + 1;
                            bVar.f14347d = i17 + 1;
                        } else if (i12 == 2) {
                            bVar.f14345b = i16 - 1;
                            bVar.f14347d = i17 - 1;
                        }
                    }
                } else if (i14 == i16) {
                    if (i12 == 1) {
                        bVar.f14347d = i17 + 1;
                    } else if (i12 == 2) {
                        bVar.f14347d = i17 - 1;
                    }
                    i11++;
                } else {
                    if (i12 == 1) {
                        bVar.f14345b = i16 + 1;
                    } else if (i12 == 2) {
                        bVar.f14345b = i16 - 1;
                    }
                    i11--;
                }
            } else {
                int i18 = bVar.f14345b;
                if (i18 <= i11) {
                    if (i15 == 1) {
                        i11 -= bVar.f14347d;
                    } else if (i15 == 2) {
                        i11 += bVar.f14347d;
                    }
                } else if (i12 == 1) {
                    bVar.f14345b = i18 + 1;
                } else if (i12 == 2) {
                    bVar.f14345b = i18 - 1;
                }
            }
        }
        for (int size2 = this.f14338c.size() - 1; size2 >= 0; size2--) {
            b bVar2 = (b) this.f14338c.get(size2);
            if (bVar2.f14344a == 8) {
                int i19 = bVar2.f14347d;
                if (i19 == bVar2.f14345b || i19 < 0) {
                    this.f14338c.remove(size2);
                    b(bVar2);
                }
            } else if (bVar2.f14347d <= 0) {
                this.f14338c.remove(size2);
                b(bVar2);
            }
        }
        return i11;
    }

    @Override // androidx.recyclerview.widget.l.a
    public b a(int i11, int i12, int i13, Object obj) {
        b bVar = (b) this.f14336a.acquire();
        if (bVar == null) {
            return new b(i11, i12, i13, obj);
        }
        bVar.f14344a = i11;
        bVar.f14345b = i12;
        bVar.f14347d = i13;
        bVar.f14346c = obj;
        return bVar;
    }

    @Override // androidx.recyclerview.widget.l.a
    public void b(b bVar) {
        if (this.f14341f) {
            return;
        }
        bVar.f14346c = null;
        this.f14336a.release(bVar);
    }

    public int e(int i11) {
        int size = this.f14337b.size();
        for (int i12 = 0; i12 < size; i12++) {
            b bVar = (b) this.f14337b.get(i12);
            int i13 = bVar.f14344a;
            if (i13 != 1) {
                if (i13 == 2) {
                    int i14 = bVar.f14345b;
                    if (i14 <= i11) {
                        int i15 = bVar.f14347d;
                        if (i14 + i15 > i11) {
                            return -1;
                        }
                        i11 -= i15;
                    } else {
                        continue;
                    }
                } else if (i13 == 8) {
                    int i16 = bVar.f14345b;
                    if (i16 == i11) {
                        i11 = bVar.f14347d;
                    } else {
                        if (i16 < i11) {
                            i11--;
                        }
                        if (bVar.f14347d <= i11) {
                            i11++;
                        }
                    }
                }
            } else if (bVar.f14345b <= i11) {
                i11 += bVar.f14347d;
            }
        }
        return i11;
    }

    void i() {
        int size = this.f14338c.size();
        for (int i11 = 0; i11 < size; i11++) {
            this.f14339d.c((b) this.f14338c.get(i11));
        }
        x(this.f14338c);
        this.f14343h = 0;
    }

    void j() {
        i();
        int size = this.f14337b.size();
        for (int i11 = 0; i11 < size; i11++) {
            b bVar = (b) this.f14337b.get(i11);
            int i12 = bVar.f14344a;
            if (i12 == 1) {
                this.f14339d.c(bVar);
                this.f14339d.g(bVar.f14345b, bVar.f14347d);
            } else if (i12 == 2) {
                this.f14339d.c(bVar);
                this.f14339d.h(bVar.f14345b, bVar.f14347d);
            } else if (i12 == 4) {
                this.f14339d.c(bVar);
                this.f14339d.e(bVar.f14345b, bVar.f14347d, bVar.f14346c);
            } else if (i12 == 8) {
                this.f14339d.c(bVar);
                this.f14339d.a(bVar.f14345b, bVar.f14347d);
            }
            Runnable runnable = this.f14340e;
            if (runnable != null) {
                runnable.run();
            }
        }
        x(this.f14337b);
        this.f14343h = 0;
    }

    void l(b bVar, int i11) {
        this.f14339d.b(bVar);
        int i12 = bVar.f14344a;
        if (i12 == 2) {
            this.f14339d.h(i11, bVar.f14347d);
        } else {
            if (i12 != 4) {
                throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
            }
            this.f14339d.e(i11, bVar.f14347d, bVar.f14346c);
        }
    }

    int m(int i11) {
        return n(i11, 0);
    }

    int n(int i11, int i12) {
        int size = this.f14338c.size();
        while (i12 < size) {
            b bVar = (b) this.f14338c.get(i12);
            int i13 = bVar.f14344a;
            if (i13 == 8) {
                int i14 = bVar.f14345b;
                if (i14 == i11) {
                    i11 = bVar.f14347d;
                } else {
                    if (i14 < i11) {
                        i11--;
                    }
                    if (bVar.f14347d <= i11) {
                        i11++;
                    }
                }
            } else {
                int i15 = bVar.f14345b;
                if (i15 > i11) {
                    continue;
                } else if (i13 == 2) {
                    int i16 = bVar.f14347d;
                    if (i11 < i15 + i16) {
                        return -1;
                    }
                    i11 -= i16;
                } else if (i13 == 1) {
                    i11 += bVar.f14347d;
                }
            }
            i12++;
        }
        return i11;
    }

    boolean o(int i11) {
        return (i11 & this.f14343h) != 0;
    }

    boolean p() {
        return this.f14337b.size() > 0;
    }

    boolean q() {
        return (this.f14338c.isEmpty() || this.f14337b.isEmpty()) ? false : true;
    }

    boolean r(int i11, int i12, Object obj) {
        if (i12 < 1) {
            return false;
        }
        this.f14337b.add(a(4, i11, i12, obj));
        this.f14343h |= 4;
        return this.f14337b.size() == 1;
    }

    boolean s(int i11, int i12) {
        if (i12 < 1) {
            return false;
        }
        this.f14337b.add(a(1, i11, i12, null));
        this.f14343h |= 1;
        return this.f14337b.size() == 1;
    }

    boolean t(int i11, int i12, int i13) {
        if (i11 == i12) {
            return false;
        }
        if (i13 != 1) {
            throw new IllegalArgumentException("Moving more than 1 item is not supported yet");
        }
        this.f14337b.add(a(8, i11, i12, null));
        this.f14343h |= 8;
        return this.f14337b.size() == 1;
    }

    boolean u(int i11, int i12) {
        if (i12 < 1) {
            return false;
        }
        this.f14337b.add(a(2, i11, i12, null));
        this.f14343h |= 2;
        return this.f14337b.size() == 1;
    }

    void w() {
        this.f14342g.b(this.f14337b);
        int size = this.f14337b.size();
        for (int i11 = 0; i11 < size; i11++) {
            b bVar = (b) this.f14337b.get(i11);
            int i12 = bVar.f14344a;
            if (i12 == 1) {
                c(bVar);
            } else if (i12 == 2) {
                f(bVar);
            } else if (i12 == 4) {
                g(bVar);
            } else if (i12 == 8) {
                d(bVar);
            }
            Runnable runnable = this.f14340e;
            if (runnable != null) {
                runnable.run();
            }
        }
        this.f14337b.clear();
    }

    void x(List list) {
        int size = list.size();
        for (int i11 = 0; i11 < size; i11++) {
            b((b) list.get(i11));
        }
        list.clear();
    }

    void y() {
        x(this.f14337b);
        x(this.f14338c);
        this.f14343h = 0;
    }
}
