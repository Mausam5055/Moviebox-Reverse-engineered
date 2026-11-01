package com.transsnet.downloader.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$styleable;
import com.tn.lib.widget.TnTextView;
import com.transsion.baseui.R$mipmap;
import com.transsion.baseui.R$string;
import com.transsnet.downloader.DownloadManagerApi;
import com.transsnet.downloader.R$layout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\u0007\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u001f\u0018\u0000 K2\u00020\u0001:\u0001\rB\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0004\u0010\bB#\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\u000bJ\u0019\u0010\r\u001a\u00020\f2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0015\u0010\u0013\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014JE\u0010\u001b\u001a\u00020\f2\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00172\b\b\u0002\u0010\u0019\u001a\u00020\u00172\b\b\u0002\u0010\u001a\u001a\u00020\t¢\u0006\u0004\b\u001b\u0010\u001cJ\r\u0010\u001d\u001a\u00020\f¢\u0006\u0004\b\u001d\u0010\u0010J\r\u0010\u001e\u001a\u00020\f¢\u0006\u0004\b\u001e\u0010\u0010J\r\u0010\u001f\u001a\u00020\f¢\u0006\u0004\b\u001f\u0010\u0010J1\u0010$\u001a\u00020\f2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010!2\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b$\u0010%J\u0015\u0010'\u001a\u00020\f2\u0006\u0010&\u001a\u00020\t¢\u0006\u0004\b'\u0010(J\u0017\u0010)\u001a\u00020\f2\b\u0010&\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b)\u0010*J\r\u0010+\u001a\u00020\t¢\u0006\u0004\b+\u0010,R$\u00103\u001a\u0004\u0018\u00010-8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010.\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\u0016\u00105\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u00104R\u0016\u00108\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107R\u0016\u0010:\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u00107R\u0016\u0010<\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u00107R\u0016\u0010>\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u00107R\u0016\u0010@\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u00107R\u0018\u0010C\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010BR\u0016\u0010F\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bD\u0010ER\"\u0010J\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bG\u00107\u001a\u0004\bH\u0010,\"\u0004\bI\u0010(¨\u0006L"}, d2 = {"Lcom/transsnet/downloader/widget/DownloadView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "res", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "a", "(Landroid/util/AttributeSet;)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "()V", "", "pageName", "setPageFrom", "(Ljava/lang/String;)V", "subjectId", "resourceId", "", "isSeries", "mutiRatio", "downloadTextResId", "setShowType", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ZI)V", "setShowPlayType", "setAddCourse", "setCourseAdded", "tipTextColor", "", "tipsTextSize", "iconSrc", "setAttrs", "(Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;)V", "id", "setDownloadIconSrc", "(I)V", "setIcTintColor", "(Ljava/lang/Integer;)V", "getShowType", "()I", "Lpy/q;", "Lpy/q;", "getMViewBinding", "()Lpy/q;", "setMViewBinding", "(Lpy/q;)V", "mViewBinding", "F", "textSize", "c", "I", "downloadIconSrc", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "playIconSrc", "e", "textVisibility", "f", "textStyle", "g", "textColor", "h", "Ljava/lang/Integer;", "icTintColor", "i", "Ljava/lang/String;", "pageFrom", "j", "getType", "setType", NativeComponentConstants.KEY_COMPONENT_TYPE, "Companion", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class DownloadView extends FrameLayout {
    public static final int ADD_COURSE = 2;
    public static final int COURSE_ADDED = 3;
    public static final int DOWNLOAD = 0;
    public static final int PLAY = 1;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private py.q mViewBinding;

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
    public DownloadView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DownloadView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        this.textSize = com.blankj.utilcode.util.a0.a(12.0f);
        this.downloadIconSrc = R$mipmap.ic_download_red;
        this.playIconSrc = com.tn.lib.widget.R$mipmap.icon_play_white;
        this.textStyle = 1;
        this.textColor = -1;
        this.pageFrom = "";
        a(attributeSet);
        b();
    }

    private final void a(AttributeSet attrs) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attrs, R$styleable.download_view);
        Intrinsics.g(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
        try {
            try {
                this.textSize = typedArrayObtainStyledAttributes.getDimension(R$styleable.download_view_tips_textSize, this.textSize);
                this.downloadIconSrc = typedArrayObtainStyledAttributes.getResourceId(R$styleable.download_view_iconSrc, this.downloadIconSrc);
                this.playIconSrc = typedArrayObtainStyledAttributes.getResourceId(R$styleable.download_view_playIconSrc, this.playIconSrc);
                this.textStyle = typedArrayObtainStyledAttributes.getInteger(R$styleable.download_view_tips_textStyle, 1);
                this.textColor = typedArrayObtainStyledAttributes.getColor(R$styleable.download_view_tips_textColor, androidx.core.content.b.getColor(getContext(), R$color.white));
                if (typedArrayObtainStyledAttributes.hasValue(R$styleable.download_view_tips_textColor)) {
                    this.icTintColor = Integer.valueOf(typedArrayObtainStyledAttributes.getColor(R$styleable.download_view_tips_textColor, androidx.core.content.b.getColor(getContext(), R$color.white)));
                }
                this.textVisibility = typedArrayObtainStyledAttributes.getColor(R$styleable.download_view_tips_textVisibility, 0);
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
        py.q qVar;
        AppCompatImageView appCompatImageView;
        AppCompatImageView appCompatImageView2;
        View.inflate(getContext(), R$layout.download_view_type_list, this);
        py.q qVarA = py.q.a(this);
        this.mViewBinding = qVarA;
        if (qVarA != null && (appCompatImageView2 = qVarA.f72885b) != null) {
            appCompatImageView2.setImageResource(this.downloadIconSrc);
        }
        Integer num = this.icTintColor;
        if (num != null && (qVar = this.mViewBinding) != null && (appCompatImageView = qVar.f72885b) != null) {
            Intrinsics.e(num);
            appCompatImageView.setImageTintList(ColorStateList.valueOf(num.intValue()));
        }
        py.q qVar2 = this.mViewBinding;
        if (qVar2 != null && (tnTextView4 = qVar2.f72887d) != null) {
            tnTextView4.setTextSize(0, this.textSize);
        }
        py.q qVar3 = this.mViewBinding;
        if (qVar3 != null && (tnTextView3 = qVar3.f72887d) != null) {
            tnTextView3.setTextColor(this.textColor);
        }
        py.q qVar4 = this.mViewBinding;
        if (qVar4 != null && (tnTextView2 = qVar4.f72887d) != null) {
            tnTextView2.setVisibility(this.textVisibility);
        }
        py.q qVar5 = this.mViewBinding;
        if (qVar5 == null || (tnTextView = qVar5.f72887d) == null) {
            return;
        }
        int i11 = this.textStyle;
        if (i11 == 0) {
            Context context = getContext();
            Intrinsics.g(context, "getContext(...)");
            typefaceD = jg.a.d(context);
        } else if (i11 == 1) {
            Context context2 = getContext();
            Intrinsics.g(context2, "getContext(...)");
            typefaceD = jg.a.c(context2);
        } else if (i11 == 2) {
            Context context3 = getContext();
            Intrinsics.g(context3, "getContext(...)");
            typefaceD = jg.a.a(context3);
        } else if (i11 != 3) {
            Context context4 = getContext();
            Intrinsics.g(context4, "getContext(...)");
            typefaceD = jg.a.c(context4);
        } else {
            Context context5 = getContext();
            Intrinsics.g(context5, "getContext(...)");
            typefaceD = jg.a.b(context5);
        }
        tnTextView.setTypeface(typefaceD);
    }

    public static /* synthetic */ void setAttrs$default(DownloadView downloadView, Integer num, Float f11, Integer num2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            num = null;
        }
        if ((i11 & 2) != 0) {
            f11 = null;
        }
        if ((i11 & 4) != 0) {
            num2 = null;
        }
        downloadView.setAttrs(num, f11, num2);
    }

    public static /* synthetic */ void setShowType$default(DownloadView downloadView, String str, String str2, Boolean bool, boolean z10, int i11, int i12, Object obj) {
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
            i11 = R$string.download_movie;
        }
        downloadView.setShowType(str, str2, bool, z10, i11);
    }

    public final py.q getMViewBinding() {
        return this.mViewBinding;
    }

    /* JADX INFO: renamed from: getShowType, reason: from getter */
    public final int getType() {
        return this.type;
    }

    public final int getType() {
        return this.type;
    }

    public final void setAddCourse() {
        TnTextView tnTextView;
        AppCompatImageView appCompatImageView;
        this.type = 2;
        py.q qVar = this.mViewBinding;
        if (qVar != null && (appCompatImageView = qVar.f72885b) != null) {
            appCompatImageView.setImageResource(R$mipmap.ic_add);
        }
        py.q qVar2 = this.mViewBinding;
        if (qVar2 == null || (tnTextView = qVar2.f72887d) == null) {
            return;
        }
        tnTextView.setTextById(R$string.education_add_course);
    }

    public final void setAttrs(Integer tipTextColor, Float tipsTextSize, Integer iconSrc) {
        py.q qVar;
        TnTextView tnTextView;
        TnTextView tnTextView2;
        AppCompatImageView appCompatImageView;
        if (iconSrc != null) {
            int iIntValue = iconSrc.intValue();
            py.q qVar2 = this.mViewBinding;
            if (qVar2 != null && (appCompatImageView = qVar2.f72885b) != null) {
                appCompatImageView.setImageResource(iIntValue);
            }
        }
        if (tipsTextSize != null) {
            float fFloatValue = tipsTextSize.floatValue();
            py.q qVar3 = this.mViewBinding;
            if (qVar3 != null && (tnTextView2 = qVar3.f72887d) != null) {
                tnTextView2.setTextSize(0, fFloatValue);
            }
        }
        if (tipTextColor == null || (qVar = this.mViewBinding) == null || (tnTextView = qVar.f72887d) == null) {
            return;
        }
        tnTextView.setTextColor(tipTextColor.intValue());
    }

    public final void setCourseAdded() {
        TnTextView tnTextView;
        AppCompatImageView appCompatImageView;
        this.type = 3;
        py.q qVar = this.mViewBinding;
        if (qVar != null && (appCompatImageView = qVar.f72885b) != null) {
            appCompatImageView.setImageResource(R$mipmap.ic_added);
        }
        py.q qVar2 = this.mViewBinding;
        if (qVar2 == null || (tnTextView = qVar2.f72887d) == null) {
            return;
        }
        tnTextView.setTextById(R$string.education_added);
    }

    public final void setDownloadIconSrc(int id2) {
        this.downloadIconSrc = id2;
        postInvalidate();
    }

    public final void setIcTintColor(Integer id2) {
        this.icTintColor = id2;
        postInvalidate();
    }

    public final void setMViewBinding(py.q qVar) {
        this.mViewBinding = qVar;
    }

    public final void setPageFrom(String pageName) {
        Intrinsics.h(pageName, "pageName");
        this.pageFrom = pageName;
    }

    public final void setShowPlayType() {
        py.q qVar;
        AppCompatImageView appCompatImageView;
        AppCompatImageView appCompatImageView2;
        TnTextView tnTextView;
        AppCompatImageView appCompatImageView3;
        this.type = 1;
        py.q qVar2 = this.mViewBinding;
        if (qVar2 != null && (appCompatImageView3 = qVar2.f72885b) != null) {
            appCompatImageView3.setImageResource(this.playIconSrc);
        }
        py.q qVar3 = this.mViewBinding;
        if (qVar3 != null && (tnTextView = qVar3.f72887d) != null) {
            tnTextView.setTextById(R$string.play);
        }
        py.q qVar4 = this.mViewBinding;
        Drawable drawable = (qVar4 == null || (appCompatImageView2 = qVar4.f72885b) == null) ? null : appCompatImageView2.getDrawable();
        if (drawable == null || (qVar = this.mViewBinding) == null || (appCompatImageView = qVar.f72885b) == null) {
            return;
        }
        appCompatImageView.setImageDrawable(drawable);
    }

    public final void setShowType(String subjectId, String resourceId, Boolean isSeries, boolean mutiRatio, int downloadTextResId) {
        py.q qVar;
        AppCompatImageView appCompatImageView;
        AppCompatImageView appCompatImageView2;
        TnTextView tnTextView;
        AppCompatImageView appCompatImageView3;
        TnTextView tnTextView2;
        AppCompatImageView appCompatImageView4;
        boolean zW0 = DownloadManagerApi.f58398j.a().w0(subjectId, resourceId, isSeries != null ? isSeries.booleanValue() : false, mutiRatio);
        this.type = zW0 ? 1 : 0;
        if (!zW0) {
            py.q qVar2 = this.mViewBinding;
            if (qVar2 != null && (appCompatImageView4 = qVar2.f72885b) != null) {
                appCompatImageView4.setImageResource(this.downloadIconSrc);
            }
            py.q qVar3 = this.mViewBinding;
            if (qVar3 == null || (tnTextView2 = qVar3.f72887d) == null) {
                return;
            }
            tnTextView2.setTextById(downloadTextResId);
            return;
        }
        py.q qVar4 = this.mViewBinding;
        if (qVar4 != null && (appCompatImageView3 = qVar4.f72885b) != null) {
            appCompatImageView3.setImageResource(this.playIconSrc);
        }
        py.q qVar5 = this.mViewBinding;
        if (qVar5 != null && (tnTextView = qVar5.f72887d) != null) {
            tnTextView.setTextById(R$string.play);
        }
        py.q qVar6 = this.mViewBinding;
        Drawable drawable = (qVar6 == null || (appCompatImageView2 = qVar6.f72885b) == null) ? null : appCompatImageView2.getDrawable();
        if (drawable == null || (qVar = this.mViewBinding) == null || (appCompatImageView = qVar.f72885b) == null) {
            return;
        }
        appCompatImageView.setImageDrawable(drawable);
    }

    public final void setType(int i11) {
        this.type = i11;
    }
}
