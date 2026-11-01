package com.tn.lib.widget.dialog;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0007\u0010\u0006¨\u0006\b"}, d2 = {"com/tn/lib/widget/dialog/TRDialogKt$doOnClick$3$1", "Lcom/tn/lib/widget/dialog/TRDialogListener;", "Lcom/tn/lib/widget/dialog/TRDialog;", "dialog", "", "onLeftButtonClick", "(Lcom/tn/lib/widget/dialog/TRDialog;)V", "onRightButtonClick", "UI_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TRDialogKt$doOnClick$3$1 implements TRDialogListener {
    final /* synthetic */ Function0<Unit> $leftClickListener;
    final /* synthetic */ Function0<Unit> $rightClickListener;

    TRDialogKt$doOnClick$3$1(Function0<Unit> function0, Function0<Unit> function1) {
        this.$leftClickListener = function0;
        this.$rightClickListener = function1;
    }

    @Override // com.tn.lib.widget.dialog.TRDialogListener
    public void onLeftButtonClick(TRDialog dialog) {
        Intrinsics.h(dialog, "dialog");
        this.$leftClickListener.invoke();
    }

    @Override // com.tn.lib.widget.dialog.TRDialogListener
    public void onRightButtonClick(TRDialog dialog) {
        Intrinsics.h(dialog, "dialog");
        this.$rightClickListener.invoke();
    }
}
