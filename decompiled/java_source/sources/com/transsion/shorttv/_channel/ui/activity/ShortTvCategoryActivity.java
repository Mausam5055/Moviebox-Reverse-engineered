package com.transsion.shorttv._channel.ui.activity;

import android.os.Bundle;
import com.gyf.immersionbar.ImmersionBar;
import com.therouter.TheRouter;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv._channel.ShortTvCategoryFragment;
import com.transsion.shorttv.base.activity.BaseActivity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import ds.g;
import java.lang.reflect.InvocationTargetException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import ms.m;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0019\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0014¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0019\u0010\f\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016¢\u0006\u0004\b\f\u0010\tJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0010\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0011\u0010\u000fJ\u0015\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\r¢\u0006\u0004\b\u0013\u0010\u0014R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u0017¨\u0006\u001b"}, d2 = {"Lcom/transsion/shorttv/_channel/ui/activity/ShortTvCategoryActivity;", "Lcom/transsion/shorttv/base/activity/BaseActivity;", "Lms/m;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "a0", "()Lms/m;", "initView", "", "isTranslucent", "()Z", "isStatusDark", "isChangeStatusBar", "isExpand", "Z", "(Z)V", "", "g", "Ljava/lang/String;", "categoryType", "h", "showType", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ShortTvCategoryActivity extends BaseActivity<m> {

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    public String categoryType;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    public String showType = "1";

    public final void Z(boolean isExpand) {
        ImmersionBar immersionBarWith = ImmersionBar.with(this);
        boolean z10 = false;
        if (isExpand && !g.f61431a.a()) {
            z10 = true;
        }
        immersionBarWith.statusBarDarkFont(z10).init();
    }

    @Override // com.transsion.shorttv.base.activity.BaseCommonActivity
    /* JADX INFO: renamed from: a0, reason: merged with bridge method [inline-methods] */
    public m getViewBinding() {
        m mVarC = m.c(getLayoutInflater());
        Intrinsics.g(mVarC, "inflate(...)");
        return mVarC;
    }

    @Override // com.transsion.shorttv.base.activity.BaseActivity
    public void initView(Bundle savedInstanceState) {
        if (savedInstanceState == null) {
            getSupportFragmentManager().p().s(R$id.container, ShortTvCategoryFragment.INSTANCE.a(this.categoryType, this.showType)).k();
        }
    }

    @Override // com.transsion.shorttv.base.activity.BaseActivity
    public boolean isChangeStatusBar() {
        return false;
    }

    @Override // com.transsion.shorttv.base.activity.BaseActivity
    public boolean isStatusDark() {
        return false;
    }

    @Override // com.transsion.shorttv.base.activity.BaseActivity
    public boolean isTranslucent() {
        return true;
    }

    @Override // com.transsion.shorttv.base.activity.BaseActivity, com.transsion.shorttv.base.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) throws IllegalAccessException, InvocationTargetException {
        TheRouter.l(this);
        super.onCreate(savedInstanceState);
    }
}
