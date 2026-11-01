package com.transsion.shorttv_pugc.ui.activity;

import android.widget.FrameLayout;
import androidx.activity.u;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.w;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv_pugc.base.activity.BaseNewActivity;
import com.transsion.shorttv_pugc.ui.fragment.ShortTVFavoriteFragment;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import ct.b;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.l;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000/\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\b\u0005*\u0001\u0015\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\u0004J\u000f\u0010\f\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0010\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0011\u0010\u0004J\u000f\u0010\u0012\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0014\u0010\u0004R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u0019"}, d2 = {"Lcom/transsion/shorttv_pugc/ui/activity/ShortTVFavoriteActivity;", "Lcom/transsion/shorttv_pugc/base/activity/BaseNewActivity;", "Lms/l;", "<init>", "()V", "o0", "()Lms/l;", "", "Y", "()Ljava/lang/String;", "", "e0", "j0", "", "isTranslucent", "()Z", "isStatusDark", "f0", "d0", "i0", "retryLoadData", "com/transsion/shorttv_pugc/ui/activity/ShortTVFavoriteActivity$a", "j", "Lcom/transsion/shorttv_pugc/ui/activity/ShortTVFavoriteActivity$a;", "onBackPress", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ShortTVFavoriteActivity extends BaseNewActivity<l> {

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private final a onBackPress = new a();

    public static final class a extends u {
        a() {
            super(true);
        }

        @Override // androidx.activity.u
        public void handleOnBackPressed() {
            lg.a.C0828a.g(lg.a.f68839a, "ShortTVFavoriteActivity --> onBackPress --> handleOnBackPressed() --> setResult(RESULT_OK)", false, 2, null);
            ShortTVFavoriteActivity.this.finish();
        }
    }

    @Override // com.transsion.shorttv_pugc.base.activity.BaseNewActivity
    public String Y() {
        return "";
    }

    @Override // com.transsion.shorttv_pugc.base.activity.BaseNewActivity
    public void d0() {
    }

    @Override // com.transsion.shorttv_pugc.base.activity.BaseNewActivity
    public void e0() {
        FrameLayout root = ((l) getMViewBinding()).getRoot();
        Intrinsics.g(root, "getRoot(...)");
        b.a(root);
        l0();
    }

    @Override // com.transsion.shorttv_pugc.base.activity.BaseNewActivity
    public void f0() {
        getOnBackPressedDispatcher().i(this, this.onBackPress);
    }

    @Override // com.transsion.shorttv_pugc.base.activity.BaseNewActivity
    public void i0() {
    }

    @Override // com.transsion.shorttv_pugc.base.activity.BaseNewActivity
    public boolean isStatusDark() {
        return false;
    }

    @Override // com.transsion.shorttv_pugc.base.activity.BaseNewActivity
    public boolean isTranslucent() {
        return true;
    }

    @Override // com.transsion.shorttv_pugc.base.activity.BaseNewActivity
    public void j0() {
        super.j0();
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
        w wVarP = supportFragmentManager.p();
        Intrinsics.g(wVarP, "beginTransaction()");
        wVarP.t(R$id.flContent, ShortTVFavoriteFragment.INSTANCE.a(), "ShortTVFavoriteFragment");
        wVarP.j();
    }

    @Override // com.transsion.shorttv_pugc.base.activity.BaseCommonActivity
    /* JADX INFO: renamed from: o0, reason: merged with bridge method [inline-methods] */
    public l getViewBinding() {
        l lVarC = l.c(getLayoutInflater());
        Intrinsics.g(lVarC, "inflate(...)");
        return lVarC;
    }

    @Override // com.transsion.shorttv_pugc.base.activity.BaseNewActivity
    public void retryLoadData() {
    }
}
