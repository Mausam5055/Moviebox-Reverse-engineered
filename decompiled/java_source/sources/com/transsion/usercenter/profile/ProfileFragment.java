package com.transsion.usercenter.profile;

import android.R;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.activity.result.ActivityResult;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import androidx.p009lifecycle.y0;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.tabs.TabLayoutMediator;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.gyf.immersionbar.ImmersionBar;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.NoTouchToolBar;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.TnTextView;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.memberapi.IMemberApi;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$mipmap;
import com.transsion.usercenter.R$string;
import com.transsion.usercenter.edit.ProfileEditCenterActivity;
import com.transsion.usercenter.message.UserMessageActivity;
import com.transsion.usercenter.profile.bean.BlockInfo;
import com.transsion.usercenter.profile.bean.CoverUrl;
import com.transsion.usercenter.profile.bean.EntranceInfo;
import com.transsion.usercenter.profile.bean.Group;
import com.transsion.usercenter.profile.bean.ProfileEntranceInfo;
import com.transsion.usercenter.profile.bean.ProfileInfo;
import com.transsion.usercenter.profile.dialog.BlockDialog;
import com.transsion.usercenter.profile.report.ReportDialog;
import com.transsion.usercenter.profile.see.ProfileSeeActivity;
import com.transsion.usercenter.setting.SettingActivity;
import com.transsion.usercenter.widget.MyRoomView;
import com.transsion.usercenterapi.ReportType;
import com.transsion.usercenterapi.UpdateResultEvent;
import com.transsion.version.update.UpdateManager;
import com.transsion.web.api.WebPageIdentity;
import com.transsion.wrapperad.view.NativeSlideshowView;
import com.transsnet.downloader.adapter.u0;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.loginapi.ILoginApi;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import fw.c1;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000Â\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 §\u00012\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u0004:\u0001[B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\u0006J\u000f\u0010\t\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\t\u0010\u0006J\u000f\u0010\n\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u0006J\u000f\u0010\u000b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000b\u0010\u0006J\u0019\u0010\u000e\u001a\u00020\u00072\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J?\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u00142\b\u0010\u0017\u001a\u0004\u0018\u00010\u00162\b\u0010\u0018\u001a\u0004\u0018\u00010\u00162\b\u0010\u0019\u001a\u0004\u0018\u00010\u00162\b\u0010\u001a\u001a\u0004\u0018\u00010\u0016H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001e\u001a\u00020\u001dH\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u001dH\u0002¢\u0006\u0004\b \u0010\u001fJ\u001b\u0010#\u001a\u00020\u0007*\u00020\u00022\u0006\u0010\"\u001a\u00020!H\u0002¢\u0006\u0004\b#\u0010$J\u001f\u0010'\u001a\u00020\u00142\u0006\u0010%\u001a\u00020\u00142\u0006\u0010&\u001a\u00020!H\u0002¢\u0006\u0004\b'\u0010(J\u000f\u0010)\u001a\u00020\u0007H\u0002¢\u0006\u0004\b)\u0010\u0006J\u000f\u0010*\u001a\u00020\u0007H\u0002¢\u0006\u0004\b*\u0010\u0006J\u001b\u0010,\u001a\u00020\u0007*\u00020+2\u0006\u0010\"\u001a\u00020!H\u0002¢\u0006\u0004\b,\u0010-J\u000f\u0010.\u001a\u00020\u001dH\u0002¢\u0006\u0004\b.\u0010\u001fJ\u0019\u00101\u001a\u00020\u00072\b\u00100\u001a\u0004\u0018\u00010/H\u0002¢\u0006\u0004\b1\u00102J\u000f\u00103\u001a\u00020\u0007H\u0002¢\u0006\u0004\b3\u0010\u0006J\u0017\u00106\u001a\u00020\u00072\u0006\u00105\u001a\u000204H\u0002¢\u0006\u0004\b6\u00107J\u0017\u00109\u001a\u00020\u00072\u0006\u00108\u001a\u000204H\u0002¢\u0006\u0004\b9\u00107J\u000f\u0010:\u001a\u00020\u0007H\u0002¢\u0006\u0004\b:\u0010\u0006J\u0017\u0010=\u001a\u00020\u00022\u0006\u0010<\u001a\u00020;H\u0016¢\u0006\u0004\b=\u0010>J\u0019\u0010A\u001a\u00020\u00072\b\u0010@\u001a\u0004\u0018\u00010?H\u0016¢\u0006\u0004\bA\u0010BJ!\u0010D\u001a\u00020\u00072\u0006\u0010C\u001a\u00020+2\b\u0010@\u001a\u0004\u0018\u00010?H\u0016¢\u0006\u0004\bD\u0010EJ!\u0010F\u001a\u00020\u00072\u0006\u0010C\u001a\u00020+2\b\u0010@\u001a\u0004\u0018\u00010?H\u0016¢\u0006\u0004\bF\u0010EJ\u000f\u0010G\u001a\u00020\u0007H\u0016¢\u0006\u0004\bG\u0010\u0006J\u0017\u0010I\u001a\u00020\u00072\u0006\u0010H\u001a\u00020\u001dH\u0016¢\u0006\u0004\bI\u0010JJ\u000f\u0010K\u001a\u00020\u0007H\u0016¢\u0006\u0004\bK\u0010\u0006J\u000f\u0010L\u001a\u00020\u0007H\u0016¢\u0006\u0004\bL\u0010\u0006J\u000f\u0010M\u001a\u00020\u0007H\u0016¢\u0006\u0004\bM\u0010\u0006J\u000f\u0010N\u001a\u00020\u0007H\u0016¢\u0006\u0004\bN\u0010\u0006J\u0017\u0010O\u001a\u00020\u00072\u0006\u0010C\u001a\u00020+H\u0016¢\u0006\u0004\bO\u0010PJ\u000f\u0010Q\u001a\u00020\u0007H\u0016¢\u0006\u0004\bQ\u0010\u0006J\u0017\u0010S\u001a\u00020\u00072\u0006\u0010R\u001a\u00020\fH\u0016¢\u0006\u0004\bS\u0010\u000fJ\u0017\u0010T\u001a\u00020\u00072\u0006\u0010R\u001a\u00020\fH\u0016¢\u0006\u0004\bT\u0010\u000fJ\u000f\u0010U\u001a\u00020\u0007H\u0016¢\u0006\u0004\bU\u0010\u0006J\u000f\u0010W\u001a\u00020VH\u0016¢\u0006\u0004\bW\u0010XJ\u0015\u0010Z\u001a\u00020\u00072\u0006\u0010Y\u001a\u00020\u001d¢\u0006\u0004\bZ\u0010JR\u0018\u0010]\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b[\u0010\\R\u0018\u0010`\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b^\u0010_R\u001b\u0010f\u001a\u00020a8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bb\u0010c\u001a\u0004\bd\u0010eR\u0018\u0010j\u001a\u0004\u0018\u00010g8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bh\u0010iR\u001d\u0010o\u001a\u0004\u0018\u00010k8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bl\u0010c\u001a\u0004\bm\u0010nR\u001e\u0010t\u001a\n\u0012\u0004\u0012\u00020q\u0018\u00010p8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\br\u0010sR\u001e\u0010v\u001a\n\u0012\u0004\u0012\u00020q\u0018\u00010p8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bu\u0010sR\u0016\u0010y\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bw\u0010xR\u0016\u0010}\u001a\u00020z8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b{\u0010|R\u0016\u0010\u007f\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b~\u0010xR \u0010\u0082\u0001\u001a\u0004\u0018\u00010k8BX\u0082\u0084\u0002¢\u0006\u000e\n\u0005\b\u0080\u0001\u0010c\u001a\u0005\b\u0081\u0001\u0010nR\u0019\u0010\u0085\u0001\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0083\u0001\u0010\u0084\u0001R\u0019\u0010\u0087\u0001\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0086\u0001\u0010\u0084\u0001R \u0010\u008c\u0001\u001a\u00030\u0088\u00018BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b\u0089\u0001\u0010c\u001a\u0006\b\u008a\u0001\u0010\u008b\u0001R\u001f\u0010\u0090\u0001\u001a\u00020\u00148\u0006X\u0086D¢\u0006\u0010\n\u0006\b\u008d\u0001\u0010\u0084\u0001\u001a\u0006\b\u008e\u0001\u0010\u008f\u0001R\u001f\u0010\u0093\u0001\u001a\u00020\u00148\u0006X\u0086D¢\u0006\u0010\n\u0006\b\u0091\u0001\u0010\u0084\u0001\u001a\u0006\b\u0092\u0001\u0010\u008f\u0001R)\u0010\u0098\u0001\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u0094\u0001\u0010\u0084\u0001\u001a\u0006\b\u0095\u0001\u0010\u008f\u0001\"\u0006\b\u0096\u0001\u0010\u0097\u0001R\u001a\u0010\u009c\u0001\u001a\u00030\u0099\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u009a\u0001\u0010\u009b\u0001R\u0018\u0010 \u0001\u001a\u00030\u009d\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u009e\u0001\u0010\u009f\u0001R(\u0010¦\u0001\u001a\u00020z8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b¡\u0001\u0010|\u001a\u0006\b¢\u0001\u0010£\u0001\"\u0006\b¤\u0001\u0010¥\u0001¨\u0006¨\u0001"}, d2 = {"Lcom/transsion/usercenter/profile/ProfileFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lfw/m0;", "Landroid/view/View$OnClickListener;", "Ldz/a;", "<init>", "()V", "", "g1", "G0", "D0", "O0", "Lcom/transsnet/loginapi/bean/UserInfo;", "userInfo", "m1", "(Lcom/transsnet/loginapi/bean/UserInfo;)V", "Lcom/transsion/usercenter/profile/bean/ProfileInfo;", "profileInfo", "k1", "(Lcom/transsion/usercenter/profile/bean/ProfileInfo;)V", "", RewardPlus.AMOUNT, "Lcom/transsion/usercenter/profile/bean/CoverUrl;", "url1", "url2", "url3", "url4", "h1", "(ILcom/transsion/usercenter/profile/bean/CoverUrl;Lcom/transsion/usercenter/profile/bean/CoverUrl;Lcom/transsion/usercenter/profile/bean/CoverUrl;Lcom/transsion/usercenter/profile/bean/CoverUrl;)V", "", "X0", "()Z", "W0", "", "alpha", "j1", "(Lfw/m0;F)V", TtmlNode.ATTR_TTS_COLOR, "fraction", "z0", "(IF)I", "d1", ToolBar.REFRESH, "Landroid/view/View;", "A0", "(Landroid/view/View;F)V", "checkLogin", "Lcom/transsion/usercenter/profile/bean/EntranceInfo;", "entranceInfo", "F0", "(Lcom/transsion/usercenter/profile/bean/EntranceInfo;)V", "C0", "", "moduleName", "e1", "(Ljava/lang/String;)V", "tabName", "f1", "c1", "Landroid/view/LayoutInflater;", "inflater", "I0", "(Landroid/view/LayoutInflater;)Lfw/m0;", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "initData", "onResume", "hidden", "onHiddenChanged", "(Z)V", "logPause", "onPause", "logResume", "lazyLoadData", "onClick", "(Landroid/view/View;)V", "onDestroy", "user", "onUpdateUserInfo", "onLogin", "onLogout", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "isExpand", "B0", "a", "Lcom/transsnet/loginapi/bean/UserInfo;", "mUserInfo", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/usercenter/profile/bean/ProfileInfo;", "mProfileInfo", "Lcom/transsion/usercenter/profile/ProfileViewModel;", "c", "Lkotlin/Lazy;", "H0", "()Lcom/transsion/usercenter/profile/ProfileViewModel;", "mProfileViewModel", "Lcom/transsion/usercenter/profile/f;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/usercenter/profile/f;", "mNoticeMessageViewModel", "Lcom/transsnet/loginapi/ILoginApi;", "e", "getLoginApi", "()Lcom/transsnet/loginapi/ILoginApi;", "loginApi", "Landroidx/activity/result/b;", "Landroid/content/Intent;", "f", "Landroidx/activity/result/b;", "loginLaunch", "g", "seeListLaunch", "h", "Z", "isNeedShowLoginActivity", "", "i", "J", "recordRefreshingTime", "j", "isSelf", CampaignEx.JSON_KEY_AD_K, "getMLoginApi", "mLoginApi", "l", "I", "mTabSelectIndex", "m", "refreshTime", "Landroid/os/Handler;", "n", "getMHandler", "()Landroid/os/Handler;", "mHandler", "o", "getMaxStep", "()I", "maxStep", TtmlNode.TAG_P, "getStep", "step", CampaignEx.JSON_KEY_AD_Q, "getDefault", "setDefault", "(I)V", "default", "Lck/h;", CampaignEx.JSON_KEY_AD_R, "Lck/h;", "mLoadingDialog", "Landroid/view/animation/DecelerateInterpolator;", "s", "Landroid/view/animation/DecelerateInterpolator;", "appbarChildAlphaDecelerateInterpolator", "t", "getResumeTimeStamp", "()J", "setResumeTimeStamp", "(J)V", "resumeTimeStamp", TmcStartParams.KEY_URL_SHORT, "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ProfileFragment extends BaseFragment<fw.m0> implements View.OnClickListener, dz.a {

    /* JADX INFO: renamed from: u, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private UserInfo mUserInfo;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private ProfileInfo mProfileInfo;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final Lazy mProfileViewModel;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private f mNoticeMessageViewModel;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final Lazy loginApi;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private androidx.activity.result.b loginLaunch;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private androidx.activity.result.b seeListLaunch;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private boolean isNeedShowLoginActivity;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private long recordRefreshingTime;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private boolean isSelf;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private final Lazy mLoginApi;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private int mTabSelectIndex;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private int refreshTime;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private final Lazy mHandler;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private final int maxStep;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private final int step;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private int default;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private ck.h mLoadingDialog;

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    private final DecelerateInterpolator appbarChildAlphaDecelerateInterpolator;

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    private long resumeTimeStamp;

    /* JADX INFO: renamed from: com.transsion.usercenter.profile.ProfileFragment$a, reason: from kotlin metadata */
    /* JADX INFO: loaded from: classes6.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ProfileFragment a(String str, UserInfo userInfo) {
            ProfileFragment profileFragment = new ProfileFragment();
            Bundle bundle = new Bundle();
            bundle.putSerializable("userInfo", userInfo);
            bundle.putString("userId", str);
            profileFragment.setArguments(bundle);
            return profileFragment;
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    public static final class b implements TabLayout.OnTabSelectedListener {
        b() {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabReselected(TabLayout.Tab tab) {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabSelected(TabLayout.Tab tab) {
            View customView = tab != null ? tab.getCustomView() : null;
            Intrinsics.f(customView, "null cannot be cast to non-null type android.widget.TextView");
            TextView textView = (TextView) customView;
            Context context = textView.getContext();
            Intrinsics.g(context, "getContext(...)");
            textView.setTypeface(jg.a.a(context));
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabUnselected(TabLayout.Tab tab) {
            TextView textView = (TextView) (tab != null ? tab.getCustomView() : null);
            if (textView == null) {
                return;
            }
            Context context = textView.getContext();
            Intrinsics.g(context, "getContext(...)");
            textView.setTypeface(jg.a.d(context));
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    public static final class c extends ViewPager2.OnPageChangeCallback {
        c() {
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int i11) {
            super.onPageSelected(i11);
            ProfileFragment.this.mTabSelectIndex = i11;
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    public static final class d implements u0.b {
        d() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit d(ProfileFragment profileFragment) {
            profileFragment.d1();
            return Unit.f67061a;
        }

        @Override // com.transsnet.downloader.adapter.u0.b
        public void a(int i11, int i12) {
        }

        @Override // com.transsnet.downloader.adapter.u0.b
        public void b(int i11, int i12, int i13, boolean z10) {
            String userId;
            UserInfo userInfo;
            if (i13 == 1) {
                BlockDialog.Companion aVar = BlockDialog.INSTANCE;
                String value = ReportType.USER.getValue();
                ProfileInfo profileInfo = ProfileFragment.this.mProfileInfo;
                BlockDialog blockDialogA = aVar.a(value, z10, profileInfo != null ? profileInfo.getUserInfo() : null);
                Context contextRequireContext = ProfileFragment.this.requireContext();
                final ProfileFragment profileFragment = ProfileFragment.this;
                blockDialogA.A0(contextRequireContext, "block", new Function0() { // from class: com.transsion.usercenter.profile.c0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return ProfileFragment.d.d(profileFragment);
                    }
                });
                return;
            }
            ReportDialog.Companion aVar2 = ReportDialog.INSTANCE;
            String value2 = ReportType.USER.getValue();
            ProfileInfo profileInfo2 = ProfileFragment.this.mProfileInfo;
            if (profileInfo2 == null || (userInfo = profileInfo2.getUserInfo()) == null || (userId = userInfo.getUserId()) == null) {
                userId = "";
            }
            aVar2.a(value2, userId).k0(ProfileFragment.this.requireContext(), "report");
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    static final class e implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f57081a;

        e(Function1 function) {
            Intrinsics.h(function, "function");
            this.f57081a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f57081a;
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
            this.f57081a.invoke(obj);
        }
    }

    public ProfileFragment() {
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.transsion.usercenter.profile.ProfileFragment$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return this;
            }
        };
        this.mProfileViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(ProfileViewModel.class), new Function0<x0>() { // from class: com.transsion.usercenter.profile.ProfileFragment$special$$inlined$viewModels$default$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final x0 invoke() {
                x0 viewModelStore = ((y0) function0.invoke()).getViewModelStore();
                Intrinsics.g(viewModelStore, "ownerProducer().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<v0.c>() { // from class: com.transsion.usercenter.profile.ProfileFragment$special$$inlined$viewModels$default$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final v0.c invoke() {
                Object objInvoke = function0.invoke();
                androidx.p009lifecycle.m mVar = objInvoke instanceof androidx.p009lifecycle.m ? (androidx.p009lifecycle.m) objInvoke : null;
                v0.c defaultViewModelProviderFactory = mVar != null ? mVar.getDefaultViewModelProviderFactory() : null;
                if (defaultViewModelProviderFactory == null) {
                    defaultViewModelProviderFactory = this.getDefaultViewModelProviderFactory();
                }
                Intrinsics.g(defaultViewModelProviderFactory, "(ownerProducer() as? Has…tViewModelProviderFactory");
                return defaultViewModelProviderFactory;
            }
        });
        this.loginApi = LazyKt.b(new Function0() { // from class: com.transsion.usercenter.profile.g
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ProfileFragment.Z0();
            }
        });
        this.mLoginApi = LazyKt.b(new Function0() { // from class: com.transsion.usercenter.profile.r
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ProfileFragment.mLoginApi_delegate$lambda$1();
            }
        });
        this.refreshTime = 15;
        this.mHandler = LazyKt.b(new Function0() { // from class: com.transsion.usercenter.profile.u
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ProfileFragment.a1();
            }
        });
        this.maxStep = 128;
        this.step = 2;
        this.default = 1;
        this.appbarChildAlphaDecelerateInterpolator = new DecelerateInterpolator();
    }

    private final void A0(View view, float f11) {
        view.setAlpha(f11);
    }

    private final void C0() {
        if (isAdded()) {
            oh.g gVar = oh.g.f71020a;
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            if (gVar.a(contextRequireContext)) {
                refresh();
                return;
            }
            ck.h hVar = this.mLoadingDialog;
            if (hVar == null) {
                Intrinsics.z("mLoadingDialog");
                hVar = null;
            }
            hVar.dismiss();
            com.tn.lib.widget.toast.core.h.f41479a.k(R$string.no_network);
        }
    }

    private final void D0() {
        LinearLayoutCompat linearLayoutCompat;
        View view;
        View view2;
        TabLayout tabLayout;
        View view3;
        LinearLayoutCompat linearLayoutCompat2;
        LinearLayoutCompat linearLayoutCompat3;
        TnTextView tnTextView;
        LinearLayoutCompat linearLayoutCompat4;
        View view4;
        TnTextView tnTextView2;
        View view5;
        TabLayout tabLayout2;
        View view6;
        LinearLayoutCompat linearLayoutCompat5;
        LinearLayoutCompat linearLayoutCompat6;
        BlockInfo blockInfo;
        BlockInfo blockInfo2;
        ProfileInfo profileInfo = this.mProfileInfo;
        boolean block = (profileInfo == null || (blockInfo2 = profileInfo.getBlockInfo()) == null) ? false : blockInfo2.getBlock();
        ProfileInfo profileInfo2 = this.mProfileInfo;
        boolean blocked = (profileInfo2 == null || (blockInfo = profileInfo2.getBlockInfo()) == null) ? false : blockInfo.getBlocked();
        if (getIsSelf() || !(block || blocked)) {
            fw.m0 mViewBinding = getMViewBinding();
            if (mViewBinding != null && (linearLayoutCompat3 = mViewBinding.B) != null) {
                linearLayoutCompat3.setVisibility(0);
            }
            fw.m0 mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (linearLayoutCompat2 = mViewBinding2.f62802w) != null) {
                linearLayoutCompat2.setVisibility(0);
            }
            fw.m0 mViewBinding3 = getMViewBinding();
            if (mViewBinding3 != null && (view3 = mViewBinding3.R) != null) {
                view3.setVisibility(0);
            }
            fw.m0 mViewBinding4 = getMViewBinding();
            if (mViewBinding4 != null && (tabLayout = mViewBinding4.E) != null) {
                tabLayout.setVisibility(0);
            }
            fw.m0 mViewBinding5 = getMViewBinding();
            if (mViewBinding5 != null && (view2 = mViewBinding5.f62784e) != null) {
                view2.setVisibility(0);
            }
            fw.m0 mViewBinding6 = getMViewBinding();
            if (mViewBinding6 != null && (view = mViewBinding6.Y) != null) {
                view.setVisibility(8);
            }
            fw.m0 mViewBinding7 = getMViewBinding();
            if (mViewBinding7 == null || (linearLayoutCompat = mViewBinding7.f62800u) == null) {
                return;
            }
            linearLayoutCompat.setVisibility(8);
            return;
        }
        fw.m0 mViewBinding8 = getMViewBinding();
        if (mViewBinding8 != null && (linearLayoutCompat6 = mViewBinding8.B) != null) {
            linearLayoutCompat6.setVisibility(4);
        }
        fw.m0 mViewBinding9 = getMViewBinding();
        if (mViewBinding9 != null && (linearLayoutCompat5 = mViewBinding9.f62802w) != null) {
            linearLayoutCompat5.setVisibility(4);
        }
        fw.m0 mViewBinding10 = getMViewBinding();
        if (mViewBinding10 != null && (view6 = mViewBinding10.R) != null) {
            view6.setVisibility(4);
        }
        fw.m0 mViewBinding11 = getMViewBinding();
        if (mViewBinding11 != null && (tabLayout2 = mViewBinding11.E) != null) {
            tabLayout2.setVisibility(4);
        }
        fw.m0 mViewBinding12 = getMViewBinding();
        if (mViewBinding12 != null && (view5 = mViewBinding12.f62784e) != null) {
            view5.setVisibility(4);
        }
        if (blocked) {
            fw.m0 mViewBinding13 = getMViewBinding();
            if (mViewBinding13 != null && (tnTextView2 = mViewBinding13.H) != null) {
                tnTextView2.setTextById(R$string.str_block_been);
            }
        } else {
            fw.m0 mViewBinding14 = getMViewBinding();
            if (mViewBinding14 != null && (tnTextView = mViewBinding14.H) != null) {
                tnTextView.setTextAction(new Function0() { // from class: com.transsion.usercenter.profile.t
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return ProfileFragment.E0(this.f57293a);
                    }
                });
            }
        }
        fw.m0 mViewBinding15 = getMViewBinding();
        if (mViewBinding15 != null && (view4 = mViewBinding15.Y) != null) {
            view4.setVisibility(0);
        }
        fw.m0 mViewBinding16 = getMViewBinding();
        if (mViewBinding16 == null || (linearLayoutCompat4 = mViewBinding16.f62800u) == null) {
            return;
        }
        linearLayoutCompat4.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence E0(ProfileFragment profileFragment) {
        UserInfo userInfo;
        String string = profileFragment.getString(R$string.str_block_blocked);
        ProfileInfo profileInfo = profileFragment.mProfileInfo;
        return string + " " + ((profileInfo == null || (userInfo = profileInfo.getUserInfo()) == null) ? null : userInfo.getNickname());
    }

    private final void F0(EntranceInfo entranceInfo) {
        c1 c1Var;
        String jumpUrl;
        String title;
        fw.m0 mViewBinding = getMViewBinding();
        if (mViewBinding == null || (c1Var = mViewBinding.f62785f) == null) {
            return;
        }
        IMemberApi iMemberApi = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
        boolean zB = iMemberApi != null ? iMemberApi.B() : false;
        if (!getIsSelf() || entranceInfo == null || (jumpUrl = entranceInfo.getJumpUrl()) == null || jumpUrl.length() == 0 || (title = entranceInfo.getTitle()) == null || title.length() == 0 || !zB) {
            ConstraintLayout root = c1Var.getRoot();
            Intrinsics.g(root, "getRoot(...)");
            jg.c.g(root);
        } else {
            ConstraintLayout root2 = c1Var.getRoot();
            Intrinsics.g(root2, "getRoot(...)");
            jg.c.k(root2);
            c1Var.f62603d.setText(entranceInfo.getTitle());
            c1Var.f62601b.setText(entranceInfo.getDescription());
        }
    }

    private final void G0() {
        ConstraintLayout constraintLayout;
        NoTouchToolBar noTouchToolBar;
        fw.m0 mViewBinding = getMViewBinding();
        if (mViewBinding != null && (noTouchToolBar = mViewBinding.F) != null) {
            jg.c.e(noTouchToolBar);
        }
        fw.m0 mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (constraintLayout = mViewBinding2.G) != null) {
            jg.c.e(constraintLayout);
        }
        FragmentActivity activity = getActivity();
        ProfileActivity profileActivity = activity instanceof ProfileActivity ? (ProfileActivity) activity : null;
        if (profileActivity != null) {
            profileActivity.w0();
        }
    }

    private final ProfileViewModel H0() {
        return (ProfileViewModel) this.mProfileViewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit J0(ProfileFragment profileFragment, ProfileInfo profileInfo) {
        if (profileInfo != null) {
            profileFragment.k1(profileInfo);
        }
        ck.h hVar = profileFragment.mLoadingDialog;
        if (hVar == null) {
            Intrinsics.z("mLoadingDialog");
            hVar = null;
        }
        hVar.dismiss();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit K0(final ProfileFragment profileFragment, Pair pair) {
        MyRoomView myRoomView;
        List list;
        Unit unit = null;
        ArrayList arrayListH = CollectionsKt.h(null, null, null);
        profileFragment.getClass();
        if (pair != null && (list = (List) pair.getSecond()) != null) {
            int i11 = 0;
            for (Object obj : list) {
                int i12 = i11 + 1;
                if (i11 < 0) {
                    CollectionsKt.u();
                }
                DownloadBean downloadBean = (DownloadBean) obj;
                arrayListH.set(i11, new MyRoomView.b(downloadBean.getCover(), downloadBean.getType()));
                i11 = i12;
            }
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            fw.m0 mViewBinding = profileFragment.getMViewBinding();
            if (mViewBinding != null && (myRoomView = mViewBinding.f62804y) != null) {
                myRoomView.showDownloadsData(2, Integer.valueOf(pair != null ? ((Number) pair.getFirst()).intValue() : 0), (MyRoomView.b) arrayListH.get(0), (MyRoomView.b) arrayListH.get(1), (MyRoomView.b) arrayListH.get(2), new Function0() { // from class: com.transsion.usercenter.profile.n
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return ProfileFragment.L0(this.f57232a);
                    }
                });
                unit = Unit.f67061a;
            }
            Result.m454constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit L0(ProfileFragment profileFragment) {
        profileFragment.e1("downloads");
        Navigator.x(TheRouter.c("/download/panel_activity"), profileFragment.requireContext(), null, 2, null);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit M0(ProfileFragment profileFragment, ProfileEntranceInfo profileEntranceInfo) {
        profileFragment.F0(profileEntranceInfo != null ? profileEntranceInfo.getEntranceInfo() : null);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit N0(ProfileFragment profileFragment, Integer num) {
        View view;
        View view2;
        fw.m0 mViewBinding = profileFragment.getMViewBinding();
        if (mViewBinding != null && (view2 = mViewBinding.W) != null) {
            view2.setVisibility(num.intValue() > 0 ? 0 : 8);
        }
        fw.m0 mViewBinding2 = profileFragment.getMViewBinding();
        if (mViewBinding2 != null && (view = mViewBinding2.X) != null) {
            view.setVisibility(num.intValue() > 0 ? 0 : 8);
        }
        return Unit.f67061a;
    }

    private final void O0() {
        fw.m0 mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            TabLayoutMediator tabLayoutMediator = new TabLayoutMediator(mViewBinding.E, mViewBinding.S, new TabLayoutMediator.TabConfigurationStrategy() { // from class: com.transsion.usercenter.profile.m
                @Override // com.google.android.material.tabs.TabLayoutMediator.TabConfigurationStrategy
                public final void onConfigureTab(TabLayout.Tab tab, int i11) {
                    ProfileFragment.P0(this.f57231a, tab, i11);
                }
            });
            mViewBinding.E.addOnTabSelectedListener((TabLayout.OnTabSelectedListener) new b());
            tabLayoutMediator.attach();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void P0(final ProfileFragment profileFragment, final TabLayout.Tab tab, int i11) {
        Intrinsics.h(tab, "tab");
        Context contextRequireContext = profileFragment.requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        TnTextView tnTextView = new TnTextView(contextRequireContext);
        Integer[] numArr = {Integer.valueOf(R$string.profile_post), Integer.valueOf(R$string.profile_like)};
        ColorStateList colorStateList = new ColorStateList(new int[][]{new int[]{R.attr.state_selected}, new int[0]}, new int[]{androidx.core.content.b.getColor(profileFragment.requireContext(), R$color.text_01), androidx.core.content.b.getColor(profileFragment.requireContext(), R$color.text_02)});
        tnTextView.setTextById(numArr[i11].intValue());
        tnTextView.setGravity(17);
        tnTextView.setTextSize(16.0f);
        tnTextView.setTextColor(colorStateList);
        tab.setCustomView(tnTextView);
        tab.view.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.profile.s
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ProfileFragment.Q0(tab, profileFragment, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Q0(TabLayout.Tab tab, ProfileFragment profileFragment, View view) {
        ViewPager2 viewPager2;
        tab.select();
        fw.m0 mViewBinding = profileFragment.getMViewBinding();
        if (mViewBinding == null || (viewPager2 = mViewBinding.S) == null || viewPager2.getCurrentItem() != 0) {
            profileFragment.f1("like");
        } else {
            profileFragment.f1("post");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit R0(fw.m0 m0Var, ProfileFragment profileFragment, UpdateResultEvent it) {
        Intrinsics.h(it, "it");
        if (it.getHasUpdate()) {
            m0Var.D.setVisibility(profileFragment.isSelf ? 0 : 8);
            m0Var.C.setVisibility(profileFragment.isSelf ? 0 : 8);
            m0Var.f62798s.setVisibility(profileFragment.isSelf ? 0 : 8);
            m0Var.f62799t.setVisibility(profileFragment.isSelf ? 0 : 8);
            m0Var.O.setVisibility(profileFragment.isSelf ? 0 : 8);
        } else {
            View settingRedTips = m0Var.D;
            Intrinsics.g(settingRedTips, "settingRedTips");
            jg.c.g(settingRedTips);
            View settingBlankRedTips = m0Var.C;
            Intrinsics.g(settingBlankRedTips, "settingBlankRedTips");
            jg.c.g(settingBlankRedTips);
            AppCompatImageView ivUpdate = m0Var.f62798s;
            Intrinsics.g(ivUpdate, "ivUpdate");
            jg.c.g(ivUpdate);
            AppCompatImageView updateRedTips = m0Var.P;
            Intrinsics.g(updateRedTips, "updateRedTips");
            jg.c.g(updateRedTips);
            AppCompatImageView ivUpdateBlank = m0Var.f62799t;
            Intrinsics.g(ivUpdateBlank, "ivUpdateBlank");
            jg.c.g(ivUpdateBlank);
            View updateBlankRedTips = m0Var.O;
            Intrinsics.g(updateBlankRedTips, "updateBlankRedTips");
            jg.c.g(updateBlankRedTips);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void S0(ProfileFragment profileFragment, fw.m0 m0Var, AppBarLayout appBarLayout, int i11) {
        profileFragment.j1(m0Var, Math.abs(i11 * 1.0f) / (appBarLayout != null ? appBarLayout.getTotalScrollRange() : i11));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void T0(ProfileFragment profileFragment, float f11, boolean z10) {
        if (!z10 || f11 <= 0.0f || f11 >= 0.1f) {
            return;
        }
        ck.h hVar = profileFragment.mLoadingDialog;
        if (hVar == null) {
            Intrinsics.z("mLoadingDialog");
            hVar = null;
        }
        if (hVar.isShowing() || System.currentTimeMillis() - profileFragment.recordRefreshingTime <= 500) {
            return;
        }
        profileFragment.recordRefreshingTime = System.currentTimeMillis();
        profileFragment.C0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void U0(ActivityResult it) {
        Intrinsics.h(it, "it");
        if (it.getResultCode() == -1) {
            lg.a.C0828a.f(lg.a.f68839a, "loginStatus", "登录成功", false, 4, null);
        } else {
            lg.a.C0828a.f(lg.a.f68839a, "loginStatus", "登录失败或者取消", false, 4, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void V0(ProfileFragment profileFragment, ActivityResult it) {
        Intent data;
        ProfileInfo profileInfo;
        Intrinsics.h(it, "it");
        if (it.getResultCode() != -1 || (data = it.getData()) == null || (profileInfo = profileFragment.mProfileInfo) == null) {
            return;
        }
        profileInfo.getMySubject().setWantToSeeCount(data.getIntExtra("want2SeeCount", profileInfo.getMySubject().getWantToSeeCount()));
    }

    /* JADX INFO: renamed from: W0, reason: from getter */
    private final boolean getIsSelf() {
        return this.isSelf;
    }

    private final boolean X0() {
        UserInfo userInfoI;
        ILoginApi mLoginApi = getMLoginApi();
        if (mLoginApi != null && (userInfoI = mLoginApi.i()) != null && userInfoI.getUserType() == 0 && getIsSelf()) {
            return true;
        }
        ProfileInfo profileInfo = this.mProfileInfo;
        return profileInfo != null && profileInfo.isVisitor();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Y0(fw.m0 m0Var) {
        m0Var.S.setCurrentItem(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ILoginApi Z0() {
        return (ILoginApi) TheRouter.d(ILoginApi.class, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Handler a1() {
        return new Handler(Looper.getMainLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit b1(ProfileFragment profileFragment) {
        EntranceInfo entranceInfo;
        ProfileEntranceInfo profileEntranceInfo = (ProfileEntranceInfo) profileFragment.H0().l().f();
        if (profileEntranceInfo != null && (entranceInfo = profileEntranceInfo.getEntranceInfo()) != null) {
            String jumpUrl = entranceInfo.getJumpUrl();
            int jumpType = entranceInfo.getJumpType();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("jumpUrl :");
            sb2.append(jumpUrl);
            sb2.append(", jumpType:");
            sb2.append(jumpType);
            if (jumpUrl == null || jumpUrl.length() == 0) {
                return Unit.f67061a;
            }
            if (entranceInfo.getJumpType() == 2) {
                Navigator.x(TheRouter.c(WebPageIdentity.WEB_VIEW).K("url", jumpUrl), profileFragment.requireContext(), null, 2, null);
            } else {
                zj.b bVar = zj.b.f79427a;
                Context contextRequireContext = profileFragment.requireContext();
                Intrinsics.g(contextRequireContext, "requireContext(...)");
                zj.b.d(bVar, contextRequireContext, jumpUrl, null, 4, null);
            }
        }
        return Unit.f67061a;
    }

    private final void c1() {
        Navigator.x(TheRouter.c("/profile/qr_code"), requireContext(), null, 2, null);
    }

    private final boolean checkLogin() {
        ILoginApi loginApi = getLoginApi();
        if (loginApi == null || loginApi.a()) {
            return true;
        }
        androidx.activity.result.b bVar = this.loginLaunch;
        if (bVar == null) {
            this.isNeedShowLoginActivity = true;
        }
        if (bVar == null) {
            return false;
        }
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        bVar.a(loginApi.o(contextRequireContext));
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d1() {
        if (isHidden()) {
            return;
        }
        ProfileViewModel profileViewModelH0 = H0();
        UserInfo userInfo = this.mUserInfo;
        profileViewModelH0.k(userInfo != null ? userInfo.getUserId() : null);
        if (this.isSelf) {
            H0().j();
            H0().i();
        }
    }

    private final void e1(String moduleName) {
        String userId;
        String strF;
        HashMap map = new HashMap();
        UserInfo userInfo = this.mUserInfo;
        String str = "";
        if (userInfo == null || (userId = userInfo.getUserId()) == null) {
            userId = "";
        }
        map.put("user_id", userId);
        map.put("user_status", this.isSelf ? "me" : "others");
        map.put("module_name", moduleName);
        hj.i iVar = hj.i.f64505a;
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null && (strF = logViewConfig.f()) != null) {
            str = strF;
        }
        iVar.p(str, map);
    }

    private final void f1(String tabName) {
        String strF;
        HashMap map = new HashMap();
        map.put("page_tab_name", tabName);
        hj.i iVar = hj.i.f64505a;
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig == null || (strF = logViewConfig.f()) == null) {
            strF = "";
        }
        iVar.p(strF, map);
    }

    private final void g1() {
        MyRoomView myRoomView;
        MyRoomView myRoomView2;
        View view;
        View view2;
        LinearLayoutCompat linearLayoutCompat;
        LinearLayoutCompat linearLayoutCompat2;
        TnTextView tnTextView;
        TnTextView tnTextView2;
        AppCompatTextView appCompatTextView;
        AppCompatTextView appCompatTextView2;
        ShapeableImageView shapeableImageView;
        TnTextView tnTextView3;
        TnTextView tnTextView4;
        AppCompatTextView appCompatTextView3;
        ShapeableImageView shapeableImageView2;
        fw.m0 mViewBinding = getMViewBinding();
        ViewGroup.LayoutParams layoutParams = null;
        ViewGroup.LayoutParams layoutParams2 = (mViewBinding == null || (shapeableImageView2 = mViewBinding.f62786g) == null) ? null : shapeableImageView2.getLayoutParams();
        Intrinsics.f(layoutParams2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams2;
        fw.m0 mViewBinding2 = getMViewBinding();
        ViewGroup.LayoutParams layoutParams3 = (mViewBinding2 == null || (appCompatTextView3 = mViewBinding2.N) == null) ? null : appCompatTextView3.getLayoutParams();
        Intrinsics.f(layoutParams3, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.b bVar2 = (ConstraintLayout.b) layoutParams3;
        fw.m0 mViewBinding3 = getMViewBinding();
        ViewGroup.LayoutParams layoutParams4 = (mViewBinding3 == null || (tnTextView4 = mViewBinding3.J) == null) ? null : tnTextView4.getLayoutParams();
        Intrinsics.f(layoutParams4, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.b bVar3 = (ConstraintLayout.b) layoutParams4;
        fw.m0 mViewBinding4 = getMViewBinding();
        ViewGroup.LayoutParams layoutParams5 = (mViewBinding4 == null || (tnTextView3 = mViewBinding4.M) == null) ? null : tnTextView3.getLayoutParams();
        Intrinsics.f(layoutParams5, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.b bVar4 = (ConstraintLayout.b) layoutParams5;
        bVar.f7704v = 0;
        bVar.setMarginStart(0);
        ((ViewGroup.MarginLayoutParams) bVar).topMargin = dk.a.b(32);
        fw.m0 mViewBinding5 = getMViewBinding();
        if (mViewBinding5 != null && (shapeableImageView = mViewBinding5.f62786g) != null) {
            shapeableImageView.setLayoutParams(bVar);
        }
        ((ViewGroup.MarginLayoutParams) bVar2).topMargin = dk.a.b(8);
        bVar2.setMarginStart(0);
        bVar2.setMarginEnd(0);
        ((ViewGroup.MarginLayoutParams) bVar2).width = -2;
        bVar2.f7678i = -1;
        bVar2.f7682k = -1;
        bVar2.f7698s = -1;
        bVar2.f7704v = -1;
        bVar2.O = -1;
        bVar2.N = 2;
        int i11 = R$id.iv_avatar;
        bVar2.f7680j = i11;
        bVar2.f7700t = i11;
        bVar2.f7702u = R$id.tv_gender;
        fw.m0 mViewBinding6 = getMViewBinding();
        if (mViewBinding6 != null && (appCompatTextView2 = mViewBinding6.N) != null) {
            appCompatTextView2.setLayoutParams(bVar2);
        }
        fw.m0 mViewBinding7 = getMViewBinding();
        if (mViewBinding7 != null && (appCompatTextView = mViewBinding7.N) != null) {
            appCompatTextView.setMaxWidth(dk.a.b(200));
        }
        ((ViewGroup.MarginLayoutParams) bVar3).topMargin = 0;
        bVar3.setMarginStart(dk.a.b(4));
        bVar3.f7700t = -1;
        bVar3.f7680j = -1;
        int i12 = R$id.tv_user_name;
        bVar3.f7698s = i12;
        bVar3.f7678i = i12;
        bVar3.f7704v = R$id.iv_avatar;
        bVar3.f7684l = i12;
        fw.m0 mViewBinding8 = getMViewBinding();
        if (mViewBinding8 != null && (tnTextView2 = mViewBinding8.J) != null) {
            tnTextView2.setLayoutParams(bVar3);
        }
        bVar4.setMarginStart(0);
        bVar4.f7698s = -1;
        bVar4.f7684l = -1;
        int i13 = R$id.iv_avatar;
        bVar4.f7700t = i13;
        bVar4.f7704v = i13;
        bVar4.f7680j = R$id.tv_user_name;
        fw.m0 mViewBinding9 = getMViewBinding();
        if (mViewBinding9 != null && (tnTextView = mViewBinding9.M) != null) {
            tnTextView.setLayoutParams(bVar4);
        }
        fw.m0 mViewBinding10 = getMViewBinding();
        ViewGroup.LayoutParams layoutParams6 = (mViewBinding10 == null || (linearLayoutCompat2 = mViewBinding10.f62802w) == null) ? null : linearLayoutCompat2.getLayoutParams();
        Intrinsics.f(layoutParams6, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.b bVar5 = (ConstraintLayout.b) layoutParams6;
        bVar5.f7708x = dk.a.b(71);
        fw.m0 mViewBinding11 = getMViewBinding();
        if (mViewBinding11 != null && (linearLayoutCompat = mViewBinding11.f62802w) != null) {
            linearLayoutCompat.setLayoutParams(bVar5);
        }
        fw.m0 mViewBinding12 = getMViewBinding();
        if (mViewBinding12 != null && (view2 = mViewBinding12.Q) != null) {
            layoutParams = view2.getLayoutParams();
        }
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.b bVar6 = (ConstraintLayout.b) layoutParams;
        bVar6.f7708x = dk.a.b(71);
        fw.m0 mViewBinding13 = getMViewBinding();
        if (mViewBinding13 != null && (view = mViewBinding13.Q) != null) {
            view.setLayoutParams(bVar6);
        }
        fw.m0 mViewBinding14 = getMViewBinding();
        if (mViewBinding14 != null && (myRoomView2 = mViewBinding14.f62803x) != null) {
            myRoomView2.resetUserUi();
        }
        fw.m0 mViewBinding15 = getMViewBinding();
        if (mViewBinding15 == null || (myRoomView = mViewBinding15.f62805z) == null) {
            return;
        }
        myRoomView.resetUserUi();
    }

    private final ILoginApi getLoginApi() {
        return (ILoginApi) this.loginApi.getValue();
    }

    private final Handler getMHandler() {
        return (Handler) this.mHandler.getValue();
    }

    private final ILoginApi getMLoginApi() {
        return (ILoginApi) this.mLoginApi.getValue();
    }

    private final void h1(int amount, CoverUrl url1, CoverUrl url2, CoverUrl url3, CoverUrl url4) {
        MyRoomView myRoomView;
        fw.m0 mViewBinding = getMViewBinding();
        if (mViewBinding == null || (myRoomView = mViewBinding.f62805z) == null) {
            return;
        }
        myRoomView.showCollectionData(3, getIsSelf(), Integer.valueOf(amount), url1, url2, url3, url4, new Function0() { // from class: com.transsion.usercenter.profile.q
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ProfileFragment.i1(this.f57237a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit i1(ProfileFragment profileFragment) {
        ProfileInfo profileInfo = profileFragment.mProfileInfo;
        if (profileInfo != null) {
            profileFragment.e1("want_to_see");
            Intent intent = new Intent(profileFragment.requireContext(), (Class<?>) ProfileSeeActivity.class);
            intent.putExtra("userId", profileInfo.getUserInfo().getUserId());
            androidx.activity.result.b bVar = profileFragment.seeListLaunch;
            if (bVar != null) {
                bVar.a(intent);
            }
        }
        return Unit.f67061a;
    }

    private final void j1(fw.m0 m0Var, float f11) {
        float interpolation;
        View view;
        View view2;
        View view3;
        if (isAdded()) {
            if (f11 < 0.2f) {
                interpolation = 0.0f;
            } else {
                interpolation = f11 < 0.4f ? this.appbarChildAlphaDecelerateInterpolator.getInterpolation((f11 - 0.2f) * 5.0f) : 1.0f;
            }
            B0(interpolation == 1.0f);
            if (getIsSelf()) {
                AppCompatImageView ivSetting = m0Var.f62795p;
                Intrinsics.g(ivSetting, "ivSetting");
                float f12 = 1 - interpolation;
                A0(ivSetting, f12);
                AppCompatImageView ivSettingBlank = m0Var.f62796q;
                Intrinsics.g(ivSettingBlank, "ivSettingBlank");
                A0(ivSettingBlank, interpolation);
                if (UpdateManager.f57518f.a().g()) {
                    View settingRedTips = m0Var.D;
                    Intrinsics.g(settingRedTips, "settingRedTips");
                    A0(settingRedTips, f12);
                    View settingBlankRedTips = m0Var.C;
                    Intrinsics.g(settingBlankRedTips, "settingBlankRedTips");
                    A0(settingBlankRedTips, interpolation);
                    AppCompatImageView ivUpdate = m0Var.f62798s;
                    Intrinsics.g(ivUpdate, "ivUpdate");
                    A0(ivUpdate, f12);
                    AppCompatImageView updateRedTips = m0Var.P;
                    Intrinsics.g(updateRedTips, "updateRedTips");
                    A0(updateRedTips, f12);
                    AppCompatImageView ivUpdateBlank = m0Var.f62799t;
                    Intrinsics.g(ivUpdateBlank, "ivUpdateBlank");
                    A0(ivUpdateBlank, interpolation);
                    View updateBlankRedTips = m0Var.O;
                    Intrinsics.g(updateBlankRedTips, "updateBlankRedTips");
                    A0(updateBlankRedTips, interpolation);
                }
                AppCompatImageView ivNotice = m0Var.f62791l;
                Intrinsics.g(ivNotice, "ivNotice");
                A0(ivNotice, f12);
                View viewRed = m0Var.W;
                Intrinsics.g(viewRed, "viewRed");
                A0(viewRed, f12);
                AppCompatImageView ivQrCode = m0Var.f62793n;
                Intrinsics.g(ivQrCode, "ivQrCode");
                A0(ivQrCode, f12);
                AppCompatImageView ivNoticeBlank = m0Var.f62792m;
                Intrinsics.g(ivNoticeBlank, "ivNoticeBlank");
                A0(ivNoticeBlank, interpolation);
                View viewRedBlank = m0Var.X;
                Intrinsics.g(viewRedBlank, "viewRedBlank");
                A0(viewRedBlank, interpolation);
                AppCompatImageView ivQrCodeBlank = m0Var.f62794o;
                Intrinsics.g(ivQrCodeBlank, "ivQrCodeBlank");
                A0(ivQrCodeBlank, interpolation);
                fw.m0 mViewBinding = getMViewBinding();
                if (mViewBinding != null && (view = mViewBinding.W) != null && view.getVisibility() == 0) {
                    fw.m0 mViewBinding2 = getMViewBinding();
                    if (mViewBinding2 != null && (view3 = mViewBinding2.W) != null) {
                        A0(view3, f12);
                    }
                    fw.m0 mViewBinding3 = getMViewBinding();
                    if (mViewBinding3 != null && (view2 = mViewBinding3.X) != null) {
                        A0(view2, interpolation);
                    }
                }
                AppCompatImageView ivMore = m0Var.f62789j;
                Intrinsics.g(ivMore, "ivMore");
                jg.c.g(ivMore);
                AppCompatImageView ivMoreBlank = m0Var.f62790k;
                Intrinsics.g(ivMoreBlank, "ivMoreBlank");
                jg.c.g(ivMoreBlank);
            } else {
                AppCompatImageView ivMore2 = m0Var.f62789j;
                Intrinsics.g(ivMore2, "ivMore");
                A0(ivMore2, 1 - interpolation);
                AppCompatImageView ivMoreBlank2 = m0Var.f62790k;
                Intrinsics.g(ivMoreBlank2, "ivMoreBlank");
                A0(ivMoreBlank2, interpolation);
                ConstraintLayout root = m0Var.f62785f.getRoot();
                Intrinsics.g(root, "getRoot(...)");
                jg.c.g(root);
            }
            if (getActivity() instanceof ProfileActivity) {
                AppCompatImageView ivBack = m0Var.f62787h;
                Intrinsics.g(ivBack, "ivBack");
                jg.c.k(ivBack);
                TnTextView ivBackBlack = m0Var.f62788i;
                Intrinsics.g(ivBackBlack, "ivBackBlack");
                jg.c.k(ivBackBlack);
                AppCompatImageView ivBack2 = m0Var.f62787h;
                Intrinsics.g(ivBack2, "ivBack");
                A0(ivBack2, 1 - interpolation);
                TnTextView ivBackBlack2 = m0Var.f62788i;
                Intrinsics.g(ivBackBlack2, "ivBackBlack");
                A0(ivBackBlack2, interpolation);
            } else {
                m0Var.f62787h.setVisibility(8);
                m0Var.f62788i.setVisibility(8);
            }
            m0Var.F.setIntercept(!(interpolation == 0.0f));
            ShapeableImageView ivTitleAvatar = m0Var.f62797r;
            Intrinsics.g(ivTitleAvatar, "ivTitleAvatar");
            A0(ivTitleAvatar, interpolation);
            TnTextView tvTitleUserName = m0Var.L;
            Intrinsics.g(tvTitleUserName, "tvTitleUserName");
            A0(tvTitleUserName, interpolation);
            m0Var.F.setBackgroundColor(z0(androidx.core.content.b.getColor(requireContext(), R$color.bg_01), interpolation));
        }
    }

    private final void k1(ProfileInfo profileInfo) {
        f fVar;
        MyRoomView myRoomView;
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.k(true);
        }
        this.mProfileInfo = profileInfo;
        m1(profileInfo.getUserInfo());
        fw.m0 mViewBinding = getMViewBinding();
        if (mViewBinding != null && (myRoomView = mViewBinding.f62803x) != null) {
            boolean isSelf = getIsSelf();
            Group myGroup = profileInfo.getMyGroup();
            myRoomView.showMyRoomData(1, isSelf, myGroup != null ? myGroup.getCount() : null, profileInfo.getMyGroupIconByIndex(0), profileInfo.getMyGroupIconByIndex(1), profileInfo.getMyGroupIconByIndex(2), profileInfo.getMyGroupIconByIndex(3), new Function1() { // from class: com.transsion.usercenter.profile.l
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return ProfileFragment.l1(this.f57229a, ((Integer) obj).intValue());
                }
            });
        }
        ArrayList arrayListH = CollectionsKt.h(null, null, null, null);
        List<CoverUrl> wantSubjects = profileInfo.getMySubject().getWantSubjects();
        if (wantSubjects != null) {
            int i11 = 0;
            for (Object obj : wantSubjects) {
                int i12 = i11 + 1;
                if (i11 < 0) {
                    CollectionsKt.u();
                }
                CoverUrl coverUrl = (CoverUrl) obj;
                try {
                    Result.Companion companion = Result.INSTANCE;
                    arrayListH.set(i11, coverUrl);
                    Result.m454constructorimpl(Unit.f67061a);
                } catch (Throwable th2) {
                    Result.Companion companion2 = Result.INSTANCE;
                    Result.m454constructorimpl(ResultKt.a(th2));
                }
                i11 = i12;
            }
        }
        h1(profileInfo.getMySubject().getWantToSeeCount(), (CoverUrl) arrayListH.get(0), (CoverUrl) arrayListH.get(1), (CoverUrl) arrayListH.get(2), (CoverUrl) arrayListH.get(3));
        if (getIsSelf() && (fVar = this.mNoticeMessageViewModel) != null) {
            fVar.d();
        }
        D0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit l1(ProfileFragment profileFragment, int i11) {
        if (i11 == 4) {
            profileFragment.e1("myrooms");
            if (profileFragment.getIsSelf()) {
                Navigator.x(TheRouter.c("/room/list"), profileFragment.requireContext(), null, 2, null);
            } else {
                Navigator navigatorC = TheRouter.c("/room/others_list");
                UserInfo userInfo = profileFragment.mUserInfo;
                Navigator.x(navigatorC.K("user_id", userInfo != null ? userInfo.getUserId() : null), profileFragment.requireContext(), null, 2, null);
            }
        } else if (i11 == 5 && profileFragment.getIsSelf()) {
            profileFragment.e1("addroom");
            Navigator.x(TheRouter.c("/room/home"), profileFragment.requireContext(), null, 2, null);
        }
        return Unit.f67061a;
    }

    private final void m1(final UserInfo userInfo) {
        int i11;
        HashMap mapG;
        if (userInfo == null) {
            return;
        }
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
            String userId = userInfo.getUserId();
            if (userId == null) {
                userId = "";
            }
            mapG.put("user_id", userId);
            mapG.put("user_status", this.isSelf ? "me" : "others");
        }
        fw.m0 mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            mViewBinding.f62782c.setForeground(androidx.core.content.b.getDrawable(requireContext(), R$color.cl31_30_p));
            ViewGroup.LayoutParams layoutParams = mViewBinding.f62782c.getLayoutParams();
            Intrinsics.f(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
            ViewGroup.LayoutParams layoutParams3 = mViewBinding.Q.getLayoutParams();
            Intrinsics.f(layoutParams3, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams3;
            if (X0()) {
                mViewBinding.K.setVisibility(0);
                mViewBinding.J.setVisibility(8);
                mViewBinding.I.setVisibility(8);
                ej.f.a aVar = ej.f.f61882a;
                Context context = mViewBinding.f62786g.getContext();
                Intrinsics.g(context, "getContext(...)");
                ej.f.b bVarM = aVar.m(context);
                String avatar = userInfo.getAvatar();
                if (avatar == null) {
                    avatar = "";
                }
                ej.f.b bVarI = bVarM.g(avatar).i(R$mipmap.profile_visitor_avatar);
                ShapeableImageView ivAvatar = mViewBinding.f62786g;
                Intrinsics.g(ivAvatar, "ivAvatar");
                bVarI.d(ivAvatar);
                Context context2 = mViewBinding.f62797r.getContext();
                Intrinsics.g(context2, "getContext(...)");
                ej.f.b bVarM2 = aVar.m(context2);
                String avatar2 = userInfo.getAvatar();
                ej.f.b bVarI2 = bVarM2.g(avatar2 != null ? avatar2 : "").i(R$mipmap.profile_visitor_avatar);
                ShapeableImageView ivTitleAvatar = mViewBinding.f62797r;
                Intrinsics.g(ivTitleAvatar, "ivTitleAvatar");
                bVarI2.d(ivTitleAvatar);
                layoutParams2.height = com.blankj.utilcode.util.a0.a(getIsSelf() ? 176.0f : 185.0f) + com.blankj.utilcode.util.d.c();
                ((ViewGroup.MarginLayoutParams) bVar).height = com.blankj.utilcode.util.a0.a(106.0f) + com.blankj.utilcode.util.d.c();
                bVar.f7680j = mViewBinding.K.getId();
            } else {
                mViewBinding.K.setVisibility(8);
                mViewBinding.I.setVisibility(getIsSelf() ? 0 : 8);
                ej.f.a aVar2 = ej.f.f61882a;
                Context context3 = mViewBinding.f62786g.getContext();
                Intrinsics.g(context3, "getContext(...)");
                ej.f.b bVarI3 = aVar2.m(context3).g(userInfo.getAvatar()).i(com.tn.lib.widget.R$mipmap.profile_default_avatar);
                ShapeableImageView ivAvatar2 = mViewBinding.f62786g;
                Intrinsics.g(ivAvatar2, "ivAvatar");
                bVarI3.d(ivAvatar2);
                Context context4 = mViewBinding.f62797r.getContext();
                Intrinsics.g(context4, "getContext(...)");
                ej.f.b bVarI4 = aVar2.m(context4).g(userInfo.getAvatar()).i(com.tn.lib.widget.R$mipmap.profile_default_avatar);
                ShapeableImageView ivTitleAvatar2 = mViewBinding.f62797r;
                Intrinsics.g(ivTitleAvatar2, "ivTitleAvatar");
                bVarI4.d(ivTitleAvatar2);
                if (userInfo.getGender() == 0) {
                    i11 = 0;
                } else {
                    i11 = userInfo.getGender() == 1 ? R$mipmap.profile_man : R$mipmap.profile_female;
                }
                mViewBinding.J.setCompoundDrawablesWithIntrinsicBounds(i11, 0, 0, 0);
                if (userInfo.getAge() <= 0) {
                    mViewBinding.J.setTextWithString("");
                } else if (userInfo.getGender() == 0) {
                    mViewBinding.J.setTextAction(new Function0() { // from class: com.transsion.usercenter.profile.o
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return ProfileFragment.n1(this.f57233a, userInfo);
                        }
                    });
                } else {
                    mViewBinding.J.setTextWithString(String.valueOf(userInfo.getAge()));
                }
                if (userInfo.getGender() != 0 || userInfo.getAge() > 0) {
                    if (mViewBinding.J.getVisibility() != 0) {
                        mViewBinding.J.setVisibility(0);
                        ViewGroup.LayoutParams layoutParams4 = mViewBinding.I.getLayoutParams();
                        Intrinsics.f(layoutParams4, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
                        ConstraintLayout.b bVar2 = (ConstraintLayout.b) layoutParams4;
                        bVar2.setMarginStart(com.blankj.utilcode.util.a0.a(8.0f));
                        mViewBinding.I.setLayoutParams(bVar2);
                    }
                } else if (mViewBinding.J.getVisibility() != 8) {
                    mViewBinding.J.setVisibility(8);
                    ViewGroup.LayoutParams layoutParams5 = mViewBinding.I.getLayoutParams();
                    Intrinsics.f(layoutParams5, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
                    ConstraintLayout.b bVar3 = (ConstraintLayout.b) layoutParams5;
                    bVar3.setMarginStart(com.blankj.utilcode.util.a0.a(16.0f));
                    mViewBinding.I.setLayoutParams(bVar3);
                }
                layoutParams2.height = com.blankj.utilcode.util.a0.a(getIsSelf() ? 156.0f : 175.0f) + com.blankj.utilcode.util.d.c();
                bVar.f7680j = (mViewBinding.J.getVisibility() == 0 ? mViewBinding.J : mViewBinding.I).getId();
            }
            mViewBinding.f62782c.setLayoutParams(layoutParams2);
            mViewBinding.Q.setLayoutParams(bVar);
            mViewBinding.L.setText(userInfo.getNickname());
            mViewBinding.N.setText(androidx.core.text.a.c().m(userInfo.getNickname(), androidx.core.text.u.f8253a));
            mViewBinding.M.setTextAction(new Function0() { // from class: com.transsion.usercenter.profile.p
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return ProfileFragment.o1(this.f57235a, userInfo);
                }
            });
            mViewBinding.f62795p.setVisibility(getIsSelf() ? 0 : 8);
            if (UpdateManager.f57518f.a().g()) {
                mViewBinding.D.setVisibility(getIsSelf() ? 0 : 8);
                mViewBinding.C.setVisibility(getIsSelf() ? 0 : 8);
                mViewBinding.f62798s.setVisibility(getIsSelf() ? 0 : 8);
                mViewBinding.P.setVisibility(getIsSelf() ? 0 : 8);
                mViewBinding.f62799t.setVisibility(getIsSelf() ? 0 : 8);
                mViewBinding.O.setVisibility(getIsSelf() ? 0 : 8);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ILoginApi mLoginApi_delegate$lambda$1() {
        return (ILoginApi) TheRouter.d(ILoginApi.class, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence n1(ProfileFragment profileFragment, UserInfo userInfo) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
        String string = profileFragment.getString(R$string.years_old);
        Intrinsics.g(string, "getString(...)");
        String str = String.format(string, Arrays.copyOf(new Object[]{Integer.valueOf(userInfo.getAge())}, 1));
        Intrinsics.g(str, "format(...)");
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence o1(ProfileFragment profileFragment, UserInfo userInfo) {
        return profileFragment.getString(R$string.profile_one_room_id, userInfo.getUsername());
    }

    private final void refresh() {
        ViewPager2 viewPager2;
        ViewPager2 viewPager3;
        RecyclerView.Adapter adapter;
        d1();
        fw.m0 mViewBinding = getMViewBinding();
        if (mViewBinding != null && (viewPager3 = mViewBinding.S) != null && (adapter = viewPager3.getAdapter()) != null && (adapter instanceof com.transsion.usercenter.profile.adapter.b)) {
            ((com.transsion.usercenter.profile.adapter.b) adapter).h(this.mTabSelectIndex);
        }
        fw.m0 mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (viewPager2 = mViewBinding2.S) == null) {
            return;
        }
        viewPager2.setCurrentItem(this.mTabSelectIndex);
    }

    private final int z0(int color, float fraction) {
        return Color.argb((int) (Color.alpha(color) * fraction), Color.red(color), Color.green(color), Color.blue(color));
    }

    public final void B0(boolean isExpand) {
        ImmersionBar immersionBarWith = ImmersionBar.with(this);
        boolean z10 = false;
        if (isExpand && !ak.x.f658a.a()) {
            z10 = true;
        }
        immersionBarWith.statusBarDarkFont(z10).init();
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    /* JADX INFO: renamed from: I0, reason: merged with bridge method [inline-methods] */
    public fw.m0 getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        fw.m0 m0VarC = fw.m0.c(inflater);
        Intrinsics.g(m0VarC, "inflate(...)");
        return m0VarC;
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initData(View view, Bundle savedInstanceState) {
        androidx.p009lifecycle.b0 b0VarH;
        ILoginApi mLoginApi;
        Intrinsics.h(view, "view");
        super.initData(view, savedInstanceState);
        if (getIsSelf() && (mLoginApi = getMLoginApi()) != null) {
            mLoginApi.g(this);
        }
        ProfileViewModel profileViewModelH0 = H0();
        profileViewModelH0.p().j(getViewLifecycleOwner(), new e(new Function1() { // from class: com.transsion.usercenter.profile.v
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ProfileFragment.J0(this.f57294a, (ProfileInfo) obj);
            }
        }));
        profileViewModelH0.m().j(getViewLifecycleOwner(), new e(new Function1() { // from class: com.transsion.usercenter.profile.w
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ProfileFragment.K0(this.f57322a, (Pair) obj);
            }
        }));
        profileViewModelH0.l().j(getViewLifecycleOwner(), new e(new Function1() { // from class: com.transsion.usercenter.profile.x
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ProfileFragment.M0(this.f57325a, (ProfileEntranceInfo) obj);
            }
        }));
        m1(this.mUserInfo);
        FragmentActivity activity = getActivity();
        if (activity != null) {
            f fVar = (f) new v0(activity).a(f.class);
            this.mNoticeMessageViewModel = fVar;
            if (fVar != null && (b0VarH = fVar.h()) != null) {
                b0VarH.j(getViewLifecycleOwner(), new e(new Function1() { // from class: com.transsion.usercenter.profile.y
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return ProfileFragment.N0(this.f57326a, (Integer) obj);
                    }
                }));
            }
        }
        if (getIsSelf()) {
            H0().j();
        }
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initView(View view, Bundle savedInstanceState) {
        MyRoomView myRoomView;
        AppCompatImageView appCompatImageView;
        AppCompatImageView appCompatImageView2;
        AppCompatImageView appCompatImageView3;
        AppCompatImageView appCompatImageView4;
        AppCompatImageView appCompatImageView5;
        AppCompatImageView appCompatImageView6;
        MyRoomView myRoomView2;
        View view2;
        View view3;
        MyRoomView myRoomView3;
        View view4;
        MyRoomView myRoomView4;
        MyRoomView myRoomView5;
        Intrinsics.h(view, "view");
        G0();
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        this.mLoadingDialog = new ck.h(contextRequireContext);
        this.loginLaunch = registerForActivityResult(new f.j(), new androidx.activity.result.a() { // from class: com.transsion.usercenter.profile.b0
            @Override // androidx.activity.result.a
            public final void a(Object obj) {
                ProfileFragment.U0((ActivityResult) obj);
            }
        });
        this.seeListLaunch = registerForActivityResult(new f.j(), new androidx.activity.result.a() { // from class: com.transsion.usercenter.profile.h
            @Override // androidx.activity.result.a
            public final void a(Object obj) {
                ProfileFragment.V0(this.f57220a, (ActivityResult) obj);
            }
        });
        final fw.m0 mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            mViewBinding.f62781b.addOnOffsetChangedListener(new AppBarLayout.g() { // from class: com.transsion.usercenter.profile.i
                @Override // com.google.android.material.appbar.AppBarLayout.b
                public final void onOffsetChanged(AppBarLayout appBarLayout, int i11) {
                    ProfileFragment.S0(this.f57223a, mViewBinding, appBarLayout, i11);
                }
            });
            j1(mViewBinding, 0.0f);
            mViewBinding.f62795p.setVisibility(this.isSelf ? 0 : 8);
            if (UpdateManager.f57518f.a().g()) {
                mViewBinding.D.setVisibility(this.isSelf ? 0 : 8);
                mViewBinding.f62798s.setVisibility(this.isSelf ? 0 : 8);
                mViewBinding.P.setVisibility(this.isSelf ? 0 : 8);
                mViewBinding.f62799t.setVisibility(this.isSelf ? 0 : 8);
                mViewBinding.O.setVisibility(this.isSelf ? 0 : 8);
            }
            ViewGroup.LayoutParams layoutParams = mViewBinding.f62781b.getLayoutParams();
            Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.coordinatorlayout.widget.CoordinatorLayout.LayoutParams");
            CoordinatorLayout.c cVarF = ((CoordinatorLayout.f) layoutParams).f();
            if (cVarF instanceof FixAppBarLayoutBehavior) {
                ((FixAppBarLayoutBehavior) cVarF).S0(new FixAppBarLayoutBehavior.d() { // from class: com.transsion.usercenter.profile.j
                    @Override // com.transsion.usercenter.profile.FixAppBarLayoutBehavior.d
                    public final void a(float f11, boolean z10) {
                        ProfileFragment.T0(this.f57226a, f11, z10);
                    }
                });
            }
            Function1 function1 = new Function1() { // from class: com.transsion.usercenter.profile.k
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return ProfileFragment.R0(mViewBinding, this, (UpdateResultEvent) obj);
                }
            };
            FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
            String name = UpdateResultEvent.class.getName();
            Intrinsics.g(name, "getName(...)");
            flowEventBus.observeEvent(this, name, Lifecycle.State.CREATED, kotlinx.coroutines.y0.c().q(), false, function1);
            mViewBinding.f62795p.setOnClickListener(this);
            mViewBinding.f62796q.setOnClickListener(this);
            mViewBinding.f62798s.setOnClickListener(this);
            mViewBinding.f62799t.setOnClickListener(this);
            mViewBinding.f62789j.setOnClickListener(this);
            mViewBinding.f62790k.setOnClickListener(this);
            mViewBinding.f62791l.setOnClickListener(this);
            mViewBinding.f62792m.setOnClickListener(this);
            mViewBinding.K.setOnClickListener(this);
            mViewBinding.I.setOnClickListener(this);
            mViewBinding.f62786g.setOnClickListener(this);
            mViewBinding.f62787h.setOnClickListener(this);
            mViewBinding.f62788i.setOnClickListener(this);
            mViewBinding.f62793n.setOnClickListener(this);
            mViewBinding.f62785f.f62602c.setOnClickListener(this);
        }
        fw.m0 mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (myRoomView5 = mViewBinding2.f62803x) != null) {
            myRoomView5.setTitle(R$string.profile_my_room);
        }
        fw.m0 mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (myRoomView4 = mViewBinding3.f62804y) != null) {
            myRoomView4.setTitle(R$string.profile_my_downloads);
        }
        if (getIsSelf()) {
            fw.m0 mViewBinding4 = getMViewBinding();
            if (mViewBinding4 == null || (myRoomView = mViewBinding4.f62805z) == null) {
                return;
            }
            myRoomView.setTitle(R$string.profile_your_list);
            return;
        }
        fw.m0 mViewBinding5 = getMViewBinding();
        if (mViewBinding5 != null && (view4 = mViewBinding5.T) != null) {
            view4.setVisibility(8);
        }
        fw.m0 mViewBinding6 = getMViewBinding();
        if (mViewBinding6 != null && (myRoomView3 = mViewBinding6.f62804y) != null) {
            myRoomView3.setVisibility(8);
        }
        fw.m0 mViewBinding7 = getMViewBinding();
        if (mViewBinding7 != null && (view3 = mViewBinding7.U) != null) {
            view3.setVisibility(8);
        }
        fw.m0 mViewBinding8 = getMViewBinding();
        if (mViewBinding8 != null && (view2 = mViewBinding8.V) != null) {
            view2.setVisibility(0);
        }
        fw.m0 mViewBinding9 = getMViewBinding();
        if (mViewBinding9 != null && (myRoomView2 = mViewBinding9.f62805z) != null) {
            myRoomView2.setTitle(R$string.profile_list);
        }
        fw.m0 mViewBinding10 = getMViewBinding();
        if (mViewBinding10 != null && (appCompatImageView6 = mViewBinding10.f62793n) != null) {
            jg.c.g(appCompatImageView6);
        }
        fw.m0 mViewBinding11 = getMViewBinding();
        if (mViewBinding11 != null && (appCompatImageView5 = mViewBinding11.f62794o) != null) {
            jg.c.g(appCompatImageView5);
        }
        fw.m0 mViewBinding12 = getMViewBinding();
        if (mViewBinding12 != null && (appCompatImageView4 = mViewBinding12.f62789j) != null) {
            jg.c.g(appCompatImageView4);
        }
        fw.m0 mViewBinding13 = getMViewBinding();
        if (mViewBinding13 != null && (appCompatImageView3 = mViewBinding13.f62790k) != null) {
            jg.c.g(appCompatImageView3);
        }
        fw.m0 mViewBinding14 = getMViewBinding();
        if (mViewBinding14 != null && (appCompatImageView2 = mViewBinding14.f62791l) != null) {
            jg.c.g(appCompatImageView2);
        }
        fw.m0 mViewBinding15 = getMViewBinding();
        if (mViewBinding15 != null && (appCompatImageView = mViewBinding15.f62792m) != null) {
            jg.c.g(appCompatImageView);
        }
        g1();
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void lazyLoadData() {
        final fw.m0 mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            mViewBinding.S.setOffscreenPageLimit(1);
            ViewPager2 viewPager2 = mViewBinding.S;
            UserInfo userInfo = this.mUserInfo;
            viewPager2.setAdapter(new com.transsion.usercenter.profile.adapter.b(userInfo != null ? userInfo.getUserId() : null, this));
            mViewBinding.S.registerOnPageChangeCallback(new c());
            O0();
            if (X0()) {
                mViewBinding.S.post(new Runnable() { // from class: com.transsion.usercenter.profile.a0
                    @Override // java.lang.Runnable
                    public final void run() {
                        ProfileFragment.Y0(mViewBinding);
                    }
                });
            }
        }
        H0().i();
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void logPause() {
        super.logPause();
        if (this.resumeTimeStamp != 0) {
            com.transsion.baselib.report.e.f43344a.n("profiledetail", Long.valueOf(SystemClock.elapsedRealtime() - this.resumeTimeStamp), getContext());
        }
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void logResume() {
        super.logResume();
        this.resumeTimeStamp = SystemClock.elapsedRealtime();
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public hj.b newLogViewConfig() {
        return new hj.b("profiledetail", false, 2, null);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        View view2;
        AppCompatImageView appCompatImageView;
        AppCompatImageView appCompatImageView2;
        AppCompatImageView appCompatImageView3;
        AppCompatImageView appCompatImageView4;
        BlockInfo blockInfo;
        BlockInfo blockInfo2;
        ShapeableImageView shapeableImageView;
        Intrinsics.h(view, "view");
        if (com.transsion.baseui.util.c.f43504a.a(view.getId(), 1000L)) {
            return;
        }
        int id2 = view.getId();
        if (id2 == R$id.tv_login) {
            e1("login");
            ILoginApi mLoginApi = getMLoginApi();
            if (mLoginApi != null) {
                Context contextRequireContext = requireContext();
                Intrinsics.g(contextRequireContext, "requireContext(...)");
                mLoginApi.j(contextRequireContext);
                return;
            }
            return;
        }
        boolean block = false;
        if (id2 == R$id.tv_find_movie) {
            e1("findmovies");
            Navigator.x(TheRouter.c("/main/tab").F("tabIndex", 0).K("topTab", "Trending"), requireContext(), null, 2, null);
            return;
        }
        if (id2 == R$id.iv_setting || id2 == R$id.iv_setting_blank) {
            e1("setting");
            FragmentActivity activity = getActivity();
            if (activity != null) {
                SettingActivity.Companion aVar = SettingActivity.INSTANCE;
                ProfileInfo profileInfo = this.mProfileInfo;
                aVar.a(activity, profileInfo != null ? profileInfo.getFissionState() : null);
                return;
            }
            return;
        }
        if (id2 == R$id.iv_update || id2 == R$id.iv_update_blank) {
            e1("update");
            if (UpdateManager.f57518f.a().g()) {
                FragmentActivity activity2 = getActivity();
                if (activity2 != null) {
                    kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new ProfileFragment$onClick$2$1(activity2, this, null), 3, null);
                    return;
                }
                return;
            }
            fw.m0 mViewBinding = getMViewBinding();
            if (mViewBinding != null && (appCompatImageView3 = mViewBinding.f62798s) != null) {
                jg.c.g(appCompatImageView3);
            }
            fw.m0 mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (appCompatImageView2 = mViewBinding2.P) != null) {
                jg.c.g(appCompatImageView2);
            }
            fw.m0 mViewBinding3 = getMViewBinding();
            if (mViewBinding3 != null && (appCompatImageView = mViewBinding3.f62799t) != null) {
                jg.c.g(appCompatImageView);
            }
            fw.m0 mViewBinding4 = getMViewBinding();
            if (mViewBinding4 == null || (view2 = mViewBinding4.O) == null) {
                return;
            }
            jg.c.g(view2);
            return;
        }
        if (id2 == R$id.iv_notice_blank || id2 == R$id.iv_notice) {
            e1("notice");
            startActivity(new Intent(getActivity(), (Class<?>) UserMessageActivity.class));
            f fVar = this.mNoticeMessageViewModel;
            if (fVar != null) {
                fVar.e();
                return;
            }
            return;
        }
        if (id2 == R$id.tv_edit) {
            e1("editinfo");
            if (checkLogin()) {
                com.transsion.usercenter.edit.u uVarA = com.transsion.usercenter.edit.u.f56726b.a();
                fw.m0 mViewBinding5 = getMViewBinding();
                uVarA.f((mViewBinding5 == null || (shapeableImageView = mViewBinding5.f62786g) == null) ? null : shapeableImageView.getDrawable());
                FragmentActivity activity3 = getActivity();
                if (activity3 != null) {
                    ProfileEditCenterActivity.Companion aVar2 = ProfileEditCenterActivity.INSTANCE;
                    ProfileInfo profileInfo2 = this.mProfileInfo;
                    aVar2.a(activity3, profileInfo2 != null ? profileInfo2.getUserInfo() : null);
                    return;
                }
                return;
            }
            return;
        }
        if (id2 == R$id.iv_back || id2 == R$id.iv_back_black) {
            FragmentActivity activity4 = getActivity();
            if (activity4 != null) {
                activity4.onBackPressed();
                return;
            }
            return;
        }
        if (id2 != R$id.iv_more && id2 != R$id.iv_more_blank) {
            if (id2 == R$id.tvJump) {
                com.transsion.baseui.util.d.b(0L, new Function0() { // from class: com.transsion.usercenter.profile.z
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return ProfileFragment.b1(this.f57327a);
                    }
                }, 1, null);
                return;
            } else {
                if (id2 == R$id.iv_qr_code || id2 == R$id.iv_qr_code_blank) {
                    c1();
                    return;
                }
                return;
            }
        }
        if (this.mProfileInfo == null) {
            return;
        }
        uw.c cVar = new uw.c();
        fw.m0 mViewBinding6 = getMViewBinding();
        if (mViewBinding6 == null || (appCompatImageView4 = mViewBinding6.f62789j) == null) {
            return;
        }
        ProfileInfo profileInfo3 = this.mProfileInfo;
        if (profileInfo3 != null && (blockInfo2 = profileInfo3.getBlockInfo()) != null) {
            block = blockInfo2.getBlock();
        }
        ProfileInfo profileInfo4 = this.mProfileInfo;
        cVar.g(appCompatImageView4, (profileInfo4 == null || (blockInfo = profileInfo4.getBlockInfo()) == null || !blockInfo.getBlocked()) ? block : true);
        cVar.f(new d());
    }

    /* JADX WARN: Code duplicated, block: B:43:0x0080  */
    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        boolean z10;
        NativeSlideshowView nativeSlideshowView;
        NativeSlideshowView nativeSlideshowView2;
        JsonElement jsonElement;
        UserInfo userInfoI;
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        String userId = null;
        this.mUserInfo = (UserInfo) (arguments != null ? arguments.getSerializable("userInfo") : null);
        Bundle arguments2 = getArguments();
        String string = arguments2 != null ? arguments2.getString("userId") : null;
        if (this.mUserInfo == null) {
            if (string == null || string.length() == 0) {
                ILoginApi loginApi = getLoginApi();
                this.mUserInfo = loginApi != null ? loginApi.i() : null;
            } else {
                UserInfo userInfo = new UserInfo();
                userInfo.setUserId(string);
                this.mUserInfo = userInfo;
            }
        }
        UserInfo userInfo2 = this.mUserInfo;
        String userId2 = userInfo2 != null ? userInfo2.getUserId() : null;
        if (userId2 == null || userId2.length() == 0) {
            z10 = true;
        } else {
            UserInfo userInfo3 = this.mUserInfo;
            String userId3 = userInfo3 != null ? userInfo3.getUserId() : null;
            ILoginApi mLoginApi = getMLoginApi();
            if (mLoginApi != null && (userInfoI = mLoginApi.i()) != null) {
                userId = userInfoI.getUserId();
            }
            if (Intrinsics.c(userId3, userId)) {
                z10 = true;
            } else {
                z10 = false;
            }
        }
        this.isSelf = z10;
        JsonObject jsonObjectB = com.transsion.ad.scene.d.f42204a.b("ProfileDetailBottomScene");
        this.refreshTime = (jsonObjectB == null || (jsonElement = jsonObjectB.get("refreshTime")) == null) ? 15 : jsonElement.getAsInt();
        fw.m0 mViewBinding = getMViewBinding();
        if (mViewBinding != null && (nativeSlideshowView2 = mViewBinding.A) != null) {
            nativeSlideshowView2.setSceneId("ProfileDetailBottomScene");
        }
        fw.m0 mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (nativeSlideshowView = mViewBinding2.A) == null) {
            return;
        }
        nativeSlideshowView.initAd();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        NativeSlideshowView nativeSlideshowView;
        ILoginApi mLoginApi;
        super.onDestroy();
        if (getIsSelf() && (mLoginApi = getMLoginApi()) != null) {
            mLoginApi.p(this);
        }
        getMHandler().removeCallbacksAndMessages(null);
        fw.m0 mViewBinding = getMViewBinding();
        if (mViewBinding == null || (nativeSlideshowView = mViewBinding.A) == null) {
            return;
        }
        nativeSlideshowView.destroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (isResumed()) {
            if (hidden) {
                logPause();
            } else {
                d1();
                logResume();
            }
        }
        com.transsion.baseui.activity.k.h(null, this, hidden, null, 9, null);
    }

    @Override // dz.a
    public void onLogin(UserInfo user) {
        ViewPager2 viewPager2;
        ViewPager2 viewPager3;
        RecyclerView.Adapter adapter;
        ViewPager2 viewPager4;
        Intrinsics.h(user, "user");
        if (getIsSelf()) {
            this.mUserInfo = user;
            this.mProfileInfo = null;
            fw.m0 mViewBinding = getMViewBinding();
            if (mViewBinding != null && (viewPager4 = mViewBinding.S) != null) {
                UserInfo userInfo = this.mUserInfo;
                viewPager4.setAdapter(new com.transsion.usercenter.profile.adapter.b(userInfo != null ? userInfo.getUserId() : null, this));
            }
            fw.m0 mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (viewPager3 = mViewBinding2.S) != null && (adapter = viewPager3.getAdapter()) != null) {
                adapter.notifyDataSetChanged();
            }
            fw.m0 mViewBinding3 = getMViewBinding();
            if (mViewBinding3 == null || (viewPager2 = mViewBinding3.S) == null) {
                return;
            }
            viewPager2.setCurrentItem(this.mTabSelectIndex);
        }
    }

    @Override // dz.a
    public void onLogout() {
        ViewPager2 viewPager2;
        ViewPager2 viewPager3;
        RecyclerView.Adapter adapter;
        ViewPager2 viewPager4;
        if (getIsSelf()) {
            ILoginApi loginApi = getLoginApi();
            this.mUserInfo = loginApi != null ? loginApi.i() : null;
            this.mProfileInfo = null;
            ProfileViewModel profileViewModelH0 = H0();
            UserInfo userInfo = this.mUserInfo;
            profileViewModelH0.k(userInfo != null ? userInfo.getUserId() : null);
            this.mTabSelectIndex = 1;
            fw.m0 mViewBinding = getMViewBinding();
            if (mViewBinding != null && (viewPager4 = mViewBinding.S) != null) {
                UserInfo userInfo2 = this.mUserInfo;
                viewPager4.setAdapter(new com.transsion.usercenter.profile.adapter.b(userInfo2 != null ? userInfo2.getUserId() : null, this));
            }
            fw.m0 mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (viewPager3 = mViewBinding2.S) != null && (adapter = viewPager3.getAdapter()) != null) {
                adapter.notifyDataSetChanged();
            }
            fw.m0 mViewBinding3 = getMViewBinding();
            if (mViewBinding3 == null || (viewPager2 = mViewBinding3.S) == null) {
                return;
            }
            viewPager2.setCurrentItem(this.mTabSelectIndex);
        }
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        com.transsion.baseui.activity.k.l(null, this, null, 5, null);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        d1();
        com.transsion.baseui.activity.k.p(null, this, "visible=" + isVisible(), 1, null);
    }

    @Override // dz.a
    public void onUpdateUserInfo(UserInfo user) {
        Intrinsics.h(user, "user");
        if (getIsSelf()) {
            m1(user);
        }
    }
}
