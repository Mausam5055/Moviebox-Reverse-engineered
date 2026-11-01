package com.transsion.home.activity;

import ak.x;
import android.os.Bundle;
import android.view.View;
import com.blankj.utilcode.util.d;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.tn.lib.view.TitleLayout;
import com.transsion.baselib.report.g;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.home.R$id;
import com.transsion.home.R$mipmap;
import com.transsion.home.R$string;
import com.transsion.home.activity.FilterActivity;
import com.transsion.home.fragment.filter.FilterFragment;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import th.a;
import yj.b;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000b\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\u0005J\u000f\u0010\b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\b\u0010\u0005J\u000f\u0010\t\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\u0005J\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\nH\u0016¢\u0006\u0004\b\r\u0010\fJ\u000f\u0010\u000e\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0019\u0010\u0012\u001a\u00020\u00062\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0014¢\u0006\u0004\b\u0012\u0010\u0013J\u0019\u0010\u0014\u001a\u00020\u00062\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016¢\u0006\u0004\b\u0014\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0015\u0010\u0005J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001a\u0010\u001bR\u0016\u0010\u001f\u001a\u00020\u001c8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0016\u0010\"\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0018\u0010$\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b#\u0010!R\u0016\u0010&\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b%\u0010!¨\u0006'"}, d2 = {"Lcom/transsion/home/activity/FilterActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lth/a;", "Lcom/transsion/baselib/report/g;", "<init>", "()V", "", "h0", "l0", "k0", "", "isTranslucent", "()Z", "isStatusDark", "g0", "()Lth/a;", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "initView", "retryLoadData", "", "getPageName", "()Ljava/lang/String;", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "", "a", "I", "tabId", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "tabCode", "c", "mFilterJson", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "videoType", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class FilterActivity extends BaseActivity<a> implements g {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    public int tabId;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    public String mFilterJson;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    public String tabCode = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    public String videoType = "";

    private final void h0() {
        getSupportFragmentManager().p().s(R$id.container, FilterFragment.INSTANCE.a(this.tabId, this.tabCode, this.mFilterJson)).k();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i0(FilterActivity filterActivity, View view) {
        b bVar = (b) yj.a.f79022a.a(b.class);
        if (bVar != null) {
            bVar.d("", filterActivity);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j0(FilterActivity filterActivity, View view) {
        filterActivity.l0();
        filterActivity.finish();
    }

    private final void k0() {
        HashMap map = new HashMap();
        map.put("event_type", "back_browse");
        map.put("tabId", String.valueOf(this.tabId));
        com.transsion.baselib.helper.a.f43262a.e(getPageName(), map);
    }

    private final void l0() {
        HashMap map = new HashMap();
        map.put("event_type", "back_click");
        map.put("tabId", String.valueOf(this.tabId));
        com.transsion.baselib.helper.a.f43262a.f(getPageName(), map);
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    /* JADX INFO: renamed from: g0, reason: merged with bridge method [inline-methods] */
    public a getViewBinding() {
        a aVarC = a.c(getLayoutInflater());
        Intrinsics.g(aVarC, "inflate(...)");
        return aVarC;
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    public String getPageName() {
        return "home_filter_page";
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.activity.BaseActivity
    public void initView(Bundle savedInstanceState) {
        TitleLayout titleLayout = ((a) getMViewBinding()).f76214c;
        titleLayout.setRightView(R$mipmap.ic_search_movie, new View.OnClickListener() { // from class: bl.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FilterActivity.i0(this.f16617a, view);
            }
        });
        titleLayout.setLeftOnclick(new View.OnClickListener() { // from class: bl.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FilterActivity.j0(this.f16618a, view);
            }
        });
        k0();
        String string = getString(R$string.filter);
        Intrinsics.g(string, "getString(...)");
        titleLayout.setTitleText(string);
        titleLayout.setPadding(0, d.c(), 0, 0);
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

    @Override // com.transsion.baseui.activity.BaseActivity
    public hj.b newLogViewConfig() {
        hj.b bVar = new hj.b(getPageName(), false, 2, null);
        bVar.l(true);
        return bVar;
    }

    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) throws IllegalAccessException, InvocationTargetException {
        TheRouter.l(this);
        super.onCreate(savedInstanceState);
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public void retryLoadData() {
    }
}
