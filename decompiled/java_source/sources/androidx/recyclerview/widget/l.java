package androidx.recyclerview.widget;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final a f14403a;

    interface a {
        androidx.recyclerview.widget.a.b a(int i11, int i12, int i13, Object obj);

        void b(androidx.recyclerview.widget.a.b bVar);
    }

    l(a aVar) {
        this.f14403a = aVar;
    }

    private int a(List list) {
        boolean z10 = false;
        for (int size = list.size() - 1; size >= 0; size--) {
            if (((androidx.recyclerview.widget.a.b) list.get(size)).f14344a != 8) {
                z10 = true;
            } else if (z10) {
                return size;
            }
        }
        return -1;
    }

    private void c(List list, int i11, androidx.recyclerview.widget.a.b bVar, int i12, androidx.recyclerview.widget.a.b bVar2) {
        int i13 = bVar.f14347d;
        int i14 = bVar2.f14345b;
        int i15 = i13 < i14 ? -1 : 0;
        int i16 = bVar.f14345b;
        if (i16 < i14) {
            i15++;
        }
        if (i14 <= i16) {
            bVar.f14345b = i16 + bVar2.f14347d;
        }
        int i17 = bVar2.f14345b;
        if (i17 <= i13) {
            bVar.f14347d = i13 + bVar2.f14347d;
        }
        bVar2.f14345b = i17 + i15;
        list.set(i11, bVar2);
        list.set(i12, bVar);
    }

    private void d(List list, int i11, int i12) {
        androidx.recyclerview.widget.a.b bVar = (androidx.recyclerview.widget.a.b) list.get(i11);
        androidx.recyclerview.widget.a.b bVar2 = (androidx.recyclerview.widget.a.b) list.get(i12);
        int i13 = bVar2.f14344a;
        if (i13 == 1) {
            c(list, i11, bVar, i12, bVar2);
        } else if (i13 == 2) {
            e(list, i11, bVar, i12, bVar2);
        } else {
            if (i13 != 4) {
                return;
            }
            f(list, i11, bVar, i12, bVar2);
        }
    }

    void b(List list) {
        while (true) {
            int iA = a(list);
            if (iA == -1) {
                return;
            } else {
                d(list, iA, iA + 1);
            }
        }
    }

    void e(List list, int i11, androidx.recyclerview.widget.a.b bVar, int i12, androidx.recyclerview.widget.a.b bVar2) {
        boolean z10;
        int i13 = bVar.f14345b;
        int i14 = bVar.f14347d;
        boolean z11 = false;
        if (i13 < i14) {
            if (bVar2.f14345b == i13 && bVar2.f14347d == i14 - i13) {
                z10 = false;
                z11 = true;
            } else {
                z10 = false;
            }
        } else if (bVar2.f14345b == i14 + 1 && bVar2.f14347d == i13 - i14) {
            z10 = true;
            z11 = true;
        } else {
            z10 = true;
        }
        int i15 = bVar2.f14345b;
        if (i14 < i15) {
            bVar2.f14345b = i15 - 1;
        } else {
            int i16 = bVar2.f14347d;
            if (i14 < i15 + i16) {
                bVar2.f14347d = i16 - 1;
                bVar.f14344a = 2;
                bVar.f14347d = 1;
                if (bVar2.f14347d == 0) {
                    list.remove(i12);
                    this.f14403a.b(bVar2);
                    return;
                }
                return;
            }
        }
        int i17 = bVar.f14345b;
        int i18 = bVar2.f14345b;
        androidx.recyclerview.widget.a.b bVarA = null;
        if (i17 <= i18) {
            bVar2.f14345b = i18 + 1;
        } else {
            int i19 = bVar2.f14347d;
            if (i17 < i18 + i19) {
                bVarA = this.f14403a.a(2, i17 + 1, (i18 + i19) - i17, null);
                bVar2.f14347d = bVar.f14345b - bVar2.f14345b;
            }
        }
        if (z11) {
            list.set(i11, bVar2);
            list.remove(i12);
            this.f14403a.b(bVar);
            return;
        }
        if (z10) {
            if (bVarA != null) {
                int i20 = bVar.f14345b;
                if (i20 > bVarA.f14345b) {
                    bVar.f14345b = i20 - bVarA.f14347d;
                }
                int i21 = bVar.f14347d;
                if (i21 > bVarA.f14345b) {
                    bVar.f14347d = i21 - bVarA.f14347d;
                }
            }
            int i22 = bVar.f14345b;
            if (i22 > bVar2.f14345b) {
                bVar.f14345b = i22 - bVar2.f14347d;
            }
            int i23 = bVar.f14347d;
            if (i23 > bVar2.f14345b) {
                bVar.f14347d = i23 - bVar2.f14347d;
            }
        } else {
            if (bVarA != null) {
                int i24 = bVar.f14345b;
                if (i24 >= bVarA.f14345b) {
                    bVar.f14345b = i24 - bVarA.f14347d;
                }
                int i25 = bVar.f14347d;
                if (i25 >= bVarA.f14345b) {
                    bVar.f14347d = i25 - bVarA.f14347d;
                }
            }
            int i26 = bVar.f14345b;
            if (i26 >= bVar2.f14345b) {
                bVar.f14345b = i26 - bVar2.f14347d;
            }
            int i27 = bVar.f14347d;
            if (i27 >= bVar2.f14345b) {
                bVar.f14347d = i27 - bVar2.f14347d;
            }
        }
        list.set(i11, bVar2);
        if (bVar.f14345b != bVar.f14347d) {
            list.set(i12, bVar);
        } else {
            list.remove(i12);
        }
        if (bVarA != null) {
            list.add(i11, bVarA);
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0027  */
    /* JADX WARN: Code duplicated, block: B:12:0x002b  */
    /* JADX WARN: Code duplicated, block: B:14:0x0031  */
    /* JADX WARN: Code duplicated, block: B:17:0x0048  */
    /* JADX WARN: Code duplicated, block: B:18:0x004c  */
    /* JADX WARN: Code duplicated, block: B:20:0x0056  */
    /* JADX WARN: Code duplicated, block: B:22:0x005b  */
    /* JADX WARN: Code duplicated, block: B:24:? A[RETURN, SYNTHETIC] */
    void f(List list, int i11, androidx.recyclerview.widget.a.b bVar, int i12, androidx.recyclerview.widget.a.b bVar2) {
        androidx.recyclerview.widget.a.b bVarA;
        int i13;
        int i14;
        int i15;
        int i16 = bVar.f14347d;
        int i17 = bVar2.f14345b;
        androidx.recyclerview.widget.a.b bVarA2 = null;
        if (i16 >= i17) {
            int i18 = bVar2.f14347d;
            if (i16 < i17 + i18) {
                bVar2.f14347d = i18 - 1;
                bVarA = this.f14403a.a(4, bVar.f14345b, 1, bVar2.f14346c);
            }
            i13 = bVar.f14345b;
            i14 = bVar2.f14345b;
            if (i13 <= i14) {
                bVar2.f14345b = i14 + 1;
            } else {
                i15 = bVar2.f14347d;
                if (i13 < i14 + i15) {
                    int i19 = (i14 + i15) - i13;
                    bVarA2 = this.f14403a.a(4, i13 + 1, i19, bVar2.f14346c);
                    bVar2.f14347d -= i19;
                }
            }
            list.set(i12, bVar);
            if (bVar2.f14347d > 0) {
                list.set(i11, bVar2);
            } else {
                list.remove(i11);
                this.f14403a.b(bVar2);
            }
            if (bVarA != null) {
                list.add(i11, bVarA);
            }
            if (bVarA2 != null) {
                list.add(i11, bVarA2);
            }
        }
        bVar2.f14345b = i17 - 1;
        bVarA = null;
        i13 = bVar.f14345b;
        i14 = bVar2.f14345b;
        if (i13 <= i14) {
            bVar2.f14345b = i14 + 1;
        } else {
            i15 = bVar2.f14347d;
            if (i13 < i14 + i15) {
                int i110 = (i14 + i15) - i13;
                bVarA2 = this.f14403a.a(4, i13 + 1, i110, bVar2.f14346c);
                bVar2.f14347d -= i110;
            }
        }
        list.set(i12, bVar);
        if (bVar2.f14347d > 0) {
            list.set(i11, bVar2);
        } else {
            list.remove(i11);
            this.f14403a.b(bVar2);
        }
        if (bVarA != null) {
            list.add(i11, bVarA);
        }
        if (bVarA2 != null) {
            list.add(i11, bVarA2);
        }
    }
}
