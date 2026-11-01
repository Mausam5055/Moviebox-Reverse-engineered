package androidx.media3.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public final class AspectRatioFrameLayout extends FrameLayout {
    public static final int RESIZE_MODE_FILL = 3;
    public static final int RESIZE_MODE_FIT = 0;
    public static final int RESIZE_MODE_FIXED_HEIGHT = 2;
    public static final int RESIZE_MODE_FIXED_WIDTH = 1;
    public static final int RESIZE_MODE_ZOOM = 4;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AspectRatioUpdateDispatcher f13432a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f13433b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f13434c;

    private final class AspectRatioUpdateDispatcher implements Runnable {
        private boolean aspectRatioMismatch;
        private boolean isScheduled;
        private float naturalAspectRatio;
        private float targetAspectRatio;

        private AspectRatioUpdateDispatcher() {
        }

        @Override // java.lang.Runnable
        public void run() {
            this.isScheduled = false;
            AspectRatioFrameLayout.a(AspectRatioFrameLayout.this);
        }

        public void scheduleUpdate(float f11, float f12, boolean z10) {
            this.targetAspectRatio = f11;
            this.naturalAspectRatio = f12;
            this.aspectRatioMismatch = z10;
            if (this.isScheduled) {
                return;
            }
            this.isScheduled = true;
            AspectRatioFrameLayout.this.post(this);
        }
    }

    public interface b {
    }

    public AspectRatioFrameLayout(Context context) {
        this(context, null);
    }

    public AspectRatioFrameLayout(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f13434c = 0;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.AspectRatioFrameLayout, 0, 0);
            try {
                this.f13434c = typedArrayObtainStyledAttributes.getInt(R$styleable.AspectRatioFrameLayout_resize_mode, 0);
                typedArrayObtainStyledAttributes.recycle();
            } catch (Throwable th2) {
                typedArrayObtainStyledAttributes.recycle();
                throw th2;
            }
        }
        this.f13432a = new AspectRatioUpdateDispatcher();
    }

    static /* synthetic */ b a(AspectRatioFrameLayout aspectRatioFrameLayout) {
        aspectRatioFrameLayout.getClass();
        return null;
    }

    public int getResizeMode() {
        return this.f13434c;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i11, int i12) {
        float f11;
        float f12;
        super.onMeasure(i11, i12);
        if (this.f13433b <= 0.0f) {
            return;
        }
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        float f13 = measuredWidth;
        float f14 = measuredHeight;
        float f15 = f13 / f14;
        float f16 = (this.f13433b / f15) - 1.0f;
        if (Math.abs(f16) <= 0.01f) {
            this.f13432a.scheduleUpdate(this.f13433b, f15, false);
            return;
        }
        int i13 = this.f13434c;
        if (i13 != 0) {
            if (i13 != 1) {
                if (i13 == 2) {
                    f11 = this.f13433b;
                } else if (i13 == 4) {
                    if (f16 > 0.0f) {
                        f11 = this.f13433b;
                    } else {
                        f12 = this.f13433b;
                    }
                }
                measuredWidth = (int) (f14 * f11);
            } else {
                f12 = this.f13433b;
            }
            measuredHeight = (int) (f13 / f12);
        } else if (f16 > 0.0f) {
            f12 = this.f13433b;
            measuredHeight = (int) (f13 / f12);
        } else {
            f11 = this.f13433b;
            measuredWidth = (int) (f14 * f11);
        }
        this.f13432a.scheduleUpdate(this.f13433b, f15, true);
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824));
    }

    public void setAspectRatio(float f11) {
        if (this.f13433b != f11) {
            this.f13433b = f11;
            requestLayout();
        }
    }

    public void setAspectRatioListener(@Nullable b bVar) {
    }

    public void setResizeMode(int i11) {
        if (this.f13434c != i11) {
            this.f13434c = i11;
            requestLayout();
        }
    }
}
