package com.transsion.edcation.history;

import ak.x;
import android.os.Bundle;
import com.tn.lib.view.TitleLayout;
import com.tn.lib.widget.R$id;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.edcation.R$string;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0012\u0010\u0011¨\u0006\u0013"}, d2 = {"Lcom/transsion/edcation/history/EducationHistoryActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lth/a;", "<init>", "()V", "e0", "()Lth/a;", "Landroid/os/Bundle;", "savedInstanceState", "", "initView", "(Landroid/os/Bundle;)V", "", "getPageName", "()Ljava/lang/String;", "", "isTranslucent", "()Z", "isStatusDark", "Education_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class EducationHistoryActivity extends BaseActivity<th.a> {
    @Override // com.transsion.baseui.activity.BaseCommonActivity
    /* JADX INFO: renamed from: e0, reason: merged with bridge method [inline-methods] */
    public th.a getViewBinding() {
        th.a aVarC = th.a.c(getLayoutInflater());
        Intrinsics.g(aVarC, "inflate(...)");
        return aVarC;
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    public String getPageName() {
        return "Education History";
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.activity.BaseActivity
    public void initView(Bundle savedInstanceState) {
        TitleLayout titleLayout = ((th.a) getMViewBinding()).f76214c;
        String string = getString(R$string.course_history_title);
        Intrinsics.g(string, "getString(...)");
        titleLayout.setTitleText(string);
        titleLayout.setPadding(0, com.blankj.utilcode.util.d.c(), 0, 0);
        getSupportFragmentManager().p().s(R$id.container, new EducationHistoryFragment()).k();
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isStatusDark() {
        return !x.f658a.a();
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isTranslucent() {
        return true;
    }
}
