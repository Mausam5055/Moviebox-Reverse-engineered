package com.transsion.ad.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.ad.R$styleable;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b*\u0018\u00002\u00020\u0001:\u0001WB'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u001f\u0010\u000b\u001a\u00020\f2\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000b\u0010\rJ/\u0010\u0010\u001a\u00020\f2\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u0012H\u0014¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0016\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u0012H\u0014¢\u0006\u0004\b\u0016\u0010\u0015J\u001d\u0010\u001b\u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u0019¢\u0006\u0004\b\u001b\u0010\u001cJ\u001d\u0010\u001f\u001a\u00020\f2\u0006\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u0006¢\u0006\u0004\b\u001f\u0010\rJ\u001d\u0010\"\u001a\u00020\f2\u0006\u0010 \u001a\u00020\u00062\u0006\u0010!\u001a\u00020\u0019¢\u0006\u0004\b\"\u0010#R\u0014\u0010'\u001a\u00020$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&R\u0014\u0010)\u001a\u00020$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010&R\u0014\u0010+\u001a\u00020$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010&R\u0014\u0010-\u001a\u00020$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010&R\u0014\u00101\u001a\u00020.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u00100R\u0014\u00103\u001a\u00020.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u00100R\u0014\u00105\u001a\u00020.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b4\u00100R*\u0010<\u001a\u00020\u00172\u0006\u00106\u001a\u00020\u00178\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u00107\u001a\u0004\b8\u00109\"\u0004\b:\u0010;R*\u0010C\u001a\u00020\u00192\u0006\u00106\u001a\u00020\u00198\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b=\u0010>\u001a\u0004\b?\u0010@\"\u0004\bA\u0010BR*\u0010J\u001a\u00020\u00062\u0006\u00106\u001a\u00020\u00068\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\bD\u0010E\u001a\u0004\bF\u0010G\"\u0004\bH\u0010IR*\u0010N\u001a\u00020\u00062\u0006\u00106\u001a\u00020\u00068\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\bK\u0010E\u001a\u0004\bL\u0010G\"\u0004\bM\u0010IR*\u0010R\u001a\u00020\u00062\u0006\u00106\u001a\u00020\u00068\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\bO\u0010E\u001a\u0004\bP\u0010G\"\u0004\bQ\u0010IR*\u0010V\u001a\u00020\u00192\u0006\u00106\u001a\u00020\u00198\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\bS\u0010>\u001a\u0004\bT\u0010@\"\u0004\bU\u0010B¨\u0006X"}, d2 = {"Lcom/transsion/ad/view/ArcConstraintLayout;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "w", "h", "", "(II)V", "oldw", "oldh", "onSizeChanged", "(IIII)V", "Landroid/graphics/Canvas;", "canvas", "onDraw", "(Landroid/graphics/Canvas;)V", "dispatchDraw", "Lcom/transsion/ad/view/ArcConstraintLayout$ArcSide;", "side", "", "depthPx", "setArc", "(Lcom/transsion/ad/view/ArcConstraintLayout$ArcSide;F)V", "mainColor", "areaColor", "setArcColors", TtmlNode.ATTR_TTS_COLOR, "widthPx", "setArcStroke", "(IF)V", "Landroid/graphics/Path;", "a", "Landroid/graphics/Path;", "contentClipPath", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "arcAreaPath", "c", "mainAreaPath", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "arcStrokePath", "Landroid/graphics/Paint;", "e", "Landroid/graphics/Paint;", "mainPaint", "f", "arcAreaPaint", "g", "arcStrokePaint", AppMeasurementSdk.ConditionalUserProperty.VALUE, "Lcom/transsion/ad/view/ArcConstraintLayout$ArcSide;", "getArcSide", "()Lcom/transsion/ad/view/ArcConstraintLayout$ArcSide;", "setArcSide", "(Lcom/transsion/ad/view/ArcConstraintLayout$ArcSide;)V", "arcSide", "i", "F", "getArcDepth", "()F", "setArcDepth", "(F)V", "arcDepth", "j", "I", "getArcMainBackgroundColor", "()I", "setArcMainBackgroundColor", "(I)V", "arcMainBackgroundColor", CampaignEx.JSON_KEY_AD_K, "getArcAreaColor", "setArcAreaColor", "arcAreaColor", "l", "getArcStrokeColor", "setArcStrokeColor", "arcStrokeColor", "m", "getArcStrokeWidth", "setArcStrokeWidth", "arcStrokeWidth", "ArcSide", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ArcConstraintLayout extends ConstraintLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final Path contentClipPath;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final Path arcAreaPath;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final Path mainAreaPath;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final Path arcStrokePath;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final Paint mainPaint;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private final Paint arcAreaPaint;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private final Paint arcStrokePaint;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private ArcSide arcSide;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private float arcDepth;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private int arcMainBackgroundColor;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private int arcAreaColor;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private int arcStrokeColor;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private float arcStrokeWidth;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/transsion/ad/view/ArcConstraintLayout$ArcSide;", "", "<init>", "(Ljava/lang/String;I)V", "NONE", "TOP", "BOTTOM", "LEFT", "RIGHT", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public enum ArcSide {
        NONE,
        TOP,
        BOTTOM,
        LEFT,
        RIGHT;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());

        public static EnumEntries<ArcSide> getEntries() {
            return $ENTRIES;
        }
    }

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f42373a;

        static {
            int[] iArr = new int[ArcSide.values().length];
            try {
                iArr[ArcSide.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ArcSide.TOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ArcSide.BOTTOM.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ArcSide.LEFT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ArcSide.RIGHT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            f42373a = iArr;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public ArcConstraintLayout(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public ArcConstraintLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public ArcConstraintLayout(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        this.contentClipPath = new Path();
        this.arcAreaPath = new Path();
        this.mainAreaPath = new Path();
        this.arcStrokePath = new Path();
        Paint paint = new Paint(1);
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        paint.setColor(0);
        this.mainPaint = paint;
        Paint paint2 = new Paint(1);
        paint2.setStyle(style);
        paint2.setColor(0);
        this.arcAreaPaint = paint2;
        Paint paint3 = new Paint(1);
        paint3.setStyle(Paint.Style.STROKE);
        paint3.setColor(0);
        paint3.setStrokeWidth(0.0f);
        paint3.setStrokeCap(Paint.Cap.ROUND);
        paint3.setStrokeJoin(Paint.Join.ROUND);
        paint3.setDither(true);
        this.arcStrokePaint = paint3;
        ArcSide arcSide = ArcSide.NONE;
        this.arcSide = arcSide;
        setWillNotDraw(false);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ArcConstraintLayout);
            Intrinsics.g(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
            int i12 = typedArrayObtainStyledAttributes.getInt(R$styleable.ArcConstraintLayout_aclArcSide, 0);
            if (i12 == 1) {
                arcSide = ArcSide.TOP;
            } else if (i12 == 2) {
                arcSide = ArcSide.BOTTOM;
            } else if (i12 == 3) {
                arcSide = ArcSide.LEFT;
            } else if (i12 == 4) {
                arcSide = ArcSide.RIGHT;
            }
            setArcSide(arcSide);
            setArcDepth(typedArrayObtainStyledAttributes.getDimension(R$styleable.ArcConstraintLayout_aclArcDepth, 0.0f));
            setArcMainBackgroundColor(typedArrayObtainStyledAttributes.getColor(R$styleable.ArcConstraintLayout_aclArcMainBackgroundColor, 0));
            setArcAreaColor(typedArrayObtainStyledAttributes.getColor(R$styleable.ArcConstraintLayout_aclArcAreaColor, 0));
            setArcStrokeColor(typedArrayObtainStyledAttributes.getColor(R$styleable.ArcConstraintLayout_aclArcStrokeColor, 0));
            setArcStrokeWidth(typedArrayObtainStyledAttributes.getDimension(R$styleable.ArcConstraintLayout_aclArcStrokeWidth, 0.0f));
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public /* synthetic */ ArcConstraintLayout(Context context, AttributeSet attributeSet, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i11);
    }

    private final void h(int w11, int h11) {
        this.contentClipPath.reset();
        this.arcAreaPath.reset();
        this.mainAreaPath.reset();
        this.arcStrokePath.reset();
        if (w11 <= 0 || h11 <= 0) {
            return;
        }
        float f11 = w11;
        float f12 = h11;
        float fH = RangesKt.h(this.arcDepth, Math.min(f11, f12) / 2.0f);
        float f13 = this.arcStrokeWidth / 2.0f;
        int i11 = a.f42373a[this.arcSide.ordinal()];
        if (i11 == 1) {
            Path path = this.contentClipPath;
            Path.Direction direction = Path.Direction.CW;
            path.addRect(0.0f, 0.0f, f11, f12, direction);
            this.mainAreaPath.addRect(0.0f, 0.0f, f11, f12, direction);
            return;
        }
        if (i11 == 2) {
            this.contentClipPath.moveTo(0.0f, fH);
            float f14 = f11 / 2.0f;
            float f15 = -fH;
            this.contentClipPath.quadTo(f14, f15, f11, fH);
            this.contentClipPath.lineTo(f11, f12);
            this.contentClipPath.lineTo(0.0f, f12);
            this.contentClipPath.close();
            this.mainAreaPath.set(this.contentClipPath);
            this.arcAreaPath.moveTo(0.0f, 0.0f);
            this.arcAreaPath.lineTo(0.0f, fH);
            this.arcAreaPath.quadTo(f14, f15, f11, fH);
            this.arcAreaPath.lineTo(f11, 0.0f);
            this.arcAreaPath.close();
            float f16 = fH + f13;
            this.arcStrokePath.moveTo(f13, f16);
            this.arcStrokePath.quadTo(f14, f15 + f13, f11 - f13, f16);
            return;
        }
        if (i11 == 3) {
            this.contentClipPath.moveTo(0.0f, 0.0f);
            this.contentClipPath.lineTo(f11, 0.0f);
            float f17 = f12 - fH;
            this.contentClipPath.lineTo(f11, f17);
            float f18 = f11 / 2.0f;
            float f19 = fH + f12;
            this.contentClipPath.quadTo(f18, f19, 0.0f, f17);
            this.contentClipPath.close();
            this.mainAreaPath.set(this.contentClipPath);
            this.arcAreaPath.moveTo(0.0f, f12);
            this.arcAreaPath.lineTo(0.0f, f17);
            this.arcAreaPath.quadTo(f18, f19, f11, f17);
            this.arcAreaPath.lineTo(f11, f12);
            this.arcAreaPath.close();
            float f20 = f17 - f13;
            this.arcStrokePath.moveTo(f13, f20);
            this.arcStrokePath.quadTo(f18, f19 - f13, f11 - f13, f20);
            return;
        }
        if (i11 == 4) {
            this.contentClipPath.moveTo(fH, 0.0f);
            this.contentClipPath.lineTo(f11, 0.0f);
            this.contentClipPath.lineTo(f11, f12);
            this.contentClipPath.lineTo(fH, f12);
            float f21 = -fH;
            float f22 = f12 / 2.0f;
            this.contentClipPath.quadTo(f21, f22, fH, 0.0f);
            this.contentClipPath.close();
            this.mainAreaPath.set(this.contentClipPath);
            this.arcAreaPath.moveTo(0.0f, 0.0f);
            this.arcAreaPath.lineTo(fH, 0.0f);
            this.arcAreaPath.quadTo(f21, f22, fH, f12);
            this.arcAreaPath.lineTo(0.0f, f12);
            this.arcAreaPath.close();
            float f23 = fH + f13;
            this.arcStrokePath.moveTo(f23, f13);
            this.arcStrokePath.quadTo(f21 + f13, f22, f23, f12 - f13);
            return;
        }
        if (i11 != 5) {
            throw new NoWhenBranchMatchedException();
        }
        this.contentClipPath.moveTo(0.0f, 0.0f);
        float f24 = f11 - fH;
        this.contentClipPath.lineTo(f24, 0.0f);
        float f25 = fH + f11;
        float f26 = f12 / 2.0f;
        this.contentClipPath.quadTo(f25, f26, f24, f12);
        this.contentClipPath.lineTo(0.0f, f12);
        this.contentClipPath.close();
        this.mainAreaPath.set(this.contentClipPath);
        this.arcAreaPath.moveTo(f11, 0.0f);
        this.arcAreaPath.lineTo(f24, 0.0f);
        this.arcAreaPath.quadTo(f25, f26, f24, f12);
        this.arcAreaPath.lineTo(f11, f12);
        this.arcAreaPath.close();
        float f27 = f24 - f13;
        this.arcStrokePath.moveTo(f27, f13);
        this.arcStrokePath.quadTo(f25 - f13, f26, f27, f12 - f13);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        Intrinsics.h(canvas, "canvas");
        if (this.contentClipPath.isEmpty()) {
            super.dispatchDraw(canvas);
            return;
        }
        int iSave = canvas.save();
        canvas.clipPath(this.contentClipPath);
        super.dispatchDraw(canvas);
        canvas.restoreToCount(iSave);
    }

    public final int getArcAreaColor() {
        return this.arcAreaColor;
    }

    public final float getArcDepth() {
        return this.arcDepth;
    }

    public final int getArcMainBackgroundColor() {
        return this.arcMainBackgroundColor;
    }

    public final ArcSide getArcSide() {
        return this.arcSide;
    }

    public final int getArcStrokeColor() {
        return this.arcStrokeColor;
    }

    public final float getArcStrokeWidth() {
        return this.arcStrokeWidth;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Intrinsics.h(canvas, "canvas");
        if (!this.mainAreaPath.isEmpty()) {
            canvas.drawPath(this.mainAreaPath, this.mainPaint);
        }
        if (!this.arcAreaPath.isEmpty()) {
            canvas.drawPath(this.arcAreaPath, this.arcAreaPaint);
        }
        if (!this.arcStrokePath.isEmpty() && this.arcStrokeWidth > 0.0f && this.arcStrokeColor != 0) {
            canvas.drawPath(this.arcStrokePath, this.arcStrokePaint);
        }
        super.onDraw(canvas);
    }

    @Override // android.view.View
    protected void onSizeChanged(int w11, int h11, int oldw, int oldh) {
        super.onSizeChanged(w11, h11, oldw, oldh);
        h(w11, h11);
    }

    public final void setArc(ArcSide side, float depthPx) {
        Intrinsics.h(side, "side");
        setArcSide(side);
        setArcDepth(depthPx);
    }

    public final void setArcAreaColor(int i11) {
        if (this.arcAreaColor == i11) {
            return;
        }
        this.arcAreaColor = i11;
        this.arcAreaPaint.setColor(i11);
        invalidate();
    }

    public final void setArcColors(int mainColor, int areaColor) {
        setArcMainBackgroundColor(mainColor);
        setArcAreaColor(areaColor);
    }

    public final void setArcDepth(float f11) {
        float fE = RangesKt.e(f11, 0.0f);
        if (this.arcDepth == fE) {
            return;
        }
        this.arcDepth = fE;
        h(getWidth(), getHeight());
        invalidate();
    }

    public final void setArcMainBackgroundColor(int i11) {
        if (this.arcMainBackgroundColor == i11) {
            return;
        }
        this.arcMainBackgroundColor = i11;
        this.mainPaint.setColor(i11);
        invalidate();
    }

    public final void setArcSide(ArcSide value) {
        Intrinsics.h(value, "value");
        if (this.arcSide == value) {
            return;
        }
        this.arcSide = value;
        h(getWidth(), getHeight());
        invalidate();
    }

    public final void setArcStroke(int color, float widthPx) {
        setArcStrokeColor(color);
        setArcStrokeWidth(widthPx);
    }

    public final void setArcStrokeColor(int i11) {
        if (this.arcStrokeColor == i11) {
            return;
        }
        this.arcStrokeColor = i11;
        this.arcStrokePaint.setColor(i11);
        invalidate();
    }

    public final void setArcStrokeWidth(float f11) {
        float fE = RangesKt.e(f11, 0.0f);
        if (this.arcStrokeWidth == fE) {
            return;
        }
        this.arcStrokeWidth = fE;
        this.arcStrokePaint.setStrokeWidth(fE);
        h(getWidth(), getHeight());
        invalidate();
    }
}
