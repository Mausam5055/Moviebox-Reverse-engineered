package com.transsion.home.category;

import ak.x;
import android.os.Bundle;
import com.gyf.immersionbar.ImmersionBar;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.home.R$id;
import com.transsion.home.category.fragment.PlayListFragment;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import gl.e;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\b\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000f\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0010\u0010\u000eJ\u0015\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\f¢\u0006\u0004\b\u0012\u0010\u0013R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00148\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00148\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0016R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00148\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u0016¨\u0006\u001c"}, d2 = {"Lcom/transsion/home/category/PlayListActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lgl/e;", "<init>", "()V", "f0", "()Lgl/e;", "Landroid/os/Bundle;", "savedInstanceState", "", "initView", "(Landroid/os/Bundle;)V", "", "isTranslucent", "()Z", "isStatusDark", "isChangeStatusBar", "isExpand", "e0", "(Z)V", "", "a", "Ljava/lang/String;", "category", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "label", "c", "recType", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PlayListActivity extends BaseActivity<e> {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    public String category;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    public String label;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    public String recType;

    public final void e0(boolean isExpand) {
        ImmersionBar immersionBarWith = ImmersionBar.with(this);
        boolean z10 = false;
        if (isExpand && !x.f658a.a()) {
            z10 = true;
        }
        immersionBarWith.statusBarDarkFont(z10).init();
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    /* JADX INFO: renamed from: f0, reason: merged with bridge method [inline-methods] */
    public e getViewBinding() {
        e eVarC = e.c(getLayoutInflater());
        Intrinsics.g(eVarC, "inflate(...)");
        return eVarC;
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public void initView(Bundle savedInstanceState) {
        super.initView(savedInstanceState);
        if (savedInstanceState == null) {
            getSupportFragmentManager().p().s(R$id.container, PlayListFragment.INSTANCE.a(getIntent().getStringExtra("label"), getIntent().getStringExtra("category"), getIntent().getStringExtra("recType"), getIntent().getStringExtra("topIds"), getIntent().getIntExtra("tabId", 0))).k();
        }
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isChangeStatusBar() {
        return false;
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isStatusDark() {
        return false;
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isTranslucent() {
        return true;
    }
}
