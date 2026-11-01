package com.bytedance.adsdk.ugeno.uA.EjP;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Shader;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.net.Uri;
import android.util.Log;
import android.widget.ImageView;
import androidx.core.view.ViewCompat;
import com.bytedance.adsdk.ugeno.EjP;
import com.bytedance.adsdk.ugeno.Sj.HiB;
import com.bytedance.adsdk.ugeno.Sj.vS;
import com.bytedance.adsdk.ugeno.core.IAnimation;

/* JADX INFO: loaded from: classes2.dex */
public class Sj extends ImageView implements HiB, IAnimation {
    static final /* synthetic */ boolean sP = true;
    private float Dq;
    private boolean Fmk;
    private final float[] HiB;
    private ColorStateList Jcg;
    private Shader.TileMode RiZ;
    private boolean TEQ;
    private float TKC;
    private Shader.TileMode TzV;
    private Drawable Ym;
    private int Zq;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private boolean f20839aa;
    private ImageView.ScaleType dNu;

    /* JADX INFO: renamed from: dx, reason: collision with root package name */
    private vS f20840dx;
    private EjP sU;
    private boolean sef;
    private ColorFilter uA;
    private int uvD;
    private Drawable vS;
    public static final Shader.TileMode Sj = Shader.TileMode.CLAMP;
    private static final ImageView.ScaleType[] EjP = {ImageView.ScaleType.MATRIX, ImageView.ScaleType.FIT_XY, ImageView.ScaleType.FIT_START, ImageView.ScaleType.FIT_CENTER, ImageView.ScaleType.FIT_END, ImageView.ScaleType.CENTER, ImageView.ScaleType.CENTER_CROP, ImageView.ScaleType.CENTER_INSIDE};

