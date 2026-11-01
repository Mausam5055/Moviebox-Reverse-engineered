package com.journeyapps.barcodescanner;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import com.google.zxing.client.android.R$color;
import com.google.zxing.client.android.R$styleable;
import com.google.zxing.k;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import java.util.ArrayList;
import java.util.List;
import xe.q;

/* JADX INFO: loaded from: classes4.dex */
public class ViewfinderView extends View {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    protected static final int[] f33916n = {0, 64, 128, PsExtractor.AUDIO_STREAM, 255, PsExtractor.AUDIO_STREAM, 128, 64};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final Paint f33917a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected Bitmap f33918b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected int f33919c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final int f33920d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected final int f33921e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected final int f33922f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected boolean f33923g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected int f33924h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected List f33925i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected List f33926j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected CameraPreview f33927k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    protected Rect f33928l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected q f33929m;

    class a implements CameraPreview.f {
        a() {
        }

        @Override // com.journeyapps.barcodescanner.CameraPreview.f
        public void a() {
            ViewfinderView.this.a();
            ViewfinderView.this.invalidate();
        }

        @Override // com.journeyapps.barcodescanner.CameraPreview.f
        public void b() {
        }

        @Override // com.journeyapps.barcodescanner.CameraPreview.f
        public void c(Exception exc) {
        }

        @Override // com.journeyapps.barcodescanner.CameraPreview.f
        public void d() {
        }

        @Override // com.journeyapps.barcodescanner.CameraPreview.f
        public void e() {
        }
    }

    public ViewfinderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f33917a = new Paint(1);
        Resources resources = getResources();
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.zxing_finder);
        this.f33919c = typedArrayObtainStyledAttributes.getColor(R$styleable.zxing_finder_zxing_viewfinder_mask, resources.getColor(R$color.zxing_viewfinder_mask));
        this.f33920d = typedArrayObtainStyledAttributes.getColor(R$styleable.zxing_finder_zxing_result_view, resources.getColor(R$color.zxing_result_view));
        this.f33921e = typedArrayObtainStyledAttributes.getColor(R$styleable.zxing_finder_zxing_viewfinder_laser, resources.getColor(R$color.zxing_viewfinder_laser));
        this.f33922f = typedArrayObtainStyledAttributes.getColor(R$styleable.zxing_finder_zxing_possible_result_points, resources.getColor(R$color.zxing_possible_result_points));
        this.f33923g = typedArrayObtainStyledAttributes.getBoolean(R$styleable.zxing_finder_zxing_viewfinder_laser_visibility, true);
        typedArrayObtainStyledAttributes.recycle();
        this.f33924h = 0;
        this.f33925i = new ArrayList(20);
        this.f33926j = new ArrayList(20);
    }

    protected void a() {
        CameraPreview cameraPreview = this.f33927k;
        if (cameraPreview == null) {
            return;
        }
        Rect framingRect = cameraPreview.getFramingRect();
        q previewSize = this.f33927k.getPreviewSize();
        if (framingRect == null || previewSize == null) {
            return;
        }
        this.f33928l = framingRect;
        this.f33929m = previewSize;
    }

    public void addPossibleResultPoint(k kVar) {
        if (this.f33925i.size() < 20) {
            this.f33925i.add(kVar);
        }
    }

    public void drawResultBitmap(Bitmap bitmap) {
        this.f33918b = bitmap;
        invalidate();
    }

    public void drawViewfinder() {
        Bitmap bitmap = this.f33918b;
        this.f33918b = null;
        if (bitmap != null) {
            bitmap.recycle();
        }
        invalidate();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        q qVar;
        a();
        Rect rect = this.f33928l;
        if (rect == null || (qVar = this.f33929m) == null) {
            return;
        }
        int width = getWidth();
        int height = getHeight();
        this.f33917a.setColor(this.f33918b != null ? this.f33920d : this.f33919c);
        float f11 = width;
        canvas.drawRect(0.0f, 0.0f, f11, rect.top, this.f33917a);
        canvas.drawRect(0.0f, rect.top, rect.left, rect.bottom + 1, this.f33917a);
        canvas.drawRect(rect.right + 1, rect.top, f11, rect.bottom + 1, this.f33917a);
        canvas.drawRect(0.0f, rect.bottom + 1, f11, height, this.f33917a);
        if (this.f33918b != null) {
            this.f33917a.setAlpha(160);
            canvas.drawBitmap(this.f33918b, (Rect) null, rect, this.f33917a);
            return;
        }
        if (this.f33923g) {
            this.f33917a.setColor(this.f33921e);
            Paint paint = this.f33917a;
            int[] iArr = f33916n;
            paint.setAlpha(iArr[this.f33924h]);
            this.f33924h = (this.f33924h + 1) % iArr.length;
            int iHeight = (rect.height() / 2) + rect.top;
            canvas.drawRect(rect.left + 2, iHeight - 1, rect.right - 1, iHeight + 2, this.f33917a);
        }
        float width2 = getWidth() / qVar.f78234a;
        float height2 = getHeight() / qVar.f78235b;
        if (!this.f33926j.isEmpty()) {
            this.f33917a.setAlpha(80);
            this.f33917a.setColor(this.f33922f);
            for (k kVar : this.f33926j) {
                canvas.drawCircle((int) (kVar.c() * width2), (int) (kVar.d() * height2), 3.0f, this.f33917a);
            }
            this.f33926j.clear();
        }
        if (!this.f33925i.isEmpty()) {
            this.f33917a.setAlpha(160);
            this.f33917a.setColor(this.f33922f);
            for (k kVar2 : this.f33925i) {
                canvas.drawCircle((int) (kVar2.c() * width2), (int) (kVar2.d() * height2), 6.0f, this.f33917a);
            }
            List list = this.f33925i;
            List list2 = this.f33926j;
            this.f33925i = list2;
            this.f33926j = list;
            list2.clear();
        }
        postInvalidateDelayed(80L, rect.left - 6, rect.top - 6, rect.right + 6, rect.bottom + 6);
    }

    public void setCameraPreview(CameraPreview cameraPreview) {
        this.f33927k = cameraPreview;
        cameraPreview.addStateListener(new a());
    }

    public void setLaserVisibility(boolean z10) {
        this.f33923g = z10;
    }

    public void setMaskColor(int i11) {
        this.f33919c = i11;
    }
}
