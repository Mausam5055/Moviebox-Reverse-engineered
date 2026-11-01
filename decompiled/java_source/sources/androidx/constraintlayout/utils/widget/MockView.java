package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.widget.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class MockView extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Paint f7587a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Paint f7588b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Paint f7589c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f7590d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f7591e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected String f7592f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Rect f7593g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f7594h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f7595i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f7596j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f7597k;

    public MockView(Context context) {
        super(context);
        this.f7587a = new Paint();
        this.f7588b = new Paint();
        this.f7589c = new Paint();
        this.f7590d = true;
        this.f7591e = true;
        this.f7592f = null;
        this.f7593g = new Rect();
        this.f7594h = Color.argb(255, 0, 0, 0);
        this.f7595i = Color.argb(255, 200, 200, 200);
        this.f7596j = Color.argb(255, 50, 50, 50);
        this.f7597k = 4;
        a(context, null);
    }

    public MockView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7587a = new Paint();
        this.f7588b = new Paint();
        this.f7589c = new Paint();
        this.f7590d = true;
        this.f7591e = true;
        this.f7592f = null;
        this.f7593g = new Rect();
        this.f7594h = Color.argb(255, 0, 0, 0);
        this.f7595i = Color.argb(255, 200, 200, 200);
        this.f7596j = Color.argb(255, 50, 50, 50);
        this.f7597k = 4;
        a(context, attributeSet);
    }

    public MockView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f7587a = new Paint();
        this.f7588b = new Paint();
        this.f7589c = new Paint();
        this.f7590d = true;
        this.f7591e = true;
        this.f7592f = null;
        this.f7593g = new Rect();
        this.f7594h = Color.argb(255, 0, 0, 0);
        this.f7595i = Color.argb(255, 200, 200, 200);
        this.f7596j = Color.argb(255, 50, 50, 50);
        this.f7597k = 4;
        a(context, attributeSet);
    }

    private void a(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.MockView);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i11 = 0; i11 < indexCount; i11++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i11);
                if (index == R$styleable.MockView_mock_label) {
                    this.f7592f = typedArrayObtainStyledAttributes.getString(index);
                } else if (index == R$styleable.MockView_mock_showDiagonals) {
                    this.f7590d = typedArrayObtainStyledAttributes.getBoolean(index, this.f7590d);
                } else if (index == R$styleable.MockView_mock_diagonalsColor) {
                    this.f7594h = typedArrayObtainStyledAttributes.getColor(index, this.f7594h);
                } else if (index == R$styleable.MockView_mock_labelBackgroundColor) {
                    this.f7596j = typedArrayObtainStyledAttributes.getColor(index, this.f7596j);
                } else if (index == R$styleable.MockView_mock_labelColor) {
                    this.f7595i = typedArrayObtainStyledAttributes.getColor(index, this.f7595i);
                } else if (index == R$styleable.MockView_mock_showLabel) {
                    this.f7591e = typedArrayObtainStyledAttributes.getBoolean(index, this.f7591e);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        if (this.f7592f == null) {
            try {
                this.f7592f = context.getResources().getResourceEntryName(getId());
            } catch (Exception unused) {
            }
        }
        this.f7587a.setColor(this.f7594h);
        this.f7587a.setAntiAlias(true);
        this.f7588b.setColor(this.f7595i);
        this.f7588b.setAntiAlias(true);
        this.f7589c.setColor(this.f7596j);
        this.f7597k = Math.round(this.f7597k * (getResources().getDisplayMetrics().xdpi / 160.0f));
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int width = getWidth();
        int height = getHeight();
        if (this.f7590d) {
            width--;
            height--;
            float f11 = width;
            float f12 = height;
            canvas.drawLine(0.0f, 0.0f, f11, f12, this.f7587a);
            canvas.drawLine(0.0f, f12, f11, 0.0f, this.f7587a);
            canvas.drawLine(0.0f, 0.0f, f11, 0.0f, this.f7587a);
            canvas.drawLine(f11, 0.0f, f11, f12, this.f7587a);
            canvas.drawLine(f11, f12, 0.0f, f12, this.f7587a);
            canvas.drawLine(0.0f, f12, 0.0f, 0.0f, this.f7587a);
        }
        String str = this.f7592f;
        if (str == null || !this.f7591e) {
            return;
        }
        this.f7588b.getTextBounds(str, 0, str.length(), this.f7593g);
        float fWidth = (width - this.f7593g.width()) / 2.0f;
        float fHeight = ((height - this.f7593g.height()) / 2.0f) + this.f7593g.height();
        this.f7593g.offset((int) fWidth, (int) fHeight);
        Rect rect = this.f7593g;
        int i11 = rect.left;
        int i12 = this.f7597k;
        rect.set(i11 - i12, rect.top - i12, rect.right + i12, rect.bottom + i12);
        canvas.drawRect(this.f7593g, this.f7589c);
        canvas.drawText(this.f7592f, fWidth, fHeight, this.f7588b);
    }
}
