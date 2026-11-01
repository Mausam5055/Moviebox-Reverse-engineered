package com.transsion.publish.view;

import android.R;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.push.PushConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import lg.a;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\b\b\u0016\u0018\u0000 ?2\u00020\u00012\u00020\u0002:\u0001%B\u0011\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006B\u001b\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0005\u0010\tB%\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0001\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u0005\u0010\fJ\u0017\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0019\u0010\u0012\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002¢\u0006\u0004\b\u0012\u0010\u0011J\u0019\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0016\u0010\u0011J\u000f\u0010\u0017\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0017\u0010\u0018J!\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u001d\u0010\u0011J\u0017\u0010\u001e\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u001e\u0010\u0011J\u0017\u0010\u001f\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u001f\u0010\u0011J\u0017\u0010 \u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b \u0010\u0011J\u001f\u0010\"\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010!\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\"\u0010\u001cJ\u0017\u0010#\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b#\u0010\u0011R$\u0010+\u001a\u0004\u0018\u00010$8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\"\u0010/\u001a\u00020,8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b-\u0010.\u001a\u0004\b/\u00100\"\u0004\b1\u00102R$\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b3\u00104\u001a\u0004\b5\u00106\"\u0004\b7\u0010\u0011R\"\u0010\u0010\u001a\u0002088\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b9\u0010:\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>¨\u0006@"}, d2 = {"Lcom/transsion/publish/view/BaseFloatView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroid/app/Application$ActivityLifecycleCallbacks;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Landroid/app/Activity;", "activity", "", "h", "(Landroid/app/Activity;)V", "i", "Landroid/widget/FrameLayout;", "j", "(Landroid/app/Activity;)Landroid/widget/FrameLayout;", PushConstants.PUSH_SERVICE_TYPE_SHOW, "dismiss", "()V", "Landroid/os/Bundle;", "savedInstanceState", "onActivityCreated", "(Landroid/app/Activity;Landroid/os/Bundle;)V", "onActivityStarted", "onActivityResumed", "onActivityPaused", "onActivityStopped", "outState", "onActivitySaveInstanceState", "onActivityDestroyed", "Landroidx/constraintlayout/widget/ConstraintLayout$b;", "a", "Landroidx/constraintlayout/widget/ConstraintLayout$b;", "getLayoutParams", "()Landroidx/constraintlayout/widget/ConstraintLayout$b;", "setLayoutParams", "(Landroidx/constraintlayout/widget/ConstraintLayout$b;)V", "layoutParams", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Z", "isShow", "()Z", "setShow", "(Z)V", "c", "Landroid/app/Activity;", "getActivity", "()Landroid/app/Activity;", "setActivity", "Landroid/os/Handler;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroid/os/Handler;", "getH", "()Landroid/os/Handler;", "setH", "(Landroid/os/Handler;)V", "Companion", "Publish_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public class BaseFloatView extends ConstraintLayout implements Application.ActivityLifecycleCallbacks {
    public static final int MSG_AUTO_DISMISS_DOWNLOAD_STATUS_VIEW = 1;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private ConstraintLayout.b layoutParams;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private boolean isShow;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private Activity activity;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private Handler h;

    public static final class b extends Handler {
        b() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            Intrinsics.h(msg, "msg");
            super.handleMessage(msg);
            if (msg.what == 1) {
                BaseFloatView.this.dismiss();
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseFloatView(Context context) {
        super(context);
        Intrinsics.h(context, "context");
        this.h = new b();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseFloatView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.h(context, "context");
        this.h = new b();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseFloatView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        this.h = new b();
    }

    private final void h(Activity activity) {
        if (!this.isShow || TextUtils.equals(activity.getClass().getSimpleName(), "LaunchActivity") || Intrinsics.c(this.activity, activity)) {
            return;
        }
        this.activity = activity;
        FrameLayout frameLayoutJ = j(activity);
        if (frameLayoutJ != null) {
            if (getParent() instanceof ViewGroup) {
                ViewParent parent = getParent();
                Intrinsics.f(parent, "null cannot be cast to non-null type android.view.ViewGroup");
                ((ViewGroup) parent).removeView(this);
            }
            ConstraintLayout.b bVar = this.layoutParams;
            if (bVar == null) {
                frameLayoutJ.addView(this);
            } else {
                frameLayoutJ.addView(this, bVar);
            }
        }
    }

    private final void i(Activity activity) {
        if ((activity == null || Intrinsics.c(this.activity, activity)) && (getParent() instanceof ViewGroup)) {
            ViewParent parent = getParent();
            Intrinsics.f(parent, "null cannot be cast to non-null type android.view.ViewGroup");
            ((ViewGroup) parent).removeView(this);
        }
        this.activity = null;
    }

    private final FrameLayout j(Activity activity) {
        try {
            View viewFindViewById = activity.getWindow().getDecorView().findViewById(R.id.content);
            Intrinsics.f(viewFindViewById, "null cannot be cast to non-null type android.widget.FrameLayout");
            return (FrameLayout) viewFindViewById;
        } catch (Exception e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public void dismiss() {
        Application application;
        try {
            this.isShow = false;
            Activity activity = this.activity;
            if (activity != null && (application = activity.getApplication()) != null) {
                application.unregisterActivityLifecycleCallbacks(this);
            }
            i(null);
            this.h.removeCallbacksAndMessages(null);
        } catch (Exception e11) {
            a.C0828a.f(a.f68839a, UploadView.INSTANCE.a(), "dismiss:" + e11.getMessage(), false, 4, null);
        }
    }

    public final Activity getActivity() {
        return this.activity;
    }

    public final Handler getH() {
        return this.h;
    }

    @Override // android.view.View
    public final ConstraintLayout.b getLayoutParams() {
        return this.layoutParams;
    }

    /* JADX INFO: renamed from: isShow, reason: from getter */
    public final boolean getIsShow() {
        return this.isShow;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle savedInstanceState) {
        Intrinsics.h(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        Intrinsics.h(activity, "activity");
        if (Intrinsics.c(this.activity, activity)) {
            dismiss();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        Intrinsics.h(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        Intrinsics.h(activity, "activity");
        h(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle outState) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(outState, "outState");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        Intrinsics.h(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        Intrinsics.h(activity, "activity");
    }

    public final void setActivity(Activity activity) {
        this.activity = activity;
    }

    public final void setH(Handler handler) {
        Intrinsics.h(handler, "<set-?>");
        this.h = handler;
    }

    public final void setLayoutParams(ConstraintLayout.b bVar) {
        this.layoutParams = bVar;
    }

    public final void setShow(boolean z10) {
        this.isShow = z10;
    }

    public void show(Activity activity) {
        Intrinsics.h(activity, "activity");
        this.isShow = true;
        h(activity);
        activity.getApplication().registerActivityLifecycleCallbacks(this);
    }
}
