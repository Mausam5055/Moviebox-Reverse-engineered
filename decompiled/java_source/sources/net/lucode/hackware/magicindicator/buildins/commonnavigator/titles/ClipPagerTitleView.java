package net.lucode.hackware.magicindicator.buildins.commonnavigator.titles;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.View;
import j00.b;

/* JADX INFO: loaded from: classes7.dex */
public class ClipPagerTitleView extends View implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f70413a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f70414b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f70415c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f70416d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f70417e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Paint f70418f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Rect f70419g;

    public ClipPagerTitleView(Context context) {
        super(context);
        this.f70419g = new Rect();
        a(context);
    }

    private void a(Context context) {
        int iA = i00.b.a(context, 16.0d);
        Paint paint = new Paint(1);
        this.f70418f = paint;
        paint.setTextSize(iA);
        int iA2 = i00.b.a(context, 10.0d);
        setPadding(iA2, 0, iA2, 0);
    }

    private int b(int i11) {
        int mode = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i11);
        if (mode != Integer.MIN_VALUE) {
            return mode != 0 ? size : this.f70419g.height() + getPaddingTop() + getPaddingBottom();
        }
        return Math.min(this.f70419g.height() + getPaddingTop() + getPaddingBottom(), size);
    }

    private void c() {
        Paint paint = this.f70418f;
        String str = this.f70413a;
        paint.getTextBounds(str, 0, str == null ? 0 : str.length(), this.f70419g);
    }

    private int d(int i11) {
        int mode = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i11);
        if (mode != Integer.MIN_VALUE) {
            return mode != 0 ? size : this.f70419g.width() + getPaddingLeft() + getPaddingRight();
        }
        return Math.min(this.f70419g.width() + getPaddingLeft() + getPaddingRight(), size);
    }

    public int getClipColor() {
        return this.f70415c;
    }

    @Override // j00.b
    public int getContentBottom() {
        Paint.FontMetrics fontMetrics = this.f70418f.getFontMetrics();
        return (int) ((getHeight() / 2) + ((fontMetrics.bottom - fontMetrics.top) / 2.0f));
    }

    @Override // j00.b
    public int getContentLeft() {
        return (getLeft() + (getWidth() / 2)) - (this.f70419g.width() / 2);
    }

    @Override // j00.b
    public int getContentRight() {
        return getLeft() + (getWidth() / 2) + (this.f70419g.width() / 2);
    }

    @Override // j00.b
    public int getContentTop() {
        Paint.FontMetrics fontMetrics = this.f70418f.getFontMetrics();
        return (int) ((getHeight() / 2) - ((fontMetrics.bottom - fontMetrics.top) / 2.0f));
    }

    public String getText() {
        return this.f70413a;
    }

    public int getTextColor() {
        return this.f70414b;
    }

    public float getTextSize() {
        return this.f70418f.getTextSize();
    }

    @Override // j00.d
    public void onDeselected(int i11, int i12) {
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int width = (getWidth() - this.f70419g.width()) / 2;
        Paint.FontMetrics fontMetrics = this.f70418f.getFontMetrics();
        int height = (int) (((getHeight() - fontMetrics.bottom) - fontMetrics.top) / 2.0f);
        this.f70418f.setColor(this.f70414b);
        float f11 = width;
        float f12 = height;
        canvas.drawText(this.f70413a, f11, f12, this.f70418f);
        canvas.save();
        if (this.f70416d) {
            canvas.clipRect(0.0f, 0.0f, getWidth() * this.f70417e, getHeight());
        } else {
            canvas.clipRect(getWidth() * (1.0f - this.f70417e), 0.0f, getWidth(), getHeight());
        }
        this.f70418f.setColor(this.f70415c);
        canvas.drawText(this.f70413a, f11, f12, this.f70418f);
        canvas.restore();
    }

    @Override // j00.d
    public void onEnter(int i11, int i12, float f11, boolean z10) {
        this.f70416d = z10;
        this.f70417e = f11;
        invalidate();
    }

    @Override // j00.d
    public void onLeave(int i11, int i12, float f11, boolean z10) {
        this.f70416d = !z10;
        this.f70417e = 1.0f - f11;
        invalidate();
    }

    @Override // android.view.View
    protected void onMeasure(int i11, int i12) {
        c();
        setMeasuredDimension(d(i11), b(i12));
    }

    @Override // j00.d
    public void onSelected(int i11, int i12) {
    }

    public void setClipColor(int i11) {
        this.f70415c = i11;
        invalidate();
    }

    public void setText(String str) {
        this.f70413a = str;
        requestLayout();
    }

    public void setTextColor(int i11) {
        this.f70414b = i11;
        invalidate();
    }

    public void setTextSize(float f11) {
        this.f70418f.setTextSize(f11);
        requestLayout();
    }
}
