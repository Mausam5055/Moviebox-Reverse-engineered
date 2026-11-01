package com.transsion.postdetail.util;

import android.content.Context;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.app.NotificationCompat;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\bH\u0014¢\u0006\u0004\b\u000b\u0010\fR\"\u0010\u0014\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u0019"}, d2 = {"com/transsion/postdetail/util/PlayScaleModeToast$ToastTextView", "Landroidx/appcompat/widget/AppCompatTextView;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "", NotificationCompat.CATEGORY_MESSAGE, "", "toast", "(Ljava/lang/String;)V", "onDetachedFromWindow", "()V", "", "a", "J", "getDelayTime", "()J", "setDelayTime", "(J)V", "delayTime", "Ljava/lang/Runnable;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/Runnable;", "cancelRunnable", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class PlayScaleModeToast$ToastTextView extends AppCompatTextView {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private long delayTime;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final Runnable cancelRunnable;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PlayScaleModeToast$ToastTextView(Context context) {
        super(context);
        Intrinsics.h(context, "context");
        this.delayTime = 1000L;
        this.cancelRunnable = new Runnable() { // from class: com.transsion.postdetail.util.f
            @Override // java.lang.Runnable
            public final void run() {
                PlayScaleModeToast$ToastTextView.c(this.f50164a);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(PlayScaleModeToast$ToastTextView playScaleModeToast$ToastTextView) {
        playScaleModeToast$ToastTextView.setVisibility(0);
        ViewParent parent = playScaleModeToast$ToastTextView.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(playScaleModeToast$ToastTextView);
        }
    }

    public final long getDelayTime() {
        return this.delayTime;
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.cancelRunnable);
    }

    public final void setDelayTime(long j11) {
        this.delayTime = j11;
    }

    public final void toast(String msg) {
        Intrinsics.h(msg, "msg");
        setText(msg);
        removeCallbacks(this.cancelRunnable);
        setVisibility(0);
        postDelayed(this.cancelRunnable, this.delayTime);
    }
}
