package com.transsnet.downloader.activity;

import ak.x;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import com.therouter.TheRouter;
import com.tn.lib.view.TitleLayout;
import com.tn.lib.widget.R$mipmap;
import com.transsion.baseui.activity.BaseNewActivity;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.dialog.TransferGuideDialog;
import com.transsnet.downloader.fragment.TransferMainFragment;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.reflect.InvocationTargetException;
import jg.c;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import py.e;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\tJ\u000f\u0010\u000b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u000b\u0010\tJ\u000f\u0010\f\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\f\u0010\tJ\u0019\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0014¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0015\u0010\u0004J\u000f\u0010\u0016\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0016\u0010\u0004J\u000f\u0010\u0017\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0017\u0010\u0004J\u000f\u0010\u0018\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0018\u0010\u0004J\u000f\u0010\u0019\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0019\u0010\u0004¨\u0006\u001a"}, d2 = {"Lcom/transsnet/downloader/activity/TransferActivity;", "Lcom/transsion/baseui/activity/BaseNewActivity;", "Lpy/e;", "<init>", "()V", "H0", "()Lpy/e;", "", "isTranslucent", "()Z", "isStatusDark", "r0", "q0", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "", "i0", "()Ljava/lang/String;", "o0", "p0", "n0", "s0", "retryLoadData", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TransferActivity extends BaseNewActivity<e> {
    /* JADX INFO: Access modifiers changed from: private */
    public static final void I0(TransferActivity transferActivity, View view) {
        transferActivity.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void J0(TransferActivity transferActivity, View view) {
        TransferGuideDialog.INSTANCE.b().k0(transferActivity, "TransferGuideDialog");
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    /* JADX INFO: renamed from: H0, reason: merged with bridge method [inline-methods] */
    public e getViewBinding() {
        e eVarC = e.c(getLayoutInflater());
        Intrinsics.g(eVarC, "inflate(...)");
        return eVarC;
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public String i0() {
        return "";
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public boolean isStatusDark() {
        return !x.f658a.a();
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public boolean isTranslucent() {
        return true;
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void n0() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void o0() {
        TitleLayout titleLayout = ((e) getMViewBinding()).f72669c;
        titleLayout.setBackVisible(true);
        titleLayout.setLeftOnclick(new View.OnClickListener() { // from class: com.transsnet.downloader.activity.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TransferActivity.I0(this.f58425a, view);
            }
        });
        titleLayout.setRightView(R$mipmap.ic_transfer_tips_hint);
        ImageView ivMenu = titleLayout.getIvMenu();
        if (ivMenu != null) {
            ivMenu.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.activity.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TransferActivity.J0(this.f58426a, view);
                }
            });
        }
        Intrinsics.e(titleLayout);
        c.e(titleLayout);
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) throws IllegalAccessException, InvocationTargetException {
        TheRouter.l(this);
        super.onCreate(savedInstanceState);
        if (savedInstanceState == null) {
            getSupportFragmentManager().p().s(R$id.fl_container, TransferMainFragment.INSTANCE.a()).l();
        }
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void p0() {
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public boolean q0() {
        return false;
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public boolean r0() {
        return false;
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void retryLoadData() {
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void s0() {
    }
}
