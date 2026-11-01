package com.transsnet.downloader.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tn.lib.widget.R$mipmap;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsnet.downloader.R$layout;
import com.transsnet.downloader.R$string;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import py.e1;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tB\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\nB\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\b\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000f\u0010\u000eJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0013\u0010\u000eJ\u000f\u0010\u0014\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0014\u0010\u000eJ\u000f\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u001a\u001a\u00020\f2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001a\u001a\u00020\f2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0015¢\u0006\u0004\b\u001a\u0010\u001dR\u0016\u0010 \u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0018\u0010$\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u0018\u0010'\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u0014\u0010*\u001a\u00020\u00068\u0002X\u0082D¢\u0006\u0006\n\u0004\b(\u0010)¨\u0006+"}, d2 = {"Lcom/transsnet/downloader/widget/DownloadInfoExtendView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "(Landroid/content/Context;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "m", "()V", CampaignEx.JSON_KEY_AD_R, "", "l", "()Z", "o", CampaignEx.JSON_KEY_AD_K, "", "getNewTextByConfig", "()Ljava/lang/String;", "Lcom/transsion/moviedetailapi/bean/Subject;", "bean", "showData", "(Lcom/transsion/moviedetailapi/bean/Subject;)V", CampaignEx.JSON_KEY_DESC, "(Ljava/lang/String;)V", "a", "Z", "isExtend", "Lpy/e1;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lpy/e1;", "mViewBinding", "c", "Ljava/lang/String;", TrackingKey.DESCRIPTION, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "I", "mMaxLinesOnShrink", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class DownloadInfoExtendView extends ConstraintLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private boolean isExtend;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private e1 mViewBinding;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private String description;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final int mMaxLinesOnShrink;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DownloadInfoExtendView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DownloadInfoExtendView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadInfoExtendView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        m();
        this.isExtend = true;
        this.mMaxLinesOnShrink = 3;
    }

    private final String getNewTextByConfig() {
        AppCompatTextView appCompatTextView;
        AppCompatTextView appCompatTextView2;
        e1 e1Var;
        AppCompatTextView appCompatTextView3;
        String str = this.description;
        if (str == null) {
            str = "";
        }
        e1 e1Var2 = this.mViewBinding;
        if (e1Var2 == null || (appCompatTextView = e1Var2.f72679c) == null) {
            return str;
        }
        TextPaint paint = appCompatTextView.getPaint();
        Intrinsics.g(paint, "getPaint(...)");
        StaticLayout staticLayoutBuild = Build.VERSION.SDK_INT > 23 ? StaticLayout.Builder.obtain(str, 0, str.length(), paint, appCompatTextView.getWidth()).build() : new StaticLayout(str, paint, appCompatTextView.getWidth(), Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
        Intrinsics.e(staticLayoutBuild);
        if (staticLayoutBuild.getLineCount() <= this.mMaxLinesOnShrink) {
            if (l() || (e1Var = this.mViewBinding) == null || (appCompatTextView3 = e1Var.f72678b) == null) {
                return str;
            }
            appCompatTextView3.setVisibility(8);
            return str;
        }
        e1 e1Var3 = this.mViewBinding;
        if (e1Var3 != null && (appCompatTextView2 = e1Var3.f72678b) != null) {
            appCompatTextView2.setVisibility(appCompatTextView.getVisibility());
        }
        return ((Object) str.subSequence(0, staticLayoutBuild.getLineEnd(this.mMaxLinesOnShrink - 1) - 3)) + "...";
    }

    private final void k() {
        AppCompatTextView appCompatTextView;
        AppCompatTextView appCompatTextView2;
        this.isExtend = true;
        e1 e1Var = this.mViewBinding;
        if (e1Var != null && (appCompatTextView2 = e1Var.f72678b) != null) {
            appCompatTextView2.setText(appCompatTextView2.getContext().getString(R$string.str_hide));
            Drawable drawable = appCompatTextView2.getContext().getDrawable(R$mipmap.libui_ic_up_hide);
            if (drawable != null) {
                drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
            }
            appCompatTextView2.setCompoundDrawables(null, null, drawable, null);
        }
        e1 e1Var2 = this.mViewBinding;
        if (e1Var2 == null || (appCompatTextView = e1Var2.f72679c) == null) {
            return;
        }
        appCompatTextView.setText(this.description);
    }

    private final boolean l() {
        return false;
    }

    private final void m() {
        AppCompatTextView appCompatTextView;
        e1 e1VarA = e1.a(View.inflate(getContext(), R$layout.view_download_info_extend_layout, this));
        this.mViewBinding = e1VarA;
        if (e1VarA == null || (appCompatTextView = e1VarA.f72678b) == null) {
            return;
        }
        appCompatTextView.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.widget.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DownloadInfoExtendView.n(this.f60203a, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(DownloadInfoExtendView downloadInfoExtendView, View view) {
        if (downloadInfoExtendView.isExtend) {
            downloadInfoExtendView.o();
        } else {
            downloadInfoExtendView.k();
        }
    }

    private final void o() {
        AppCompatTextView appCompatTextView;
        AppCompatTextView appCompatTextView2;
        this.isExtend = false;
        e1 e1Var = this.mViewBinding;
        if (e1Var != null && (appCompatTextView2 = e1Var.f72678b) != null) {
            appCompatTextView2.setText(appCompatTextView2.getContext().getString(R$string.str_more));
            Drawable drawable = appCompatTextView2.getContext().getDrawable(R$mipmap.libui_ic_down_more);
            if (drawable != null) {
                drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
            }
            appCompatTextView2.setCompoundDrawables(null, null, drawable, null);
        }
        e1 e1Var2 = this.mViewBinding;
        if (e1Var2 == null || (appCompatTextView = e1Var2.f72679c) == null) {
            return;
        }
        appCompatTextView.setText(getNewTextByConfig());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(DownloadInfoExtendView downloadInfoExtendView) {
        downloadInfoExtendView.r();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(DownloadInfoExtendView downloadInfoExtendView) {
        downloadInfoExtendView.r();
    }

    private final void r() {
        o();
    }

    public final void showData(Subject bean) {
        String description;
        ConstraintLayout root;
        if (bean == null || (description = bean.getDescription()) == null) {
            description = "";
        }
        this.description = description;
        e1 e1Var = this.mViewBinding;
        if (e1Var == null || (root = e1Var.getRoot()) == null) {
            return;
        }
        root.post(new Runnable() { // from class: com.transsnet.downloader.widget.h
            @Override // java.lang.Runnable
            public final void run() {
                DownloadInfoExtendView.p(this.f60206a);
            }
        });
    }

    public final void showData(String desc) {
        ConstraintLayout root;
        if (desc == null) {
            desc = "";
        }
        this.description = desc;
        e1 e1Var = this.mViewBinding;
        if (e1Var == null || (root = e1Var.getRoot()) == null) {
            return;
        }
        root.post(new Runnable() { // from class: com.transsnet.downloader.widget.i
            @Override // java.lang.Runnable
            public final void run() {
                DownloadInfoExtendView.q(this.f60208a);
            }
        });
    }
}
