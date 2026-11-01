package com.transsion.baseui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.R$styleable;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0015\u0010\u0013\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u0012¢\u0006\u0004\b\u0013\u0010\u0014J/\u0010\u0018\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001c\u001a\u00020\f2\u0006\u0010\u001b\u001a\u00020\u001aH\u0014¢\u0006\u0004\b\u001c\u0010\u001dR\u0016\u0010 \u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0016\u0010!\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u001fR\u0016\u0010\"\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u001fR\u0016\u0010$\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010\u001fR\u0016\u0010&\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010\u001fR\u0016\u0010(\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010\u001fR\u0016\u0010+\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*R\u0016\u0010,\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010*R\u0014\u0010.\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010*R\u0014\u00100\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u0010*R\u0014\u00104\u001a\u0002018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u00103R\u0014\u00106\u001a\u0002018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b5\u00103R\u0014\u0010:\u001a\u0002078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b8\u00109¨\u0006;"}, d2 = {"Lcom/transsion/baseui/widget/GradientBorderTagView;", "Landroidx/appcompat/widget/AppCompatTextView;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "w", "", "c", "(F)V", AppMeasurementSdk.ConditionalUserProperty.VALUE, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(F)F", "", "setText", "(Ljava/lang/String;)V", "h", "oldw", "oldh", "onSizeChanged", "(IIII)V", "Landroid/graphics/Canvas;", "canvas", "onDraw", "(Landroid/graphics/Canvas;)V", "a", "I", "borderStartColor", "borderEndColor", "textStartColor", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "textEndColor", "e", "fillStartColor", "f", "fillEndColor", "g", "F", "borderWidth", "cornerRadius", "i", "paddingH", "j", "paddingV", "Landroid/graphics/Paint;", CampaignEx.JSON_KEY_AD_K, "Landroid/graphics/Paint;", "fillPaint", "l", "borderPaint", "Landroid/graphics/RectF;", "m", "Landroid/graphics/RectF;", "rectF", "BaseUI_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class GradientBorderTagView extends AppCompatTextView {
    public static final int $stable = 8;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private int borderStartColor;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private int borderEndColor;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private int textStartColor;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private int textEndColor;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private int fillStartColor;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private int fillEndColor;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private float borderWidth;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private float cornerRadius;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private final float paddingH;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private final float paddingV;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private final Paint fillPaint;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private final Paint borderPaint;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private final RectF rectF;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public GradientBorderTagView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public GradientBorderTagView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public GradientBorderTagView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        this.borderStartColor = Color.parseColor("#1cb7ff");
        this.borderEndColor = Color.parseColor("#2ff58b");
        this.textStartColor = Color.parseColor("#1cb7ff");
        this.textEndColor = Color.parseColor("#2ff58b");
        this.fillStartColor = Color.parseColor("#331cb7ff");
        this.fillEndColor = Color.parseColor("#332ff58b");
        this.borderWidth = b(1.0f);
        this.cornerRadius = b(2.0f);
        this.paddingH = b(6.0f);
        this.paddingV = b(3.0f);
        Paint paint = new Paint(1);
        paint.setStyle(Paint.Style.FILL);
        this.fillPaint = paint;
        Paint paint2 = new Paint(1);
        paint2.setStyle(Paint.Style.STROKE);
        this.borderPaint = paint2;
        this.rectF = new RectF();
        try {
            Result.Companion companion = Result.INSTANCE;
            this.borderStartColor = androidx.core.content.b.getColor(context, R$color.brand_new_gradient_start);
            int color = androidx.core.content.b.getColor(context, R$color.brand_new_gradient_end);
            this.borderEndColor = color;
            this.textStartColor = this.borderStartColor;
            this.textEndColor = color;
            this.fillStartColor = androidx.core.content.b.getColor(context, R$color.brand_new_gradient_start_20);
            this.fillEndColor = androidx.core.content.b.getColor(context, R$color.brand_new_gradient_end_20);
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.GradientBorderTagView);
            Intrinsics.g(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
            this.borderStartColor = typedArrayObtainStyledAttributes.getColor(R$styleable.GradientBorderTagView_tagBorderStartColor, this.borderStartColor);
            this.borderEndColor = typedArrayObtainStyledAttributes.getColor(R$styleable.GradientBorderTagView_tagBorderEndColor, this.borderEndColor);
            this.textStartColor = typedArrayObtainStyledAttributes.getColor(R$styleable.GradientBorderTagView_tagTextStartColor, this.textStartColor);
            this.textEndColor = typedArrayObtainStyledAttributes.getColor(R$styleable.GradientBorderTagView_tagTextEndColor, this.textEndColor);
            this.fillStartColor = typedArrayObtainStyledAttributes.getColor(R$styleable.GradientBorderTagView_tagFillStartColor, this.fillStartColor);
            this.fillEndColor = typedArrayObtainStyledAttributes.getColor(R$styleable.GradientBorderTagView_tagFillEndColor, this.fillEndColor);
            this.borderWidth = typedArrayObtainStyledAttributes.getDimension(R$styleable.GradientBorderTagView_tagBorderWidth, this.borderWidth);
            this.cornerRadius = typedArrayObtainStyledAttributes.getDimension(R$styleable.GradientBorderTagView_tagCornerRadius, this.cornerRadius);
            String string = typedArrayObtainStyledAttributes.getString(R$styleable.GradientBorderTagView_tagText);
            float dimension = typedArrayObtainStyledAttributes.getDimension(R$styleable.GradientBorderTagView_tagTextSize, 0.0f);
            typedArrayObtainStyledAttributes.recycle();
            if (string != null) {
                super.setText((CharSequence) string);
            }
            if (dimension > 0.0f) {
                setTextSize(0, dimension);
            }
        }
        setIncludeFontPadding(false);
        setTypeface(jg.a.d(context));
        setGravity(17);
        int i12 = (int) (this.paddingH + this.borderWidth + 0.5f);
        int i13 = (int) this.paddingV;
        setPadding(i12, i13, i12, i13);
        this.borderPaint.setStrokeWidth(this.borderWidth);
        setBackground(null);
    }

    public /* synthetic */ GradientBorderTagView(Context context, AttributeSet attributeSet, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i11);
    }

    private final float b(float value) {
        return TypedValue.applyDimension(1, value, getResources().getDisplayMetrics());
    }

    private final void c(float w11) {
        if (w11 <= 0.0f) {
            return;
        }
        Paint paint = this.fillPaint;
        int[] iArr = {this.fillStartColor, this.fillEndColor};
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        paint.setShader(new LinearGradient(0.0f, 0.0f, w11, 0.0f, iArr, (float[]) null, tileMode));
        this.borderPaint.setShader(new LinearGradient(0.0f, 0.0f, w11, 0.0f, new int[]{this.borderStartColor, this.borderEndColor}, (float[]) null, tileMode));
        Float fValueOf = Float.valueOf(getPaint().measureText(getText().toString()));
        if (fValueOf.floatValue() <= 0.0f) {
            fValueOf = null;
        }
        getPaint().setShader(new LinearGradient(0.0f, 0.0f, fValueOf != null ? fValueOf.floatValue() : w11, 0.0f, new int[]{this.textStartColor, this.textEndColor}, (float[]) null, tileMode));
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        Intrinsics.h(canvas, "canvas");
        RectF rectF = this.rectF;
        float f11 = this.cornerRadius;
        canvas.drawRoundRect(rectF, f11, f11, this.fillPaint);
        RectF rectF2 = this.rectF;
        float f12 = this.cornerRadius;
        canvas.drawRoundRect(rectF2, f12, f12, this.borderPaint);
        super.onDraw(canvas);
    }

    @Override // android.view.View
    protected void onSizeChanged(int w11, int h11, int oldw, int oldh) {
        super.onSizeChanged(w11, h11, oldw, oldh);
        float f11 = this.borderWidth / 2.0f;
        float f12 = w11;
        this.rectF.set(f11, f11, f12 - f11, h11 - f11);
        c(f12);
    }

    public final void setText(String value) {
        Intrinsics.h(value, "value");
        if (Intrinsics.c(getText().toString(), value)) {
            return;
        }
        super.setText((CharSequence) value);
        invalidate();
    }
}
