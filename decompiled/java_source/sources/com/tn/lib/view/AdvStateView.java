package com.tn.lib.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.widget.R$layout;
import com.tn.lib.widget.R$styleable;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u000b\u0018\u00002\u00020\u0001:\u0001\u001dB\u0019\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0019\u0010\t\u001a\u00020\b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0011\u0010\fJ\u000f\u0010\u0012\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0012\u0010\fJ\u000f\u0010\u0013\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0013\u0010\fJ\r\u0010\u0014\u001a\u00020\b¢\u0006\u0004\b\u0014\u0010\fJ\r\u0010\u0015\u001a\u00020\b¢\u0006\u0004\b\u0015\u0010\fJ\r\u0010\u0016\u001a\u00020\b¢\u0006\u0004\b\u0016\u0010\fJ\r\u0010\u0017\u001a\u00020\b¢\u0006\u0004\b\u0017\u0010\fJ\u0015\u0010\u001a\u001a\u00020\b2\u0006\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b\u001a\u0010\u001bR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0018\u0010!\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010\u001eR\u0018\u0010\"\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\u001eR\u0016\u0010%\u001a\u00020#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010$R\u0016\u0010&\u001a\u00020#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010$R\u0016\u0010(\u001a\u00020#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010$R$\u0010)\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010\u001b¨\u0006."}, d2 = {"Lcom/tn/lib/view/AdvStateView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "c", "(Landroid/util/AttributeSet;)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "()V", "", "isShow", "e", "(Z)V", "getProgressView", "getEmptyView", "getErrorView", "showData", "showEmpty", "showError", "showProgress", "Lcom/tn/lib/view/AdvStateView$a;", "listenr", "setOnStateClickListener", "(Lcom/tn/lib/view/AdvStateView$a;)V", "Landroid/view/View;", "a", "Landroid/view/View;", "mVewProgress", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "mViewEmpty", "mViewError", "", "I", "mErrorId", "mEmptyId", "f", "mProgressId", "onClickListener", "Lcom/tn/lib/view/AdvStateView$a;", "getOnClickListener", "()Lcom/tn/lib/view/AdvStateView$a;", "setOnClickListener", "UI_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class AdvStateView extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private View mVewProgress;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private View mViewEmpty;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private View mViewError;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private int mErrorId;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private int mEmptyId;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private int mProgressId;

    public interface a {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdvStateView(Context context, AttributeSet attrs) {
        super(context, attrs);
        Intrinsics.h(context, "context");
        Intrinsics.h(attrs, "attrs");
        this.mErrorId = -1;
        this.mEmptyId = -1;
        this.mProgressId = -1;
        c(attrs);
        d();
    }

    private final void c(AttributeSet attrs) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attrs, R$styleable.advstateview);
        Intrinsics.g(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
        try {
            try {
                this.mProgressId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.advstateview_layout_progress, R$layout.adv_layout_progress);
                this.mEmptyId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.advstateview_layout_empty, R$layout.adv_layout_empty);
                this.mErrorId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.advstateview_layout_error, R$layout.adv_layout_error);
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private final void d() {
    }

    private final void e(boolean isShow) {
        setVisibility(isShow ? 8 : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(AdvStateView advStateView, View view) {
        advStateView.getClass();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(AdvStateView advStateView, View view) {
        advStateView.getClass();
    }

    private final void getEmptyView() {
        setVisibility(0);
        if (this.mViewEmpty == null) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            layoutParams.gravity = 17;
            View viewInflate = LayoutInflater.from(getContext()).inflate(this.mEmptyId, (ViewGroup) null);
            this.mViewEmpty = viewInflate;
            addView(viewInflate, layoutParams);
        }
    }

    private final void getErrorView() {
        setVisibility(0);
        if (this.mViewError == null) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            layoutParams.gravity = 17;
            View viewInflate = LayoutInflater.from(getContext()).inflate(this.mErrorId, (ViewGroup) null);
            this.mViewError = viewInflate;
            addView(viewInflate, layoutParams);
        }
    }

    private final void getProgressView() {
        setVisibility(0);
        if (this.mVewProgress == null) {
            this.mVewProgress = LayoutInflater.from(getContext()).inflate(this.mProgressId, (ViewGroup) null);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            layoutParams.gravity = 17;
            addView(this.mVewProgress, layoutParams);
        }
    }

    public final a getOnClickListener() {
        return null;
    }

    public final void setOnClickListener(a aVar) {
    }

    public final void setOnStateClickListener(a listenr) {
        Intrinsics.h(listenr, "listenr");
    }

    public final void showData() {
        e(true);
    }

    public final void showEmpty() {
        getEmptyView();
        View view = this.mViewError;
        if (view != null) {
            view.setVisibility(4);
        }
        View view2 = this.mViewEmpty;
        if (view2 != null) {
            view2.setVisibility(0);
        }
        View view3 = this.mVewProgress;
        if (view3 != null) {
            view3.setVisibility(4);
        }
        setOnClickListener(new View.OnClickListener() { // from class: com.tn.lib.view.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view4) {
                AdvStateView.f(this.f41269a, view4);
            }
        });
    }

    public final void showError() {
        getErrorView();
        View view = this.mViewError;
        if (view != null) {
            view.setVisibility(0);
        }
        View view2 = this.mViewEmpty;
        if (view2 != null) {
            view2.setVisibility(4);
        }
        View view3 = this.mVewProgress;
        if (view3 != null) {
            view3.setVisibility(4);
        }
        setOnClickListener(new View.OnClickListener() { // from class: com.tn.lib.view.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view4) {
                AdvStateView.g(this.f41323a, view4);
            }
        });
    }

    public final void showProgress() {
        getProgressView();
        View view = this.mViewError;
        if (view != null) {
            view.setVisibility(4);
        }
        View view2 = this.mViewEmpty;
        if (view2 != null) {
            view2.setVisibility(4);
        }
        View view3 = this.mVewProgress;
        if (view3 != null) {
            view3.setVisibility(0);
        }
    }
}
