package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;

/* JADX INFO: loaded from: classes4.dex */
public class ScrimInsetsFrameLayout extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Drawable f29112a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Rect f29113b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Rect f29114c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f29115d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f29116e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f29117f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f29118g;

    class a implements OnApplyWindowInsetsListener {
        a() {
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            ScrimInsetsFrameLayout scrimInsetsFrameLayout = ScrimInsetsFrameLayout.this;
            if (scrimInsetsFrameLayout.f29113b == null) {
                scrimInsetsFrameLayout.f29113b = new Rect();
            }
            ScrimInsetsFrameLayout.this.f29113b.set(windowInsetsCompat.getSystemWindowInsetLeft(), windowInsetsCompat.getSystemWindowInsetTop(), windowInsetsCompat.getSystemWindowInsetRight(), windowInsetsCompat.getSystemWindowInsetBottom());
            ScrimInsetsFrameLayout.this.a(windowInsetsCompat);
            ScrimInsetsFrameLayout.this.setWillNotDraw(!windowInsetsCompat.hasSystemWindowInsets() || ScrimInsetsFrameLayout.this.f29112a == null);
            ViewCompat.postInvalidateOnAnimation(ScrimInsetsFrameLayout.this);
            return windowInsetsCompat.consumeSystemWindowInsets();
        }
    }

    public ScrimInsetsFrameLayout(@NonNull Context context) {
        this(context, null);
    }

    public ScrimInsetsFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ScrimInsetsFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f29114c = new Rect();
        this.f29115d = true;
        this.f29116e = true;
        this.f29117f = true;
        this.f29118g = true;
        TypedArray typedArrayI = b0.i(context, attributeSet, R$styleable.ScrimInsetsFrameLayout, i11, R$style.Widget_Design_ScrimInsetsFrameLayout, new int[0]);
        this.f29112a = typedArrayI.getDrawable(R$styleable.ScrimInsetsFrameLayout_insetForeground);
        typedArrayI.recycle();
        setWillNotDraw(true);
        ViewCompat.setOnApplyWindowInsetsListener(this, new a());
    }

    protected void a(WindowInsetsCompat windowInsetsCompat) {
    }

    @Override // android.view.View
    public void draw(@NonNull Canvas canvas) {
        super.draw(canvas);
        int width = getWidth();
        int height = getHeight();
        if (this.f29113b == null || this.f29112a == null) {
            return;
        }
        int iSave = canvas.save();
        canvas.translate(getScrollX(), getScrollY());
        if (this.f29115d) {
            this.f29114c.set(0, 0, width, this.f29113b.top);
            this.f29112a.setBounds(this.f29114c);
            this.f29112a.draw(canvas);
        }
        if (this.f29116e) {
            this.f29114c.set(0, height - this.f29113b.bottom, width, height);
            this.f29112a.setBounds(this.f29114c);
            this.f29112a.draw(canvas);
        }
        if (this.f29117f) {
            Rect rect = this.f29114c;
            Rect rect2 = this.f29113b;
            rect.set(0, rect2.top, rect2.left, height - rect2.bottom);
            this.f29112a.setBounds(this.f29114c);
            this.f29112a.draw(canvas);
        }
        if (this.f29118g) {
            Rect rect3 = this.f29114c;
            Rect rect4 = this.f29113b;
            rect3.set(width - rect4.right, rect4.top, width, height - rect4.bottom);
            this.f29112a.setBounds(this.f29114c);
            this.f29112a.draw(canvas);
        }
        canvas.restoreToCount(iSave);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable drawable = this.f29112a;
        if (drawable != null) {
            drawable.setCallback(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Drawable drawable = this.f29112a;
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    public void setDrawBottomInsetForeground(boolean z10) {
        this.f29116e = z10;
    }

    public void setDrawLeftInsetForeground(boolean z10) {
        this.f29117f = z10;
    }

    public void setDrawRightInsetForeground(boolean z10) {
        this.f29118g = z10;
    }

    public void setDrawTopInsetForeground(boolean z10) {
        this.f29115d = z10;
    }

    public void setScrimInsetForeground(@Nullable Drawable drawable) {
        this.f29112a = drawable;
    }
}