    /* JADX INFO: renamed from: com.bytedance.adsdk.ugeno.uA.EjP.Sj$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] Sj;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            Sj = iArr;
            try {
                iArr[ImageView.ScaleType.FIT_CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                Sj[ImageView.ScaleType.FIT_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                Sj[ImageView.ScaleType.FIT_END.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                Sj[ImageView.ScaleType.FIT_XY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                Sj[ImageView.ScaleType.CENTER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                Sj[ImageView.ScaleType.CENTER_CROP.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                Sj[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public Sj(Context context) {
        super(context);
        this.HiB = new float[]{0.0f, 0.0f, 0.0f, 0.0f};
        this.Jcg = ColorStateList.valueOf(ViewCompat.MEASURED_STATE_MASK);
        this.Dq = 0.0f;
        this.uA = null;
        this.TEQ = false;
        this.f20839aa = false;
        this.Fmk = false;
        this.sef = false;
        Shader.TileMode tileMode = Sj;
        this.TzV = tileMode;
        this.RiZ = tileMode;
        this.f20840dx = new vS(this);
    }

    private void EjP() {
        Drawable drawable = this.Ym;
        if (drawable == null || !this.TEQ) {
            return;
        }
        Drawable drawableMutate = drawable.mutate();
        this.Ym = drawableMutate;
        if (this.f20839aa) {
            drawableMutate.setColorFilter(this.uA);
        }
    }

    private Drawable Sj() {
        Resources resources = getResources();
        Drawable drawable = null;
        if (resources == null) {
            return null;
        }
        int i11 = this.Zq;
        if (i11 != 0) {
            try {
                drawable = resources.getDrawable(i11);
            } catch (Exception e11) {
                Log.w("RoundedImageView", "Unable to find resource: " + this.Zq, e11);
                this.Zq = 0;
            }
        }
        return sP.Sj(drawable);
    }

    private void Sj(Drawable drawable, ImageView.ScaleType scaleType) {
        if (drawable == null) {
            return;
        }
        if (drawable instanceof sP) {
            sP sPVar = (sP) drawable;
            sPVar.Sj(scaleType).Sj(this.Dq).Sj(this.Jcg).Sj(this.Fmk).Sj(this.TzV).sP(this.RiZ);
            float[] fArr = this.HiB;
            if (fArr != null) {
                sPVar.Sj(fArr[0], fArr[1], fArr[2], fArr[3]);
            }
            EjP();
            return;
        }
        if (drawable instanceof LayerDrawable) {
            LayerDrawable layerDrawable = (LayerDrawable) drawable;
            int numberOfLayers = layerDrawable.getNumberOfLayers();
            for (int i11 = 0; i11 < numberOfLayers; i11++) {
                Sj(layerDrawable.getDrawable(i11), scaleType);
            }
        }
    }

    private void Sj(boolean z10) {
        if (this.sef) {
            if (z10) {
                this.vS = sP.Sj(this.vS);
            }
            Sj(this.vS, ImageView.ScaleType.FIT_XY);
        }
    }

    private void TKC() {
        Sj(this.Ym, this.dNu);
    }

    private Drawable sP() {
        Resources resources = getResources();
        Drawable drawable = null;
        if (resources == null) {
            return null;
        }
        int i11 = this.uvD;
        if (i11 != 0) {
            try {
                drawable = resources.getDrawable(i11);
            } catch (Exception e11) {
                Log.w("RoundedImageView", "Unable to find resource: " + this.uvD, e11);
                this.uvD = 0;
            }
        }
        return sP.Sj(drawable);
    }

    public void Sj(float f11, float f12, float f13, float f14) {
        float[] fArr = this.HiB;
        if (fArr[0] == f11 && fArr[1] == f12 && fArr[2] == f14 && fArr[3] == f13) {
            return;
        }
        fArr[0] = f11;
        fArr[1] = f12;
        fArr[3] = f13;
        fArr[2] = f14;
        TKC();
        Sj(false);
        invalidate();
    }

    public void Sj(EjP ejP) {
        this.sU = ejP;
    }

    @Override // android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        EjP ejP = this.sU;
        if (ejP != null) {
            ejP.sP(canvas);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        invalidate();
    }

    public int getBorderColor() {
        return this.Jcg.getDefaultColor();
    }

    public ColorStateList getBorderColors() {
        return this.Jcg;
    }

    public float getBorderRadius() {
        return this.f20840dx.Sj();
    }

    public float getBorderWidth() {
        return this.Dq;
    }

    public float getCornerRadius() {
        return getMaxCornerRadius();
    }

    public float getMaxCornerRadius() {
        float fMax = 0.0f;
        for (float f11 : this.HiB) {
            fMax = Math.max(f11, fMax);
        }
        return fMax;
    }

    @Override // com.bytedance.adsdk.ugeno.Sj.HiB
    public float getRipple() {
        return this.TKC;
    }

    @Override // com.bytedance.adsdk.ugeno.Sj.HiB
    public float getRubIn() {
        return this.f20840dx.getRubIn();
    }

    @Override // android.widget.ImageView
    public ImageView.ScaleType getScaleType() {
        return this.dNu;
    }

    @Override // com.bytedance.adsdk.ugeno.Sj.HiB
    public float getShine() {
        return this.f20840dx.getShine();
    }

    @Override // com.bytedance.adsdk.ugeno.Sj.HiB
    public float getStretch() {
        return this.f20840dx.getStretch();
    }

    public Shader.TileMode getTileModeX() {
        return this.TzV;
    }

    public Shader.TileMode getTileModeY() {
        return this.RiZ;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        EjP ejP = this.sU;
        if (ejP != null) {
            ejP.Jcg();
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        EjP ejP = this.sU;
        if (ejP != null) {
            ejP.Dq();
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        EjP ejP = this.sU;
        if (ejP != null) {
            ejP.Sj(canvas, this);
            this.sU.Sj(canvas);
        }
    }

    @Override // android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        EjP ejP = this.sU;
        if (ejP != null) {
            ejP.Sj(i11, i12, i13, i14);
        }
        super.onLayout(z10, i11, i12, i13, i14);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i11, int i12) {
        EjP ejP = this.sU;
        if (ejP == null) {
            super.onMeasure(i11, i12);
        } else {
            int[] iArrSj = ejP.Sj(i11, i12);
            super.onMeasure(iArrSj[0], iArrSj[1]);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i11, int i12, int i13, int i14) {
        super.onSizeChanged(i11, i12, i13, i14);
        EjP ejP = this.sU;
        if (ejP != null) {
            ejP.sP(i11, i12, i13, i13);
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i11) {
        ColorDrawable colorDrawable = new ColorDrawable(i11);
        this.vS = colorDrawable;
        setBackgroundDrawable(colorDrawable);
    }

    @Override // android.view.View
    @Deprecated
    public void setBackgroundDrawable(Drawable drawable) {
        this.vS = drawable;
        Sj(true);
        super.setBackgroundDrawable(this.vS);
    }

    @Override // android.view.View
    public void setBackgroundResource(int i11) {
        if (this.uvD != i11) {
            this.uvD = i11;
            Drawable drawableSP = sP();
            this.vS = drawableSP;
            setBackgroundDrawable(drawableSP);
        }
    }

    public void setBorderColor(int i11) {
        setBorderColor(ColorStateList.valueOf(i11));
    }

    public void setBorderColor(ColorStateList colorStateList) {
        if (this.Jcg.equals(colorStateList)) {
            return;
        }
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(ViewCompat.MEASURED_STATE_MASK);
        }
        this.Jcg = colorStateList;
        TKC();
        Sj(false);
        if (this.Dq > 0.0f) {
            invalidate();
        }
    }

    public void setBorderRadius(float f11) {
        vS vSVar = this.f20840dx;
        if (vSVar != null) {
            vSVar.Sj(f11);
        }
    }

    public void setBorderWidth(float f11) {
        if (this.Dq == f11) {
            return;
        }
        this.Dq = f11;
        TKC();
        Sj(false);
        invalidate();
    }

    public void setBorderWidth(int i11) {
        setBorderWidth(getResources().getDimension(i11));
    }

    @Override // android.widget.ImageView
    public void setColorFilter(ColorFilter colorFilter) {
        if (this.uA != colorFilter) {
            this.uA = colorFilter;
            this.f20839aa = true;
            this.TEQ = true;
            EjP();
            invalidate();
        }
    }

    public void setCornerRadius(float f11) {
        Sj(f11, f11, f11, f11);
    }

    public void setCornerRadiusDimen(int i11) {
        float dimension = getResources().getDimension(i11);
        Sj(dimension, dimension, dimension, dimension);
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        this.Zq = 0;
        this.Ym = sP.Sj(bitmap);
        TKC();
        super.setImageDrawable(this.Ym);
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        this.Zq = 0;
        this.Ym = sP.Sj(drawable);
        TKC();
        super.setImageDrawable(drawable);
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i11) {
        if (this.Zq != i11) {
            this.Zq = i11;
            this.Ym = Sj();
            TKC();
            super.setImageDrawable(this.Ym);
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        setImageDrawable(getDrawable());
    }

    public void setOval(boolean z10) {
        this.Fmk = z10;
        TKC();
        Sj(false);
        invalidate();
    }

    @Override // com.bytedance.adsdk.ugeno.core.IAnimation
    public void setRipple(float f11) {
        this.TKC = f11;
        vS vSVar = this.f20840dx;
        if (vSVar != null) {
            vSVar.sP(f11);
        }
        postInvalidate();
    }

    public void setRubIn(float f11) {
        vS vSVar = this.f20840dx;
        if (vSVar != null) {
            vSVar.HiB(f11);
        }
    }

    @Override // android.widget.ImageView
    public void setScaleType(ImageView.ScaleType scaleType) {
        if (!sP && scaleType == null) {
            throw new AssertionError();
        }
        if (this.dNu != scaleType) {
            this.dNu = scaleType;
            int i11 = AnonymousClass1.Sj[scaleType.ordinal()];
            if (i11 == 1 || i11 == 2 || i11 == 3 || i11 == 4) {
                super.setScaleType(scaleType);
            } else {
                super.setScaleType(ImageView.ScaleType.FIT_XY);
            }
            TKC();
            Sj(false);
            invalidate();
        }
    }

    public void setShine(float f11) {
        vS vSVar = this.f20840dx;
        if (vSVar != null) {
            vSVar.TKC(f11);
        }
    }

    public void setStretch(float f11) {
        vS vSVar = this.f20840dx;
        if (vSVar != null) {
            vSVar.EjP(f11);
        }
    }

    public void setTileModeX(Shader.TileMode tileMode) {
        if (this.TzV == tileMode) {
            return;
        }
        this.TzV = tileMode;
        TKC();
        Sj(false);
        invalidate();
    }

    public void setTileModeY(Shader.TileMode tileMode) {
        if (this.RiZ == tileMode) {
            return;
        }
        this.RiZ = tileMode;
        TKC();
        Sj(false);
        invalidate();
    }
}
