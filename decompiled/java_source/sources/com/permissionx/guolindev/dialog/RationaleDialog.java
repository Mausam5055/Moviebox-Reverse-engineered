package com.permissionx.guolindev.dialog;

import com.transsion.baseui.dialog.BaseDialog;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\b&\u0018\u00002\u00020\u0001B\t\b\u0016¢\u0006\u0004\b\u0002\u0010\u0003B\u0011\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0002\u0010\u0006J4\u0010\u000e\u001a\u00020\f2#\u0010\r\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\b¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\f0\u0007H&¢\u0006\u0004\b\u000e\u0010\u000fJ4\u0010\u0011\u001a\u00020\f2#\u0010\r\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\b¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u0010\u0012\u0004\u0012\u00020\f0\u0007H&¢\u0006\u0004\b\u0011\u0010\u000fJ\u0015\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012H&¢\u0006\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Lcom/permissionx/guolindev/dialog/RationaleDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "", "contentLayoutId", "(I)V", "Lkotlin/Function1;", "Landroid/view/View;", "Lkotlin/ParameterName;", "name", "positiveButton", "", "callback", "p0", "(Lkotlin/jvm/functions/Function1;)V", "negativeButton", "o0", "", "", "n0", "()Ljava/util/List;", "PermissionX_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public abstract class RationaleDialog extends BaseDialog {
    public RationaleDialog() {
    }

    public RationaleDialog(int i11) {
        super(i11);
    }

    public abstract List n0();

    public abstract void o0(Function1 callback);

    public abstract void p0(Function1 callback);
}
