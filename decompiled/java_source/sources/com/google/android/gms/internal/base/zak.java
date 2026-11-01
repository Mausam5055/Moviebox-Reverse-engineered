package com.google.android.gms.internal.base;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class zak extends Drawable implements Drawable.Callback {
    private int zaa;
    private long zab;
    private int zac;
    private int zad;
    private int zae;
    private int zaf;
    private boolean zag;
    private boolean zah;
    private zaj zai;
    private Drawable zaj;
    private Drawable zak;
    private boolean zal;
    private boolean zam;
    private boolean zan;
    private int zao;

    public zak(@Nullable Drawable drawable, @Nullable Drawable drawable2) {
        this(null);
        drawable = drawable == null ? zai.zaa : drawable;
        this.zaj = drawable;
        drawable.setCallback(this);
        zaj zajVar = this.zai;
        zajVar.zab = drawable.getChangingConfigurations() | zajVar.zab;
        drawable2 = drawable2 == null ? zai.zaa : drawable2;
        this.zak = drawable2;
        drawable2.setCallback(this);
        zaj zajVar2 = this.zai;
        zajVar2.zab = drawable2.getChangingConfigurations() | zajVar2.zab;
    }

    zak(@Nullable zaj zajVar) {
        this.zaa = 0;
        this.zad = 255;
        this.zaf = 0;
        this.zag = true;
        this.zai = new zaj(zajVar);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x005b  */
    /* JADX WARN: Code duplicated, block: B:36:? A[RETURN, SYNTHETIC] */
    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        boolean z10;
        int i11;
        int i12 = this.zaa;
        int i13 = 0;
        if (i12 == 1) {
            this.zab = SystemClock.uptimeMillis();
            this.zaa = 2;
            z10 = false;
        } else if (i12 == 2 && this.zab >= 0) {
            float fUptimeMillis = (SystemClock.uptimeMillis() - this.zab) / this.zae;
            z10 = fUptimeMillis >= 1.0f;
            if (z10) {
                this.zaa = 0;
            }
            this.zaf = (int) ((this.zac * Math.min(fUptimeMillis, 1.0f)) + 0.0f);
        } else {
            z10 = true;
        }
        int i14 = this.zaf;
        boolean z11 = this.zag;
        Drawable drawable = this.zaj;
        Drawable drawable2 = this.zak;
        if (!z10) {
            if (z11) {
                drawable.setAlpha(this.zad - i14);
                i13 = 1;
            }
            drawable.draw(canvas);
            if (i13 != 0) {
                drawable.setAlpha(this.zad);
            }
            if (i14 > 0) {
                drawable2.setAlpha(i14);
                drawable2.draw(canvas);
                drawable2.setAlpha(this.zad);
            }
            invalidateSelf();
            return;
        }
        if (z11) {
            if (i14 == 0) {
            }
            i11 = this.zad;
            if (i14 == i11) {
                drawable2.setAlpha(i11);
                drawable2.draw(canvas);
            }
        }
        i13 = i14;
        drawable.draw(canvas);
        i14 = i13;
        i11 = this.zad;
        if (i14 == i11) {
            drawable2.setAlpha(i11);
            drawable2.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        int changingConfigurations = super.getChangingConfigurations();
        zaj zajVar = this.zai;
        return changingConfigurations | zajVar.zaa | zajVar.zab;
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public final Drawable.ConstantState getConstantState() {
        if (!zac()) {
            return null;
        }
        this.zai.zaa = getChangingConfigurations();
        return this.zai;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return Math.max(this.zaj.getIntrinsicHeight(), this.zak.getIntrinsicHeight());
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return Math.max(this.zaj.getIntrinsicWidth(), this.zak.getIntrinsicWidth());
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        if (!this.zan) {
            this.zao = Drawable.resolveOpacity(this.zaj.getOpacity(), this.zak.getOpacity());
            this.zan = true;
        }
        return this.zao;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        if (!this.zah && super.mutate() == this) {
            if (!zac()) {
                throw new IllegalStateException("One or more children of this LayerDrawable does not have constant state; this drawable cannot be mutated.");
            }
            this.zaj.mutate();
            this.zak.mutate();
            this.zah = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected final void onBoundsChange(Rect rect) {
        this.zaj.setBounds(rect);
        this.zak.setBounds(rect);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j11) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j11);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i11) {
        if (this.zaf == this.zad) {
            this.zaf = i11;
        }
        this.zad = i11;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.zaj.setColorFilter(colorFilter);
        this.zak.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    public final Drawable zaa() {
        return this.zak;
    }

    public final void zab(int i11) {
        this.zac = this.zad;
        this.zaf = 0;
        this.zae = 250;
        this.zaa = 1;
        invalidateSelf();
    }

    public final boolean zac() {
        if (!this.zal) {
            boolean z10 = false;
            if (this.zaj.getConstantState() != null && this.zak.getConstantState() != null) {
                z10 = true;
            }
            this.zam = z10;
            this.zal = true;
        }
        return this.zam;
    }
}
