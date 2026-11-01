package com.transsnet.downloader.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.baseui.util.TimeUtilKt;
import com.transsnet.downloader.R$layout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 \u001b2\u00020\u0001:\u0001\u0015B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0004\u0010\bB#\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\r\u0010\u000f\u001a\u00020\f¢\u0006\u0004\b\u000f\u0010\u000eJ\u001b\u0010\u0012\u001a\u00020\f2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\f0\u0010¢\u0006\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u001e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019¨\u0006\u001c"}, d2 = {"Lcom/transsnet/downloader/widget/DownloadDialogTransferGuideView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "res", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "()V", "startCountdown", "Lkotlin/Function0;", "callback", "setCloseCallback", "(Lkotlin/jvm/functions/Function0;)V", "Lpy/t0;", "a", "Lpy/t0;", "viewBinding", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlin/jvm/functions/Function0;", "closeCallback", "Companion", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class DownloadDialogTransferGuideView extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final py.t0 viewBinding;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private Function0 closeCallback;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DownloadDialogTransferGuideView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DownloadDialogTransferGuideView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadDialogTransferGuideView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        View.inflate(context, R$layout.layout_download_dialog_transfer_guide, this);
        py.t0 t0VarA = py.t0.a(this);
        Intrinsics.g(t0VarA, "bind(...)");
        this.viewBinding = t0VarA;
        d();
    }

    private final void d() {
        this.viewBinding.f72926c.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.widget.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DownloadDialogTransferGuideView.e(this.f60194a, view);
            }
        });
        this.viewBinding.f72927d.setMax(15);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(DownloadDialogTransferGuideView downloadDialogTransferGuideView, View view) {
        Function0 function0 = downloadDialogTransferGuideView.closeCallback;
        if (function0 != null) {
            function0.invoke();
        }
        jg.c.g(downloadDialogTransferGuideView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit f(DownloadDialogTransferGuideView downloadDialogTransferGuideView, int i11) {
        downloadDialogTransferGuideView.viewBinding.f72927d.setProgress(i11);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit g(DownloadDialogTransferGuideView downloadDialogTransferGuideView) {
        downloadDialogTransferGuideView.viewBinding.f72927d.setProgress(15);
        Function0 function0 = downloadDialogTransferGuideView.closeCallback;
        if (function0 != null) {
            function0.invoke();
        }
        jg.c.g(downloadDialogTransferGuideView);
        return Unit.f67061a;
    }

    public final void setCloseCallback(Function0<Unit> callback) {
        Intrinsics.h(callback, "callback");
        this.closeCallback = callback;
    }

    public final void startCountdown() {
        TimeUtilKt.b(15, kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.c()), new Function1() { // from class: com.transsnet.downloader.widget.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DownloadDialogTransferGuideView.f(this.f60188a, ((Integer) obj).intValue());
            }
        }, new Function0() { // from class: com.transsnet.downloader.widget.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DownloadDialogTransferGuideView.g(this.f60191a);
            }
        });
    }
}
