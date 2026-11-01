package com.cloud.hisavana.sdk.common.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import com.cloud.hisavana.sdk.R$dimen;
import com.cloud.hisavana.sdk.R$drawable;
import com.cloud.hisavana.sdk.e4;
import e7.e;

/* JADX INFO: loaded from: classes3.dex */
public class CountTimeView extends View implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Paint f22211a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Paint f22212b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f22213c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f22214d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private e f22215e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f22216f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f22217g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private b f22218h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Bitmap f22219i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f22220j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Rect f22221k;

    class a extends e {
        a(long j11, long j12) {
            super(j11, j12);
        }

        @Override // e7.e
        public void e() {
            if (CountTimeView.this.f22218h != null) {
                CountTimeView.this.f22218h.onFinish();
            }
        }

        @Override // e7.e
        public void f(long j11) {
            CountTimeView.this.f22217g = "SKIP " + (j11 / 1000);
            CountTimeView.this.f22220j = (int) j11;
            CountTimeView.this.invalidate();
        }
    }

    public interface b {
        void onClick();

        void onFinish();

        void onStart();
    }

    public CountTimeView(Context context) {
        this(context, null);
    }

    public CountTimeView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CountTimeView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f22213c = 6L;
        this.f22214d = 0L;
        this.f22217g = "5s";
        this.f22221k = new Rect();
        setOnClickListener(this);
        try {
            this.f22216f = context.getResources().getDimensionPixelSize(R$dimen.ad_skip_text_size);
        } catch (Throwable unused) {
            this.f22216f = 13;
        }
        e();
    }

    private void d() {
        this.f22215e = new a(this.f22213c, 1000L);
    }

    private void e() {
        Paint paint = new Paint();
        this.f22211a = paint;
        paint.setAntiAlias(true);
        this.f22211a.setDither(true);
        this.f22211a.setStyle(Paint.Style.FILL);
        Paint paint2 = new Paint();
        this.f22212b = paint2;
        paint2.setAntiAlias(true);
        this.f22212b.setColor(-1);
        this.f22212b.setTextSize(this.f22216f);
        this.f22212b.setStrokeWidth(8.0f);
        this.f22212b.setTextAlign(Paint.Align.CENTER);
    }

    private Bitmap getBg() {
        try {
            Drawable drawable = getResources().getDrawable(R$drawable.ad_skip_button);
            if (drawable instanceof BitmapDrawable) {
                this.f22219i = ((BitmapDrawable) drawable).getBitmap();
            } else {
                this.f22219i = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(this.f22219i);
                drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                drawable.draw(canvas);
            }
            return this.f22219i;
        } catch (Throwable th2) {
            e4.b().e(Log.getStackTraceString(th2));
            return null;
        }
    }

    public void cancel() {
        e eVar = this.f22215e;
        if (eVar != null) {
            eVar.d();
        }
    }

    public void changeFinishMode() {
        this.f22217g = "X";
        invalidate();
    }

    public long getRemainder() {
        return this.f22220j;
    }

    public long getSupposeFinishTime() {
        return this.f22214d;
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f22215e.g();
        b bVar = this.f22218h;
        if (bVar != null) {
            bVar.onStart();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        b bVar = this.f22218h;
        if (bVar != null) {
            bVar.onClick();
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        e eVar = this.f22215e;
        if (eVar != null) {
            eVar.d();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        try {
            if (TextUtils.isEmpty(this.f22217g)) {
                return;
            }
            if (this.f22219i == null) {
                this.f22219i = getBg();
            }
            Rect rect = new Rect(0, 0, this.f22219i.getWidth(), this.f22219i.getHeight());
            canvas.drawBitmap(this.f22219i, rect, rect, this.f22211a);
            Paint.FontMetrics fontMetrics = this.f22212b.getFontMetrics();
            Rect rect2 = this.f22221k;
            canvas.drawText(this.f22217g, rect2.centerX(), ((int) (((rect2.bottom + rect2.top) - fontMetrics.bottom) - fontMetrics.top)) / 2, this.f22212b);
        } catch (Throwable th2) {
            e4.b().e(Log.getStackTraceString(th2));
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i11, int i12) {
        super.onMeasure(i11, i12);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i11, int i12, int i13, int i14) {
        this.f22221k.set(0, 0, getWidth(), getHeight());
        super.onSizeChanged(i11, i12, i13, i14);
    }

    public void setCountDownTimerListener(b bVar) {
        this.f22218h = bVar;
    }

    public void setStartTime(int i11) {
        this.f22213c = ((long) (i11 * 1000)) + 400;
        this.f22214d = System.currentTimeMillis() + this.f22213c + 1000;
        this.f22220j = i11;
        d();
    }

    public void start() {
        this.f22215e.g();
        this.f22214d = System.currentTimeMillis() + this.f22213c + 1000;
        b bVar = this.f22218h;
        if (bVar != null) {
            bVar.onStart();
        }
    }
}
