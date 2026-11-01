package com.transsion.commercialization.task.treasure;

import android.os.Bundle;
import android.view.View;
import androidx.p009lifecycle.v;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.baseui.dialog.BaseMemberLoadingDialog;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u0019\u0010\b\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\b\u0010\tJ!\u0010\f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\f\u0010\rJ)\u0010\u0013\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014R\u001b\u0010\u001a\u001a\u00020\u00158BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001cR\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001f¨\u0006 "}, d2 = {"Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;", "Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;", "<init>", "()V", "", "v0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "activityId", "orderId", "", "showErrorToast", "x0", "(Ljava/lang/String;Ljava/lang/String;Z)Lcom/transsion/commercialization/task/treasure/CheckLotteryLoadingDialog;", "Lcom/transsion/commercialization/task/treasure/b;", "c", "Lkotlin/Lazy;", "u0", "()Lcom/transsion/commercialization/task/treasure/b;", "iTreasureApi", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/lang/String;", "e", "f", "Ljava/lang/Boolean;", "Commercialization_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class CheckLotteryLoadingDialog extends BaseMemberLoadingDialog {

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private String activityId;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private String orderId;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final Lazy iTreasureApi = LazyKt.b(new Function0() { // from class: com.transsion.commercialization.task.treasure.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return CheckLotteryLoadingDialog.w0();
        }
    });

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private Boolean showErrorToast = Boolean.FALSE;

    /* JADX INFO: Access modifiers changed from: private */
    public final b u0() {
        return (b) this.iTreasureApi.getValue();
    }

    private final void v0() {
        kotlinx.coroutines.k.d(v.a(this), null, null, new CheckLotteryLoadingDialog$getLotteryUserActivityInfo$1(this, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b w0() {
        return (b) zg.c.f79414e.a().h(b.class);
    }

    @Override // com.transsion.baseui.dialog.BaseMemberLoadingDialog, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    @Override // com.transsion.baseui.dialog.BaseMemberLoadingDialog, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        v0();
    }

    public final CheckLotteryLoadingDialog x0(String activityId, String orderId, boolean showErrorToast) {
        this.activityId = activityId;
        this.orderId = orderId;
        this.showErrorToast = Boolean.valueOf(showErrorToast);
        return this;
    }
}
