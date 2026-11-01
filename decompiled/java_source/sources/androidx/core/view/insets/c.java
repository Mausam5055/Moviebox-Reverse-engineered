package androidx.core.view.insets;

import android.graphics.RectF;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class c implements f.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ArrayList f8408a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final f f8409b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private z0.c f8410c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private z0.c f8411d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f8412e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f8413f;

    c(f fVar, List list) {
        z0.c cVar = z0.c.f79124e;
        this.f8410c = cVar;
        this.f8411d = cVar;
        f(list, false);
        f(list, true);
        fVar.g(this);
        this.f8409b = fVar;
    }

    private void f(List list, boolean z10) {
        int size = list.size();
        for (int i11 = 0; i11 < size; i11++) {
            Protection protection = (Protection) list.get(i11);
            if (protection.occupiesCorners() == z10) {
                Object controller = protection.getController();
                if (controller != null) {
                    throw new IllegalStateException(protection + " is already controlled by " + controller);
                }
                protection.setController(this);
                this.f8408a.add(protection);
            }
        }
    }

    private void j() {
        z0.c cVarA = z0.c.f79124e;
        for (int size = this.f8408a.size() - 1; size >= 0; size--) {
            cVarA = z0.c.a(cVarA, ((Protection) this.f8408a.get(size)).dispatchInsets(this.f8410c, this.f8411d, cVarA));
        }
    }

    @Override // androidx.core.view.insets.f.c
    public void a() {
        int i11 = this.f8412e;
        boolean z10 = i11 > 0;
        int i12 = i11 - 1;
        this.f8412e = i12;
        if (z10 && i12 == 0) {
            j();
        }
    }

    @Override // androidx.core.view.insets.f.c
    public void b(int i11, z0.c cVar, RectF rectF) {
        z0.c cVar2 = this.f8411d;
        for (int size = this.f8408a.size() - 1; size >= 0; size--) {
            Protection protection = (Protection) this.f8408a.get(size);
            int side = protection.getSide();
            if ((side & i11) != 0) {
                protection.setSystemVisible(true);
                if (side == 1) {
                    int i12 = cVar2.f79125a;
                    if (i12 > 0) {
                        protection.setSystemInsetAmount(cVar.f79125a / i12);
                    }
                    protection.setSystemAlpha(rectF.left);
                } else if (side == 2) {
                    int i13 = cVar2.f79126b;
                    if (i13 > 0) {
                        protection.setSystemInsetAmount(cVar.f79126b / i13);
                    }
                    protection.setSystemAlpha(rectF.top);
                } else if (side == 4) {
                    int i14 = cVar2.f79127c;
                    if (i14 > 0) {
                        protection.setSystemInsetAmount(cVar.f79127c / i14);
                    }
                    protection.setSystemAlpha(rectF.right);
                } else if (side == 8) {
                    int i15 = cVar2.f79128d;
                    if (i15 > 0) {
                        protection.setSystemInsetAmount(cVar.f79128d / i15);
                    }
                    protection.setSystemAlpha(rectF.bottom);
                }
            }
        }
    }

    @Override // androidx.core.view.insets.f.c
    public void c(z0.c cVar, z0.c cVar2) {
        this.f8410c = cVar;
        this.f8411d = cVar2;
        j();
    }

    @Override // androidx.core.view.insets.f.c
    public void d() {
        this.f8412e++;
    }

    @Override // androidx.core.view.insets.f.c
    public void e(int i11) {
        for (int size = this.f8408a.size() - 1; size >= 0; size--) {
            ((Protection) this.f8408a.get(size)).dispatchColorHint(i11);
        }
    }

    void g() {
        if (this.f8413f) {
            return;
        }
        this.f8413f = true;
        this.f8409b.n(this);
        for (int size = this.f8408a.size() - 1; size >= 0; size--) {
            ((Protection) this.f8408a.get(size)).setController(null);
        }
        this.f8408a.clear();
    }

    Protection h(int i11) {
        return (Protection) this.f8408a.get(i11);
    }

    int i() {
        return this.f8408a.size();
    }
}
