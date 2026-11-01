package com.transsion.usercenter.setting;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import androidx.core.view.PointerIconCompat;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.ViewModelLazy;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ClientABTestDTOKt;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.util.networkinfo.NetworkType;
import com.tn.lib.view.TitleLayout;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.R$drawable;
import com.transsion.baseui.R$string;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.usercenter.laboratory.LaboratoryActivity;
import com.transsion.usercenter.profile.ProfileViewModel;
import com.transsion.usercenter.profile.bean.FissionState;
import com.transsion.usercenter.profile.bean.ProfileInfo;
import com.transsion.usercenter.setting.bean.UserSettingType;
import com.transsion.usercenter.setting.dialog.LocaleLanguageListDialog;
import com.transsion.usercenterapi.UpdateResultEvent;
import com.transsion.version.update.UpdateManager;
import com.transsion.web.api.WebConstants;
import com.transsion.web.api.WebPageIdentity;
import com.transsnet.downloader.dialog.DownloadConfirmDialog;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.loginapi.ILoginApi;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import fw.h1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.math.MathKt;
import kotlinx.coroutines.t1;
import kotlinx.coroutines.y0;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0017\u0018\u0000 \u0084\u00012\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001CB\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\u0005J\u000f\u0010\b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\b\u0010\u0005J\u000f\u0010\t\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\u0005J\u000f\u0010\n\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\n\u0010\u0005J\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0010\u0010\u0005J\u000f\u0010\u0011\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0011\u0010\u0005J\u000f\u0010\u0012\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0012\u0010\u0005J\u000f\u0010\u0013\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0013\u0010\u0005J\u0019\u0010\u0016\u001a\u00020\u00062\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0018\u0010\u0005J\u000f\u0010\u0019\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0019\u0010\u0005J\u000f\u0010\u001a\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001a\u0010\u0005J\u0017\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u001bH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001f\u0010\u0005J\u000f\u0010 \u001a\u00020\u0006H\u0002¢\u0006\u0004\b \u0010\u0005J\u000f\u0010!\u001a\u00020\u0006H\u0002¢\u0006\u0004\b!\u0010\u0005J\u000f\u0010\"\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\"\u0010\u0005J\u000f\u0010#\u001a\u00020\u0006H\u0002¢\u0006\u0004\b#\u0010\u0005J\u000f\u0010$\u001a\u00020\u0006H\u0002¢\u0006\u0004\b$\u0010\u0005J\u000f\u0010%\u001a\u00020\u0006H\u0002¢\u0006\u0004\b%\u0010\u0005J\u000f\u0010'\u001a\u00020&H\u0002¢\u0006\u0004\b'\u0010(J\u0019\u0010+\u001a\u00020\u00062\b\u0010*\u001a\u0004\u0018\u00010)H\u0014¢\u0006\u0004\b+\u0010,J\r\u0010-\u001a\u00020\u0006¢\u0006\u0004\b-\u0010\u0005J\u000f\u0010/\u001a\u00020.H\u0016¢\u0006\u0004\b/\u00100J\u000f\u00101\u001a\u00020.H\u0016¢\u0006\u0004\b1\u00100J\u000f\u00102\u001a\u00020\u0006H\u0014¢\u0006\u0004\b2\u0010\u0005J\u0017\u00104\u001a\u00020\u00062\u0006\u00103\u001a\u00020\u0014H\u0016¢\u0006\u0004\b4\u0010\u0017J\u000f\u00105\u001a\u00020\u0006H\u0016¢\u0006\u0004\b5\u0010\u0005J\u000f\u00106\u001a\u00020\u0002H\u0016¢\u0006\u0004\b6\u00107J)\u0010=\u001a\u00020\u00062\u0006\u00109\u001a\u0002082\u0006\u0010:\u001a\u0002082\b\u0010<\u001a\u0004\u0018\u00010;H\u0014¢\u0006\u0004\b=\u0010>J\u000f\u0010?\u001a\u00020\u0006H\u0016¢\u0006\u0004\b?\u0010\u0005J\u000f\u0010@\u001a\u00020\rH\u0016¢\u0006\u0004\b@\u0010AR\u0018\u0010E\u001a\u0004\u0018\u00010B8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010DR\u0018\u0010I\u001a\u0004\u0018\u00010F8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010HR\u001c\u0010M\u001a\b\u0012\u0004\u0012\u00020\u001b0J8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010LR\u0018\u0010Q\u001a\u0004\u0018\u00010N8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u0010PR\u0016\u0010T\u001a\u00020.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bR\u0010SR\u001b\u0010Z\u001a\u00020U8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bV\u0010W\u001a\u0004\bX\u0010YR\u0016\u0010\\\u001a\u00020.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b[\u0010SR\u0016\u0010^\u001a\u00020.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b]\u0010SR\u001d\u0010c\u001a\u0004\u0018\u00010_8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b`\u0010W\u001a\u0004\ba\u0010bR\u001b\u0010g\u001a\u00020\u001b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bd\u0010W\u001a\u0004\be\u0010fR\u001b\u0010j\u001a\u00020\u001b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bh\u0010W\u001a\u0004\bi\u0010fR\u001b\u0010m\u001a\u00020\u001b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bk\u0010W\u001a\u0004\bl\u0010fR\u001b\u0010r\u001a\u00020n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bo\u0010W\u001a\u0004\bp\u0010qR\u0016\u0010t\u001a\u00020.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bs\u0010SR\u001b\u0010w\u001a\u00020\u001b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bu\u0010W\u001a\u0004\bv\u0010fR\u0014\u0010z\u001a\u00020\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bx\u0010yR\u001b\u0010}\u001a\u00020\u001b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b{\u0010W\u001a\u0004\b|\u0010fR\u001c\u0010\u0080\u0001\u001a\u00020\u001b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b~\u0010W\u001a\u0004\b\u007f\u0010fR\u001e\u0010\u0083\u0001\u001a\u00020\u001b8BX\u0082\u0084\u0002¢\u0006\u000e\n\u0005\b\u0081\u0001\u0010W\u001a\u0005\b\u0082\u0001\u0010f¨\u0006\u0085\u0001"}, d2 = {"Lcom/transsion/usercenter/setting/SettingActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lfw/h1;", "Ldz/a;", "<init>", "()V", "", "h1", "b1", "C0", "initData", "", "size", "", "N0", "(J)Ljava/lang/String;", "r1", "q1", "showLoading", "H0", "Lcom/transsnet/loginapi/bean/UserInfo;", "userInfo", "B0", "(Lcom/transsnet/loginapi/bean/UserInfo;)V", "a1", "E0", "A0", "Lvw/b;", WebConstants.FIELD_ITEM, "t1", "(Lvw/b;)V", "Z0", "D0", "d1", "G0", "X0", "W0", "c1", "Lkotlinx/coroutines/t1;", "F0", "()Lkotlinx/coroutines/t1;", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "initView", "", "isStatusDark", "()Z", "isTranslucent", "onDestroy", "user", "onLogin", "onLogout", "V0", "()Lfw/h1;", "", "requestCode", "resultCode", "Landroid/content/Intent;", "data", "onActivityResult", "(IILandroid/content/Intent;)V", "onResume", "getPageName", "()Ljava/lang/String;", "Lcom/transsion/usercenter/setting/adapter/d;", "a", "Lcom/transsion/usercenter/setting/adapter/d;", "mAdapter", "Lcom/transsion/usercenter/setting/b0;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/usercenter/setting/b0;", "mUserSettingViewModel", "", "c", "Ljava/util/List;", "mDataList", "Lck/h;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lck/h;", "mBaseLoadingDialog", "e", "Z", "darkModeFollowSys", "Lcom/transsion/usercenter/profile/ProfileViewModel;", "f", "Lkotlin/Lazy;", "R0", "()Lcom/transsion/usercenter/profile/ProfileViewModel;", "mProfileViewModel", "g", "isRequestBatteryPermission", "h", "isOpenPip", "Lcom/transsnet/loginapi/ILoginApi;", "i", "P0", "()Lcom/transsnet/loginapi/ILoginApi;", "loginApi", "j", "Q0", "()Lvw/b;", "logoutEntity", CampaignEx.JSON_KEY_AD_K, "U0", "userAgreement", "l", "M0", "fissionStateEntity", "Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;", "m", "S0", "()Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;", "mUserSettingLogoutDialog", "n", "haveBatteryPermission", "o", "L0", "familyModeItem", TtmlNode.TAG_P, "Lvw/b;", "downItem", CampaignEx.JSON_KEY_AD_Q, "K0", "autoplayItem", CampaignEx.JSON_KEY_AD_R, "T0", "pipItem", "s", "O0", "idleDataShareItem", "t", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class SettingActivity extends BaseActivity<h1> implements dz.a {

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private com.transsion.usercenter.setting.adapter.d mAdapter;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private b0 mUserSettingViewModel;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private ck.h mBaseLoadingDialog;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private boolean darkModeFollowSys;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private final Lazy mProfileViewModel;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private boolean isRequestBatteryPermission;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private boolean haveBatteryPermission;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private List mDataList = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private boolean isOpenPip = true;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private final Lazy loginApi = LazyKt.b(new Function0() { // from class: com.transsion.usercenter.setting.e
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return SettingActivity.m1();
        }
    });

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private final Lazy logoutEntity = LazyKt.b(new Function0() { // from class: com.transsion.usercenter.setting.m
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return SettingActivity.n1();
        }
    });

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private final Lazy userAgreement = LazyKt.b(new Function0() { // from class: com.transsion.usercenter.setting.n
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return SettingActivity.u1();
        }
    });

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private final Lazy fissionStateEntity = LazyKt.b(new Function0() { // from class: com.transsion.usercenter.setting.o
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return SettingActivity.J0();
        }
    });

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private final Lazy mUserSettingLogoutDialog = LazyKt.b(new Function0() { // from class: com.transsion.usercenter.setting.p
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return SettingActivity.o1(this.f57476a);
        }
    });

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private final Lazy familyModeItem = LazyKt.b(new Function0() { // from class: com.transsion.usercenter.setting.q
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return SettingActivity.I0(this.f57477a);
        }
    });

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private final vw.b downItem = new vw.b(R$string.download_in_background, UserSettingType.DOWNLOAD_SWITCH, null, Integer.valueOf(R$color.white_6), 3, null, false, false, false, false, 996, null);

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private final Lazy autoplayItem = LazyKt.b(new Function0() { // from class: com.transsion.usercenter.setting.r
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return SettingActivity.z0(this.f57478a);
        }
    });

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private final Lazy pipItem = LazyKt.b(new Function0() { // from class: com.transsion.usercenter.setting.s
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return SettingActivity.p1(this.f57479a);
        }
    });

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    private final Lazy idleDataShareItem = LazyKt.b(new Function0() { // from class: com.transsion.usercenter.setting.t
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return SettingActivity.Y0();
        }
    });

    /* JADX INFO: renamed from: com.transsion.usercenter.setting.SettingActivity$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(Context context, FissionState fissionState) {
            Intrinsics.h(context, "context");
            Intent intent = new Intent(context, (Class<?>) SettingActivity.class);
            intent.setFlags(ASTNode.DEOP);
            intent.putExtra("fissionState", fissionState);
            context.startActivity(intent);
        }
    }

    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f57356a;

        static {
            int[] iArr = new int[UserSettingType.values().length];
            try {
                iArr[UserSettingType.UPDATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[UserSettingType.ABOUT_US.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[UserSettingType.PRIVACY_POLICY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[UserSettingType.USER_AGREEMENT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[UserSettingType.LOGOUT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[UserSettingType.LANGUAGE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[UserSettingType.INVITATION.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[UserSettingType.DEBUG.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[UserSettingType.NOTIFICATION.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[UserSettingType.FAMILY_MODE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[UserSettingType.DOWNLOAD_SWITCH.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[UserSettingType.PIP_SWITCH.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[UserSettingType.AUTOPLAY.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[UserSettingType.WATCH_OPTION.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[UserSettingType.PRIVACY_DATA_SETTING.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            f57356a = iArr;
        }
    }

    static final class c implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f57357a;

        c(Function1 function) {
            Intrinsics.h(function, "function");
            this.f57357a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f57357a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof androidx.p009lifecycle.c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override // androidx.p009lifecycle.c0
        public final /* synthetic */ void onChanged(Object obj) {
            this.f57357a.invoke(obj);
        }
    }

    public SettingActivity() {
        final Function0 function0 = null;
        this.mProfileViewModel = new ViewModelLazy(Reflection.b(ProfileViewModel.class), new Function0<x0>() { // from class: com.transsion.usercenter.setting.SettingActivity$special$$inlined$viewModels$default$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final x0 invoke() {
                return this.getViewModelStore();
            }
        }, new Function0<v0.c>() { // from class: com.transsion.usercenter.setting.SettingActivity$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final v0.c invoke() {
                return this.getDefaultViewModelProviderFactory();
            }
        }, new Function0<p1.a>() { // from class: com.transsion.usercenter.setting.SettingActivity$special$$inlined$viewModels$default$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final p1.a invoke() {
                p1.a aVar;
                Function0 function1 = function0;
                return (function1 == null || (aVar = (p1.a) function1.invoke()) == null) ? this.getDefaultViewModelCreationExtras() : aVar;
            }
        });
    }

    private final void A0() {
        if (this.isRequestBatteryPermission) {
            this.isRequestBatteryPermission = false;
            boolean zJ = com.transsnet.downloader.util.d.f59924a.j(this);
            this.haveBatteryPermission = zJ;
            this.downItem.p(zJ);
            t1(this.downItem);
            uy.a aVar = new uy.a();
            FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
            String name = uy.a.class.getName();
            Intrinsics.g(name, "getName(...)");
            flowEventBus.postEvent(name, aVar, 0L);
        }
    }

    private final void B0(UserInfo userInfo) {
        R0().k(userInfo != null ? userInfo.getUserId() : null);
    }

    private final void C0() {
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new SettingActivity$checkUpdateByUser$1(this, null), 3, null);
    }

    private final void D0() {
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f43370a;
        boolean z10 = !bVar.b().getBoolean("k_UGC_VIDEO_AUTO_PLAY", false);
        K0().p(z10);
        bVar.b().putBoolean("k_UGC_VIDEO_AUTO_PLAY", z10);
        t1(K0());
    }

    private final void E0() {
        this.isRequestBatteryPermission = true;
        if (this.haveBatteryPermission) {
            com.transsnet.downloader.util.d.f59924a.k(this);
        } else {
            com.transsnet.downloader.util.d.m(com.transsnet.downloader.util.d.f59924a, this, getPageName(), null, 4, null);
        }
    }

    private final t1 F0() {
        return kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new SettingActivity$clickFamilyMode$1(this, null), 3, null);
    }

    private final void G0() {
        this.isOpenPip = !this.isOpenPip;
        T0().p(this.isOpenPip);
        com.transsion.baselib.report.launch.b.f43370a.b().putBoolean("k_pip_enable", this.isOpenPip);
        t1(T0());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void H0() {
        ck.h hVar;
        try {
            ck.h hVar2 = this.mBaseLoadingDialog;
            if (hVar2 == null || !hVar2.isShowing() || (hVar = this.mBaseLoadingDialog) == null) {
                return;
            }
            hVar.dismiss();
        } catch (Exception e11) {
            Log.e("error", "e " + e11.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final vw.b I0(SettingActivity settingActivity) {
        return new vw.b(R$string.family_mode, UserSettingType.FAMILY_MODE, settingActivity.getString(R$string.family_mode_tips), Integer.valueOf(R$color.white_6), 3, null, false, false, false, false, 992, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final vw.b J0() {
        return new vw.b(com.transsion.usercenter.R$string.user_setting_invitation_code, UserSettingType.INVITATION, null, Integer.valueOf(R$color.white_6), 0, null, false, false, false, false, 1012, null);
    }

    private final vw.b K0() {
        return (vw.b) this.autoplayItem.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final vw.b L0() {
        return (vw.b) this.familyModeItem.getValue();
    }

    private final vw.b M0() {
        return (vw.b) this.fissionStateEntity.getValue();
    }

    private final String N0(long size) {
        double d11 = size / 1024.0d;
        if (d11 < 0.0d) {
            d11 = 0.0d;
        }
        String[] strArr = {" KB", " MB", " GB"};
        for (int i11 = 0; i11 < 3; i11++) {
            String str = strArr[i11];
            if (d11 < 1024.0d) {
                return MathKt.c(d11) + str;
            }
            d11 /= 1024.0d;
        }
        return MathKt.c(d11) + " GB";
    }

    private final vw.b O0() {
        return (vw.b) this.idleDataShareItem.getValue();
    }

    private final ILoginApi P0() {
        return (ILoginApi) this.loginApi.getValue();
    }

    private final vw.b Q0() {
        return (vw.b) this.logoutEntity.getValue();
    }

    private final ProfileViewModel R0() {
        return (ProfileViewModel) this.mProfileViewModel.getValue();
    }

    private final DownloadConfirmDialog S0() {
        return (DownloadConfirmDialog) this.mUserSettingLogoutDialog.getValue();
    }

    private final vw.b T0() {
        return (vw.b) this.pipItem.getValue();
    }

    private final vw.b U0() {
        return (vw.b) this.userAgreement.getValue();
    }

    private final void W0() {
        Navigator.x(TheRouter.c("/profile/setting_privacy_data"), this, null, 2, null);
    }

    private final void X0() {
        Navigator.x(TheRouter.c("/profile/watch_option"), this, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final vw.b Y0() {
        return new vw.b(com.transsion.usercenter.R$string.privacy_settings, UserSettingType.PRIVACY_DATA_SETTING, null, Integer.valueOf(R$drawable.bg_radius_bottom_6_color_white_6p), 0, null, false, false, false, false, 1012, null);
    }

    private final void Z0() {
        K0().p(com.transsion.baselib.report.launch.b.f43370a.b().getBoolean("k_UGC_VIDEO_AUTO_PLAY", false));
    }

    private final void a1() {
        boolean zJ = com.transsnet.downloader.util.d.f59924a.j(this);
        this.haveBatteryPermission = zJ;
        this.downItem.p(zJ);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void b1() {
        UserInfo userInfoI;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(com.blankj.utilcode.util.c.h() + "-" + com.blankj.utilcode.util.c.f());
        ILoginApi iLoginApiP0 = P0();
        sb2.append(" | " + ((iLoginApiP0 == null || (userInfoI = iLoginApiP0.i()) == null) ? null : userInfoI.getUserId()));
        sb2.append(" | " + Build.VERSION.RELEASE);
        sb2.append(" | " + Build.MODEL);
        NetworkType networkTypeC = nh.m.f70474a.c();
        sb2.append(" | " + (networkTypeC != null ? networkTypeC.name() : null));
        com.transsion.transfer.wifi.util.c cVar = com.transsion.transfer.wifi.util.c.f55964a;
        sb2.append(" | " + cVar.c(this));
        sb2.append(" | " + cVar.b());
        ((h1) getMViewBinding()).f62683c.setText(sb2.toString());
    }

    private final native void c1();

    private final void d1() {
        this.isOpenPip = com.transsion.baselib.report.launch.b.f43370a.b().getBoolean("k_pip_enable", true);
        T0().p(this.isOpenPip);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e1(SettingActivity settingActivity, View view) {
        ILoginApi iLoginApiP0 = settingActivity.P0();
        if (iLoginApiP0 != null) {
            iLoginApiP0.j(settingActivity);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit f1(SettingActivity settingActivity, UpdateResultEvent it) {
        Object next;
        Intrinsics.h(it, "it");
        if (it.getHasUpdate()) {
            Iterator it2 = settingActivity.mDataList.iterator();
            do {
                if (!it2.hasNext()) {
                    next = null;
                    break;
                }
                next = it2.next();
            } while (((vw.b) next).j() != UserSettingType.UPDATE);
            vw.b bVar = (vw.b) next;
            if (bVar != null) {
                bVar.q(settingActivity.getString(com.transsion.usercenter.R$string.text_diff_new_version_ready));
            }
            com.transsion.usercenter.setting.adapter.d dVar = settingActivity.mAdapter;
            if (dVar != null) {
                dVar.notifyItemChanged(0);
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g1(SettingActivity settingActivity, BaseQuickAdapter adapter, View view, int i11) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "<unused var>");
        Object item = adapter.getItem(i11);
        if (item instanceof vw.b) {
            UserSettingType userSettingTypeJ = ((vw.b) item).j();
            switch (userSettingTypeJ == null ? -1 : b.f57356a[userSettingTypeJ.ordinal()]) {
                case 1:
                    if (!nh.m.f70474a.e()) {
                        uh.b.f76753a.d(com.transsion.usercenter.R$string.base_net_err);
                    } else {
                        settingActivity.showLoading();
                        settingActivity.C0();
                    }
                    break;
                case 2:
                    settingActivity.startActivity(new Intent(settingActivity, (Class<?>) SettingAboutUsActivity.class));
                    break;
                case 3:
                    Navigator.x(TheRouter.c(WebPageIdentity.WEB_VIEW).K("url", "https://h5-static.aoneroom.com/spa/html/moviebox-privacy-policy.html"), settingActivity, null, 2, null);
                    break;
                case 4:
                    Navigator.x(TheRouter.c(WebPageIdentity.WEB_VIEW).K("url", "https://h5-static.aoneroom.com/spa/html/moviebox-terms-of-use.html"), settingActivity, null, 2, null);
                    break;
                case 5:
                    settingActivity.r1();
                    break;
                case 6:
                    settingActivity.q1();
                    break;
                case 7:
                    Navigator.w(TheRouter.c("/fission/invitation_code").K("url", "https://h5-static.aoneroom.com/spa/html/moviebox-privacy-policy.html"), settingActivity, 4097, null, 4, null);
                    break;
                case 8:
                    settingActivity.startActivity(new Intent(settingActivity, (Class<?>) LaboratoryActivity.class));
                    break;
                case 9:
                    Navigator.x(TheRouter.c("/profile/setting_notice"), settingActivity, null, 2, null);
                    break;
                case 10:
                    settingActivity.F0();
                    break;
                case 11:
                    settingActivity.E0();
                    break;
                case 12:
                    settingActivity.G0();
                    break;
                case 13:
                    settingActivity.D0();
                    break;
                case 14:
                    settingActivity.X0();
                    break;
                case 15:
                    settingActivity.W0();
                    break;
            }
        }
    }

    private final void h1() {
        b0 b0Var = (b0) new v0(this).a(b0.class);
        b0Var.f().j(this, new c(new Function1() { // from class: com.transsion.usercenter.setting.u
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SettingActivity.i1(this.f57480a, (Long) obj);
            }
        }));
        b0Var.g().j(this, new c(new Function1() { // from class: com.transsion.usercenter.setting.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SettingActivity.j1(this.f57397a, (String) obj);
            }
        }));
        b0Var.h().j(this, new c(new Function1() { // from class: com.transsion.usercenter.setting.g
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SettingActivity.k1((Boolean) obj);
            }
        }));
        this.mUserSettingViewModel = b0Var;
        R0().p().j(this, new c(new Function1() { // from class: com.transsion.usercenter.setting.h
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SettingActivity.l1(this.f57408a, (ProfileInfo) obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit i1(SettingActivity settingActivity, Long l11) {
        vw.b bVar = (vw.b) settingActivity.mDataList.get(1);
        Intrinsics.e(l11);
        bVar.m(settingActivity.N0(l11.longValue()));
        bVar.n(false);
        com.transsion.usercenter.setting.adapter.d dVar = settingActivity.mAdapter;
        if (dVar != null) {
            dVar.notifyItemChanged(1);
        }
        return Unit.f67061a;
    }

    /* JADX WARN: Code duplicated, block: B:32:0x017e  */
    /* JADX WARN: Multi-variable type inference failed */
    private final void initData() {
        boolean z10;
        String boundInviteCode;
        this.mDataList.add(new vw.b(com.transsion.usercenter.R$string.user_setting_title_app, null, null, null, 2, null, false, false, false, false, PointerIconCompat.TYPE_CELL, null));
        this.mDataList.add(new vw.b(com.transsion.usercenter.R$string.notifications, UserSettingType.NOTIFICATION, null, Integer.valueOf(R$drawable.bg_radius_top_6_color_white_6p), 0, null, false, false, false, false, 756, null));
        this.mDataList.add(new vw.b(com.transsion.usercenter.R$string.language, UserSettingType.LANGUAGE, null, Integer.valueOf(R$color.white_6), 0, null, false, false, false, false, 1012, null));
        ak.g gVar = ak.g.f639a;
        if (gVar.b()) {
            this.mDataList.add(K0());
        }
        if (!gVar.b()) {
            this.mDataList.add(new vw.b(R$string.watch_options, UserSettingType.WATCH_OPTION, null, Integer.valueOf(R$color.white_6), 0, ak.t.f652a.b() ? getString(R$string.streaming_txt) : getString(com.transsion.usercenter.R$string.feedback_download), false, false, false, false, 980, null));
        }
        this.mDataList.add(L0());
        this.mDataList.add(this.downItem);
        this.mDataList.add(T0());
        this.mDataList.add(O0());
        this.mDataList.add(new vw.b(com.transsion.usercenter.R$string.user_setting_title_more, null, null, null, 2, null, false, false, false, false, PointerIconCompat.TYPE_CELL, null));
        this.mDataList.add(new vw.b(com.transsion.usercenter.R$string.user_setting_update, UserSettingType.UPDATE, null, Integer.valueOf(R$drawable.bg_radius_top_6_color_white_6p), 0, UpdateManager.f57518f.a().g() ? getString(com.transsion.usercenter.R$string.text_diff_new_version_ready) : "", true, false, false, false, 660, null));
        FissionState fissionState = (FissionState) getIntent().getSerializableExtra("fissionState");
        if (fissionState != null && fissionState.isNew() && ((boundInviteCode = fissionState.getBoundInviteCode()) == null || boundInviteCode.length() == 0)) {
            this.mDataList.add(M0());
        }
        this.mDataList.add(new vw.b(com.transsion.usercenter.R$string.user_setting_About_us, UserSettingType.ABOUT_US, null, Integer.valueOf(R$color.white_6), 0, null, false, false, false, false, 1012, null));
        this.mDataList.add(new vw.b(com.transsion.usercenter.R$string.login_privacy, UserSettingType.PRIVACY_POLICY, null, Integer.valueOf(R$color.white_6), 0, null, false, false, false, false, 1012, null));
        ILoginApi iLoginApiP0 = P0();
        if (iLoginApiP0 != null) {
            z10 = iLoginApiP0.a();
        }
        this.mDataList.add(U0());
        ILoginApi iLoginApiP1 = P0();
        if (iLoginApiP1 != null) {
            iLoginApiP1.g(this);
        }
        if (z10) {
            U0().l(Integer.valueOf(R$color.white_6));
            ((h1) getMViewBinding()).f62682b.setVisibility(8);
            this.mDataList.add(Q0());
        } else {
            U0().l(Integer.valueOf(R$drawable.bg_radius_bottom_6_color_white_6p));
            ((h1) getMViewBinding()).f62682b.setVisibility(0);
        }
        com.transsion.usercenter.setting.adapter.d dVar = this.mAdapter;
        if (dVar != null) {
            dVar.q1(this.mDataList);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit j1(SettingActivity settingActivity, String str) {
        settingActivity.H0();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit k1(Boolean bool) {
        uh.b.f76753a.d(com.transsion.usercenter.R$string.user_setting_clear_cache_success);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit l1(SettingActivity settingActivity, ProfileInfo profileInfo) {
        String boundInviteCode;
        FissionState fissionState = profileInfo != null ? profileInfo.getFissionState() : null;
        ILoginApi iLoginApiP0 = settingActivity.P0();
        if (iLoginApiP0 != null && iLoginApiP0.a() && fissionState != null && fissionState.isNew() && (((boundInviteCode = fissionState.getBoundInviteCode()) == null || boundInviteCode.length() == 0) && settingActivity.mDataList.size() > 1 && !Intrinsics.c(settingActivity.mDataList.get(1), settingActivity.M0()))) {
            settingActivity.mDataList.add(1, settingActivity.M0());
            com.transsion.usercenter.setting.adapter.d dVar = settingActivity.mAdapter;
            if (dVar != null) {
                dVar.notifyItemInserted(1);
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ILoginApi m1() {
        return (ILoginApi) TheRouter.d(ILoginApi.class, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final vw.b n1() {
        return new vw.b(com.transsion.usercenter.R$string.logout, UserSettingType.LOGOUT, null, Integer.valueOf(R$drawable.bg_radius_bottom_6_color_white_6p), 0, null, false, false, false, false, 1012, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DownloadConfirmDialog o1(SettingActivity settingActivity) {
        return DownloadConfirmDialog.Companion.b(DownloadConfirmDialog.INSTANCE, null, null, settingActivity.getString(com.transsion.usercenter.R$string.logout_tips), null, 11, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final vw.b p1(SettingActivity settingActivity) {
        return new vw.b(com.transsion.usercenter.R$string.auto_activate_miniplayer, UserSettingType.PIP_SWITCH, settingActivity.getString(com.transsion.usercenter.R$string.auto_activate_miniplayer_tips), Integer.valueOf(R$color.white_6), 3, null, false, false, false, false, 992, null);
    }

    private final void q1() {
        new LocaleLanguageListDialog().k0(this, "LocaleLanguageListDialog");
    }

    private final void r1() {
        S0().s0(new Function1() { // from class: com.transsion.usercenter.setting.l
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SettingActivity.s1(this.f57412a, ((Boolean) obj).booleanValue());
            }
        });
        S0().k0(this, "LogoutDialog");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit s1(SettingActivity settingActivity, boolean z10) {
        ILoginApi iLoginApiP0;
        if (z10 && (iLoginApiP0 = settingActivity.P0()) != null) {
            iLoginApiP0.d();
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showLoading() {
        if (this.mBaseLoadingDialog == null) {
            this.mBaseLoadingDialog = new ck.h(this);
        }
        ck.h hVar = this.mBaseLoadingDialog;
        if (hVar != null) {
            hVar.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void t1(vw.b item) {
        com.transsion.usercenter.setting.adapter.d dVar;
        int iIndexOf = this.mDataList.indexOf(item);
        if (iIndexOf == -1 || (dVar = this.mAdapter) == null) {
            return;
        }
        dVar.notifyItemChanged(iIndexOf, ClientABTestDTOKt.SWITCH);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final vw.b u1() {
        return new vw.b(com.transsion.usercenter.R$string.login_user_agreement, UserSettingType.USER_AGREEMENT, null, Integer.valueOf(R$drawable.bg_radius_bottom_6_color_white_6p), 0, null, false, false, false, false, 1012, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final vw.b z0(SettingActivity settingActivity) {
        return new vw.b(com.transsion.usercenter.R$string.autoplay, UserSettingType.AUTOPLAY, settingActivity.getString(com.transsion.usercenter.R$string.autoplay_tips), Integer.valueOf(R$color.white_6), 3, null, false, false, false, false, 992, null);
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    /* JADX INFO: renamed from: V0, reason: merged with bridge method [inline-methods] */
    public h1 getViewBinding() {
        h1 h1VarC = h1.c(getLayoutInflater());
        Intrinsics.g(h1VarC, "inflate(...)");
        return h1VarC;
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    public String getPageName() {
        return "setting";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void initView() {
        TitleLayout toolBar = ((h1) getMViewBinding()).f62685e;
        Intrinsics.g(toolBar, "toolBar");
        jg.c.e(toolBar);
        b1();
        com.transsion.usercenter.setting.adapter.d dVar = new com.transsion.usercenter.setting.adapter.d(null, 1, null);
        dVar.w1(new p6.d() { // from class: com.transsion.usercenter.setting.i
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                SettingActivity.g1(this.f57409a, baseQuickAdapter, view, i11);
            }
        });
        this.mAdapter = dVar;
        RecyclerView recyclerView = ((h1) getMViewBinding()).f62684d;
        recyclerView.setAdapter(this.mAdapter);
        recyclerView.setLayoutManager(new LinearLayoutManager(this, 1, false));
        ((h1) getMViewBinding()).f62685e.setTitleText(com.transsion.usercenter.R$string.user_setting);
        ((h1) getMViewBinding()).f62682b.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.setting.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingActivity.e1(this.f57410a, view);
            }
        });
        Function1 function1 = new Function1() { // from class: com.transsion.usercenter.setting.k
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SettingActivity.f1(this.f57411a, (UpdateResultEvent) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = UpdateResultEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(this, name, Lifecycle.State.CREATED, y0.c().q(), false, function1);
        a1();
        d1();
        c1();
        if (ak.g.f639a.b()) {
            Z0();
        }
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isStatusDark() {
        return this.darkModeFollowSys && !ak.x.f658a.a();
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isTranslucent() {
        return true;
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == 4097 && resultCode == -1) {
            int iIndexOf = this.mDataList.indexOf(M0());
            if (iIndexOf >= 0) {
                this.mDataList.remove(iIndexOf);
            }
            com.transsion.usercenter.setting.adapter.d dVar = this.mAdapter;
            if (dVar != null) {
                dVar.notifyItemRemoved(iIndexOf);
            }
        }
    }

    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        initView();
        initData();
        h1();
    }

    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        ILoginApi iLoginApiP0 = P0();
        if (iLoginApiP0 != null) {
            iLoginApiP0.p(this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // dz.a
    public void onLogin(UserInfo user) {
        Intrinsics.h(user, "user");
        ((h1) getMViewBinding()).f62682b.setVisibility(8);
        com.transsion.usercenter.setting.adapter.d dVar = this.mAdapter;
        if (dVar != null) {
            dVar.p(Q0());
        }
        B0(user);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // dz.a
    public void onLogout() {
        ((h1) getMViewBinding()).f62682b.setVisibility(0);
        this.mDataList.remove(Q0());
        this.mDataList.remove(M0());
        com.transsion.usercenter.setting.adapter.d dVar = this.mAdapter;
        if (dVar != null) {
            dVar.notifyDataSetChanged();
        }
        onBackPressed();
    }

    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseMusicFloatActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        A0();
    }

    @Override // dz.a
    public void onUpdateUserInfo(UserInfo userInfo) {
        dz.a.C0737a.c(this, userInfo);
    }
}
