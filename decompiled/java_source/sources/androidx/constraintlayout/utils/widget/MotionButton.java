package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.appcompat.widget.AppCompatButton;
import androidx.constraintlayout.widget.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class MotionButton extends AppCompatButton {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f7598a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f7599b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Path f7600c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    ViewOutlineProvider f7601d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    RectF f7602e;

    class a extends ViewOutlineProvider {
        a() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            int width = MotionButton.this.getWidth();
            int height = MotionButton.this.getHeight();
            outline.setRoundRect(0, 0, width, height, (Math.min(width, height) * MotionButton.this.f7598a) / 2.0f);
        }
    }

    class b extends ViewOutlineProvider {
        b() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setRoundRect(0, 0, MotionButton.this.getWidth(), MotionButton.this.getHeight(), MotionButton.this.f7599b);
        }
    }

    public MotionButton(Context context) {
        super(context);
        this.f7598a = 0.0f;
        this.f7599b = Float.NaN;
        init(context, null);
    }

    public MotionButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7598a = 0.0f;
        this.f7599b = Float.NaN;
        init(context, attributeSet);
    }

    public MotionButton(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f7598a = 0.0f;
        this.f7599b = Float.NaN;
        init(context, attributeSet);
    }

    private void init(Context context, AttributeSet attributeSet) {
        setPadding(0, 0, 0, 0);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.ImageFilterView);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i11 = 0; i11 < indexCount; i11++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i11);
                if (index == R$styleable.ImageFilterView_round) {
                    setRound(typedArrayObtainStyledAttributes.getDimension(index, 0.0f));
                } else if (index == R$styleable.ImageFilterView_roundPercent) {
                    setRoundPercent(typedArrayObtainStyledAttributes.getFloat(index, 0.0f));
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
    }

    public float getRound() {
        return this.f7599b;
    }

    public float getRoundPercent() {
        return this.f7598a;
    }

    public void setRound(float f11) {
        if (Float.isNaN(f11)) {
            this.f7599b = f11;
            float f12 = this.f7598a;
            this.f7598a = -1.0f;
            setRoundPercent(f12);
            return;
        }
        boolean z10 = this.f7599b != f11;
        this.f7599b = f11;
        if (f11 != 0.0f) {
            if (this.f7600c == null) {
                this.f7600c = new Path();
            }
            if (this.f7602e == null) {
                this.f7602e = new RectF();
            }
            if (this.f7601d == null) {
                b bVar = new b();
                this.f7601d = bVar;
                setOutlineProvider(bVar);
            }
            setClipToOutline(true);
            this.f7602e.set(0.0f, 0.0f, getWidth(), getHeight());
            this.f7600c.reset();
            Path path = this.f7600c;
            RectF rectF = this.f7602e;
            float f13 = this.f7599b;
            path.addRoundRect(rectF, f13, f13, Path.Direction.CW);
        } else {
            setClipToOutline(false);
        }
        if (z10) {
            invalidateOutline();
        }
    }

    public void setRoundPercent(float f11) {
        boolean z10 = this.f7598a != f11;
        this.f7598a = f11;
        if (f11 != 0.0f) {
            if (this.f7600c == null) {
                this.f7600c = new Path();
            }
            if (this.f7602e == null) {
                this.f7602e = new RectF();
            }
            if (this.f7601d == null) {
                a aVar = new a();
                this.f7601d = aVar;
                setOutlineProvider(aVar);
            }
            setClipToOutline(true);
            int width = getWidth();
            int height = getHeight();
            float fMin = (Math.min(width, height) * this.f7598a) / 2.0f;
            this.f7602e.set(0.0f, 0.0f, width, height);
            this.f7600c.reset();
            this.f7600c.addRoundRect(this.f7602e, fMin, fMin, Path.Direction.CW);
        } else {
            setClipToOutline(false);
        }
        if (z10) {
            invalidateOutline();
        }
    }
}
