package com.transsion.moviedetail.view;

import android.content.Context;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import cn.a0;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.moviedetail.R$layout;
import com.transsion.moviedetailapi.bean.Subject;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tB\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\nB\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\b\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000f\u0010\u000eJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\f2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0015\u001a\u00020\f2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0015\u0010\u0018R\u0016\u0010\u001c\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0018\u0010 \u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0018\u0010#\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0014\u0010&\u001a\u00020\u00068\u0002X\u0082D¢\u0006\u0006\n\u0004\b$\u0010%¨\u0006'"}, d2 = {"Lcom/transsion/moviedetail/view/InfoExtendView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "(Landroid/content/Context;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "j", "()V", "m", "", "getNewTextByConfig", "()Ljava/lang/String;", "Lcom/transsion/moviedetailapi/bean/Subject;", "subject", "showData", "(Lcom/transsion/moviedetailapi/bean/Subject;)V", CampaignEx.JSON_KEY_DESC, "(Ljava/lang/String;)V", "", "a", "Z", "isExtend", "Lcn/a0;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcn/a0;", "mViewBinding", "c", "Ljava/lang/String;", TrackingKey.DESCRIPTION, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "I", "mMaxLinesOnShrink", "MovieDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class InfoExtendView extends ConstraintLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private boolean isExtend;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private a0 mViewBinding;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private String description;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final int mMaxLinesOnShrink;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public InfoExtendView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public InfoExtendView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InfoExtendView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        j();
        this.isExtend = true;
        this.mMaxLinesOnShrink = 3;
    }

    private final String getNewTextByConfig() {
        AppCompatTextView appCompatTextView;
        String str = this.description;
        if (str == null) {
            str = "";
        }
        a0 a0Var = this.mViewBinding;
        if (a0Var == null || (appCompatTextView = a0Var.f17298e) == null) {
            return str;
        }
        TextPaint paint = appCompatTextView.getPaint();
        Intrinsics.g(paint, "getPaint(...)");
        StaticLayout staticLayoutBuild = Build.VERSION.SDK_INT > 23 ? StaticLayout.Builder.obtain(str, 0, str.length(), paint, appCompatTextView.getWidth()).build() : new StaticLayout(str, paint, appCompatTextView.getWidth(), Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
        Intrinsics.e(staticLayoutBuild);
        int lineCount = staticLayoutBuild.getLineCount();
        int i11 = this.mMaxLinesOnShrink;
        if (lineCount <= i11) {
            return str;
        }
        return ((Object) str.subSequence(0, staticLayoutBuild.getLineEnd(i11 - 1) - 3)) + "...";
    }

    private final void j() {
        this.mViewBinding = a0.a(View.inflate(getContext(), R$layout.view_info_extend_layout, this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(InfoExtendView infoExtendView) {
        infoExtendView.m();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(InfoExtendView infoExtendView) {
        infoExtendView.m();
    }

    private final void m() {
        AppCompatTextView appCompatTextView;
        a0 a0Var = this.mViewBinding;
        if (a0Var == null || (appCompatTextView = a0Var.f17298e) == null) {
            return;
        }
        appCompatTextView.setText(this.description);
    }

    public final void showData(Subject subject) {
        String description;
        ConstraintLayout root;
        if (subject == null || (description = subject.getDescription()) == null) {
            description = "";
        }
        this.description = description;
        a0 a0Var = this.mViewBinding;
        if (a0Var == null || (root = a0Var.getRoot()) == null) {
            return;
        }
        root.post(new Runnable() { // from class: com.transsion.moviedetail.view.n
            @Override // java.lang.Runnable
            public final void run() {
                InfoExtendView.k(this.f47410a);
            }
        });
    }

    public final void showData(String desc) {
        ConstraintLayout root;
        if (desc == null) {
            desc = "";
        }
        this.description = desc;
        a0 a0Var = this.mViewBinding;
        if (a0Var == null || (root = a0Var.getRoot()) == null) {
            return;
        }
        root.post(new Runnable() { // from class: com.transsion.moviedetail.view.o
            @Override // java.lang.Runnable
            public final void run() {
                InfoExtendView.l(this.f47411a);
            }
        });
    }
}
