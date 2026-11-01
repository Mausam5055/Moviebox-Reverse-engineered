package com.transsion.edcation.list;

import ak.x;
import android.os.Bundle;
import android.view.View;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.TitleLayout;
import com.tn.lib.widget.R$id;
import com.transsion.baseui.R$drawable;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.edcation.R$string;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.reflect.InvocationTargetException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u000b\u001a\u00020\u00052\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0014¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\r\u001a\u00020\u00052\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\r\u0010\fJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0011\u0010\u0010J\u000f\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Lcom/transsion/edcation/list/MyCourseListActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lth/a;", "<init>", "()V", "", "h0", "g0", "()Lth/a;", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "initView", "", "isTranslucent", "()Z", "isStatusDark", "", "getPageName", "()Ljava/lang/String;", "Education_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class MyCourseListActivity extends BaseActivity<th.a> {
    private final void h0() {
        getSupportFragmentManager().p().s(R$id.container, new MyCourseListFragment()).k();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i0(MyCourseListActivity myCourseListActivity, View view) {
        Navigator.x(TheRouter.c("/edu/history"), myCourseListActivity, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j0(MyCourseListActivity myCourseListActivity, View view) {
        myCourseListActivity.finish();
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    /* JADX INFO: renamed from: g0, reason: merged with bridge method [inline-methods] */
    public th.a getViewBinding() {
        th.a aVarC = th.a.c(getLayoutInflater());
        Intrinsics.g(aVarC, "inflate(...)");
        return aVarC;
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    public String getPageName() {
        return "MyCourse List";
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.activity.BaseActivity
    public void initView(Bundle savedInstanceState) {
        TitleLayout titleLayout = ((th.a) getMViewBinding()).f76214c;
        titleLayout.setRightView(R$drawable.ic_history, new View.OnClickListener() { // from class: com.transsion.edcation.list.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MyCourseListActivity.i0(this.f44129a, view);
            }
        });
        titleLayout.setLeftOnclick(new View.OnClickListener() { // from class: com.transsion.edcation.list.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MyCourseListActivity.j0(this.f44130a, view);
            }
        });
        titleLayout.setTitleText(R$string.course_list);
        titleLayout.setPadding(0, com.blankj.utilcode.util.d.c(), 0, 0);
        h0();
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isStatusDark() {
        return !x.f658a.a();
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isTranslucent() {
        return true;
    }

    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) throws IllegalAccessException, InvocationTargetException {
        TheRouter.l(this);
        super.onCreate(savedInstanceState);
    }
}
