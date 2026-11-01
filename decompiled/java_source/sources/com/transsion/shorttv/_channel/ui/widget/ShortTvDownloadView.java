package com.transsion.shorttv._channel.ui.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.content.b;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.core.utils.e;
import com.transsion.shorttv.R$color;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv.R$mipmap;
import com.transsion.shorttv.R$string;
import com.transsion.shorttv.R$styleable;
import com.transsion.shorttv.base.widget.TnTextView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.u;
import tr.c;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b \u0018\u0000 E2\u00020\u0001:\u0001\rB\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0004\u0010\bB#\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\u000bJ\u0019\u0010\r\u001a\u00020\f2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0015\u0010\u0013\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014JE\u0010\u001b\u001a\u00020\f2\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00172\b\b\u0002\u0010\u0019\u001a\u00020\u00172\b\b\u0002\u0010\u001a\u001a\u00020\t¢\u0006\u0004\b\u001b\u0010\u001cJ\r\u0010\u001d\u001a\u00020\f¢\u0006\u0004\b\u001d\u0010\u0010J1\u0010\"\u001a\u00020\f2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u001f2\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\"\u0010#J\r\u0010$\u001a\u00020\t¢\u0006\u0004\b$\u0010%R$\u0010,\u001a\u0004\u0018\u00010&8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\u0016\u0010.\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010-R\u0016\u00101\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R\u0016\u00103\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00100R\u0016\u00105\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00100R\u0016\u00107\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00100R\u0016\u00109\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00100R\u0018\u0010<\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u0010;R\u0016\u0010?\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010>R\"\u0010D\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b@\u00100\u001a\u0004\bA\u0010%\"\u0004\bB\u0010C¨\u0006F"}, d2 = {"Lcom/transsion/shorttv/_channel/ui/widget/ShortTvDownloadView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "res", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "a", "(Landroid/util/AttributeSet;)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "()V", "", "pageName", "setPageFrom", "(Ljava/lang/String;)V", "subjectId", "resourceId", "", "isSeries", "mutiRatio", "downloadTextResId", "setShowType", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ZI)V", "setShowPlayType", "tipTextColor", "", "tipsTextSize", "iconSrc", "setAttrs", "(Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;)V", "getShowType", "()I", "Lms/u;", "Lms/u;", "getMViewBinding", "()Lms/u;", "setMViewBinding", "(Lms/u;)V", "mViewBinding", "F", "textSize", "c", "I", "downloadIconSrc", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "playIconSrc", "e", "textVisibility", "f", "textStyle", "g", "textColor", "h", "Ljava/lang/Integer;", "icTintColor", "i", "Ljava/lang/String;", "pageFrom", "j", "getType", "setType", "(I)V", NativeComponentConstants.KEY_COMPONENT_TYPE, "Companion", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ShortTvDownloadView extends FrameLayout {
    public static final int ADD_COURSE = 2;
    public static final int COURSE_ADDED = 3;
    public static final int DOWNLOAD = 0;
    public static final int PLAY = 1;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private u mViewBinding;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private float textSize;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private int downloadIconSrc;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private int playIconSrc;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private int textVisibility;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private int textStyle;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private int textColor;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private Integer icTintColor;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private String pageFrom;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private int type;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShortTvDownloadView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShortTvDownloadView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortTvDownloadView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        this.textSize = e.a(12.0f);
        this.downloadIconSrc = R$mipmap.short_tv_ic_download_red;
        this.playIconSrc = R$mipmap.short_tv_icon_play_white;
        this.textStyle = 1;
        this.textColor = -1;
        this.pageFrom = "";
        a(attributeSet);
        b();
    }

    private final void a(AttributeSet attrs) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attrs, R$styleable.short_tv_download_view);
        Intrinsics.g(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
        try {
            try {
                this.textSize = typedArrayObtainStyledAttributes.getDimension(R$styleable.short_tv_download_view_tips_textSize, this.textSize);
                this.downloadIconSrc = typedArrayObtainStyledAttributes.getResourceId(R$styleable.short_tv_download_view_iconSrc, this.downloadIconSrc);
                this.playIconSrc = typedArrayObtainStyledAttributes.getResourceId(R$styleable.short_tv_download_view_playIconSrc, this.playIconSrc);
                this.textStyle = typedArrayObtainStyledAttributes.getInteger(R$styleable.short_tv_download_view_short_tv_tips_textStyle, 1);
                this.textColor = typedArrayObtainStyledAttributes.getColor(R$styleable.short_tv_download_view_tips_textColor, b.getColor(getContext(), R$color.short_tv_white));
                if (typedArrayObtainStyledAttributes.hasValue(R$styleable.short_tv_download_view_tips_textColor)) {
                    this.icTintColor = Integer.valueOf(typedArrayObtainStyledAttributes.getColor(R$styleable.short_tv_download_view_tips_textColor, b.getColor(getContext(), R$color.short_tv_white)));
                }
                this.textVisibility = typedArrayObtainStyledAttributes.getColor(R$styleable.short_tv_download_view_tips_textVisibility, 0);
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private final void b() {
        TnTextView tnTextView;
        Typeface typefaceD;
        TnTextView tnTextView2;
        TnTextView tnTextView3;
        TnTextView tnTextView4;
        u uVar;
        AppCompatImageView appCompatImageView;
        AppCompatImageView appCompatImageView2;
        View.inflate(getContext(), R$layout.short_tv_download_view_type_list, this);
        u uVarA = u.a(this);
        this.mViewBinding = uVarA;
        if (uVarA != null && (appCompatImageView2 = uVarA.f69933b) != null) {
            appCompatImageView2.setImageResource(this.downloadIconSrc);
        }
        Integer num = this.icTintColor;
        if (num != null && (uVar = this.mViewBinding) != null && (appCompatImageView = uVar.f69933b) != null) {
            Intrinsics.e(num);
            appCompatImageView.setImageTintList(ColorStateList.valueOf(num.intValue()));
        }
        u uVar2 = this.mViewBinding;
        if (uVar2 != null && (tnTextView4 = uVar2.f69935d) != null) {
            tnTextView4.setTextSize(0, this.textSize);
        }
        u uVar3 = this.mViewBinding;
        if (uVar3 != null && (tnTextView3 = uVar3.f69935d) != null) {
            tnTextView3.setTextColor(this.textColor);
        }
        u uVar4 = this.mViewBinding;
        if (uVar4 != null && (tnTextView2 = uVar4.f69935d) != null) {
            tnTextView2.setVisibility(this.textVisibility);
        }
        u uVar5 = this.mViewBinding;
        if (uVar5 == null || (tnTextView = uVar5.f69935d) == null) {
            return;
        }
        int i11 = this.textStyle;
        if (i11 == 0) {
            Context context = getContext();
            Intrinsics.g(context, "getContext(...)");
            typefaceD = c.d(context);
        } else if (i11 == 1) {
            Context context2 = getContext();
            Intrinsics.g(context2, "getContext(...)");
            typefaceD = c.c(context2);
        } else if (i11 == 2) {
            Context context3 = getContext();
            Intrinsics.g(context3, "getContext(...)");
            typefaceD = c.a(context3);
        } else if (i11 != 3) {
            Context context4 = getContext();
            Intrinsics.g(context4, "getContext(...)");
            typefaceD = c.c(context4);
        } else {
            Context context5 = getContext();
            Intrinsics.g(context5, "getContext(...)");
            typefaceD = c.b(context5);
        }
        tnTextView.setTypeface(typefaceD);
    }

    public static /* synthetic */ void setAttrs$default(ShortTvDownloadView shortTvDownloadView, Integer num, Float f11, Integer num2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            num = null;
        }
        if ((i11 & 2) != 0) {
            f11 = null;
        }
        if ((i11 & 4) != 0) {
            num2 = null;
        }
        shortTvDownloadView.setAttrs(num, f11, num2);
    }

    public static /* synthetic */ void setShowType$default(ShortTvDownloadView shortTvDownloadView, String str, String str2, Boolean bool, boolean z10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            str = "";
        }
        if ((i12 & 2) != 0) {
            str2 = "";
        }
        if ((i12 & 4) != 0) {
            bool = Boolean.FALSE;
        }
        if ((i12 & 8) != 0) {
            z10 = false;
        }
        if ((i12 & 16) != 0) {
            i11 = R$string.short_tv_download;
        }
        shortTvDownloadView.setShowType(str, str2, bool, z10, i11);
    }

    public final u getMViewBinding() {
        return this.mViewBinding;
    }

    /* JADX INFO: renamed from: getShowType, reason: from getter */
    public final int getType() {
        return this.type;
    }

    public final int getType() {
        return this.type;
    }

    public final void setAttrs(Integer tipTextColor, Float tipsTextSize, Integer iconSrc) {
        u uVar;
        TnTextView tnTextView;
        TnTextView tnTextView2;
        AppCompatImageView appCompatImageView;
        if (iconSrc != null) {
            int iIntValue = iconSrc.intValue();
            u uVar2 = this.mViewBinding;
            if (uVar2 != null && (appCompatImageView = uVar2.f69933b) != null) {
                appCompatImageView.setImageResource(iIntValue);
            }
        }
        if (tipsTextSize != null) {
            float fFloatValue = tipsTextSize.floatValue();
            u uVar3 = this.mViewBinding;
            if (uVar3 != null && (tnTextView2 = uVar3.f69935d) != null) {
                tnTextView2.setTextSize(0, fFloatValue);
            }
        }
        if (tipTextColor == null || (uVar = this.mViewBinding) == null || (tnTextView = uVar.f69935d) == null) {
            return;
        }
        tnTextView.setTextColor(tipTextColor.intValue());
    }

    public final void setMViewBinding(u uVar) {
        this.mViewBinding = uVar;
    }

    public final void setPageFrom(String pageName) {
        Intrinsics.h(pageName, "pageName");
        this.pageFrom = pageName;
    }

    public final void setShowPlayType() {
        u uVar;
        AppCompatImageView appCompatImageView;
        AppCompatImageView appCompatImageView2;
        TnTextView tnTextView;
        AppCompatImageView appCompatImageView3;
        this.type = 1;
        u uVar2 = this.mViewBinding;
        if (uVar2 != null && (appCompatImageView3 = uVar2.f69933b) != null) {
            appCompatImageView3.setImageResource(this.playIconSrc);
        }
        u uVar3 = this.mViewBinding;
        if (uVar3 != null && (tnTextView = uVar3.f69935d) != null) {
            tnTextView.setTextById(R$string.short_tv_play);
        }
        u uVar4 = this.mViewBinding;
        Drawable drawable = (uVar4 == null || (appCompatImageView2 = uVar4.f69933b) == null) ? null : appCompatImageView2.getDrawable();
        if (drawable == null || (uVar = this.mViewBinding) == null || (appCompatImageView = uVar.f69933b) == null) {
            return;
        }
        appCompatImageView.setImageDrawable(drawable);
    }

    public final void setShowType(String subjectId, String resourceId, Boolean isSeries, boolean mutiRatio, int downloadTextResId) {
        TnTextView tnTextView;
        AppCompatImageView appCompatImageView;
        this.type = 0;
        u uVar = this.mViewBinding;
        if (uVar != null && (appCompatImageView = uVar.f69933b) != null) {
            appCompatImageView.setImageResource(this.downloadIconSrc);
        }
        u uVar2 = this.mViewBinding;
        if (uVar2 == null || (tnTextView = uVar2.f69935d) == null) {
            return;
        }
        tnTextView.setTextById(downloadTextResId);
    }

    public final void setType(int i11) {
        this.type = i11;
    }
}
