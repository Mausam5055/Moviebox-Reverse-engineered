package androidx.viewpager.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes2.dex */
public class PagerTabStrip extends PagerTitleStrip {
    private boolean A;
    private int B;
    private boolean C;
    private float D;
    private float E;
    private int F;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f15231q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f15232r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f15233s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f15234t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f15235u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f15236v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final Paint f15237w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final Rect f15238x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f15239y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f15240z;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ViewPager viewPager = PagerTabStrip.this.f15245a;
            viewPager.setCurrentItem(viewPager.getCurrentItem() - 1);
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ViewPager viewPager = PagerTabStrip.this.f15245a;
            viewPager.setCurrentItem(viewPager.getCurrentItem() + 1);
        }
    }

    public PagerTabStrip(@NonNull Context context) {
        this(context, null);
    }

    public PagerTabStrip(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Paint paint = new Paint();
        this.f15237w = paint;
        this.f15238x = new Rect();
        this.f15239y = 255;
        this.f15240z = false;
        this.A = false;
        int i11 = this.f15258n;
        this.f15231q = i11;
        paint.setColor(i11);
        float f11 = context.getResources().getDisplayMetrics().density;
        this.f15232r = (int) ((3.0f * f11) + 0.5f);
        this.f15233s = (int) ((6.0f * f11) + 0.5f);
        this.f15234t = (int) (64.0f * f11);
        this.f15236v = (int) ((16.0f * f11) + 0.5f);
        this.B = (int) ((1.0f * f11) + 0.5f);
        this.f15235u = (int) ((f11 * 32.0f) + 0.5f);
        this.F = ViewConfiguration.get(context).getScaledTouchSlop();
        setPadding(getPaddingLeft(), getPaddingTop(), getPaddingRight(), getPaddingBottom());
        setTextSpacing(getTextSpacing());
        setWillNotDraw(false);
        this.f15246b.setFocusable(true);
        this.f15246b.setOnClickListener(new a());
        this.f15248d.setFocusable(true);
        this.f15248d.setOnClickListener(new b());
        if (getBackground() == null) {
            this.f15240z = true;
        }
    }

    @Override // androidx.viewpager.widget.PagerTitleStrip
    void c(int i11, float f11, boolean z10) {
        Rect rect = this.f15238x;
        int height = getHeight();
        int left = this.f15247c.getLeft() - this.f15236v;
        int right = this.f15247c.getRight() + this.f15236v;
        int i12 = height - this.f15232r;
        rect.set(left, i12, right, height);
        super.c(i11, f11, z10);
        this.f15239y = (int) (Math.abs(f11 - 0.5f) * 2.0f * 255.0f);
        rect.union(this.f15247c.getLeft() - this.f15236v, i12, this.f15247c.getRight() + this.f15236v, height);
        invalidate(rect);
    }

    public boolean getDrawFullUnderline() {
        return this.f15240z;
    }

    @Override // androidx.viewpager.widget.PagerTitleStrip
    int getMinHeight() {
        return Math.max(super.getMinHeight(), this.f15235u);
    }

    public int getTabIndicatorColor() {
        return this.f15231q;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int height = getHeight();
        int left = this.f15247c.getLeft() - this.f15236v;
        int right = this.f15247c.getRight() + this.f15236v;
        int i11 = height - this.f15232r;
        this.f15237w.setColor((this.f15239y << 24) | (this.f15231q & 16777215));
        float f11 = height;
        canvas.drawRect(left, i11, right, f11, this.f15237w);
        if (this.f15240z) {
            this.f15237w.setColor((this.f15231q & 16777215) | ViewCompat.MEASURED_STATE_MASK);
            canvas.drawRect(getPaddingLeft(), height - this.B, getWidth() - getPaddingRight(), f11, this.f15237w);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 0 && this.C) {
            return false;
        }
        float x10 = motionEvent.getX();
        float y10 = motionEvent.getY();
        if (action == 0) {
            this.D = x10;
            this.E = y10;
            this.C = false;
        } else if (action != 1) {
            if (action == 2 && (Math.abs(x10 - this.D) > this.F || Math.abs(y10 - this.E) > this.F)) {
                this.C = true;
            }
        } else if (x10 < this.f15247c.getLeft() - this.f15236v) {
            ViewPager viewPager = this.f15245a;
            viewPager.setCurrentItem(viewPager.getCurrentItem() - 1);
        } else if (x10 > this.f15247c.getRight() + this.f15236v) {
            ViewPager viewPager2 = this.f15245a;
            viewPager2.setCurrentItem(viewPager2.getCurrentItem() + 1);
        }
        return true;
    }

    @Override // android.view.View
    public void setBackgroundColor(int i11) {
        super.setBackgroundColor(i11);
        if (this.A) {
            return;
        }
        this.f15240z = (i11 & ViewCompat.MEASURED_STATE_MASK) == 0;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        if (this.A) {
            return;
        }
        this.f15240z = drawable == null;
    }

    @Override // android.view.View
    public void setBackgroundResource(int i11) {
        super.setBackgroundResource(i11);
        if (this.A) {
            return;
        }
        this.f15240z = i11 == 0;
    }

    public void setDrawFullUnderline(boolean z10) {
        this.f15240z = z10;
        this.A = true;
        invalidate();
    }

    @Override // android.view.View
    public void setPadding(int i11, int i12, int i13, int i14) {
        int i15 = this.f15233s;
        if (i14 < i15) {
            i14 = i15;
        }
        super.setPadding(i11, i12, i13, i14);
    }

    public void setTabIndicatorColor(int i11) {
        this.f15231q = i11;
        this.f15237w.setColor(i11);
        invalidate();
    }

    public void setTabIndicatorColorResource(int i11) {
        setTabIndicatorColor(androidx.core.content.b.getColor(getContext(), i11));
    }

    @Override // androidx.viewpager.widget.PagerTitleStrip
    public void setTextSpacing(int i11) {
        int i12 = this.f15234t;
        if (i11 < i12) {
            i11 = i12;
        }
        super.setTextSpacing(i11);
    }
}
