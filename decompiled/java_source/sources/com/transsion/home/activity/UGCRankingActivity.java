package com.transsion.home.activity;

import ak.x;
import android.os.Bundle;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.home.R$id;
import com.transsion.home.fragment.ranking.UGCRankAllFragment;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import gl.a;
import java.lang.reflect.InvocationTargetException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\n\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000f\u0010\u000eR\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0012R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0012R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0012¨\u0006\u001a"}, d2 = {"Lcom/transsion/home/activity/UGCRankingActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lgl/a;", "<init>", "()V", "e0", "()Lgl/a;", "Landroid/os/Bundle;", "savedInstanceState", "", "initView", "(Landroid/os/Bundle;)V", "", "isTranslucent", "()Z", "isStatusDark", "", "a", "Ljava/lang/String;", "requestCategory", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "tabId", "c", "videoType", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "fromOptId", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class UGCRankingActivity extends BaseActivity<a> {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    public String requestCategory;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    public String tabId = "0";

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    public String videoType = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    public String fromOptId = "";

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    /* JADX INFO: renamed from: e0, reason: merged with bridge method [inline-methods] */
    public a getViewBinding() throws IllegalAccessException, InvocationTargetException {
        TheRouter.l(this);
        a aVarC = a.c(getLayoutInflater());
        Intrinsics.g(aVarC, "inflate(...)");
        return aVarC;
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public void initView(Bundle savedInstanceState) {
        if (savedInstanceState == null) {
            getSupportFragmentManager().p().s(R$id.container, UGCRankAllFragment.INSTANCE.a(this.requestCategory, this.tabId, this.videoType, this.fromOptId)).k();
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
}
