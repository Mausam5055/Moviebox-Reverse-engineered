package com.mbridge.msdk.video.dynview.shape;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Shader;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RectShape;

/* JADX INFO: loaded from: classes5.dex */
public class a extends ShapeDrawable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f39070a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f39071b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f39072c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f39073d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f39074e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Bitmap f39075f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Bitmap f39076g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f39077h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Paint f39078i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Matrix f39079j;

    public static class b implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private RectShape f39080a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Bitmap f39081b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Bitmap f39082c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f39083d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f39084e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f39085f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f39086g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private float f39087h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private float f39088i;

        private b() {
            this.f39085f = 100;
            this.f39086g = 10;
            this.f39080a = new RectShape();
        }

        @Override // com.mbridge.msdk.video.dynview.shape.a.c
        public c a(float f11) {
            this.f39088i = f11;
            return this;
        }

        public c a(int i11) {
            this.f39084e = i11;
            return this;
        }

        @Override // com.mbridge.msdk.video.dynview.shape.a.c
        public c a(Bitmap bitmap) {
            this.f39082c = bitmap;
            return this;
        }

        @Override // com.mbridge.msdk.video.dynview.shape.a.c
        public c a(boolean z10) {
            this.f39083d = z10;
            return this;
        }

        public a a() {
            return new a(this);
        }

        public c b(float f11) {
            this.f39087h = f11;
            return this;
        }

        @Override // com.mbridge.msdk.video.dynview.shape.a.c
        public c b(Bitmap bitmap) {
            this.f39081b = bitmap;
            return this;
        }
    }

    public interface c {
        c a(float f11);

        c a(Bitmap bitmap);

        c a(boolean z10);

        c b(Bitmap bitmap);
    }

    private a(b bVar) {
        super(bVar.f39080a);
        this.f39077h = false;
        this.f39075f = bVar.f39081b;
        this.f39076g = bVar.f39082c;
        this.f39077h = bVar.f39083d;
        this.f39070a = bVar.f39084e;
        this.f39073d = bVar.f39085f;
        this.f39074e = bVar.f39086g;
        this.f39071b = bVar.f39087h;
        this.f39072c = bVar.f39088i;
        Paint paint = new Paint();
        this.f39078i = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f39078i.setAntiAlias(true);
        this.f39079j = new Matrix();
    }

    public static b a() {
        return new b();
    }

    private void a(Canvas canvas) {
        float f11 = this.f39071b / 2.0f;
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.lineTo(0.0f, this.f39072c);
        path.lineTo((f11 - this.f39073d) - this.f39074e, this.f39072c);
        path.lineTo((this.f39073d + f11) - this.f39074e, 0.0f);
        if (this.f39077h) {
            try {
                a(canvas, path);
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        } else {
            Bitmap bitmap = this.f39075f;
            if (bitmap != null && !bitmap.isRecycled()) {
                try {
                    a(canvas, path, this.f39075f);
                } catch (Exception e12) {
                    e12.printStackTrace();
                }
            }
        }
        Path path2 = new Path();
        path2.moveTo(this.f39073d + f11 + this.f39074e, 0.0f);
        path2.lineTo(this.f39071b, 0.0f);
        path2.lineTo(this.f39071b, this.f39072c);
        path2.lineTo((f11 - this.f39073d) + this.f39074e, this.f39072c);
        if (this.f39077h) {
            try {
                a(canvas, path2);
                return;
            } catch (Exception e13) {
                e13.printStackTrace();
                return;
            }
        }
        Bitmap bitmap2 = this.f39076g;
        if (bitmap2 == null || bitmap2.isRecycled()) {
            return;
        }
        try {
            a(canvas, path2, this.f39076g);
        } catch (Exception e14) {
            e14.printStackTrace();
        }
    }

    private void a(Canvas canvas, Path path) {
        this.f39078i.setColor(Color.parseColor("#40EAEAEA"));
        canvas.drawPath(path, this.f39078i);
    }

    private void a(Canvas canvas, Path path, Bitmap bitmap) {
        if (canvas == null || path == null || bitmap == null || bitmap.isRecycled()) {
            return;
        }
        if (bitmap.getWidth() != 0 && bitmap.getHeight() != 0) {
            float fMax = Math.max(this.f39071b / bitmap.getWidth(), this.f39072c / bitmap.getHeight());
            if (this.f39079j == null) {
                this.f39079j = new Matrix();
            }
            this.f39079j.reset();
            this.f39079j.preScale(fMax, fMax);
        }
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        bitmapShader.setLocalMatrix(this.f39079j);
        this.f39078i.setShader(bitmapShader);
        canvas.drawPath(path, this.f39078i);
    }

    private void b(Canvas canvas) {
        float f11 = this.f39072c / 2.0f;
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.lineTo(0.0f, (this.f39073d + f11) - this.f39074e);
        path.lineTo(this.f39071b, (f11 - this.f39073d) - this.f39074e);
        path.lineTo(this.f39071b, 0.0f);
        if (this.f39077h) {
            try {
                a(canvas, path);
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        } else {
            Bitmap bitmap = this.f39075f;
            if (bitmap != null && !bitmap.isRecycled()) {
                try {
                    a(canvas, path, this.f39075f);
                } catch (Exception e12) {
                    e12.printStackTrace();
                }
            }
        }
        Path path2 = new Path();
        path2.moveTo(0.0f, this.f39073d + f11 + this.f39074e);
        path2.lineTo(0.0f, this.f39072c);
        path2.lineTo(this.f39071b, this.f39072c);
        path2.lineTo(this.f39071b, (f11 - this.f39073d) + this.f39074e);
        if (this.f39077h) {
            try {
                a(canvas, path2);
                return;
            } catch (Exception e13) {
                e13.printStackTrace();
                return;
            }
        }
        Bitmap bitmap2 = this.f39076g;
        if (bitmap2 == null || bitmap2.isRecycled()) {
            return;
        }
        try {
            a(canvas, path2, this.f39076g);
        } catch (Exception e14) {
            e14.printStackTrace();
        }
    }

    @Override // android.graphics.drawable.ShapeDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.f39070a == 1) {
            b(canvas);
        } else {
            a(canvas);
        }
    }

    @Override // android.graphics.drawable.ShapeDrawable, android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }
}
