package com.transsion.commercialization.pslink;

import ak.x;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Shader;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ProgressBar;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.ViewCompat;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.tn.lib.widget.R$color;
import com.transsion.ad.ps.model.RecommendInfo;
import com.transsion.commercialization.R$string;
import com.transsion.commercialization.R$styleable;
import com.transsnet.launcherlib.PalmStoreDownLoadTaskInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0085\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\u0015\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0007\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\b\u0005*\u0001f\u0018\u0000 i2\u00020\u0001:\u0001BB\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0004\u0010\bB#\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\u000bJ/\u0010\u0011\u001a\u00020\u00102\u0006\u0010\f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\tH\u0014¢\u0006\u0004\b\u0011\u0010\u0012J\u001f\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\tH\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u0017H\u0014¢\u0006\u0004\b\u0019\u0010\u001aJ\u0015\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u001b¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0010H\u0014¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0010H\u0014¢\u0006\u0004\b!\u0010 J\u000f\u0010#\u001a\u00020\"H\u0002¢\u0006\u0004\b#\u0010$J\u0017\u0010&\u001a\u00020\t2\u0006\u0010%\u001a\u00020\tH\u0002¢\u0006\u0004\b&\u0010'J\u0017\u0010(\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u0017H\u0002¢\u0006\u0004\b(\u0010\u001aJ\u0017\u0010)\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u0017H\u0002¢\u0006\u0004\b)\u0010\u001aJ\u0017\u0010\r\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u0017H\u0002¢\u0006\u0004\b\r\u0010\u001aJ\u0017\u0010*\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u0017H\u0002¢\u0006\u0004\b*\u0010\u001aJ\u0017\u0010+\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u0017H\u0002¢\u0006\u0004\b+\u0010\u001aJ\u0017\u0010,\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u0017H\u0002¢\u0006\u0004\b,\u0010\u001aJ\u0017\u0010-\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u0017H\u0002¢\u0006\u0004\b-\u0010\u001aJ#\u00100\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u00172\n\u0010/\u001a\u00020.\"\u00020\tH\u0002¢\u0006\u0004\b0\u00101J\u0017\u00102\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u0017H\u0002¢\u0006\u0004\b2\u0010\u001aJ\u0017\u00106\u001a\u0002052\u0006\u00104\u001a\u000203H\u0002¢\u0006\u0004\b6\u00107J\u001f\u00109\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u00108\u001a\u00020\"H\u0002¢\u0006\u0004\b9\u0010:J\u001f\u0010;\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u00108\u001a\u00020\"H\u0002¢\u0006\u0004\b;\u0010:J\u000f\u0010<\u001a\u00020\"H\u0002¢\u0006\u0004\b<\u0010$J\u000f\u0010=\u001a\u00020\tH\u0002¢\u0006\u0004\b=\u0010>J\u0017\u0010@\u001a\u00020\u00102\u0006\u0010?\u001a\u00020\tH\u0002¢\u0006\u0004\b@\u0010AJ\u000f\u0010B\u001a\u00020\u0010H\u0002¢\u0006\u0004\bB\u0010 J\u000f\u0010C\u001a\u00020\u0010H\u0002¢\u0006\u0004\bC\u0010 J3\u0010I\u001a\u00020\u00102\u0006\u0010D\u001a\u00020\"2\u0006\u0010E\u001a\u00020\"2\b\u0010G\u001a\u0004\u0018\u00010F2\b\u0010H\u001a\u0004\u0018\u00010\"H\u0002¢\u0006\u0004\bI\u0010JJ\u0019\u0010K\u001a\u00020\u00102\b\u0010G\u001a\u0004\u0018\u00010FH\u0002¢\u0006\u0004\bK\u0010LR\u0016\u0010N\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010MR\u0016\u0010Q\u001a\u00020O8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010PR\u0016\u0010R\u001a\u00020O8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bI\u0010PR\u0016\u0010S\u001a\u00020O8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010PR\u0016\u0010T\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010MR\u0016\u0010U\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010MR\u0016\u0010V\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010MR\u0016\u0010W\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010MR\u0016\u0010X\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010MR\u0016\u0010[\u001a\u00020Y8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u0010ZR\u0016\u0010\\\u001a\u00020Y8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010ZR\u0016\u0010]\u001a\u00020Y8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u0010ZR\u0016\u0010`\u001a\u00020^8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010_R\u0016\u0010c\u001a\u00020a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010bR\u0018\u0010e\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010dR\u0014\u0010h\u001a\u00020f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b6\u0010g¨\u0006j"}, d2 = {"Lcom/transsion/commercialization/pslink/PsLinkDownLoadButton;", "Landroid/widget/ProgressBar;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "w", "h", "oldw", "oldh", "", "onSizeChanged", "(IIII)V", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "(II)V", "Landroid/graphics/Canvas;", "canvas", "onDraw", "(Landroid/graphics/Canvas;)V", "Lcom/transsion/ad/ps/model/RecommendInfo;", "itemInfo", "setItemInfo", "(Lcom/transsion/ad/ps/model/RecommendInfo;)V", "onAttachedToWindow", "()V", "onDetachedFromWindow", "", "getClassTag", "()Ljava/lang/String;", "res", "o", "(I)I", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "n", "f", "e", "i", "m", "", "colors", "l", "(Landroid/graphics/Canvas;[I)V", "j", "Landroid/graphics/RectF;", "mRectF", "Landroid/graphics/LinearGradient;", TtmlNode.TAG_P, "(Landroid/graphics/RectF;)Landroid/graphics/LinearGradient;", MimeTypes.BASE_TYPE_TEXT, CampaignEx.JSON_KEY_AD_K, "(Landroid/graphics/Canvas;Ljava/lang/String;)V", "g", "getPercent", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "()I", "state", "setState", "(I)V", "a", CampaignEx.JSON_KEY_AD_Q, "callBackName", "param", "Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;", "palmStoreDownLoadTaskInfo", "pkgName", "c", "(Ljava/lang/String;Ljava/lang/String;Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;Ljava/lang/String;)V", "setInnerProgress", "(Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;)V", "I", "mBgStyle", "", "F", "mBorderRadius", "mBorderWidth", "mTextSize", "mValidWidth", "mValidHeight", "mCurrentState", "mInstallColor", "mProgressColor", "Landroid/graphics/Paint;", "Landroid/graphics/Paint;", "mPaintBg", "mPaintProgress", "textPaint", "Landroid/graphics/Path;", "Landroid/graphics/Path;", "mProgressPath", "Landroid/graphics/PorterDuffXfermode;", "Landroid/graphics/PorterDuffXfermode;", "mPorterDuffMode", "Lcom/transsion/ad/ps/model/RecommendInfo;", "mItemInfo", "com/transsion/commercialization/pslink/PsLinkDownLoadButton$b", "Lcom/transsion/commercialization/pslink/PsLinkDownLoadButton$b;", "downloadCallback", "Companion", "Commercialization_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PsLinkDownLoadButton extends ProgressBar {
    public static final int BG_STYLE_DEF_BG_08 = 1;
    public static final int BG_STYLE_GRADIENT = 2;
    public static final int STATE_INSTALLED = 6;
    public static final int STATE_NETWORK_ERROR = 12;
    public static final int STATE_PROGRESS_DOWNLOADING = 2;
    public static final int STATE_PROGRESS_INSTALLED = 5;
    public static final int STATE_PROGRESS_INSTALLING = 4;
    public static final int STATE_PROGRESS_NONE = 0;
    public static final int STATE_PROGRESS_PAUSE = 3;
    public static final int STATE_PROGRESS_WAITING = 1;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private int mBgStyle;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private float mBorderRadius;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private float mBorderWidth;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private float mTextSize;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private int mValidWidth;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private int mValidHeight;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private int mCurrentState;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private int mInstallColor;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private int mProgressColor;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private Paint mPaintBg;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private Paint mPaintProgress;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private Paint textPaint;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private Path mProgressPath;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private PorterDuffXfermode mPorterDuffMode;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private RecommendInfo mItemInfo;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private final b downloadCallback;

    public static final class b implements com.transsion.commercialization.pslink.b {
        b() {
        }

        @Override // com.transsion.commercialization.pslink.b
        public void a(String callBackName, String param, PalmStoreDownLoadTaskInfo palmStoreDownLoadTaskInfo, String str) {
            Intrinsics.h(callBackName, "callBackName");
            Intrinsics.h(param, "param");
            a.f43829a.a("callBackCommon: " + callBackName + ", " + param + ", " + str);
            RecommendInfo recommendInfo = PsLinkDownLoadButton.this.mItemInfo;
            if (TextUtils.equals(recommendInfo != null ? recommendInfo.getPackageName() : null, str)) {
                PsLinkDownLoadButton.this.c(callBackName, param, palmStoreDownLoadTaskInfo, str);
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PsLinkDownLoadButton(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PsLinkDownLoadButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PsLinkDownLoadButton(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        this.mBgStyle = 1;
        this.mInstallColor = o(R$color.bg_08);
        this.mProgressColor = InputDeviceCompat.SOURCE_ANY;
        this.mPaintBg = new Paint();
        this.mPaintProgress = new Paint();
        this.textPaint = new Paint();
        this.mProgressPath = new Path();
        this.mPorterDuffMode = new PorterDuffXfermode(PorterDuff.Mode.SRC_IN);
        this.downloadCallback = new b();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.PsLinkDownLoadButton);
        Intrinsics.g(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
        this.mBorderRadius = typedArrayObtainStyledAttributes.getDimension(R$styleable.PsLinkDownLoadButton_border_radius, 0.0f);
        this.mBorderWidth = typedArrayObtainStyledAttributes.getDimension(R$styleable.PsLinkDownLoadButton_border_width, 6.0f);
        this.mTextSize = typedArrayObtainStyledAttributes.getDimension(R$styleable.PsLinkDownLoadButton_progress_textSize, 46.0f);
        this.mBgStyle = typedArrayObtainStyledAttributes.getInt(R$styleable.PsLinkDownLoadButton_bg_style, 1);
        typedArrayObtainStyledAttributes.recycle();
        this.mPaintBg.setAntiAlias(true);
        this.mPaintProgress.setAntiAlias(true);
        this.textPaint.setTextSize(this.mTextSize);
        this.textPaint.setAntiAlias(true);
    }

    private final void a() {
        PsLinkServiceHelper.f43824a.g(this.downloadCallback);
    }

    private final int b() {
        return (int) (100 * ((getProgress() * 1.0f) / getMax()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c(String callBackName, String param, PalmStoreDownLoadTaskInfo palmStoreDownLoadTaskInfo, String pkgName) {
        a aVar = a.f43829a;
        String classTag = getClassTag();
        Integer numValueOf = palmStoreDownLoadTaskInfo != null ? Integer.valueOf(palmStoreDownLoadTaskInfo.getStatus()) : null;
        Float fValueOf = palmStoreDownLoadTaskInfo != null ? Float.valueOf(palmStoreDownLoadTaskInfo.getProgress()) : null;
        aVar.b(classTag + " --> dealWithCallBack() --> 开始刷新数据 -- callBackName = " + callBackName + " -- pkgName = " + pkgName + " -- status = " + numValueOf + " -- progress = " + fValueOf + "-- param.length = " + param.length());
        if (palmStoreDownLoadTaskInfo == null) {
            if (TextUtils.equals("installApp", callBackName)) {
                RecommendInfo recommendInfo = this.mItemInfo;
                if (recommendInfo != null) {
                    recommendInfo.setPalmStoreDownLoadTaskInfo(null);
                }
                setState(5);
                return;
            }
            if (TextUtils.equals("removedApp", callBackName)) {
                setState(0);
                return;
            } else {
                setState(0);
                return;
            }
        }
        RecommendInfo recommendInfo2 = this.mItemInfo;
        if (recommendInfo2 != null) {
            recommendInfo2.setPalmStoreDownLoadTaskInfo(palmStoreDownLoadTaskInfo);
        }
        int status = palmStoreDownLoadTaskInfo.getStatus();
        if (status == 1) {
            setState(1);
            return;
        }
        if (status == 2) {
            setInnerProgress(palmStoreDownLoadTaskInfo);
            setState(2);
            return;
        }
        if (status == 3) {
            setInnerProgress(palmStoreDownLoadTaskInfo);
            setState(3);
            f.f43830a.h(pkgName, palmStoreDownLoadTaskInfo.getStatus());
        } else if (status == 6) {
            setState(5);
            f.f43830a.h(pkgName, palmStoreDownLoadTaskInfo.getStatus());
        } else if (status == 11) {
            setState(4);
        } else {
            if (status != 12) {
                return;
            }
            setState(12);
            f.f43830a.h(pkgName, palmStoreDownLoadTaskInfo.getStatus());
        }
    }

    private final void d(Canvas canvas) {
        l(canvas, o(R$color.brand_gradient_start), o(R$color.brand_gradient_center), o(R$color.brand_gradient_end));
        String string = getContext().getResources().getString(R$string.ps_link_install);
        Intrinsics.g(string, "getString(...)");
        k(canvas, string);
    }

    private final void e(Canvas canvas) {
        int i11 = this.mBgStyle;
        if (i11 == 1) {
            int i12 = this.mInstallColor;
            l(canvas, i12, i12, i12);
        } else if (i11 == 2) {
            l(canvas, o(R$color.brand_gradient_start_60), o(R$color.brand_gradient_center_60), o(R$color.brand_gradient_end_60));
        }
        j(canvas);
        k(canvas, "");
        g(canvas, "");
    }

    private final void f(Canvas canvas) {
        int i11 = this.mBgStyle;
        if (i11 == 1) {
            int i12 = this.mInstallColor;
            l(canvas, i12, i12, i12);
        } else if (i11 == 2) {
            l(canvas, o(R$color.brand_gradient_start), o(R$color.brand_gradient_center), o(R$color.brand_gradient_end));
        }
        String string = getContext().getResources().getString(R$string.ps_link_open);
        Intrinsics.g(string, "getString(...)");
        k(canvas, string);
    }

    private final void g(Canvas canvas, String text) {
        this.textPaint.setColor(-1);
        if (TextUtils.isEmpty(text)) {
            text = getPercent();
        }
        float fMeasureText = this.textPaint.measureText(text);
        float fDescent = this.textPaint.descent() + this.textPaint.ascent();
        float f11 = 2;
        float measuredWidth = (getMeasuredWidth() - fMeasureText) / f11;
        float f12 = (this.mValidHeight / 2) - (fDescent / f11);
        float progress = ((getProgress() - (100 / getMax())) * getMeasuredWidth()) / 100;
        if (progress > measuredWidth) {
            canvas.translate(getPaddingLeft(), getPaddingTop());
        }
        canvas.clipRect(measuredWidth, 0.0f, progress, getMeasuredHeight());
        canvas.drawText(text, measuredWidth, f12, this.textPaint);
    }

    private final String getClassTag() {
        String simpleName = PsLinkDownLoadButton.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    private final String getPercent() {
        return TextUtils.concat(String.valueOf(b()), "%").toString();
    }

    private final void h(Canvas canvas) {
        l(canvas, o(R$color.brand_gradient_start), o(R$color.brand_gradient_center), o(R$color.brand_gradient_end));
        String string = getContext().getResources().getString(R$string.ps_link_installing);
        Intrinsics.g(string, "getString(...)");
        k(canvas, string);
    }

    private final void i(Canvas canvas) {
        int i11 = this.mBgStyle;
        if (i11 == 1) {
            int i12 = this.mInstallColor;
            l(canvas, i12, i12, i12);
        } else if (i11 == 2) {
            l(canvas, o(R$color.brand_gradient_start_60), o(R$color.brand_gradient_center_60), o(R$color.brand_gradient_end_60));
        }
        j(canvas);
        String string = getContext().getResources().getString(R$string.ps_link_continue);
        Intrinsics.g(string, "getString(...)");
        k(canvas, string);
        String string2 = getContext().getResources().getString(R$string.ps_link_continue);
        Intrinsics.g(string2, "getString(...)");
        g(canvas, string2);
    }

    private final void j(Canvas canvas) {
        Paint paint = this.mPaintBg;
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        float progress = this.mValidWidth * ((getProgress() * 1.0f) / getMax());
        int iSaveLayer = canvas.saveLayer(0.0f, 0.0f, progress, getHeight(), this.mPaintBg);
        float f11 = this.mBorderWidth;
        RectF rectF = new RectF(f11, f11, this.mValidWidth - f11, this.mValidHeight - f11);
        this.mPaintBg.setShader(null);
        this.mPaintBg.setColor(InputDeviceCompat.SOURCE_ANY);
        float f12 = this.mBorderRadius;
        canvas.drawRoundRect(rectF, f12, f12, this.mPaintBg);
        this.mPaintProgress.setStyle(style);
        this.mPaintProgress.setShader(p(rectF));
        this.mProgressPath.reset();
        this.mProgressPath.addRect(new RectF(0.0f, 0.0f, progress, this.mValidHeight), Path.Direction.CCW);
        this.mPaintProgress.setXfermode(this.mPorterDuffMode);
        canvas.drawPath(this.mProgressPath, this.mPaintProgress);
        canvas.restoreToCount(iSaveLayer);
        this.mPaintProgress.setXfermode(null);
    }

    private final void k(Canvas canvas, String text) {
        if (qi.b.f73634a.m()) {
            canvas.rotate(180.0f, this.mValidWidth / 2.0f, this.mValidHeight / 2.0f);
        }
        Paint paint = this.textPaint;
        int i11 = this.mCurrentState;
        int i12 = -1;
        if (i11 != 0 && i11 != 1 && ((i11 == 2 || i11 == 3 || i11 == 5) && this.mBgStyle != 2 && !x.f658a.a())) {
            i12 = ViewCompat.MEASURED_STATE_MASK;
        }
        paint.setColor(i12);
        Paint paint2 = this.textPaint;
        Context context = getContext();
        Intrinsics.g(context, "getContext(...)");
        paint2.setTypeface(jg.a.a(context));
        if (TextUtils.isEmpty(text)) {
            text = getPercent();
        }
        float f11 = 2;
        canvas.drawText(text, (this.mValidWidth / 2) - (this.textPaint.measureText(text) / f11), (this.mValidHeight / 2) - ((this.textPaint.descent() + this.textPaint.ascent()) / f11), this.textPaint);
    }

    private final void l(Canvas canvas, int... colors) {
        this.mPaintBg.setStyle(Paint.Style.FILL);
        float f11 = this.mBorderWidth;
        RectF rectF = new RectF(f11, f11, this.mValidWidth - f11, this.mValidHeight - f11);
        this.mPaintBg.setShader(new LinearGradient(0.0f, 0.0f, rectF.right, rectF.bottom, colors, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
        float f12 = this.mBorderRadius;
        canvas.drawRoundRect(rectF, f12, f12, this.mPaintBg);
    }

    private final void m(Canvas canvas) {
        int i11 = this.mBgStyle;
        if (i11 == 1) {
            int i12 = this.mInstallColor;
            l(canvas, i12, i12, i12);
        } else if (i11 == 2) {
            l(canvas, o(R$color.brand_gradient_start_60), o(R$color.brand_gradient_center_60), o(R$color.brand_gradient_end_60));
        }
        j(canvas);
        String string = getContext().getString(com.transsion.baseui.R$string.retry_text);
        Intrinsics.g(string, "getString(...)");
        k(canvas, string);
    }

    private final void n(Canvas canvas) {
        l(canvas, o(R$color.brand_gradient_start), o(R$color.brand_gradient_center), o(R$color.brand_gradient_end));
        String string = getContext().getResources().getString(R$string.ps_link_waiting);
        Intrinsics.g(string, "getString(...)");
        k(canvas, string);
    }

    private final int o(int res) {
        return getContext().getColor(res);
    }

    private final LinearGradient p(RectF mRectF) {
        return new LinearGradient(0.0f, 0.0f, mRectF.right, mRectF.bottom, new int[]{o(R$color.brand_gradient_start), o(R$color.brand_gradient_center), o(R$color.brand_gradient_end)}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP);
    }

    private final void q() {
        PsLinkServiceHelper.f43824a.m(this.downloadCallback);
    }

    private final void setInnerProgress(PalmStoreDownLoadTaskInfo palmStoreDownLoadTaskInfo) {
        int progress = palmStoreDownLoadTaskInfo != null ? (int) palmStoreDownLoadTaskInfo.getProgress() : 0;
        if (progress > 100) {
            progress = 100;
        }
        setProgress(progress);
    }

    private final void setState(int state) {
        this.mCurrentState = state;
        postInvalidate();
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        a();
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        q();
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected void onDraw(Canvas canvas) {
        Intrinsics.h(canvas, "canvas");
        if (qi.b.f73634a.m()) {
            canvas.rotate(180.0f, this.mValidWidth / 2.0f, this.mValidHeight / 2.0f);
        }
        int i11 = this.mCurrentState;
        if (i11 == 0) {
            d(canvas);
            return;
        }
        if (i11 == 1) {
            n(canvas);
            return;
        }
        if (i11 == 2) {
            e(canvas);
            return;
        }
        if (i11 == 3) {
            i(canvas);
            return;
        }
        if (i11 == 4) {
            h(canvas);
        } else if (i11 == 5) {
            f(canvas);
        } else {
            if (i11 != 12) {
                return;
            }
            m(canvas);
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        int size = View.MeasureSpec.getSize(widthMeasureSpec);
        int size2 = View.MeasureSpec.getSize(heightMeasureSpec);
        float f11 = 2;
        int iMeasureText = (int) (this.textPaint.measureText("下载") + (this.mBorderWidth * f11));
        int iDescent = (int) (this.textPaint.descent() + Math.abs(this.textPaint.ascent()) + (this.mBorderWidth * f11));
        if (getLayoutParams().width == -2 && getLayoutParams().height == -2) {
            setMeasuredDimension(iMeasureText, iDescent);
        } else if (getLayoutParams().width == -2) {
            setMeasuredDimension(iMeasureText, size2);
        } else if (getLayoutParams().height == -2) {
            setMeasuredDimension(size, iDescent);
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected void onSizeChanged(int w11, int h11, int oldw, int oldh) {
        super.onSizeChanged(w11, h11, oldw, oldh);
        this.mValidWidth = (getWidth() - getPaddingLeft()) - getPaddingRight();
        this.mValidHeight = (getHeight() - getPaddingTop()) - getPaddingBottom();
    }

    public final void setItemInfo(RecommendInfo itemInfo) {
        PalmStoreDownLoadTaskInfo palmStoreDownLoadTaskInfo;
        String packageName;
        Intrinsics.h(itemInfo, "itemInfo");
        this.mItemInfo = itemInfo;
        if ((itemInfo != null ? itemInfo.getPalmStoreDownLoadTaskInfo() : null) == null) {
            qi.b bVar = qi.b.f73634a;
            RecommendInfo recommendInfo = this.mItemInfo;
            if (recommendInfo == null || (packageName = recommendInfo.getPackageName()) == null) {
                packageName = "";
            }
            if (bVar.c(packageName)) {
                setState(5);
                return;
            } else {
                setState(0);
                return;
            }
        }
        RecommendInfo recommendInfo2 = this.mItemInfo;
        Integer numValueOf = (recommendInfo2 == null || (palmStoreDownLoadTaskInfo = recommendInfo2.getPalmStoreDownLoadTaskInfo()) == null) ? null : Integer.valueOf(palmStoreDownLoadTaskInfo.getStatus());
        if (numValueOf != null && numValueOf.intValue() == 1) {
            setState(1);
            return;
        }
        if (numValueOf != null && numValueOf.intValue() == 11) {
            setState(4);
            return;
        }
        if (numValueOf != null && numValueOf.intValue() == 3) {
            RecommendInfo recommendInfo3 = this.mItemInfo;
            setInnerProgress(recommendInfo3 != null ? recommendInfo3.getPalmStoreDownLoadTaskInfo() : null);
            setState(3);
        } else if (numValueOf != null && numValueOf.intValue() == 2) {
            RecommendInfo recommendInfo4 = this.mItemInfo;
            setInnerProgress(recommendInfo4 != null ? recommendInfo4.getPalmStoreDownLoadTaskInfo() : null);
            setState(2);
        } else if (numValueOf != null && numValueOf.intValue() == 12) {
            setState(12);
        }
    }
}
