package androidx.appcompat.graphics.drawable;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.StateSet;

/* JADX INFO: loaded from: classes.dex */
public class d extends DrawableContainerCompat {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private a f1256m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f1257n;

    static class a extends DrawableContainerCompat.c {
        int[][] J;

        a(a aVar, d dVar, Resources resources) {
            super(aVar, dVar, resources);
            if (aVar != null) {
                this.J = aVar.J;
            } else {
                this.J = new int[f()][];
            }
        }

        int A(int[] iArr, Drawable drawable) {
            int iA = a(drawable);
            this.J[iA] = iArr;
            return iA;
        }

        int B(int[] iArr) {
            int[][] iArr2 = this.J;
            int iH = h();
            for (int i11 = 0; i11 < iH; i11++) {
                if (StateSet.stateSetMatches(iArr2[i11], iArr)) {
                    return i11;
                }
            }
            return -1;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new d(this, null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new d(this, resources);
        }

        @Override // androidx.appcompat.graphics.drawable.DrawableContainerCompat.c
        public void o(int i11, int i12) {
            super.o(i11, i12);
            int[][] iArr = new int[i12][];
            System.arraycopy(this.J, 0, iArr, 0, i11);
            this.J = iArr;
        }

        @Override // androidx.appcompat.graphics.drawable.DrawableContainerCompat.c
        void s() {
            int[][] iArr = this.J;
            int[][] iArr2 = new int[iArr.length][];
            for (int length = iArr.length - 1; length >= 0; length--) {
                int[] iArr3 = this.J[length];
                iArr2[length] = iArr3 != null ? (int[]) iArr3.clone() : null;
            }
            this.J = iArr2;
        }
    }

    public d() {
        this(null, null);
    }

    d(a aVar) {
        if (aVar != null) {
            h(aVar);
        }
    }

    d(a aVar, Resources resources) {
        h(new a(aVar, this, resources));
        onStateChange(getState());
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainerCompat, android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
        onStateChange(getState());
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainerCompat
    void h(DrawableContainerCompat.c cVar) {
        super.h(cVar);
        if (cVar instanceof a) {
            this.f1256m = (a) cVar;
        }
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainerCompat, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.appcompat.graphics.drawable.DrawableContainerCompat
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public a b() {
        return new a(this.f1256m, this, null);
    }

    int[] k(AttributeSet attributeSet) {
        int attributeCount = attributeSet.getAttributeCount();
        int[] iArr = new int[attributeCount];
        int i11 = 0;
        for (int i12 = 0; i12 < attributeCount; i12++) {
            int attributeNameResource = attributeSet.getAttributeNameResource(i12);
            if (attributeNameResource != 0 && attributeNameResource != 16842960 && attributeNameResource != 16843161) {
                int i13 = i11 + 1;
                if (!attributeSet.getAttributeBooleanValue(i12, false)) {
                    attributeNameResource = -attributeNameResource;
                }
                iArr[i11] = attributeNameResource;
                i11 = i13;
            }
        }
        return StateSet.trimStateSet(iArr, i11);
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainerCompat, android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f1257n && super.mutate() == this) {
            this.f1256m.s();
            this.f1257n = true;
        }
        return this;
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainerCompat, android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        boolean zOnStateChange = super.onStateChange(iArr);
        int iB = this.f1256m.B(iArr);
        if (iB < 0) {
            iB = this.f1256m.B(StateSet.WILD_CARD);
        }
        return g(iB) || zOnStateChange;
    }
}
