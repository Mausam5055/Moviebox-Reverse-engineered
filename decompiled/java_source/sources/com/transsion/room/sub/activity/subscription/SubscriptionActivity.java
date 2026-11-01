package com.transsion.room.sub.activity.subscription;

import ak.x;
import android.os.Bundle;
import android.os.PersistableBundle;
import bq.j;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.room.R$id;
import com.transsion.room.sub.fragment.subscription.SubscriptionFragment;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J#\u0010\n\u001a\u00020\t2\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u000e\u001a\u00020\t2\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0013\u0010\u0012¨\u0006\u0014"}, d2 = {"Lcom/transsion/room/sub/activity/subscription/SubscriptionActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lbq/j;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/os/PersistableBundle;", "persistentState", "", "onCreate", "(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V", "e0", "()Lbq/j;", "initView", "(Landroid/os/Bundle;)V", "", "isTranslucent", "()Z", "isStatusDark", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class SubscriptionActivity extends BaseActivity<j> {
    @Override // com.transsion.baseui.activity.BaseCommonActivity
    /* JADX INFO: renamed from: e0, reason: merged with bridge method [inline-methods] */
    public j getViewBinding() {
        j jVarC = j.c(getLayoutInflater());
        Intrinsics.g(jVarC, "inflate(...)");
        return jVarC;
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public void initView(Bundle savedInstanceState) {
        if (savedInstanceState == null) {
            getSupportFragmentManager().p().s(R$id.container, SubscriptionFragment.INSTANCE.a()).k();
        }
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isStatusDark() {
        return !x.f658a.a();
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isTranslucent() {
        return true;
    }

    @Override // android.app.Activity
    public void onCreate(Bundle savedInstanceState, PersistableBundle persistentState) {
        super.onCreate(savedInstanceState, persistentState);
    }
}
