package androidx.appcompat.widget;

import android.R;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Shader;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.graphics.drawable.shapes.Shape;
import android.util.AttributeSet;
import android.widget.ProgressBar;

/* JADX INFO: loaded from: classes.dex */
class l {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int[] f2050c = {R.attr.indeterminateDrawable, R.attr.progressDrawable};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ProgressBar f2051a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Bitmap f2052b;

    private static class a {
        public static void a(LayerDrawable layerDrawable, LayerDrawable layerDrawable2, int i11) {
            layerDrawable2.setLayerGravity(i11, layerDrawable.getLayerGravity(i11));
            layerDrawable2.setLayerWidth(i11, layerDrawable.getLayerWidth(i11));
            layerDrawable2.setLayerHeight(i11, layerDrawable.getLayerHeight(i11));
            layerDrawable2.setLayerInsetLeft(i11, layerDrawable.getLayerInsetLeft(i11));
            layerDrawable2.setLayerInsetRight(i11, layerDrawable.getLayerInsetRight(i11));
            layerDrawable2.setLayerInsetTop(i11, layerDrawable.getLayerInsetTop(i11));
            layerDrawable2.setLayerInsetBottom(i11, layerDrawable.getLayerInsetBottom(i11));
            layerDrawable2.setLayerInsetStart(i11, layerDrawable.getLayerInsetStart(i11));
            layerDrawable2.setLayerInsetEnd(i11, layerDrawable.getLayerInsetEnd(i11));
        }
    }

    l(ProgressBar progressBar) {
        this.f2051a = progressBar;
    }

    private Shape a() {
        return new RoundRectShape(new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f}, null, null);
    }

    private Drawable e(Drawable drawable) {
        if (!(drawable instanceof AnimationDrawable)) {
            return drawable;
        }
        AnimationDrawable animationDrawable = (AnimationDrawable) drawable;
        int numberOfFrames = animationDrawable.getNumberOfFrames();
        AnimationDrawable animationDrawable2 = new AnimationDrawable();
        animationDrawable2.setOneShot(animationDrawable.isOneShot());
        for (int i11 = 0; i11 < numberOfFrames; i11++) {
            Drawable drawableD = d(animationDrawable.getFrame(i11), true);
            drawableD.setLevel(10000);
            animationDrawable2.addFrame(drawableD, animationDrawable.getDuration(i11));
        }
        animationDrawable2.setLevel(10000);
        return animationDrawable2;
    }

    Bitmap b() {
        return this.f2052b;
    }

    void c(AttributeSet attributeSet, int i11) {
        j0 j0VarV = j0.v(this.f2051a.getContext(), attributeSet, f2050c, i11, 0);
        Drawable drawableH = j0VarV.h(0);
        if (drawableH != null) {
            this.f2051a.setIndeterminateDrawable(e(drawableH));
        }
        Drawable drawableH2 = j0VarV.h(1);
        if (drawableH2 != null) {
            this.f2051a.setProgressDrawable(d(drawableH2, false));
        }
        j0VarV.x();
    }

    /* JADX WARN: Multi-variable type inference failed */
    Drawable d(Drawable drawable, boolean z10) {
        if (drawable instanceof a1.b) {
            a1.b bVar = (a1.b) drawable;
            Drawable drawableA = bVar.a();
            if (drawableA != null) {
                bVar.b(d(drawableA, z10));
            }
        } else {
            if (drawable instanceof LayerDrawable) {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                int numberOfLayers = layerDrawable.getNumberOfLayers();
                Drawable[] drawableArr = new Drawable[numberOfLayers];
                for (int i11 = 0; i11 < numberOfLayers; i11++) {
                    int id2 = layerDrawable.getId(i11);
                    drawableArr[i11] = d(layerDrawable.getDrawable(i11), id2 == 16908301 || id2 == 16908303);
                }
                LayerDrawable layerDrawable2 = new LayerDrawable(drawableArr);
                for (int i12 = 0; i12 < numberOfLayers; i12++) {
                    layerDrawable2.setId(i12, layerDrawable.getId(i12));
                    a.a(layerDrawable, layerDrawable2, i12);
                }
                return layerDrawable2;
            }
            if (drawable instanceof BitmapDrawable) {
                BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
                Bitmap bitmap = bitmapDrawable.getBitmap();
                if (this.f2052b == null) {
                    this.f2052b = bitmap;
                }
                ShapeDrawable shapeDrawable = new ShapeDrawable(a());
                shapeDrawable.getPaint().setShader(new BitmapShader(bitmap, Shader.TileMode.REPEAT, Shader.TileMode.CLAMP));
                shapeDrawable.getPaint().setColorFilter(bitmapDrawable.getPaint().getColorFilter());
                return z10 ? new ClipDrawable(shapeDrawable, 3, 1) : shapeDrawable;
            }
        }
        return drawable;
    }
}
