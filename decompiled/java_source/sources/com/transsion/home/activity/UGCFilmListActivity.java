package com.transsion.home.activity;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.transsion.baselib.report.g;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.home.R$id;
import com.transsion.home.fragment.film.UGCFilmListFragment;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import gl.b;
import java.lang.reflect.InvocationTargetException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\r\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\u0005J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\nJ\u000f\u0010\f\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u0010\u001a\u00020\u00062\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0014¢\u0006\u0004\b\u0010\u0010\u0011J\u0019\u0010\u0012\u001a\u00020\u00062\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b\u0012\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0013\u0010\u0005J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016R\u0016\u0010\u001a\u001a\u00020\u00178\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001d\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0016\u0010\u001f\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001cR\u0016\u0010!\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b \u0010\u001cR\u0016\u0010#\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\"\u0010\u001c¨\u0006$"}, d2 = {"Lcom/transsion/home/activity/UGCFilmListActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lgl/b;", "Lcom/transsion/baselib/report/g;", "<init>", "()V", "", "f0", "", "isTranslucent", "()Z", "isStatusDark", "e0", "()Lgl/b;", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "initView", "retryLoadData", "", "getPageName", "()Ljava/lang/String;", "", "a", "I", "tabId", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "filmType", "c", "filmListTitle", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "videoType", "e", "fromOptId", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class UGCFilmListActivity extends BaseActivity<b> implements g {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    public int tabId;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    public String filmType = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    public String filmListTitle = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    public String videoType = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    public String fromOptId = "";

    private final void f0() {
        getSupportFragmentManager().p().s(R$id.fragment_container, UGCFilmListFragment.Companion.b(UGCFilmListFragment.INSTANCE, String.valueOf(this.tabId), this.filmType, this.filmListTitle, false, this.videoType, this.fromOptId, 8, null)).i();
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    /* JADX INFO: renamed from: e0, reason: merged with bridge method [inline-methods] */
    public b getViewBinding() {
        b bVarC = b.c(getLayoutInflater());
        Intrinsics.g(bVarC, "inflate(...)");
        return bVarC;
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    public String getPageName() {
        return "/home/ugc_film_list";
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public void initView(Bundle savedInstanceState) {
        f0();
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isStatusDark() {
        return false;
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

    @Override // com.transsion.baseui.activity.BaseActivity
    public void retryLoadData() {
        Fragment fragmentJ0 = getSupportFragmentManager().j0(R$id.fragment_container);
        if (fragmentJ0 == null || !(fragmentJ0 instanceof UGCFilmListFragment)) {
            return;
        }
        ((UGCFilmListFragment) fragmentJ0).retryLoadData();
    }
}
