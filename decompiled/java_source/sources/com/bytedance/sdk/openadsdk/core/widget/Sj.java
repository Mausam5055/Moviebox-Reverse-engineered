package com.bytedance.sdk.openadsdk.core.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.NinePatchDrawable;

/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"AppCompatCustomView"})
public class Sj extends com.bytedance.sdk.openadsdk.core.HiB.EjP {
    private int Sj;
    private int sP;

    public Sj(Context context) {
        super(context);
        this.Sj = 0;
        this.sP = 0;
    }

    private Bitmap Sj(Bitmap bitmap, int i11) {
        Bitmap bitmapCreateBitmap;
        int i12 = i11 * 2;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (height > width) {
            bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, (height - width) / 2, width, width);
        } else {
            bitmapCreateBitmap = height < width ? Bitmap.createBitmap(bitmap, (width - height) / 2, 0, height, height) : null;
        }
        if (bitmapCreateBitmap != null) {
            bitmap = bitmapCreateBitmap;
        }
        if (bitmap.getWidth() != i12 || bitmap.getHeight() != i12) {
            bitmap = Bitmap.createScaledBitmap(bitmap, i12, i12, true);
        }
        Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap2);
        Paint paint = getPaint();
        Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        canvas.drawARGB(0, 0, 0, 0);
        canvas.drawCircle(bitmap.getWidth() / 2, bitmap.getHeight() / 2, bitmap.getWidth() / 2, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect, paint);
        return bitmapCreateBitmap2;
    }

    private boolean Sj() {
        return getDrawable() == null || getWidth() == 0 || getHeight() == 0;
    }

    private Paint getPaint() {
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setFilterBitmap(true);
        paint.setDither(true);
        return paint;
    }

    private int getRadius() {
        if (this.Sj == 0) {
            this.Sj = getWidth();
        }
        if (this.sP == 0) {
            this.sP = getHeight();
        }
        int i11 = this.Sj;
        int i12 = this.sP;
        if (i11 >= i12) {
            i11 = i12;
        }
        return i11 / 2;
    }

    private boolean sP() {
        if (getDrawable().getClass() != NinePatchDrawable.class) {
            return (getDrawable() instanceof BitmapDrawable) && ((BitmapDrawable) getDrawable()).getBitmap() == null;
        }
        return true;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        Bitmap bitmapCopy;
        Bitmap bitmapSj;
        if (Sj()) {
            return;
        }
        measure(0, 0);
        if (sP()) {
            return;
        }
        try {
            bitmapCopy = ((BitmapDrawable) getDrawable()).getBitmap().copy(Bitmap.Config.ARGB_8888, true);
        } catch (Throwable unused) {
            bitmapCopy = null;
        }
        if (bitmapCopy == null) {
            super.onDraw(canvas);
            return;
        }
        int radius = getRadius();
        try {
            bitmapSj = Sj(bitmapCopy, radius);
        } catch (Throwable unused2) {
            bitmapSj = null;
        }
        if (bitmapSj == null) {
            super.onDraw(canvas);
        } else {
            canvas.drawBitmap(bitmapSj, (this.Sj / 2) - radius, (this.sP / 2) - radius, (Paint) null);
        }
    }
}
