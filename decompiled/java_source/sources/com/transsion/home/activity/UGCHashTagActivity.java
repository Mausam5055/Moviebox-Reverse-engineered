package com.transsion.home.activity;

import ak.x;
import android.os.Bundle;
import android.view.View;
import com.blankj.utilcode.util.d;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.tn.lib.view.TitleLayout;
import com.transsion.baselib.report.g;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.home.R$id;
import com.transsion.home.activity.UGCHashTagActivity;
import com.transsion.home.fragment.hashtag.UGCHashTagFragment;
import com.transsion.ugcvideodetail.api.bean.UGCVideoHashTag;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import th.a;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\b\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u0004B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\u0006J\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\tH\u0016¢\u0006\u0004\b\f\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0019\u0010\u0011\u001a\u00020\u00072\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0014¢\u0006\u0004\b\u0011\u0010\u0012J\u0019\u0010\u0013\u001a\u00020\u00072\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016¢\u0006\u0004\b\u0013\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0014\u0010\u0006J\u000f\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u0019\u0010\u0019\u001a\u00020\u00072\b\u0010\u0018\u001a\u0004\u0018\u00010\u0015H\u0016¢\u0006\u0004\b\u0019\u0010\u001aR\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR*\u0010#\u001a\u0016\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001fj\n\u0012\u0004\u0012\u00020\u001b\u0018\u0001` 8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0016\u0010&\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0018\u0010(\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b'\u0010%R\u0016\u0010,\u001a\u00020)8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b*\u0010+R\u0018\u0010.\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b-\u0010%R\u0018\u00100\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u0010%¨\u00061"}, d2 = {"Lcom/transsion/home/activity/UGCHashTagActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lth/a;", "Lcom/transsion/baselib/report/g;", "Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$b;", "<init>", "()V", "", "g0", "", "isTranslucent", "()Z", "isStatusDark", "f0", "()Lth/a;", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "initView", "retryLoadData", "", "getPageName", "()Ljava/lang/String;", CampaignEx.JSON_KEY_TITLE, "l", "(Ljava/lang/String;)V", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;", "a", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;", "mainHasTag", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/util/ArrayList;", "hasTagList", "c", "Ljava/lang/String;", "fromOptId", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "ugcVideoId", "", "e", "I", "tabId", "f", "mHashtagJson", "g", "currentHashTagTitle", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class UGCHashTagActivity extends BaseActivity<a> implements g, UGCHashTagFragment.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    public UGCVideoHashTag mainHasTag;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    public ArrayList hasTagList;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    public String fromOptId = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    public String ugcVideoId;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    public int tabId;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    public String mHashtagJson;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private String currentHashTagTitle;

    private final void g0() {
        String str = this.mHashtagJson;
        getSupportFragmentManager().p().s(R$id.container, (str == null || str.length() == 0) ? UGCHashTagFragment.INSTANCE.a(this.mainHasTag, this.hasTagList, this.fromOptId, this.ugcVideoId, this.tabId) : UGCHashTagFragment.INSTANCE.b(this.mHashtagJson, this.fromOptId, this.ugcVideoId, this.tabId)).k();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h0(UGCHashTagActivity uGCHashTagActivity, View view) {
        uGCHashTagActivity.finish();
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    /* JADX INFO: renamed from: f0, reason: merged with bridge method [inline-methods] */
    public a getViewBinding() {
        a aVarC = a.c(getLayoutInflater());
        Intrinsics.g(aVarC, "inflate(...)");
        return aVarC;
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    public String getPageName() {
        return "/home/hashtag";
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.activity.BaseActivity
    public void initView(Bundle savedInstanceState) {
        TitleLayout titleLayout = ((a) getMViewBinding()).f76214c;
        titleLayout.setLeftOnclick(new View.OnClickListener() { // from class: bl.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UGCHashTagActivity.h0(this.f16623a, view);
            }
        });
        titleLayout.setTitleText("");
        titleLayout.setPadding(0, d.c(), 0, 0);
        g0();
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isStatusDark() {
        return !x.f658a.a();
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isTranslucent() {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.home.fragment.hashtag.UGCHashTagFragment.b
    public void l(String title) {
        this.currentHashTagTitle = title;
        TitleLayout titleLayout = ((a) getMViewBinding()).f76214c;
        if (title == null) {
            title = "";
        }
        titleLayout.setTitleText(title);
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
