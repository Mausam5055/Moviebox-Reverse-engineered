package com.transsion.commercialization.task.wheel;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import com.bumptech.glide.Glide;
import com.bumptech.glide.request.target.CustomTarget;
import com.bumptech.glide.request.transition.Transition;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.miniapp.utils.toast.ToastStrategy;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.tn.lib.view.FlowLayout;
import com.transsion.bean.lottery.LotteryDrawResultEntity;
import com.transsion.bean.lottery.LotteryUserActivityInfoPriceBean;
import com.transsion.bean.lottery.LotteryUserActivityInfoPriceItemsBean;
import com.transsion.wrapperad.view.secondfloor.CustomSwipeRefreshLayout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000ª\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001:\u0002\u008a\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\nH\u0002¢\u0006\u0004\b\r\u0010\fJ\u000f\u0010\u000e\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000e\u0010\fJ'\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0014\u0010\u0015JG\u0010\u001f\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u001dH\u0002¢\u0006\u0004\b\u001f\u0010 JG\u0010%\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\"\u001a\u00020!2\u0006\u0010#\u001a\u00020\u00112\u0006\u0010$\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u0011H\u0002¢\u0006\u0004\b%\u0010&J\u0013\u0010(\u001a\u00020!*\u00020'H\u0002¢\u0006\u0004\b(\u0010)J\u0017\u0010,\u001a\u00020\n2\b\u0010+\u001a\u0004\u0018\u00010*¢\u0006\u0004\b,\u0010-J\u0015\u0010/\u001a\u00020\n2\u0006\u0010.\u001a\u00020\u001d¢\u0006\u0004\b/\u00100J\u0015\u00102\u001a\u00020\n2\u0006\u00101\u001a\u00020\u0011¢\u0006\u0004\b2\u00103J\u001d\u00107\u001a\u00020\n2\u000e\u00106\u001a\n\u0012\u0004\u0012\u000205\u0018\u000104¢\u0006\u0004\b7\u00108J\u0017\u0010:\u001a\u00020\n2\b\b\u0001\u00109\u001a\u00020\u0006¢\u0006\u0004\b:\u0010;J\r\u0010<\u001a\u00020\n¢\u0006\u0004\b<\u0010\fJ\u0017\u0010?\u001a\u00020\n2\b\u0010>\u001a\u0004\u0018\u00010=¢\u0006\u0004\b?\u0010@J\r\u0010A\u001a\u00020\n¢\u0006\u0004\bA\u0010\fJ/\u0010F\u001a\u00020\n2\u0006\u0010B\u001a\u00020\u00062\u0006\u0010C\u001a\u00020\u00062\u0006\u0010D\u001a\u00020\u00062\u0006\u0010E\u001a\u00020\u0006H\u0014¢\u0006\u0004\bF\u0010GJ\u0017\u0010H\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000fH\u0014¢\u0006\u0004\bH\u0010IJ\u0015\u0010K\u001a\u00020\n2\u0006\u0010J\u001a\u00020\u0011¢\u0006\u0004\bK\u00103J\u0015\u0010L\u001a\u00020\n2\u0006\u0010J\u001a\u00020\u0011¢\u0006\u0004\bL\u00103J\u000f\u0010M\u001a\u00020\nH\u0014¢\u0006\u0004\bM\u0010\fR\u0016\u0010Q\u001a\u00020N8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u0010PR\u0018\u0010T\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bR\u0010SR\u001a\u0010X\u001a\b\u0012\u0004\u0012\u0002050U8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bV\u0010WR \u0010]\u001a\u000e\u0012\u0004\u0012\u00020Z\u0012\u0004\u0012\u00020!0Y8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b[\u0010\\R\u0016\u0010$\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010^R\u001a\u0010`\u001a\b\u0012\u0004\u0012\u00020_0U8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010WR\u0016\u0010b\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010aR\u0014\u0010e\u001a\u00020c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bC\u0010dR\u0014\u0010f\u001a\u00020c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010dR\u0014\u0010g\u001a\u00020c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010dR\u0014\u0010k\u001a\u00020h8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bi\u0010jR\u0014\u0010n\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bl\u0010mR\u0014\u0010o\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010mR\u0014\u0010q\u001a\u00020h8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bp\u0010jR\u0014\u0010s\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010rR\u0014\u0010u\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bt\u0010rR\u0014\u0010w\u001a\u00020\u00118\u0002X\u0082D¢\u0006\u0006\n\u0004\bv\u0010^R\u0018\u0010z\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bx\u0010yR\u0014\u0010|\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b{\u0010^R\u0016\u0010~\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b}\u0010^R\u0017\u0010\u0080\u0001\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u007f\u0010^R\u0018\u0010\u0082\u0001\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0081\u0001\u0010^R\u001b\u0010\u0085\u0001\u001a\u0005\u0018\u00010\u0083\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bB\u0010\u0084\u0001R\u0018\u0010\u0087\u0001\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0086\u0001\u0010^R\u0018\u0010\u0089\u0001\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0088\u0001\u0010^¨\u0006\u008b\u0001"}, d2 = {"Lcom/transsion/commercialization/task/wheel/LuckyWheelView;", "Landroid/view/View;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "m", "()V", "j", "i", "Landroid/graphics/Canvas;", "canvas", "", "cx", "cy", "f", "(Landroid/graphics/Canvas;FF)V", "Landroid/graphics/Path;", "path", "centerX", "centerY", "radius", "cutRadius", "edgeAngleDeg", "", "isStartEdge", "e", "(Landroid/graphics/Path;FFFFFZ)V", "Landroid/graphics/Bitmap;", "bitmap", "startAngle", "sweepAngle", "g", "(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;FFFFF)V", "Landroid/graphics/drawable/Drawable;", "o", "(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;", "Lcom/transsion/commercialization/task/wheel/e;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setOnWheelStateListener", "(Lcom/transsion/commercialization/task/wheel/e;)V", OfflineConstantsKt.OFFLINE_CONFIG_ENABLE, "setDebugMidLineEnabled", "(Z)V", "speed", "setStartAngularSpeed", "(F)V", "", "Lcom/transsion/bean/lottery/LotteryUserActivityInfoPriceItemsBean;", "data", "setWheelItems", "(Ljava/util/List;)V", "resId", "setCenterIndicator", "(I)V", "startIndicator", "Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;", "lotteryDrawResult", "endIndicator", "(Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;)V", "resetIndicator", "w", "h", "oldw", "oldh", "onSizeChanged", "(IIII)V", "onDraw", "(Landroid/graphics/Canvas;)V", "ratio", "setImageSizeRatio", "setImageRadiusRatio", "onDetachedFromWindow", "Lcom/transsion/commercialization/task/wheel/LuckyWheelView$IndicatorState;", "a", "Lcom/transsion/commercialization/task/wheel/LuckyWheelView$IndicatorState;", "indicatorState", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/commercialization/task/wheel/e;", "stateListener", "", "c", "Ljava/util/List;", "items", "", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/util/Map;", "bitmapCache", "F", "", "sectorMidRadians", "Z", "showDebugMidLine", "Landroid/graphics/Paint;", "Landroid/graphics/Paint;", "sectorPaint", "sectorMidPaint", "indicatorMidPaint", "Landroid/graphics/RectF;", CampaignEx.JSON_KEY_AD_K, "Landroid/graphics/RectF;", "wheelRect", "l", "Landroid/graphics/Path;", "sectorPath", "cutPath", "n", "quarterRect", "I", "colorLight", TtmlNode.TAG_P, "colorWhite", CampaignEx.JSON_KEY_AD_Q, "quarterRadiusRatio", CampaignEx.JSON_KEY_AD_R, "Landroid/graphics/Bitmap;", "indicatorBitmap", "s", "indicatorSizePx", "t", "indicatorWorldAngle", TmcStartParams.KEY_URL_SHORT, "startAngularSpeed", "v", "currentAngularSpeed", "Landroid/animation/ValueAnimator;", "Landroid/animation/ValueAnimator;", "animator", "x", "imageSizeRatio", "y", "imageRadiusRatio", "IndicatorState", "Commercialization_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class LuckyWheelView extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private IndicatorState indicatorState;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private e stateListener;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final List items;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final Map bitmapCache;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private float sweepAngle;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private final List sectorMidRadians;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private boolean showDebugMidLine;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private final Paint sectorPaint;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private final Paint sectorMidPaint;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private final Paint indicatorMidPaint;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private final RectF wheelRect;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private final Path sectorPath;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private final Path cutPath;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private final RectF quarterRect;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private final int colorLight;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private final int colorWhite;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private final float quarterRadiusRatio;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private Bitmap indicatorBitmap;

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    private final float indicatorSizePx;

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    private float indicatorWorldAngle;

    /* JADX INFO: renamed from: u, reason: collision with root package name and from kotlin metadata */
    private float startAngularSpeed;

    /* JADX INFO: renamed from: v, reason: collision with root package name and from kotlin metadata */
    private float currentAngularSpeed;

    /* JADX INFO: renamed from: w, reason: collision with root package name and from kotlin metadata */
    private ValueAnimator animator;

    /* JADX INFO: renamed from: x, reason: collision with root package name and from kotlin metadata */
    private float imageSizeRatio;

    /* JADX INFO: renamed from: y, reason: collision with root package name and from kotlin metadata */
    private float imageRadiusRatio;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0082\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/transsion/commercialization/task/wheel/LuckyWheelView$IndicatorState;", "", "<init>", "(Ljava/lang/String;I)V", CustomSwipeRefreshLayout.IDLE, "ACCELERATING", "SPINNING", "STOPPING", "Commercialization_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    private enum IndicatorState {
        IDLE,
        ACCELERATING,
        SPINNING,
        STOPPING;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());

        public static EnumEntries<IndicatorState> getEntries() {
            return $ENTRIES;
        }
    }

    public static final class a extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ LotteryDrawResultEntity.LotteryResultBean f43963b;

        a(LotteryDrawResultEntity.LotteryResultBean lotteryResultBean) {
            this.f43963b = lotteryResultBean;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            Intrinsics.h(animation, "animation");
            LuckyWheelView.this.indicatorState = IndicatorState.IDLE;
            LuckyWheelView.this.currentAngularSpeed = 0.0f;
            e eVar = LuckyWheelView.this.stateListener;
            if (eVar != null) {
                eVar.c(this.f43963b);
            }
        }
    }

    public static final class b extends CustomTarget {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ LotteryUserActivityInfoPriceItemsBean f43965b;

        b(LotteryUserActivityInfoPriceItemsBean lotteryUserActivityInfoPriceItemsBean) {
            this.f43965b = lotteryUserActivityInfoPriceItemsBean;
        }

        @Override // com.bumptech.glide.request.target.Target
        public void onLoadCleared(Drawable drawable) {
        }

        @Override // com.bumptech.glide.request.target.Target
        public void onResourceReady(Bitmap resource, Transition transition) {
            Intrinsics.h(resource, "resource");
            Map map = LuckyWheelView.this.bitmapCache;
            String imgUrl = this.f43965b.getImgUrl();
            if (imgUrl == null) {
                imgUrl = "";
            }
            map.put(imgUrl, resource);
            LuckyWheelView.this.invalidate();
        }
    }

    public static final class c extends AnimatorListenerAdapter {
        c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            Intrinsics.h(animation, "animation");
            LuckyWheelView.this.indicatorWorldAngle = 0.0f;
            LuckyWheelView.this.currentAngularSpeed = 0.0f;
            LuckyWheelView.this.indicatorState = IndicatorState.IDLE;
            LuckyWheelView.this.invalidate();
        }
    }

    public static final class d extends AnimatorListenerAdapter {
        d() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            Intrinsics.h(animation, "animation");
            LuckyWheelView.this.m();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public LuckyWheelView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public LuckyWheelView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public LuckyWheelView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        setLayerType(1, null);
        this.indicatorState = IndicatorState.IDLE;
        this.items = new ArrayList();
        this.bitmapCache = new LinkedHashMap();
        this.sectorMidRadians = new ArrayList();
        this.sectorPaint = new Paint(1);
        Paint paint = new Paint(1);
        paint.setColor(FlowLayout.SPACING_AUTO);
        paint.setStrokeWidth(3.0f);
        this.sectorMidPaint = paint;
        Paint paint2 = new Paint(1);
        paint2.setColor(-16776961);
        paint2.setStrokeWidth(3.0f);
        this.indicatorMidPaint = paint2;
        this.wheelRect = new RectF();
        this.sectorPath = new Path();
        this.cutPath = new Path();
        this.quarterRect = new RectF();
        this.colorLight = Color.parseColor("#FFF5E2");
        this.colorWhite = Color.parseColor("#FFFFFF");
        this.quarterRadiusRatio = 0.05f;
        this.indicatorSizePx = context.getResources().getDisplayMetrics().density * 96.0f;
        this.startAngularSpeed = 20.0f;
        this.imageSizeRatio = 0.33f;
        this.imageRadiusRatio = 0.65f;
    }

    public /* synthetic */ LuckyWheelView(Context context, AttributeSet attributeSet, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i11);
    }

    private final void e(Path path, float centerX, float centerY, float radius, float cutRadius, float edgeAngleDeg, boolean isStartEdge) {
        float f11 = radius + centerX;
        this.quarterRect.set(f11 - cutRadius, centerY - cutRadius, f11 + cutRadius, cutRadius + centerY);
        Path path2 = new Path();
        path2.moveTo(f11, centerY);
        path2.arcTo(this.quarterRect, 180.0f, isStartEdge ? -90.0f : 90.0f);
        path2.close();
        Matrix matrix = new Matrix();
        matrix.setRotate(edgeAngleDeg, centerX, centerY);
        path2.transform(matrix);
        path.addPath(path2);
    }

    private final void f(Canvas canvas, float cx2, float cy2) {
        Bitmap bitmap = this.indicatorBitmap;
        if (bitmap == null) {
            return;
        }
        float f11 = this.indicatorSizePx / 2.0f;
        canvas.save();
        canvas.rotate(this.indicatorWorldAngle, cx2, cy2);
        float f12 = cy2 - f11;
        float f13 = cy2 + f11;
        canvas.drawBitmap(bitmap, (Rect) null, new RectF(cx2 - f11, f12, cx2 + f11, f13), (Paint) null);
        if (this.showDebugMidLine) {
            canvas.drawLine(cx2, f12, cx2, f13, this.indicatorMidPaint);
        }
        canvas.restore();
    }

    private final void g(Canvas canvas, Bitmap bitmap, float startAngle, float sweepAngle, float centerX, float centerY, float radius) {
        double radians = Math.toRadians(startAngle + (sweepAngle / 2.0f));
        double d11 = this.imageRadiusRatio * radius;
        float fCos = (float) (((double) centerX) + (Math.cos(radians) * d11));
        float fSin = (float) (((double) centerY) + (d11 * Math.sin(radians)));
        float f11 = (radius * this.imageSizeRatio) / 2.0f;
        canvas.drawBitmap(bitmap, (Rect) null, new RectF(fCos - f11, fSin - f11, fCos + f11, fSin + f11), (Paint) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(LuckyWheelView luckyWheelView, ValueAnimator it) {
        Intrinsics.h(it, "it");
        Object animatedValue = it.getAnimatedValue();
        Intrinsics.f(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        luckyWheelView.indicatorWorldAngle = ((Float) animatedValue).floatValue();
        luckyWheelView.invalidate();
    }

    private final void i() {
        for (LotteryUserActivityInfoPriceItemsBean lotteryUserActivityInfoPriceItemsBean : this.items) {
            Glide.with(this).asBitmap().load(lotteryUserActivityInfoPriceItemsBean.getImgUrl()).into(new b(lotteryUserActivityInfoPriceItemsBean));
        }
    }

    private final void j() {
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.indicatorState = IndicatorState.STOPPING;
        float f11 = this.indicatorWorldAngle;
        float f12 = (360.0f - (f11 % 360.0f)) % 360.0f;
        if (f12 < 1.0f) {
            f12 += 360.0f;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f11, f12 + f11);
        valueAnimatorOfFloat.setDuration(1200L);
        valueAnimatorOfFloat.setInterpolator(new DecelerateInterpolator());
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.transsion.commercialization.task.wheel.d
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                LuckyWheelView.k(this.f43979a, valueAnimator2);
            }
        });
        valueAnimatorOfFloat.addListener(new c());
        valueAnimatorOfFloat.start();
        this.animator = valueAnimatorOfFloat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(LuckyWheelView luckyWheelView, ValueAnimator it) {
        Intrinsics.h(it, "it");
        Object animatedValue = it.getAnimatedValue();
        Intrinsics.f(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        luckyWheelView.indicatorWorldAngle = ((Float) animatedValue).floatValue();
        luckyWheelView.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(LuckyWheelView luckyWheelView, ValueAnimator it) {
        Intrinsics.h(it, "it");
        Object animatedValue = it.getAnimatedValue();
        Intrinsics.f(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float fFloatValue = ((Float) animatedValue).floatValue();
        luckyWheelView.currentAngularSpeed = fFloatValue;
        luckyWheelView.indicatorWorldAngle = (luckyWheelView.indicatorWorldAngle + fFloatValue) % 360.0f;
        luckyWheelView.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m() {
        if (this.indicatorState != IndicatorState.ACCELERATING) {
            return;
        }
        this.indicatorState = IndicatorState.SPINNING;
        e eVar = this.stateListener;
        if (eVar != null) {
            eVar.a();
        }
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(16L);
        valueAnimatorOfFloat.setRepeatCount(-1);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.transsion.commercialization.task.wheel.a
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                LuckyWheelView.n(this.f43976a, valueAnimator2);
            }
        });
        valueAnimatorOfFloat.start();
        this.animator = valueAnimatorOfFloat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(LuckyWheelView luckyWheelView, ValueAnimator it) {
        Intrinsics.h(it, "it");
        float f11 = luckyWheelView.startAngularSpeed;
        luckyWheelView.currentAngularSpeed = f11;
        luckyWheelView.indicatorWorldAngle = (luckyWheelView.indicatorWorldAngle + f11) % 360.0f;
        luckyWheelView.invalidate();
    }

    private final Bitmap o(Drawable drawable) {
        if (drawable instanceof BitmapDrawable) {
            Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
            Intrinsics.g(bitmap, "getBitmap(...)");
            return bitmap;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Intrinsics.g(bitmapCreateBitmap, "createBitmap(...)");
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        return bitmapCreateBitmap;
    }

    public final void endIndicator(LotteryDrawResultEntity.LotteryResultBean lotteryDrawResult) {
        LotteryUserActivityInfoPriceBean price;
        if (this.indicatorState != IndicatorState.SPINNING) {
            return;
        }
        Iterator it = this.items.iterator();
        int i11 = 0;
        while (true) {
            if (!it.hasNext()) {
                i11 = -1;
                break;
            } else {
                if (Intrinsics.c(((LotteryUserActivityInfoPriceItemsBean) it.next()).getId(), (lotteryDrawResult == null || (price = lotteryDrawResult.getPrice()) == null) ? null : price.getId())) {
                    break;
                } else {
                    i11++;
                }
            }
        }
        if (i11 == -1) {
            e eVar = this.stateListener;
            if (eVar != null) {
                eVar.f("奖品列表中没有目标ID");
            }
            j();
            return;
        }
        LotteryUserActivityInfoPriceItemsBean lotteryUserActivityInfoPriceItemsBean = (LotteryUserActivityInfoPriceItemsBean) this.items.get(i11);
        this.indicatorState = IndicatorState.STOPPING;
        e eVar2 = this.stateListener;
        if (eVar2 != null) {
            eVar2.b(lotteryUserActivityInfoPriceItemsBean);
        }
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        float f11 = i11 * this.sweepAngle;
        float f12 = this.indicatorWorldAngle;
        float f13 = f11 - (f12 % 360.0f);
        if (f13 < 0.0f) {
            f13 += 360.0f;
        }
        long jN = RangesKt.n((long) (2200 * (this.currentAngularSpeed / 20.0f)), 1500L, ToastStrategy.LONG_DURATION_TIMEOUT);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.indicatorWorldAngle, f12 + f13 + 720.0f);
        valueAnimatorOfFloat.setDuration(jN);
        valueAnimatorOfFloat.setInterpolator(new DecelerateInterpolator());
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.transsion.commercialization.task.wheel.b
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                LuckyWheelView.h(this.f43977a, valueAnimator2);
            }
        });
        valueAnimatorOfFloat.addListener(new a(lotteryDrawResult));
        valueAnimatorOfFloat.start();
        this.animator = valueAnimatorOfFloat;
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.indicatorState = IndicatorState.IDLE;
        this.bitmapCache.clear();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Intrinsics.h(canvas, "canvas");
        super.onDraw(canvas);
        if (this.items.isEmpty()) {
            return;
        }
        float fCenterX = this.wheelRect.centerX();
        float fCenterY = this.wheelRect.centerY();
        float fWidth = this.wheelRect.width() / 2.0f;
        float f11 = fWidth * this.quarterRadiusRatio;
        float f12 = (-90.0f) - (this.sweepAngle / 2.0f);
        int i11 = 0;
        float f13 = f12;
        int i12 = 0;
        for (Object obj : this.items) {
            int i13 = i12 + 1;
            if (i12 < 0) {
                CollectionsKt.u();
            }
            this.sectorPath.reset();
            this.sectorPath.moveTo(fCenterX, fCenterY);
            this.sectorPath.arcTo(this.wheelRect, f13, this.sweepAngle);
            this.sectorPath.close();
            this.cutPath.reset();
            int i14 = i12;
            float f14 = f13;
            e(this.cutPath, fCenterX, fCenterY, fWidth, f11, f13, true);
            e(this.cutPath, fCenterX, fCenterY, fWidth, f11, f14 + this.sweepAngle, false);
            this.sectorPath.op(this.cutPath, Path.Op.DIFFERENCE);
            this.sectorPaint.setColor(i14 % 2 == 0 ? this.colorLight : this.colorWhite);
            canvas.drawPath(this.sectorPath, this.sectorPaint);
            if (this.showDebugMidLine) {
                double dDoubleValue = ((Number) this.sectorMidRadians.get(i14)).doubleValue();
                canvas.drawLine(fCenterX, fCenterY, fCenterX + (((float) Math.cos(dDoubleValue)) * fWidth), fCenterY + (((float) Math.sin(dDoubleValue)) * fWidth), this.sectorMidPaint);
            }
            f13 = f14 + this.sweepAngle;
            i12 = i13;
        }
        float f15 = (-90.0f) - (this.sweepAngle / 2.0f);
        for (Object obj2 : this.items) {
            int i15 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt.u();
            }
            Bitmap bitmap = (Bitmap) this.bitmapCache.get(((LotteryUserActivityInfoPriceItemsBean) obj2).getImgUrl());
            if (bitmap != null) {
                g(canvas, bitmap, f15, this.sweepAngle, fCenterX, fCenterY, fWidth);
            }
            f15 += this.sweepAngle;
            i11 = i15;
        }
        f(canvas, fCenterX, fCenterY);
    }

    @Override // android.view.View
    protected void onSizeChanged(int w11, int h11, int oldw, int oldh) {
        super.onSizeChanged(w11, h11, oldw, oldh);
        float fMin = Math.min(w11, h11);
        this.wheelRect.set(0.0f, 0.0f, fMin, fMin);
    }

    public final void resetIndicator() {
        j();
    }

    public final void setCenterIndicator(int resId) {
        Drawable drawable = androidx.core.content.b.getDrawable(getContext(), resId);
        this.indicatorBitmap = drawable != null ? o(drawable) : null;
        invalidate();
    }

    public final void setDebugMidLineEnabled(boolean enable) {
        this.showDebugMidLine = enable;
        invalidate();
    }

    public final void setImageRadiusRatio(float ratio) {
        this.imageRadiusRatio = RangesKt.l(ratio, 0.3f, 0.9f);
        invalidate();
    }

    public final void setImageSizeRatio(float ratio) {
        this.imageSizeRatio = RangesKt.l(ratio, 0.1f, 0.6f);
        invalidate();
    }

    public final void setOnWheelStateListener(e listener) {
        this.stateListener = listener;
    }

    public final void setStartAngularSpeed(float speed) {
        if (speed <= 0.0f) {
            return;
        }
        this.startAngularSpeed = speed;
    }

    public final void setWheelItems(List<LotteryUserActivityInfoPriceItemsBean> data) {
        List<LotteryUserActivityInfoPriceItemsBean> list = data;
        if (list == null || list.isEmpty()) {
            return;
        }
        this.items.clear();
        this.bitmapCache.clear();
        this.sectorMidRadians.clear();
        this.items.addAll(list);
        this.sweepAngle = 360.0f / this.items.size();
        int size = this.items.size();
        for (int i11 = 0; i11 < size; i11++) {
            this.sectorMidRadians.add(Double.valueOf(Math.toRadians((i11 * this.sweepAngle) - 90.0f)));
        }
        i();
        invalidate();
    }

    public final void startIndicator() {
        if (this.indicatorState != IndicatorState.IDLE) {
            return;
        }
        this.indicatorState = IndicatorState.ACCELERATING;
        e eVar = this.stateListener;
        if (eVar != null) {
            eVar.d();
        }
        e eVar2 = this.stateListener;
        if (eVar2 != null) {
            eVar2.e();
        }
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, this.startAngularSpeed);
        valueAnimatorOfFloat.setDuration(200L);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.transsion.commercialization.task.wheel.c
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                LuckyWheelView.l(this.f43978a, valueAnimator2);
            }
        });
        valueAnimatorOfFloat.addListener(new d());
        valueAnimatorOfFloat.start();
        this.animator = valueAnimatorOfFloat;
    }
}
