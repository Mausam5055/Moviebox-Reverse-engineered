package ya;

import ab.i;
import ab.n;
import ab.q;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes5.dex */
public class a extends Drawable implements q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b f78953a;

    static final class b extends Drawable.ConstantState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        i f78954a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f78955b;

        public b(i iVar) {
            this.f78954a = iVar;
            this.f78955b = false;
        }

        public b(b bVar) {
            this.f78954a = (i) bVar.f78954a.getConstantState().newDrawable();
            this.f78955b = bVar.f78955b;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public a newDrawable() {
            return new a(new b(this));
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }
    }

    public a(n nVar) {
        this(new b(new i(nVar)));
    }

    private a(b bVar) {
        this.f78953a = bVar;
    }

    @Override // android.graphics.drawable.Drawable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public a mutate() {
        this.f78953a = new b(this.f78953a);
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        b bVar = this.f78953a;
        if (bVar.f78955b) {
            bVar.f78954a.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f78953a;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f78953a.f78954a.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f78953a.f78954a.setBounds(rect);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        boolean zOnStateChange = super.onStateChange(iArr);
        if (this.f78953a.f78954a.setState(iArr)) {
            zOnStateChange = true;
        }
        boolean zE = ya.b.e(iArr);
        b bVar = this.f78953a;
        if (bVar.f78955b == zE) {
            return zOnStateChange;
        }
        bVar.f78955b = zE;
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i11) {
        this.f78953a.f78954a.setAlpha(i11);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f78953a.f78954a.setColorFilter(colorFilter);
    }

    @Override // ab.q
    public void setShapeAppearanceModel(n nVar) {
        this.f78953a.f78954a.setShapeAppearanceModel(nVar);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTint(int i11) {
        this.f78953a.f78954a.setTint(i11);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.f78953a.f78954a.setTintList(colorStateList);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        this.f78953a.f78954a.setTintMode(mode);
    }
}
