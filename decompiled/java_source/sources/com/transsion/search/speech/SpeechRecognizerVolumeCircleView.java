package com.transsion.search.speech;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.SweepGradient;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.tn.lib.view.FlowLayout;
import com.transsion.search.R$mipmap;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u0015\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001LB\u001d\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0014¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\fH\u0014¢\u0006\u0004\b\u0013\u0010\u000eJ\u0015\u0010\u0016\u001a\u00020\f2\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u0015\u0010\u0019\u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\b¢\u0006\u0004\b\u0019\u0010\u001aJ\u0015\u0010\u001c\u001a\u00020\f2\u0006\u0010\u001b\u001a\u00020\b¢\u0006\u0004\b\u001c\u0010\u001aJ\u0015\u0010\u001f\u001a\u00020\f2\u0006\u0010\u001e\u001a\u00020\u001d¢\u0006\u0004\b\u001f\u0010 J\u0015\u0010\"\u001a\u00020\f2\u0006\u0010!\u001a\u00020\b¢\u0006\u0004\b\"\u0010\u001aJ\u0015\u0010%\u001a\u00020\f2\u0006\u0010$\u001a\u00020#¢\u0006\u0004\b%\u0010&J\u0015\u0010'\u001a\u00020\f2\u0006\u0010\u001b\u001a\u00020\b¢\u0006\u0004\b'\u0010\u001aR\u0016\u0010*\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0016\u0010-\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010,R\u0016\u0010/\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010,R\u0016\u00101\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u00100R\u0016\u00104\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103R\u0016\u00108\u001a\u0002058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107R\u0016\u0010:\u001a\u0002058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u00107R\u0016\u0010=\u001a\u00020#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010<R\u0014\u0010?\u001a\u0002058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b>\u00107R\u0014\u0010A\u001a\u0002058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b@\u00107R\u0014\u0010E\u001a\u00020B8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bC\u0010DR\u0014\u0010G\u001a\u00020B8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bF\u0010DR\u0014\u0010K\u001a\u00020H8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bI\u0010J¨\u0006M"}, d2 = {"Lcom/transsion/search/speech/SpeechRecognizerVolumeCircleView;", "Landroid/view/View;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "dp", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(I)I", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "()V", "Landroid/graphics/Canvas;", "canvas", "onDraw", "(Landroid/graphics/Canvas;)V", "onDetachedFromWindow", "Lcom/transsion/search/speech/SpeechRecognizerVolumeCircleView$MicState;", "state", "setMicState", "(Lcom/transsion/search/speech/SpeechRecognizerVolumeCircleView$MicState;)V", TtmlNode.ATTR_TTS_COLOR, "setActiveCircleColor", "(I)V", "widthDp", "setActiveStrokeWidth", "", "duration", "setActiveAnimationDuration", "(J)V", "size", "setMicIconSize", "", "colors", "setLoadingGradientColors", "([I)V", "setLoadingStrokeWidth", "a", "Lcom/transsion/search/speech/SpeechRecognizerVolumeCircleView$MicState;", "mMicState", "", "F", "mActiveAnnulusRadius", "c", "mLoadingAngle", "J", "mActiveAnimationDuration", "e", "I", "mMicIconSize", "Landroid/graphics/Bitmap;", "f", "Landroid/graphics/Bitmap;", "mScaledMicIconNormal", "g", "mScaledMicIconActive", "h", "[I", "mLoadingGradientColors", "i", "mMicIconNormal", "j", "mMicIconActive", "Landroid/graphics/Paint;", CampaignEx.JSON_KEY_AD_K, "Landroid/graphics/Paint;", "mActivePaint", "l", "mLoadingPaint", "Landroid/animation/ValueAnimator;", "m", "Landroid/animation/ValueAnimator;", "mActiveRadiusAnimator", "MicState", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class SpeechRecognizerVolumeCircleView extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private MicState mMicState;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private float mActiveAnnulusRadius;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private float mLoadingAngle;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private long mActiveAnimationDuration;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private int mMicIconSize;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private Bitmap mScaledMicIconNormal;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private Bitmap mScaledMicIconActive;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private int[] mLoadingGradientColors;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private final Bitmap mMicIconNormal;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private final Bitmap mMicIconActive;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private final Paint mActivePaint;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private final Paint mLoadingPaint;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private final ValueAnimator mActiveRadiusAnimator;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/transsion/search/speech/SpeechRecognizerVolumeCircleView$MicState;", "", "<init>", "(Ljava/lang/String;I)V", "NORMAL", "ACTIVE", "LOADING", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public enum MicState {
        NORMAL,
        ACTIVE,
        LOADING;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());

        public static EnumEntries<MicState> getEntries() {
            return $ENTRIES;
        }
    }

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f52207a;

        static {
            int[] iArr = new int[MicState.values().length];
            try {
                iArr[MicState.LOADING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[MicState.ACTIVE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f52207a = iArr;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    @JvmOverloads
    public SpeechRecognizerVolumeCircleView(Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public SpeechRecognizerVolumeCircleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.h(context, "context");
        this.mMicState = MicState.NORMAL;
        this.mActiveAnimationDuration = 1000L;
        this.mMicIconSize = b(80);
        this.mLoadingGradientColors = new int[]{Color.parseColor("#2166E5"), Color.parseColor("#1DD171")};
        Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(context.getResources(), R$mipmap.sr_icon_normal);
        Intrinsics.g(bitmapDecodeResource, "decodeResource(...)");
        this.mMicIconNormal = bitmapDecodeResource;
        Bitmap bitmapDecodeResource2 = BitmapFactory.decodeResource(context.getResources(), R$mipmap.sr_icon_active);
        Intrinsics.g(bitmapDecodeResource2, "decodeResource(...)");
        this.mMicIconActive = bitmapDecodeResource2;
        Paint paint = new Paint();
        paint.setColor(FlowLayout.SPACING_AUTO);
        Paint.Style style = Paint.Style.STROKE;
        paint.setStyle(style);
        paint.setStrokeWidth(context.getResources().getDisplayMetrics().density);
        paint.setAntiAlias(true);
        this.mActivePaint = paint;
        Paint paint2 = new Paint();
        paint2.setStyle(style);
        paint2.setStrokeWidth(b(2));
        paint2.setAntiAlias(true);
        this.mLoadingPaint = paint2;
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setInterpolator(new AccelerateDecelerateInterpolator());
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.transsion.search.speech.p
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                SpeechRecognizerVolumeCircleView.c(this.f52226a, valueAnimator2);
            }
        });
        this.mActiveRadiusAnimator = valueAnimator;
        int i11 = this.mMicIconSize;
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapDecodeResource, i11, i11, true);
        Intrinsics.g(bitmapCreateScaledBitmap, "createScaledBitmap(...)");
        this.mScaledMicIconNormal = bitmapCreateScaledBitmap;
        int i12 = this.mMicIconSize;
        Bitmap bitmapCreateScaledBitmap2 = Bitmap.createScaledBitmap(bitmapDecodeResource2, i12, i12, true);
        Intrinsics.g(bitmapCreateScaledBitmap2, "createScaledBitmap(...)");
        this.mScaledMicIconActive = bitmapCreateScaledBitmap2;
        setLoadingGradientColors(this.mLoadingGradientColors);
    }

    public /* synthetic */ SpeechRecognizerVolumeCircleView(Context context, AttributeSet attributeSet, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet);
    }

    private final int b(int dp2) {
        return (int) TypedValue.applyDimension(1, dp2, getContext().getResources().getDisplayMetrics());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(SpeechRecognizerVolumeCircleView speechRecognizerVolumeCircleView, ValueAnimator animation) {
        Intrinsics.h(animation, "animation");
        Object animatedValue = animation.getAnimatedValue();
        Intrinsics.f(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        speechRecognizerVolumeCircleView.mActiveAnnulusRadius = ((Float) animatedValue).floatValue();
        double animatedFraction = animation.getAnimatedFraction();
        speechRecognizerVolumeCircleView.mActivePaint.setAlpha((int) (animatedFraction <= 0.5d ? ((double) 255) * (((double) 1) - (animatedFraction * 0.5d)) : ((double) 255) * (0.5d - ((animatedFraction - 0.5d) * 0.5d))));
        speechRecognizerVolumeCircleView.invalidate();
    }

    private final void d() {
        this.mActiveRadiusAnimator.setFloatValues(this.mMicIconSize / 2, (Math.min(getWidth(), getHeight()) / 2) - (this.mActivePaint.getStrokeWidth() / 2));
        this.mActiveRadiusAnimator.setDuration(this.mActiveAnimationDuration);
        this.mActiveRadiusAnimator.setRepeatCount(-1);
        this.mActiveRadiusAnimator.start();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mActiveRadiusAnimator.cancel();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Intrinsics.h(canvas, "canvas");
        super.onDraw(canvas);
        int i11 = a.f52207a[this.mMicState.ordinal()];
        if (i11 == 1) {
            float width = getWidth() / 2;
            float height = getHeight() / 2;
            float f11 = this.mMicIconSize / 2;
            canvas.drawArc(width - f11, height - f11, width + f11, height + f11, this.mLoadingAngle, 270.0f, false, this.mLoadingPaint);
            float f12 = this.mLoadingAngle + 5.0f;
            this.mLoadingAngle = f12;
            if (f12 > 360.0f) {
                this.mLoadingAngle = 0.0f;
            }
            postInvalidateOnAnimation();
            return;
        }
        if (i11 != 2) {
            canvas.drawBitmap(this.mScaledMicIconNormal, (getWidth() - this.mMicIconSize) / 2, (getHeight() - this.mMicIconSize) / 2, (Paint) null);
            return;
        }
        Bitmap bitmap = this.mScaledMicIconActive;
        int width2 = (getWidth() - this.mMicIconSize) / 2;
        int height2 = getHeight();
        int i12 = this.mMicIconSize;
        int i13 = (height2 - i12) / 2;
        canvas.drawCircle((i12 / 2) + width2, (i12 / 2) + i13, this.mActiveAnnulusRadius, this.mActivePaint);
        canvas.drawBitmap(bitmap, width2, i13, (Paint) null);
    }

    public final void setActiveAnimationDuration(long duration) {
        this.mActiveAnimationDuration = duration;
    }

    public final void setActiveCircleColor(int color) {
        this.mActivePaint.setColor(color);
        invalidate();
    }

    public final void setActiveStrokeWidth(int widthDp) {
        this.mActivePaint.setStrokeWidth(b(widthDp));
        invalidate();
    }

    public final void setLoadingGradientColors(int[] colors) {
        Intrinsics.h(colors, "colors");
        this.mLoadingGradientColors = colors;
        float width = getWidth() / 2;
        float height = getHeight() / 2;
        Paint paint = this.mLoadingPaint;
        int i11 = colors[0];
        int i12 = colors[1];
        paint.setShader(new SweepGradient(width, height, new int[]{i11, i12, i12, i11}, new float[]{0.0f, 0.5f, 0.75f, 1.0f}));
        invalidate();
    }

    public final void setLoadingStrokeWidth(int widthDp) {
        this.mLoadingPaint.setStrokeWidth(b(widthDp));
        invalidate();
    }

    public final void setMicIconSize(int size) {
        int iB = b(size);
        this.mMicIconSize = iB;
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(this.mMicIconNormal, iB, iB, true);
        Intrinsics.g(bitmapCreateScaledBitmap, "createScaledBitmap(...)");
        this.mScaledMicIconNormal = bitmapCreateScaledBitmap;
        Bitmap bitmap = this.mMicIconActive;
        int i11 = this.mMicIconSize;
        Bitmap bitmapCreateScaledBitmap2 = Bitmap.createScaledBitmap(bitmap, i11, i11, true);
        Intrinsics.g(bitmapCreateScaledBitmap2, "createScaledBitmap(...)");
        this.mScaledMicIconActive = bitmapCreateScaledBitmap2;
        invalidate();
    }

    public final void setMicState(MicState state) {
        Intrinsics.h(state, "state");
        this.mMicState = state;
        if (state == MicState.ACTIVE) {
            d();
        } else {
            this.mActiveRadiusAnimator.cancel();
        }
        invalidate();
    }
}
