package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.vungle.ads.internal.protos.Sdk$SDKError;

/* JADX INFO: loaded from: classes.dex */
public class Placeholder extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f7725a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private View f7726b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f7727c;

    public Placeholder(Context context) {
        super(context);
        this.f7725a = -1;
        this.f7726b = null;
        this.f7727c = 4;
        a(null);
    }

    public Placeholder(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7725a = -1;
        this.f7726b = null;
        this.f7727c = 4;
        a(attributeSet);
    }

    public Placeholder(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f7725a = -1;
        this.f7726b = null;
        this.f7727c = 4;
        a(attributeSet);
    }

    public Placeholder(Context context, AttributeSet attributeSet, int i11, int i12) {
        super(context, attributeSet, i11);
        this.f7725a = -1;
        this.f7726b = null;
        this.f7727c = 4;
        a(attributeSet);
    }

    private void a(AttributeSet attributeSet) {
        super.setVisibility(this.f7727c);
        this.f7725a = -1;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.ConstraintLayout_placeholder);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i11 = 0; i11 < indexCount; i11++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i11);
                if (index == R$styleable.ConstraintLayout_placeholder_content) {
                    this.f7725a = typedArrayObtainStyledAttributes.getResourceId(index, this.f7725a);
                } else if (index == R$styleable.ConstraintLayout_placeholder_placeholder_emptyVisibility) {
                    this.f7727c = typedArrayObtainStyledAttributes.getInt(index, this.f7727c);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public View getContent() {
        return this.f7726b;
    }

    public int getEmptyVisibility() {
        return this.f7727c;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (isInEditMode()) {
            canvas.drawRGB(Sdk$SDKError.Reason.STALE_CACHED_RESPONSE_VALUE, Sdk$SDKError.Reason.STALE_CACHED_RESPONSE_VALUE, Sdk$SDKError.Reason.STALE_CACHED_RESPONSE_VALUE);
            Paint paint = new Paint();
            paint.setARGB(255, Sdk$SDKError.Reason.AD_NOT_LOADED_VALUE, Sdk$SDKError.Reason.AD_NOT_LOADED_VALUE, Sdk$SDKError.Reason.AD_NOT_LOADED_VALUE);
            paint.setTextAlign(Paint.Align.CENTER);
            paint.setTypeface(Typeface.create(Typeface.DEFAULT, 0));
            Rect rect = new Rect();
            canvas.getClipBounds(rect);
            paint.setTextSize(rect.height());
            int iHeight = rect.height();
            int iWidth = rect.width();
            paint.setTextAlign(Paint.Align.LEFT);
            paint.getTextBounds(UrlUtils.QUESTION_MARK, 0, 1, rect);
            canvas.drawText(UrlUtils.QUESTION_MARK, ((iWidth / 2.0f) - (rect.width() / 2.0f)) - rect.left, ((iHeight / 2.0f) + (rect.height() / 2.0f)) - rect.bottom, paint);
        }
    }

    public void setContentId(int i11) {
        View viewFindViewById;
        if (this.f7725a == i11) {
            return;
        }
        View view = this.f7726b;
        if (view != null) {
            view.setVisibility(0);
            ((ConstraintLayout.b) this.f7726b.getLayoutParams()).f7681j0 = false;
            this.f7726b = null;
        }
        this.f7725a = i11;
        if (i11 == -1 || (viewFindViewById = ((View) getParent()).findViewById(i11)) == null) {
            return;
        }
        viewFindViewById.setVisibility(8);
    }

    public void setEmptyVisibility(int i11) {
        this.f7727c = i11;
    }

    public void updatePostMeasure(ConstraintLayout constraintLayout) {
        if (this.f7726b == null) {
            return;
        }
        ConstraintLayout.b bVar = (ConstraintLayout.b) getLayoutParams();
        ConstraintLayout.b bVar2 = (ConstraintLayout.b) this.f7726b.getLayoutParams();
        bVar2.f7705v0.n1(0);
        ConstraintWidget.DimensionBehaviour dimensionBehaviourC = bVar.f7705v0.C();
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.FIXED;
        if (dimensionBehaviourC != dimensionBehaviour) {
            bVar.f7705v0.o1(bVar2.f7705v0.Y());
        }
        if (bVar.f7705v0.V() != dimensionBehaviour) {
            bVar.f7705v0.P0(bVar2.f7705v0.z());
        }
        bVar2.f7705v0.n1(8);
    }

    public void updatePreLayout(ConstraintLayout constraintLayout) {
        if (this.f7725a == -1 && !isInEditMode()) {
            setVisibility(this.f7727c);
        }
        View viewFindViewById = constraintLayout.findViewById(this.f7725a);
        this.f7726b = viewFindViewById;
        if (viewFindViewById != null) {
            ((ConstraintLayout.b) viewFindViewById.getLayoutParams()).f7681j0 = true;
            this.f7726b.setVisibility(0);
            setVisibility(0);
        }
    }
}
