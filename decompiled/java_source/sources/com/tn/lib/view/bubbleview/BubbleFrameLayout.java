package com.tn.lib.view.bubbleview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.tn.lib.widget.R$styleable;

/* JADX INFO: loaded from: classes4.dex */
public class BubbleFrameLayout extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private BubbleDrawable f41167a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f41168b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f41169c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f41170d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f41171e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f41172f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f41173g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f41174h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f41175i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private BubbleDrawable.ArrowLocation f41176j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f41177k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f41178l;

    public BubbleFrameLayout(Context context) {
        super(context);
        b(null);
    }

    public BubbleFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        b(attributeSet);
    }

    private void b(AttributeSet attributeSet) {
        setLayerType(1, null);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.BubbleView);
            this.f41168b = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_shadowRadius, BubbleDrawable.b.A);
            this.f41169c = typedArrayObtainStyledAttributes.getColor(R$styleable.BubbleView_shadowColor, BubbleDrawable.b.B);
            this.f41170d = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_shadowOffsetX, BubbleDrawable.b.C);
            this.f41171e = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_shadowOffsetY, BubbleDrawable.b.C);
            this.f41172f = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_arrowWidth, BubbleDrawable.b.f41141u);
            this.f41174h = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_arrowHeight, BubbleDrawable.b.f41142v);
            this.f41173g = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_angle, BubbleDrawable.b.f41143w);
            this.f41175i = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_arrowPosition, BubbleDrawable.b.f41144x);
            this.f41177k = typedArrayObtainStyledAttributes.getColor(R$styleable.BubbleView_bubbleColor, BubbleDrawable.b.f41145y);
            this.f41176j = BubbleDrawable.ArrowLocation.mapIntToValue(typedArrayObtainStyledAttributes.getInt(R$styleable.BubbleView_arrowLocation, 0));
            this.f41178l = typedArrayObtainStyledAttributes.getBoolean(R$styleable.BubbleView_arrowCenter, false);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i11, int i12) {
        d((int) ((getPaddingLeft() + this.f41168b) - this.f41170d), (int) (((i11 - getPaddingRight()) - this.f41168b) - this.f41170d), (int) ((getPaddingTop() + this.f41168b) - this.f41171e), (int) (((i12 - getPaddingBottom()) - this.f41168b) - this.f41171e));
        setBackgroundDrawable(this.f41167a);
    }

    private void d(int i11, int i12, int i13, int i14) {
        if (i12 < i11 || i14 < i13) {
            return;
        }
        this.f41167a = new BubbleDrawable.b().B(new RectF(i11, i13, i12, i14)).t(this.f41176j).z(BubbleDrawable.BubbleType.COLOR).q(this.f41173g).s(this.f41174h).v(this.f41172f).u(this.f41175i).x(this.f41177k).r(this.f41178l).F(this.f41168b).C(this.f41169c).D(this.f41170d).E(this.f41171e).A();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i11, int i12, int i13, int i14) {
        super.onSizeChanged(i11, i12, i13, i14);
        if (i11 <= 0 || i12 <= 0) {
            return;
        }
        c(i11, i12);
    }

    public void setUpBubbleDrawable() {
        setBackgroundDrawable(null);
        post(new Runnable() { // from class: com.tn.lib.view.bubbleview.BubbleFrameLayout.1
            @Override // java.lang.Runnable
            public void run() {
                BubbleFrameLayout bubbleFrameLayout = BubbleFrameLayout.this;
                bubbleFrameLayout.c(bubbleFrameLayout.getWidth(), BubbleFrameLayout.this.getHeight());
            }
        });
    }
}
