package com.google.android.material.textfield;

import android.graphics.Canvas;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;

/* JADX INFO: loaded from: classes4.dex */
abstract class h extends ab.i {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    b f29921z;

    private static final class b extends ab.i.c {

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        private final RectF f29922w;

        private b(ab.n nVar, RectF rectF) {
            super(nVar, null);
            this.f29922w = rectF;
        }

        private b(b bVar) {
            super(bVar);
            this.f29922w = bVar.f29922w;
        }

        @Override // ab.i.c, android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            h hVarU0 = h.u0(this);
            hVarU0.invalidateSelf();
            return hVarU0;
        }
    }

    private static class c extends h {
        c(b bVar) {
            super(bVar);
        }

        @Override // ab.i
        protected void t(Canvas canvas) {
            if (this.f29921z.f29922w.isEmpty()) {
                super.t(canvas);
                return;
            }
            canvas.save();
            if (Build.VERSION.SDK_INT >= 26) {
                canvas.clipOutRect(this.f29921z.f29922w);
            } else {
                canvas.clipRect(this.f29921z.f29922w, Region.Op.DIFFERENCE);
            }
            super.t(canvas);
            canvas.restore();
        }
    }

    private h(b bVar) {
        super(bVar);
        this.f29921z = bVar;
    }

    static h t0(ab.n nVar) {
        if (nVar == null) {
            nVar = new ab.n();
        }
        return u0(new b(nVar, new RectF()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static h u0(b bVar) {
        return new c(bVar);
    }

    @Override // ab.i, android.graphics.drawable.Drawable
    public Drawable mutate() {
        this.f29921z = new b(this.f29921z);
        return this;
    }

    boolean v0() {
        return !this.f29921z.f29922w.isEmpty();
    }

    void w0() {
        x0(0.0f, 0.0f, 0.0f, 0.0f);
    }

    void x0(float f11, float f12, float f13, float f14) {
        if (f11 == this.f29921z.f29922w.left && f12 == this.f29921z.f29922w.top && f13 == this.f29921z.f29922w.right && f14 == this.f29921z.f29922w.bottom) {
            return;
        }
        this.f29921z.f29922w.set(f11, f12, f13, f14);
        invalidateSelf();
    }

    void y0(RectF rectF) {
        x0(rectF.left, rectF.top, rectF.right, rectF.bottom);
    }
}
