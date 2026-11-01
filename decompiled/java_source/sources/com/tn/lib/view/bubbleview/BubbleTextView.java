package com.tn.lib.view.bubbleview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import com.tn.lib.widget.R$styleable;

/* JADX INFO: loaded from: classes4.dex */
public class BubbleTextView extends AppCompatTextView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private BubbleDrawable f41255a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f41256b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f41257c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f41258d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f41259e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f41260f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f41261g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private BubbleDrawable.ArrowLocation f41262h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f41263i;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f41264a;

        static {
            int[] iArr = new int[BubbleDrawable.ArrowLocation.values().length];
            f41264a = iArr;
            try {
                iArr[BubbleDrawable.ArrowLocation.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f41264a[BubbleDrawable.ArrowLocation.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f41264a[BubbleDrawable.ArrowLocation.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f41264a[BubbleDrawable.ArrowLocation.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public BubbleTextView(Context context) {
        super(context);
        b(null);
    }

    public BubbleTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        b(attributeSet);
    }

    public BubbleTextView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        b(attributeSet);
    }

    private void b(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.BubbleView);
            this.f41256b = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_arrowWidth, BubbleDrawable.b.f41141u);
            this.f41258d = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_arrowHeight, BubbleDrawable.b.f41142v);
            this.f41257c = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_angle, BubbleDrawable.b.f41143w);
            this.f41259e = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_arrowPosition, BubbleDrawable.b.f41144x);
            this.f41260f = typedArrayObtainStyledAttributes.getColor(R$styleable.BubbleView_bubbleColor, BubbleDrawable.b.f41145y);
            this.f41262h = BubbleDrawable.ArrowLocation.mapIntToValue(typedArrayObtainStyledAttributes.getInt(R$styleable.BubbleView_arrowLocation, 0));
            this.f41263i = typedArrayObtainStyledAttributes.getBoolean(R$styleable.BubbleView_arrowCenter, false);
            this.f41261g = typedArrayObtainStyledAttributes.getInt(R$styleable.BubbleView_bubbleAlpha, 255);
            typedArrayObtainStyledAttributes.recycle();
        }
        f();
    }

    private void c() {
        d(getWidth(), getHeight());
    }

    private void d(int i11, int i12) {
        e(0, i11, 0, i12);
    }

    private void e(int i11, int i12, int i13, int i14) {
        this.f41255a = new BubbleDrawable.b().B(new RectF(i11, i13, i12, i14)).t(this.f41262h).z(BubbleDrawable.BubbleType.COLOR).q(this.f41257c).p(this.f41261g).s(this.f41258d).v(this.f41256b).x(this.f41260f).u(this.f41259e).r(this.f41263i).A();
    }

    private void f() {
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int i11 = a.f41264a[this.f41262h.ordinal()];
        if (i11 == 1) {
            paddingLeft = (int) (paddingLeft + this.f41256b);
        } else if (i11 == 2) {
            paddingRight = (int) (paddingRight + this.f41256b);
        } else if (i11 == 3) {
            paddingTop = (int) (paddingTop + this.f41258d);
        } else if (i11 == 4) {
            paddingBottom = (int) (paddingBottom + this.f41258d);
        }
        setPadding(paddingLeft, paddingTop, paddingRight, paddingBottom);
    }

    @Override // android.view.View
    public void layout(int i11, int i12, int i13, int i14) {
        super.layout(i11, i12, i13, i14);
        c();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        BubbleDrawable bubbleDrawable = this.f41255a;
        if (bubbleDrawable != null) {
            bubbleDrawable.draw(canvas);
        }
        super.onDraw(canvas);
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    protected void onMeasure(int i11, int i12) {
        super.onMeasure(i11, i12);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i11, int i12, int i13, int i14) {
        super.onSizeChanged(i11, i12, i13, i14);
        if (i11 <= 0 || i12 <= 0) {
            return;
        }
        d(i11, i12);
    }

    public void setArrowPosition(float f11) {
        this.f41259e = f11;
        c();
    }
}
