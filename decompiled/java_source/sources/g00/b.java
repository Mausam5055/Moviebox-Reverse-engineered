package g00;

import android.util.SparseArray;
import android.util.SparseBooleanArray;

/* JADX INFO: loaded from: classes7.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SparseBooleanArray f63056a = new SparseBooleanArray();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private SparseArray f63057b = new SparseArray();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f63058c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f63059d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f63060e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f63061f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f63062g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f63063h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private a f63064i;

    public interface a {
        void onDeselected(int i11, int i12);

        void onEnter(int i11, int i12, float f11, boolean z10);

        void onLeave(int i11, int i12, float f11, boolean z10);

        void onSelected(int i11, int i12);
    }

    private void a(int i11) {
        a aVar = this.f63064i;
        if (aVar != null) {
            aVar.onDeselected(i11, this.f63058c);
        }
        this.f63056a.put(i11, true);
    }

    private void b(int i11, float f11, boolean z10, boolean z11) {
        if (this.f63063h || i11 == this.f63059d || this.f63062g == 1 || z11) {
            a aVar = this.f63064i;
            if (aVar != null) {
                aVar.onEnter(i11, this.f63058c, f11, z10);
            }
            this.f63057b.put(i11, Float.valueOf(1.0f - f11));
        }
    }

    private void c(int i11, float f11, boolean z10, boolean z11) {
        if (!this.f63063h && i11 != this.f63060e && this.f63062g != 1) {
            int i12 = this.f63059d;
            if (((i11 != i12 - 1 && i11 != i12 + 1) || ((Float) this.f63057b.get(i11, Float.valueOf(0.0f))).floatValue() == 1.0f) && !z11) {
                return;
            }
        }
        a aVar = this.f63064i;
        if (aVar != null) {
            aVar.onLeave(i11, this.f63058c, f11, z10);
        }
        this.f63057b.put(i11, Float.valueOf(f11));
    }

    private void d(int i11) {
        a aVar = this.f63064i;
        if (aVar != null) {
            aVar.onSelected(i11, this.f63058c);
        }
        this.f63056a.put(i11, false);
    }

    public int e() {
        return this.f63059d;
    }

    public int f() {
        return this.f63062g;
    }

    public int g() {
        return this.f63058c;
    }

    public void h(int i11) {
        this.f63062g = i11;
    }

    public void i(int i11, float f11, int i12) {
        boolean z10;
        float f12 = i11 + f11;
        float f13 = this.f63061f;
        boolean z11 = f13 <= f12;
        if (this.f63062g == 0) {
            for (int i13 = 0; i13 < this.f63058c; i13++) {
                if (i13 != this.f63059d) {
                    if (!this.f63056a.get(i13)) {
                        a(i13);
                    }
                    if (((Float) this.f63057b.get(i13, Float.valueOf(0.0f))).floatValue() != 1.0f) {
                        c(i13, 1.0f, false, true);
                    }
                }
            }
            b(this.f63059d, 1.0f, false, true);
            d(this.f63059d);
        } else {
            if (f12 == f13) {
                return;
            }
            int i14 = i11 + 1;
            if (f11 == 0.0f && z11) {
                i14 = i11 - 1;
                z10 = false;
            } else {
                z10 = true;
            }
            for (int i15 = 0; i15 < this.f63058c; i15++) {
                if (i15 != i11 && i15 != i14 && ((Float) this.f63057b.get(i15, Float.valueOf(0.0f))).floatValue() != 1.0f) {
                    c(i15, 1.0f, z11, true);
                }
            }
            if (!z10) {
                float f14 = 1.0f - f11;
                c(i14, f14, true, false);
                b(i11, f14, true, false);
            } else if (z11) {
                c(i11, f11, true, false);
                b(i14, f11, true, false);
            } else {
                float f15 = 1.0f - f11;
                c(i14, f15, false, false);
                b(i11, f15, false, false);
            }
        }
        this.f63061f = f12;
    }

    public void j(int i11) {
        this.f63060e = this.f63059d;
        this.f63059d = i11;
        d(i11);
        for (int i12 = 0; i12 < this.f63058c; i12++) {
            if (i12 != this.f63059d && !this.f63056a.get(i12)) {
                a(i12);
            }
        }
    }

    public void k(a aVar) {
        this.f63064i = aVar;
    }

    public void l(boolean z10) {
        this.f63063h = z10;
    }

    public void m(int i11) {
        this.f63058c = i11;
        this.f63056a.clear();
        this.f63057b.clear();
    }
}
