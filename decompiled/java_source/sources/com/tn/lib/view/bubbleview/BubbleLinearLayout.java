package com.tn.lib.view.bubbleview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import com.tn.lib.widget.R$styleable;

/* JADX INFO: loaded from: classes4.dex */
public class BubbleLinearLayout extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private BubbleDrawable f41243a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f41244b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f41245c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f41246d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f41247e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f41248f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f41249g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f41250h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f41251i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private BubbleDrawable.ArrowLocation f41252j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f41253k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f41254l;

    public BubbleLinearLayout(Context context) {
        super(context);
        b(null);
    }

    public BubbleLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        b(attributeSet);
    }

    private void b(AttributeSet attributeSet) {
        setLayerType(1, null);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.BubbleView);
            this.f41244b = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_shadowRadius, BubbleDrawable.b.A);
            this.f41245c = typedArrayObtainStyledAttributes.getColor(R$styleable.BubbleView_shadowColor, BubbleDrawable.b.B);
            this.f41246d = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_shadowOffsetX, BubbleDrawable.b.C);
            this.f41247e = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_shadowOffsetY, BubbleDrawable.b.C);
            this.f41248f = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_arrowWidth, BubbleDrawable.b.f41141u);
            this.f41250h = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_arrowHeight, BubbleDrawable.b.f41142v);
            this.f41249g = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_angle, BubbleDrawable.b.f41143w);
            this.f41251i = typedArrayObtainStyledAttributes.getDimension(R$styleable.BubbleView_arrowPosition, BubbleDrawable.b.f41144x);
            this.f41253k = typedArrayObtainStyledAttributes.getColor(R$styleable.BubbleView_bubbleColor, BubbleDrawable.b.f41145y);
            this.f41252j = BubbleDrawable.ArrowLocation.mapIntToValue(typedArrayObtainStyledAttributes.getInt(R$styleable.BubbleView_arrowLocation, 0));
            this.f41254l = typedArrayObtainStyledAttributes.getBoolean(R$styleable.BubbleView_arrowCenter, false);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i11, int i12) {
        d((int) ((getPaddingLeft() + this.f41244b) - this.f41246d), (int) (((i11 - getPaddingRight()) - this.f41244b) - this.f41246d), (int) ((getPaddingTop() + this.f41244b) - this.f41247e), (int) (((i12 - getPaddingBottom()) - this.f41244b) - this.f41247e));
        setBackgroundDrawable(this.f41243a);
    }

    private void d(int i11, int i12, int i13, int i14) {
        if (i12 < i11 || i14 < i13) {
            return;
        }
        this.f41243a = new BubbleDrawable.b().B(new RectF(i11, i13, i12, i14)).t(this.f41252j).z(BubbleDrawable.BubbleType.COLOR).q(this.f41249g).s(this.f41250h).v(this.f41248f).u(this.f41251i).x(this.f41253k).r(this.f41254l).F(this.f41244b).C(this.f41245c).D(this.f41246d).E(this.f41247e).A();
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
        post(new Runnable() { // from class: com.tn.lib.view.bubbleview.BubbleLinearLayout.1
            @Override // java.lang.Runnable
            public void run() {
                BubbleLinearLayout bubbleLinearLayout = BubbleLinearLayout.this;
                bubbleLinearLayout.c(bubbleLinearLayout.getWidth(), BubbleLinearLayout.this.getHeight());
            }
        });
    }
}
