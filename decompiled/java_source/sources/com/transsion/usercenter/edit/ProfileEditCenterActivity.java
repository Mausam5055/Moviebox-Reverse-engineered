package com.transsion.usercenter.edit;

import ak.x;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ProgressBar;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.w;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.view.TitleLayout;
import com.tn.lib.widget.R$color;
import com.transsion.baselib.kids.KidsProfile;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.publish.R$string;
import com.transsion.usercenter.R$id;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u001f2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001cB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u0019\u0010\n\u001a\u00020\u00052\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0014¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000f\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0010\u0010\u000eJ)\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00112\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0018\u0010\u0004J\u000f\u0010\u0019\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001c\u0010\u001d¨\u0006 "}, d2 = {"Lcom/transsion/usercenter/edit/ProfileEditCenterActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lfw/k;", "<init>", "()V", "", "initView", "initData", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "", "isTranslucent", "()Z", "isStatusDark", "isChangeStatusBar", "", "requestCode", "resultCode", "Landroid/content/Intent;", "data", "onActivityResult", "(IILandroid/content/Intent;)V", "onBackPressed", "g0", "()Lfw/k;", "Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;", "a", "Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;", "profileEditFragment", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ProfileEditCenterActivity extends BaseActivity<fw.k> {

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private ProfileEditCenterFragment profileEditFragment;

    /* JADX INFO: renamed from: com.transsion.usercenter.edit.ProfileEditCenterActivity$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(Context context, UserInfo userInfo) {
            Intrinsics.h(context, "context");
            Intent intent = new Intent(context, (Class<?>) ProfileEditCenterActivity.class);
            if (userInfo != null) {
                intent.putExtra("user", userInfo);
            }
            intent.setFlags(ASTNode.DEOP);
            context.startActivity(intent);
        }

        public final void b(Context context, KidsProfile kidsProfile) {
            Intrinsics.h(context, "context");
            Intrinsics.h(kidsProfile, "kidsProfile");
            Intent intent = new Intent(context, (Class<?>) ProfileEditCenterActivity.class);
            intent.putExtra("kidsProfile", kidsProfile);
            intent.setFlags(ASTNode.DEOP);
            context.startActivity(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h0(ProfileEditCenterActivity profileEditCenterActivity, View view) {
        ProfileEditCenterFragment profileEditCenterFragment = profileEditCenterActivity.profileEditFragment;
        if (profileEditCenterFragment == null) {
            Intrinsics.z("profileEditFragment");
            profileEditCenterFragment = null;
        }
        profileEditCenterFragment.checkBack();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i0(ProfileEditCenterActivity profileEditCenterActivity, View view) {
        ProfileEditCenterFragment profileEditCenterFragment = profileEditCenterActivity.profileEditFragment;
        if (profileEditCenterFragment == null) {
            Intrinsics.z("profileEditFragment");
            profileEditCenterFragment = null;
        }
        profileEditCenterFragment.confirmSubmit();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initData() {
        Serializable serializableExtra = getIntent().getSerializableExtra("user");
        ProfileEditCenterFragment profileEditCenterFragment = null;
        UserInfo userInfo = (serializableExtra == null || !(serializableExtra instanceof UserInfo)) ? null : (UserInfo) serializableExtra;
        KidsProfile kidsProfile = (KidsProfile) getIntent().getParcelableExtra("kidsProfile");
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
        w wVarP = supportFragmentManager.p();
        Intrinsics.g(wVarP, "beginTransaction(...)");
        ProfileEditCenterFragment profileEditCenterFragmentA = ProfileEditCenterFragment.INSTANCE.a(userInfo, kidsProfile);
        this.profileEditFragment = profileEditCenterFragmentA;
        if (profileEditCenterFragmentA == null) {
            Intrinsics.z("profileEditFragment");
        }
        int i11 = R$id.fl_content;
        ProfileEditCenterFragment profileEditCenterFragment2 = this.profileEditFragment;
        if (profileEditCenterFragment2 == null) {
            Intrinsics.z("profileEditFragment");
        } else {
            profileEditCenterFragment = profileEditCenterFragment2;
        }
        wVarP.b(i11, profileEditCenterFragment);
        wVarP.j();
        TitleLayout titleLayout = ((fw.k) getMViewBinding()).f62732d;
        titleLayout.setLeftOnclick(new View.OnClickListener() { // from class: com.transsion.usercenter.edit.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ProfileEditCenterActivity.h0(this.f56693a, view);
            }
        });
        String string = getString(R$string.profile_empty_done);
        Intrinsics.g(string, "getString(...)");
        titleLayout.setRightView(string, androidx.core.content.b.getColor(titleLayout.getContext(), R$color.main), new View.OnClickListener() { // from class: com.transsion.usercenter.edit.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ProfileEditCenterActivity.i0(this.f56694a, view);
            }
        });
        String string2 = getString(com.transsion.usercenter.R$string.profile_edit_profile);
        Intrinsics.g(string2, "getString(...)");
        titleLayout.setTitleText(string2);
        ProgressBar loadView = ((fw.k) getMViewBinding()).f62731c;
        Intrinsics.g(loadView, "loadView");
        jg.c.g(loadView);
    }

    private final void initView() {
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    /* JADX INFO: renamed from: g0, reason: merged with bridge method [inline-methods] */
    public fw.k getViewBinding() {
        fw.k kVarC = fw.k.c(getLayoutInflater());
        Intrinsics.g(kVarC, "inflate(...)");
        return kVarC;
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isChangeStatusBar() {
        return false;
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isStatusDark() {
        return !x.f658a.a();
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isTranslucent() {
        return true;
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        ProfileEditCenterFragment profileEditCenterFragment = this.profileEditFragment;
        if (profileEditCenterFragment == null) {
            Intrinsics.z("profileEditFragment");
            profileEditCenterFragment = null;
        }
        profileEditCenterFragment.checkEditSubmit(true);
    }

    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        initView();
        initData();
    }
}
