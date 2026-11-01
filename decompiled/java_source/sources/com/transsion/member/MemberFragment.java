package com.transsion.member;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.result.ActivityResult;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.Glide;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.google.android.material.imageview.ShapeableImageView;
import com.gyf.immersionbar.ImmersionBar;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.layoutmanager.NpaGridLayoutManager;
import com.transsion.baseui.dialog.BaseMemberLoadingDialog;
import com.transsion.baseui.fragment.PageStatusFragment;
import com.transsion.member.bean.RedeemResult;
import com.transsion.member.dialog.MemberPromoCodeDialog;
import com.transsion.memberapi.IMemberApi;
import com.transsion.memberapi.MemberAgreement;
import com.transsion.memberapi.MemberDetail;
import com.transsion.memberapi.MemberInfo;
import com.transsion.memberapi.MemberTaskItem;
import com.transsion.memberapi.MemberTaskItemCheckInInfo;
import com.transsion.memberapi.MemberTaskItemInvite;
import com.transsion.memberapi.MemberTaskRewardInfo;
import com.transsion.memberapi.MemberTaskSubmitCheckInRes;
import com.transsion.memberapi.MembershipDetailType;
import com.transsion.memberapi.PointInfo;
import com.transsion.memberapi.SkuCategory;
import com.transsion.memberapi.SkuData;
import com.transsion.memberapi.SkuItem;
import com.transsion.rewardscenterapi.IRewardsCenterApi;
import com.transsion.rewardscenterapi.Lottery;
import com.transsion.rewardscenterapi.RewardsCenterData;
import com.transsnet.loginapi.ILoginApi;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000Ä\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u001d\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0016\b\u0007\u0018\u0000 b2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u00042\u00020\u0005:\u0001gB\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\t\u0010\u0007J\u0019\u0010\f\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0010\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0012\u0010\u0007J\u0019\u0010\u0015\u001a\u00020\b2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0017\u0010\u0007J\u000f\u0010\u0018\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0018\u0010\u0007J\u0017\u0010\u001b\u001a\u00020\b2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u001d\u0010\u001f\u001a\u00020\b2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u000e0\u001dH\u0002¢\u0006\u0004\b\u001f\u0010 J!\u0010%\u001a\u00020\b2\u0006\u0010\"\u001a\u00020!2\b\b\u0002\u0010$\u001a\u00020#H\u0002¢\u0006\u0004\b%\u0010&J\u000f\u0010'\u001a\u00020\bH\u0002¢\u0006\u0004\b'\u0010\u0007J\u000f\u0010(\u001a\u00020\bH\u0002¢\u0006\u0004\b(\u0010\u0007J\u000f\u0010)\u001a\u00020\bH\u0002¢\u0006\u0004\b)\u0010\u0007J\u000f\u0010*\u001a\u00020#H\u0002¢\u0006\u0004\b*\u0010+J\u000f\u0010,\u001a\u00020\bH\u0002¢\u0006\u0004\b,\u0010\u0007J#\u0010/\u001a\u00020\b2\u0006\u0010-\u001a\u00020!2\n\b\u0002\u0010.\u001a\u0004\u0018\u00010!H\u0002¢\u0006\u0004\b/\u00100J\u0017\u00101\u001a\u00020\b2\u0006\u0010.\u001a\u00020!H\u0002¢\u0006\u0004\b1\u00102J+\u00106\u001a\u00020\b2\u0006\u0010.\u001a\u00020!2\b\u00104\u001a\u0004\u0018\u0001032\b\u00105\u001a\u0004\u0018\u00010!H\u0002¢\u0006\u0004\b6\u00107J\u0017\u0010:\u001a\u00020\b2\u0006\u00109\u001a\u000208H\u0002¢\u0006\u0004\b:\u0010;J\u001f\u0010>\u001a\u0002032\u0006\u0010<\u001a\u0002032\u0006\u0010=\u001a\u000208H\u0002¢\u0006\u0004\b>\u0010?J\u0017\u0010B\u001a\u00020\u00022\u0006\u0010A\u001a\u00020@H\u0016¢\u0006\u0004\bB\u0010CJ\u000f\u0010D\u001a\u00020!H\u0016¢\u0006\u0004\bD\u0010EJ\u000f\u0010F\u001a\u00020\bH\u0016¢\u0006\u0004\bF\u0010\u0007J\u000f\u0010G\u001a\u00020\bH\u0016¢\u0006\u0004\bG\u0010\u0007J\u0011\u0010I\u001a\u0004\u0018\u00010HH\u0016¢\u0006\u0004\bI\u0010JJ\u000f\u0010K\u001a\u00020#H\u0016¢\u0006\u0004\bK\u0010+J\u000f\u0010L\u001a\u00020\bH\u0016¢\u0006\u0004\bL\u0010\u0007J\u0019\u0010O\u001a\u00020\b2\b\u0010N\u001a\u0004\u0018\u00010MH\u0016¢\u0006\u0004\bO\u0010PJ\u000f\u0010Q\u001a\u00020\bH\u0016¢\u0006\u0004\bQ\u0010\u0007J\u000f\u0010R\u001a\u00020\bH\u0016¢\u0006\u0004\bR\u0010\u0007J\u0017\u0010T\u001a\u00020\b2\u0006\u0010S\u001a\u00020#H\u0016¢\u0006\u0004\bT\u0010UJ\r\u0010V\u001a\u00020\b¢\u0006\u0004\bV\u0010\u0007J\r\u0010W\u001a\u00020\b¢\u0006\u0004\bW\u0010\u0007J\u0017\u0010Y\u001a\u00020\b2\u0006\u0010X\u001a\u00020\nH\u0016¢\u0006\u0004\bY\u0010\rJ\u000f\u0010Z\u001a\u00020\bH\u0016¢\u0006\u0004\bZ\u0010\u0007J\u0017\u0010[\u001a\u00020\b2\u0006\u0010X\u001a\u00020\nH\u0016¢\u0006\u0004\b[\u0010\rJ\u0015\u0010]\u001a\u00020\b2\u0006\u0010\\\u001a\u000203¢\u0006\u0004\b]\u0010^J\u000f\u0010_\u001a\u00020\bH\u0016¢\u0006\u0004\b_\u0010\u0007J\u000f\u0010`\u001a\u00020\bH\u0016¢\u0006\u0004\b`\u0010\u0007J\u0019\u0010c\u001a\u00020\b2\b\u0010b\u001a\u0004\u0018\u00010aH\u0016¢\u0006\u0004\bc\u0010dJ\u000f\u0010e\u001a\u00020\bH\u0016¢\u0006\u0004\be\u0010\u0007J\u000f\u0010f\u001a\u00020\bH\u0016¢\u0006\u0004\bf\u0010\u0007R$\u0010k\u001a\u0004\u0018\u00010!8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bg\u0010h\u001a\u0004\bi\u0010E\"\u0004\bj\u00102R$\u0010o\u001a\u0004\u0018\u00010!8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bl\u0010h\u001a\u0004\bm\u0010E\"\u0004\bn\u00102R$\u0010s\u001a\u0004\u0018\u00010!8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bp\u0010h\u001a\u0004\bq\u0010E\"\u0004\br\u00102R$\u0010w\u001a\u0004\u0018\u00010!8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bt\u0010h\u001a\u0004\bu\u0010E\"\u0004\bv\u00102R\u0016\u0010y\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bx\u0010hR\u0018\u0010|\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bz\u0010{R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b}\u0010~R \u0010\u0084\u0001\u001a\u00020\u007f8BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u0080\u0001\u0010\u0081\u0001\u001a\u0006\b\u0082\u0001\u0010\u0083\u0001R#\u0010\u0089\u0001\u001a\f\u0012\u0005\u0012\u00030\u0086\u0001\u0018\u00010\u0085\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0087\u0001\u0010\u0088\u0001R\u001c\u0010\u008d\u0001\u001a\u0005\u0018\u00010\u008a\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008b\u0001\u0010\u008c\u0001R\u001c\u0010\u0091\u0001\u001a\u0005\u0018\u00010\u008e\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008f\u0001\u0010\u0090\u0001R\u001c\u0010\u0095\u0001\u001a\u0005\u0018\u00010\u0092\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0093\u0001\u0010\u0094\u0001R#\u0010\u009a\u0001\u001a\u0005\u0018\u00010\u0096\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u0097\u0001\u0010\u0081\u0001\u001a\u0006\b\u0098\u0001\u0010\u0099\u0001R!\u0010\u009f\u0001\u001a\u00030\u009b\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u009c\u0001\u0010\u0081\u0001\u001a\u0006\b\u009d\u0001\u0010\u009e\u0001R\u0019\u0010¢\u0001\u001a\u00020#8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b \u0001\u0010¡\u0001R\u001b\u0010¥\u0001\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b£\u0001\u0010¤\u0001R\u0019\u0010¨\u0001\u001a\u0002038\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¦\u0001\u0010§\u0001R\u001a\u0010ª\u0001\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b©\u0001\u0010hR\u0019\u0010¬\u0001\u001a\u00020#8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b«\u0001\u0010¡\u0001R\u0019\u0010®\u0001\u001a\u00020#8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u00ad\u0001\u0010¡\u0001R\u0019\u0010°\u0001\u001a\u00020#8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¯\u0001\u0010¡\u0001¨\u0006±\u0001"}, d2 = {"Lcom/transsion/member/MemberFragment;", "Lcom/transsion/baseui/fragment/PageStatusFragment;", "Lwm/n;", "Landroid/view/View$OnClickListener;", "Ldz/a;", "Lcom/transsion/baselib/report/g;", "<init>", "()V", "", "f1", "Lcom/transsnet/loginapi/bean/UserInfo;", "userInfo", "t1", "(Lcom/transsnet/loginapi/bean/UserInfo;)V", "Lcom/transsion/memberapi/SkuItem;", "skuItem", "e1", "(Lcom/transsion/memberapi/SkuItem;)V", "K0", "Lcom/transsion/memberapi/MemberDetail;", "memberDetail", "l1", "(Lcom/transsion/memberapi/MemberDetail;)V", "v1", "g1", "Lcom/transsion/memberapi/SkuData;", "data", "m1", "(Lcom/transsion/memberapi/SkuData;)V", "", "redeemList", "h1", "(Ljava/util/List;)V", "", "productId", "", "isSubscription", "q1", "(Ljava/lang/String;Z)V", "c1", "Q0", "M0", "b1", "()Z", "J0", "optType", "skuId", "i1", "(Ljava/lang/String;Ljava/lang/String;)V", "k1", "(Ljava/lang/String;)V", "", "code", "message", "j1", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V", "", "alpha", "s1", "(F)V", TtmlNode.ATTR_TTS_COLOR, "fraction", "I0", "(IF)I", "Landroid/view/LayoutInflater;", "inflater", "P0", "(Landroid/view/LayoutInflater;)Lwm/n;", "getPageStateLayoutTitle", "()Ljava/lang/String;", "initViewData", "loadDefaultData", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "isShowPageStateLayoutTitle", "initViewModel", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onPause", "onResume", "hidden", "onHiddenChanged", "(Z)V", "showLoading", "L0", "user", "onLogin", "onLogout", "onUpdateUserInfo", "points", "p1", "(I)V", "initListener", "retryLoadData", "Landroid/view/View;", "v", "onClick", "(Landroid/view/View;)V", "logResume", "onDestroy", "a", "Ljava/lang/String;", "getSourceValue", "setSourceValue", "sourceValue", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "getSceneId", "setSceneId", "sceneId", "c", "getTraceId", "setTraceId", "traceId", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "getSubjectId", "setSubjectId", "subjectId", "e", "orderId", "f", "Lcom/transsnet/loginapi/bean/UserInfo;", "mUserInfo", "g", "Lcom/transsion/memberapi/MemberDetail;", "Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;", "h", "Lkotlin/Lazy;", "N0", "()Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;", "mLoadingDialog", "Landroidx/activity/result/b;", "Landroid/content/Intent;", "i", "Landroidx/activity/result/b;", "loginLaunch", "Lcom/transsion/member/adapter/l;", "j", "Lcom/transsion/member/adapter/l;", "taskAdapter", "Lcom/transsion/member/adapter/k;", CampaignEx.JSON_KEY_AD_K, "Lcom/transsion/member/adapter/k;", "skuListAdapter", "Lcom/transsion/member/adapter/i;", "l", "Lcom/transsion/member/adapter/i;", "redeemListAdapter", "Lcom/transsnet/loginapi/ILoginApi;", "m", "getMLoginApi", "()Lcom/transsnet/loginapi/ILoginApi;", "mLoginApi", "Lcom/transsion/member/MemberViewModel;", "n", "O0", "()Lcom/transsion/member/MemberViewModel;", "memberViewModel", "o", "Z", "isFirstResume", TtmlNode.TAG_P, "Lcom/transsion/memberapi/SkuItem;", "selectedSkuItem", CampaignEx.JSON_KEY_AD_Q, "I", "defaultSelectedPosition", CampaignEx.JSON_KEY_AD_R, "oldUid", "s", "shouldRefreshPurchasedInfo", "t", "isPremium", TmcStartParams.KEY_URL_SHORT, "isSelf", "Member_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class MemberFragment extends PageStatusFragment<wm.n> implements View.OnClickListener, dz.a, com.transsion.baselib.report.g {

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final int f46291w = 8;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private String sourceValue;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private String subjectId;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private UserInfo mUserInfo;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private MemberDetail memberDetail;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private androidx.activity.result.b loginLaunch;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private com.transsion.member.adapter.l taskAdapter;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private com.transsion.member.adapter.k skuListAdapter;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private com.transsion.member.adapter.i redeemListAdapter;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private final Lazy memberViewModel;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private boolean isFirstResume;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private SkuItem selectedSkuItem;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private int defaultSelectedPosition;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private String oldUid;

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    private boolean shouldRefreshPurchasedInfo;

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    private boolean isPremium;

    /* JADX INFO: renamed from: u, reason: collision with root package name and from kotlin metadata */
    private boolean isSelf;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private String sceneId = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private String traceId = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private String orderId = "";

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private final Lazy mLoadingDialog = LazyKt.b(new Function0() { // from class: com.transsion.member.k
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return MemberFragment.d1();
        }
    });

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private final Lazy mLoginApi = LazyKt.b(new Function0() { // from class: com.transsion.member.l
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return MemberFragment.mLoginApi_delegate$lambda$1();
        }
    });

    /* JADX INFO: loaded from: classes5.dex */
    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f46313a;

        static {
            int[] iArr = new int[MembershipDetailType.values().length];
            try {
                iArr[MembershipDetailType.TRIAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[MembershipDetailType.FINANCIAL_MEMBER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[MembershipDetailType.SUBSCRIPTION_MEMBER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[MembershipDetailType.EXPIRED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[MembershipDetailType.GUEST.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            f46313a = iArr;
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static final class c implements Function0 {
        c() {
        }

        public void a() {
            MemberFragment.this.f1();
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            a();
            return Unit.f67061a;
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    static final class d implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f46315a;

        d(Function1 function) {
            Intrinsics.h(function, "function");
            this.f46315a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f46315a;
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
            this.f46315a.invoke(obj);
        }
    }

    public MemberFragment() {
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.transsion.member.MemberFragment$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return this;
            }
        };
        this.memberViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(MemberViewModel.class), new Function0<androidx.p009lifecycle.x0>() { // from class: com.transsion.member.MemberFragment$special$$inlined$viewModels$default$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final androidx.p009lifecycle.x0 invoke() {
                androidx.p009lifecycle.x0 viewModelStore = ((androidx.p009lifecycle.y0) function0.invoke()).getViewModelStore();
                Intrinsics.g(viewModelStore, "ownerProducer().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<androidx.lifecycle.v0.c>() { // from class: com.transsion.member.MemberFragment$special$$inlined$viewModels$default$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final androidx.lifecycle.v0.c invoke() {
                Object objInvoke = function0.invoke();
                androidx.p009lifecycle.m mVar = objInvoke instanceof androidx.p009lifecycle.m ? (androidx.p009lifecycle.m) objInvoke : null;
                androidx.lifecycle.v0.c defaultViewModelProviderFactory = mVar != null ? mVar.getDefaultViewModelProviderFactory() : null;
                if (defaultViewModelProviderFactory == null) {
                    defaultViewModelProviderFactory = this.getDefaultViewModelProviderFactory();
                }
                Intrinsics.g(defaultViewModelProviderFactory, "(ownerProducer() as? Has…tViewModelProviderFactory");
                return defaultViewModelProviderFactory;
            }
        });
        this.isFirstResume = true;
        this.defaultSelectedPosition = -1;
    }

    private final int I0(int color, float fraction) {
        return Color.argb((int) (Color.alpha(color) * fraction), Color.red(color), Color.green(color), Color.blue(color));
    }

    private final void J0() {
        ImmersionBar.with(this).statusBarDarkFont(false).init();
    }

    private final void K0() {
        Intent intent;
        FragmentActivity activity;
        Intent intent2;
        FragmentActivity activity2 = getActivity();
        if (activity2 == null || (intent = activity2.getIntent()) == null || !intent.getBooleanExtra("extra_member_scroll_bottom", false) || (activity = getActivity()) == null || (intent2 = activity.getIntent()) == null) {
            return;
        }
        intent2.removeExtra("extra_member_scroll_bottom");
    }

    private final void M0() {
        ConstraintLayout constraintLayout;
        wm.n mViewBinding = getMViewBinding();
        if (mViewBinding != null && (constraintLayout = mViewBinding.f77831n) != null) {
            jg.c.e(constraintLayout);
        }
        FragmentActivity activity = getActivity();
        MemberActivity memberActivity = activity instanceof MemberActivity ? (MemberActivity) activity : null;
        if (memberActivity != null) {
            memberActivity.w0();
        }
    }

    private final BaseMemberLoadingDialog N0() {
        return (BaseMemberLoadingDialog) this.mLoadingDialog.getValue();
    }

    private final MemberViewModel O0() {
        return (MemberViewModel) this.memberViewModel.getValue();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:31:0x005e  */
    /* JADX WARN: Code duplicated, block: B:41:0x007f  */
    /* JADX WARN: Code duplicated, block: B:43:0x0085  */
    /* JADX WARN: Code duplicated, block: B:44:0x008c  */
    /* JADX WARN: Code duplicated, block: B:46:0x0094  */
    /* JADX WARN: Code duplicated, block: B:48:0x009a  */
    /* JADX WARN: Code duplicated, block: B:49:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:51:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:7:0x0012  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private final void Q0() {
        String string;
        Context context;
        String string2;
        Context context2;
        Context context3;
        if (this.isPremium) {
            Context context4 = getContext();
            if (context4 != null) {
                string = context4.getString(R$string.member_successfully_renewed);
            } else {
                string = null;
            }
        } else {
            Context context5 = getContext();
            if (context5 != null) {
                string = context5.getString(R$string.member_successfully_upgraded_to_premium);
            } else {
                string = null;
            }
        }
        String str = this.sourceValue;
        if (str != null) {
            switch (str.hashCode()) {
                case -440595233:
                    if (str.equals("DOWNLOAD_DIALOG")) {
                        context3 = getContext();
                        if (context3 != null) {
                            string2 = null;
                        } else {
                            string2 = context3.getString(R$string.member_back_to_download);
                        }
                    } else if (!(getActivity() instanceof MemberActivity)) {
                        context2 = getContext();
                        if (context2 == null) {
                            string2 = null;
                        } else {
                            string2 = context2.getString(R$string.member_explore_now);
                        }
                    } else {
                        context = getContext();
                        if (context == null) {
                            string2 = null;
                        } else {
                            string2 = context.getString(R$string.member_back);
                        }
                    }
                    break;
                case -420306344:
                    if (str.equals("LANDSCAPE_PLAY")) {
                        Context context6 = getContext();
                        if (context6 == null) {
                            string2 = null;
                        } else {
                            string2 = context6.getString(R$string.member_back_to_watch);
                        }
                    } else if (!(getActivity() instanceof MemberActivity)) {
                        context = getContext();
                        if (context == null) {
                            string2 = null;
                        } else {
                            string2 = context.getString(R$string.member_back);
                        }
                    } else {
                        context2 = getContext();
                        if (context2 == null) {
                            string2 = null;
                        } else {
                            string2 = context2.getString(R$string.member_explore_now);
                        }
                    }
                    break;
                case 2212484:
                    if (str.equals("HDDL")) {
                        Context context7 = getContext();
                        if (context7 == null) {
                            string2 = null;
                        } else {
                            string2 = context7.getString(R$string.member_back);
                        }
                    } else if (!(getActivity() instanceof MemberActivity)) {
                        context = getContext();
                        if (context == null) {
                            string2 = null;
                        } else {
                            string2 = context.getString(R$string.member_back);
                        }
                    } else {
                        context2 = getContext();
                        if (context2 == null) {
                            string2 = null;
                        } else {
                            string2 = context2.getString(R$string.member_explore_now);
                        }
                    }
                    break;
                case 684919184:
                    if (str.equals("OTHER_DOWNLOAD_DIALOG")) {
                        context3 = getContext();
                        if (context3 != null) {
                            string2 = null;
                        } else {
                            string2 = context3.getString(R$string.member_back_to_download);
                        }
                    } else if (!(getActivity() instanceof MemberActivity)) {
                        context = getContext();
                        if (context == null) {
                            string2 = null;
                        } else {
                            string2 = context.getString(R$string.member_back);
                        }
                    } else {
                        context2 = getContext();
                        if (context2 == null) {
                            string2 = null;
                        } else {
                            string2 = context2.getString(R$string.member_explore_now);
                        }
                    }
                    break;
                case 1456277732:
                    if (str.equals("AD_DIALOG")) {
                        context3 = getContext();
                        if (context3 != null) {
                            string2 = null;
                        } else {
                            string2 = context3.getString(R$string.member_back_to_download);
                        }
                    } else if (!(getActivity() instanceof MemberActivity)) {
                        context = getContext();
                        if (context == null) {
                            string2 = null;
                        } else {
                            string2 = context.getString(R$string.member_back);
                        }
                    } else {
                        context2 = getContext();
                        if (context2 == null) {
                            string2 = null;
                        } else {
                            string2 = context2.getString(R$string.member_explore_now);
                        }
                    }
                    break;
                case 1758712121:
                    if (str.equals("Multi_DL_DIALOG")) {
                        context3 = getContext();
                        if (context3 != null) {
                            string2 = null;
                        } else {
                            string2 = context3.getString(R$string.member_back_to_download);
                        }
                    } else if (!(getActivity() instanceof MemberActivity)) {
                        context = getContext();
                        if (context == null) {
                            string2 = null;
                        } else {
                            string2 = context.getString(R$string.member_back);
                        }
                    } else {
                        context2 = getContext();
                        if (context2 == null) {
                            string2 = null;
                        } else {
                            string2 = context2.getString(R$string.member_explore_now);
                        }
                    }
                    break;
                default:
                    if (!(getActivity() instanceof MemberActivity)) {
                        context = getContext();
                        if (context == null) {
                            string2 = null;
                        } else {
                            string2 = context.getString(R$string.member_back);
                        }
                    } else {
                        context2 = getContext();
                        if (context2 == null) {
                            string2 = null;
                        } else {
                            string2 = context2.getString(R$string.member_explore_now);
                        }
                    }
                    break;
            }
        } else if (!(getActivity() instanceof MemberActivity)) {
            context2 = getContext();
            if (context2 == null) {
                string2 = context2.getString(R$string.member_explore_now);
            } else {
                string2 = null;
            }
        } else {
            context = getContext();
            if (context == null) {
                string2 = context.getString(R$string.member_back);
            } else {
                string2 = null;
            }
        }
        lg.a.C0828a.g(lg.a.f68839a, "The source is " + this.sourceValue + ", title: " + string + ", buttonTitle: " + string2, false, 2, null);
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new MemberFragment$handlePurchaseSucceed$1(this, string, string2, null), 3, null);
        IMemberApi iMemberApi = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
        if (iMemberApi != null) {
            IMemberApi.a.a(iMemberApi, null, 1, null);
        }
        ObserveLoginAction.f46400c.a().i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void R0(MemberFragment memberFragment, View view) {
        OnBackPressedDispatcher onBackPressedDispatcher;
        FragmentActivity activity = memberFragment.getActivity();
        if (activity == null || (onBackPressedDispatcher = activity.getOnBackPressedDispatcher()) == null) {
            return;
        }
        onBackPressedDispatcher.l();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit S0(MemberFragment memberFragment, View it) {
        Intrinsics.h(it, "it");
        IMemberApi iMemberApi = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
        if (iMemberApi != null ? iMemberApi.f() : false) {
            SkuItem skuItem = memberFragment.selectedSkuItem;
            if (skuItem != null) {
                memberFragment.q1(skuItem.getSkuId(), Intrinsics.c(skuItem.getCategory(), SkuCategory.AUTO_RENEW.getValue()));
            }
        } else {
            Navigator.x(TheRouter.c("/rewards/center").K(EventConstants.KEY_SOURCE, "memberdetail"), null, null, 3, null);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit T0(MemberFragment memberFragment, View it) {
        Intrinsics.h(it, "it");
        memberFragment.c1();
        return Unit.f67061a;
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
    public static final void V0(MemberFragment memberFragment, View view) {
        MemberPromoCodeDialog memberPromoCodeDialogA = MemberPromoCodeDialog.INSTANCE.a(memberFragment.new c());
        FragmentManager childFragmentManager = memberFragment.getChildFragmentManager();
        Intrinsics.g(childFragmentManager, "getChildFragmentManager(...)");
        memberPromoCodeDialogA.show(childFragmentManager, "MemberPromoCodeDialog");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:10:0x0019  */
    public static final Unit W0(MemberFragment memberFragment, RedeemResult redeemResult) {
        String string;
        String str;
        if (redeemResult != null) {
            int vipDurationDays = redeemResult.getVipDurationDays();
            if (vipDurationDays == 1) {
                Context context = memberFragment.getContext();
                if (context != null) {
                    string = context.getString(R$string.member_claimed_succeed_1_day);
                    str = string;
                } else {
                    str = null;
                }
            } else {
                Context context2 = memberFragment.getContext();
                if (context2 != null) {
                    string = context2.getString(R$string.member_claimed_succeed_days, Integer.valueOf(vipDurationDays));
                    str = string;
                } else {
                    str = null;
                }
            }
            if (str != null) {
                uh.b.f76753a.g(R$layout.claim_succeed_layout, str, (24 & 4) != 0 ? 0 : 80, (24 & 8) != 0 ? 0 : 0, (24 & 16) != 0 ? 0 : com.blankj.utilcode.util.a0.a(66.0f));
            }
            memberFragment.f1();
            IMemberApi iMemberApi = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
            if (iMemberApi != null) {
                IMemberApi.a.a(iMemberApi, null, 1, null);
            }
        } else {
            com.tn.lib.widget.toast.core.h.f41479a.k(com.tn.lib.widget.R$string.failed_toast);
        }
        memberFragment.L0();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit X0(MemberFragment memberFragment, zm.d dVar) {
        List<Object> data;
        Object obj;
        Object next;
        List<MemberTaskItemInvite> inviteList;
        memberFragment.f1();
        com.transsion.member.adapter.l lVar = memberFragment.taskAdapter;
        if (lVar != null && (data = lVar.getData()) != null) {
            Iterator<T> it = data.iterator();
            while (true) {
                obj = null;
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                Integer taskSubType = ((MemberTaskItem) next).getTaskSubType();
                if (taskSubType != null && taskSubType.intValue() == 2) {
                    break;
                }
            }
            MemberTaskItem memberTaskItem = (MemberTaskItem) next;
            if (memberTaskItem != null) {
                int iA = dVar.a();
                String strD = dVar.d();
                MemberTaskRewardInfo memberTaskRewardInfoB = dVar.b();
                if (memberTaskRewardInfoB != null) {
                    if (Intrinsics.c(strD, "0")) {
                        List<MemberTaskItemInvite> inviteList2 = memberTaskItem.getInviteList();
                        if (inviteList2 != null) {
                            for (MemberTaskItemInvite memberTaskItemInvite : inviteList2) {
                                if (memberTaskItemInvite.getStatus() == 1) {
                                    memberTaskItemInvite.setStatus(2);
                                }
                            }
                        }
                    } else if (iA >= 0 && (inviteList = memberTaskItem.getInviteList()) != null) {
                        for (Object obj2 : inviteList) {
                            if (Intrinsics.c(strD, ((MemberTaskItemInvite) obj2).getRewardId())) {
                                obj = obj2;
                                break;
                            }
                        }
                        MemberTaskItemInvite memberTaskItemInvite2 = (MemberTaskItemInvite) obj;
                        if (memberTaskItemInvite2 != null) {
                            memberTaskItemInvite2.setStatus(2);
                        }
                    }
                    memberTaskItem.setRewardInfo(memberTaskRewardInfoB);
                }
                com.transsion.member.adapter.l lVar2 = memberFragment.taskAdapter;
                if (lVar2 != null) {
                    lVar2.notifyDataSetChanged();
                }
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Y0(MemberFragment memberFragment, Pair pair) {
        List<Object> data;
        Object next;
        List<MemberTaskItemCheckInInfo> checkInList;
        MemberTaskItemCheckInInfo memberTaskItemCheckInInfo;
        memberFragment.f1();
        com.transsion.member.adapter.l lVar = memberFragment.taskAdapter;
        if (lVar != null && (data = lVar.getData()) != null) {
            Iterator<T> it = data.iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                Integer taskSubType = ((MemberTaskItem) next).getTaskSubType();
                if (taskSubType != null && taskSubType.intValue() == 8) {
                    break;
                }
            }
            MemberTaskItem memberTaskItem = (MemberTaskItem) next;
            if (memberTaskItem != null) {
                int iIntValue = ((Number) pair.getFirst()).intValue();
                if (((MemberTaskSubmitCheckInRes) pair.getSecond()) != null && (checkInList = memberTaskItem.getCheckInList()) != null && (memberTaskItemCheckInInfo = checkInList.get(iIntValue)) != null) {
                    memberTaskItemCheckInInfo.setHasCheckIn(true);
                }
                com.transsion.member.adapter.l lVar2 = memberFragment.taskAdapter;
                if (lVar2 != null) {
                    lVar2.notifyDataSetChanged();
                }
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Z0(MemberFragment memberFragment, MemberDetail memberDetail) {
        if (memberDetail != null) {
            memberFragment.memberDetail = memberDetail;
            hj.b logViewConfig = memberFragment.getLogViewConfig();
            if (logViewConfig != null) {
                logViewConfig.k(true);
            }
            memberFragment.l1(memberDetail);
            memberFragment.t1(memberDetail.getUserInfo());
        }
        if (memberDetail == null) {
            if (nh.m.f70474a.e()) {
                com.tn.lib.widget.toast.core.h.f41479a.k(com.tn.lib.widget.R$string.failed_toast);
            } else {
                uh.b.f76753a.d(com.tn.lib.widget.R$string.no_network_toast);
            }
        }
        memberFragment.L0();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit a1(MemberFragment memberFragment, SkuData skuData) {
        if (skuData != null) {
            memberFragment.m1(skuData);
        }
        memberFragment.L0();
        return Unit.f67061a;
    }

    /* JADX INFO: renamed from: b1, reason: from getter */
    private final boolean getIsSelf() {
        return this.isSelf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c1() {
        ak.k.h("oneroom://com.community.oneroom/profile/user_center_labels_feedback", null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final BaseMemberLoadingDialog d1() {
        return new BaseMemberLoadingDialog();
    }

    private final void e1(SkuItem skuItem) {
        showLoading();
        O0().T(skuItem);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f1() {
        O0().w();
        O0().z();
        com.transsion.member.adapter.l lVar = this.taskAdapter;
        if (lVar != null) {
            lVar.notifyDataSetChanged();
        }
        K0();
    }

    private final void g1() {
        if (this.shouldRefreshPurchasedInfo) {
            Q0();
            this.shouldRefreshPurchasedInfo = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ILoginApi getMLoginApi() {
        return (ILoginApi) this.mLoginApi.getValue();
    }

    private final void h1(List redeemList) {
    }

    private final void i1(String optType, String skuId) {
        String strF;
        HashMap map = new HashMap();
        map.put("opt_type", optType);
        if (skuId != null) {
            map.put("skuId", skuId);
        }
        hj.i iVar = hj.i.f64505a;
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig == null || (strF = logViewConfig.f()) == null) {
            strF = "";
        }
        iVar.p(strF, map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void j1(String skuId, Integer code, String message) {
        String strF;
        HashMap map = new HashMap();
        map.put("opt_type", "pay_result");
        map.put("sku_id", skuId);
        map.put("fail_code", String.valueOf(code));
        String str = "";
        if (message == null) {
            message = "";
        }
        map.put("fail_message", message);
        map.put("order_id", this.orderId);
        String str2 = this.traceId;
        if (str2 == null) {
            str2 = "";
        }
        map.put("trace_id", str2);
        map.put("result_type", "result_fail");
        hj.i iVar = hj.i.f64505a;
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null && (strF = logViewConfig.f()) != null) {
            str = strF;
        }
        iVar.s(str, "purchase", map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void k1(String skuId) {
        String strF;
        HashMap map = new HashMap();
        map.put("opt_type", "pay_result");
        map.put("sku_id", skuId);
        map.put("order_id", this.orderId);
        String str = this.traceId;
        String str2 = "";
        if (str == null) {
            str = "";
        }
        map.put("trace_id", str);
        map.put("result_type", "result_success");
        hj.i iVar = hj.i.f64505a;
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null && (strF = logViewConfig.f()) != null) {
            str2 = strF;
        }
        iVar.s(str2, "purchase", map);
    }

    private final void l1(MemberDetail memberDetail) {
        ImageView imageView;
        AppCompatTextView appCompatTextView;
        AppCompatTextView appCompatTextView2;
        LinearLayout.LayoutParams layoutParams;
        AppCompatTextView appCompatTextView3;
        AppCompatTextView appCompatTextView4;
        AppCompatTextView appCompatTextView5;
        AppCompatTextView appCompatTextView6;
        ImageView imageView2;
        AppCompatTextView appCompatTextView7;
        AppCompatTextView appCompatTextView8;
        TextView textView;
        TextView textView2;
        TextView textView3;
        TextView textView4;
        TextView textView5;
        TextView textView6;
        AppCompatTextView appCompatTextView9;
        AppCompatTextView appCompatTextView10;
        AppCompatTextView appCompatTextView11;
        ImageView imageView3;
        AppCompatTextView appCompatTextView12;
        AppCompatTextView appCompatTextView13;
        PointInfo pointInfo;
        boolean z10 = true;
        lg.a.C0828a.g(lg.a.f68839a, "member detail is " + memberDetail, false, 2, null);
        int point = (memberDetail == null || (pointInfo = memberDetail.getPointInfo()) == null) ? 0 : pointInfo.getPoint();
        int i11 = b.f46313a[(memberDetail != null ? MembershipDetailType.INSTANCE.a(memberDetail.getMemberInfo()) : MembershipDetailType.GUEST).ordinal()];
        if (i11 == 1 || i11 == 2 || i11 == 3) {
            Context context = getContext();
            if (context != null) {
                MemberInfo memberInfo = memberDetail != null ? memberDetail.getMemberInfo() : null;
                IMemberApi iMemberApi = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
                if (iMemberApi != null ? iMemberApi.f() : false) {
                    wm.n mViewBinding = getMViewBinding();
                    if (mViewBinding != null && (appCompatTextView8 = mViewBinding.f77836s) != null) {
                        appCompatTextView8.setTextColor(context.getColor(com.tn.lib.widget.R$color.yellow_dark_90));
                    }
                    wm.n mViewBinding2 = getMViewBinding();
                    if (mViewBinding2 != null && (appCompatTextView7 = mViewBinding2.f77836s) != null) {
                        appCompatTextView7.setText(getString(R$string.member_premium));
                    }
                    wm.n mViewBinding3 = getMViewBinding();
                    if (mViewBinding3 != null && (imageView2 = mViewBinding3.f77827j) != null) {
                        imageView2.setVisibility(0);
                    }
                } else {
                    wm.n mViewBinding4 = getMViewBinding();
                    if (mViewBinding4 != null && (appCompatTextView2 = mViewBinding4.f77836s) != null) {
                        appCompatTextView2.setTextColor(context.getColor(com.tn.lib.widget.R$color.white_80));
                    }
                    wm.n mViewBinding5 = getMViewBinding();
                    if (mViewBinding5 != null && (appCompatTextView = mViewBinding5.f77836s) != null) {
                        appCompatTextView.setText(getString(R$string.member_free_plan));
                    }
                    wm.n mViewBinding6 = getMViewBinding();
                    if (mViewBinding6 != null && (imageView = mViewBinding6.f77827j) != null) {
                        imageView.setVisibility(8);
                    }
                }
                wm.n mViewBinding7 = getMViewBinding();
                if (mViewBinding7 != null && (appCompatTextView6 = mViewBinding7.f77834q) != null) {
                    appCompatTextView6.setText(getString(R$string.member_date_left, memberInfo != null ? memberInfo.getExpiryDate() : null));
                }
                wm.n mViewBinding8 = getMViewBinding();
                if (mViewBinding8 != null && (appCompatTextView5 = mViewBinding8.f77834q) != null) {
                    appCompatTextView5.setVisibility(0);
                }
                wm.n mViewBinding9 = getMViewBinding();
                ViewGroup.LayoutParams layoutParams2 = (mViewBinding9 == null || (appCompatTextView4 = mViewBinding9.f77836s) == null) ? null : appCompatTextView4.getLayoutParams();
                layoutParams = layoutParams2 instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams2 : null;
                if (layoutParams != null) {
                    layoutParams.setMarginStart(com.blankj.utilcode.util.a0.a(4.0f));
                }
                wm.n mViewBinding10 = getMViewBinding();
                if (mViewBinding10 != null && (appCompatTextView3 = mViewBinding10.f77836s) != null) {
                    appCompatTextView3.requestLayout();
                }
            }
        } else {
            if (i11 != 4 && i11 != 5) {
                throw new NoWhenBranchMatchedException();
            }
            wm.n mViewBinding11 = getMViewBinding();
            if (mViewBinding11 != null && (appCompatTextView13 = mViewBinding11.f77836s) != null) {
                appCompatTextView13.setText(getString(R$string.member_free_plan));
            }
            Context context2 = getContext();
            if (context2 != null) {
                wm.n mViewBinding12 = getMViewBinding();
                if (mViewBinding12 != null && (appCompatTextView12 = mViewBinding12.f77836s) != null) {
                    appCompatTextView12.setTextColor(context2.getColor(com.tn.lib.widget.R$color.white_80));
                }
                wm.n mViewBinding13 = getMViewBinding();
                if (mViewBinding13 != null && (imageView3 = mViewBinding13.f77827j) != null) {
                    imageView3.setVisibility(8);
                }
                wm.n mViewBinding14 = getMViewBinding();
                if (mViewBinding14 != null && (appCompatTextView11 = mViewBinding14.f77834q) != null) {
                    appCompatTextView11.setVisibility(8);
                }
                wm.n mViewBinding15 = getMViewBinding();
                ViewGroup.LayoutParams layoutParams3 = (mViewBinding15 == null || (appCompatTextView10 = mViewBinding15.f77836s) == null) ? null : appCompatTextView10.getLayoutParams();
                layoutParams = layoutParams3 instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams3 : null;
                if (layoutParams != null) {
                    layoutParams.setMarginStart(com.blankj.utilcode.util.a0.a(12.0f));
                }
                wm.n mViewBinding16 = getMViewBinding();
                if (mViewBinding16 != null && (appCompatTextView9 = mViewBinding16.f77836s) != null) {
                    appCompatTextView9.requestLayout();
                }
            }
        }
        if (memberDetail != null) {
            List<MemberAgreement> memberAgreements = memberDetail.getMemberAgreements();
            if (memberAgreements != null && !memberAgreements.isEmpty()) {
                z10 = false;
            }
            if (z10) {
                wm.n mViewBinding17 = getMViewBinding();
                if (mViewBinding17 != null && (textView2 = mViewBinding17.f77833p) != null) {
                    textView2.setVisibility(8);
                }
                wm.n mViewBinding18 = getMViewBinding();
                if (mViewBinding18 != null && (textView = mViewBinding18.f77832o) != null) {
                    textView.setVisibility(8);
                }
            } else {
                wm.n mViewBinding19 = getMViewBinding();
                if (mViewBinding19 != null && (textView6 = mViewBinding19.f77833p) != null) {
                    textView6.setVisibility(0);
                }
                wm.n mViewBinding20 = getMViewBinding();
                if (mViewBinding20 != null && (textView5 = mViewBinding20.f77832o) != null) {
                    textView5.setVisibility(0);
                }
                wm.n mViewBinding21 = getMViewBinding();
                if (mViewBinding21 != null && (textView4 = mViewBinding21.f77833p) != null) {
                    List<MemberAgreement> memberAgreements2 = memberDetail.getMemberAgreements();
                    Intrinsics.e(memberAgreements2);
                    textView4.setText(memberAgreements2.get(0).getTitle());
                }
                wm.n mViewBinding22 = getMViewBinding();
                if (mViewBinding22 != null && (textView3 = mViewBinding22.f77832o) != null) {
                    List<MemberAgreement> memberAgreements3 = memberDetail.getMemberAgreements();
                    Intrinsics.e(memberAgreements3);
                    textView3.setText(memberAgreements3.get(0).getContent());
                }
            }
        }
        v1();
        p1(point);
        g1();
    }

    private final void m1(SkuData data) {
        RecyclerView recyclerView;
        PointInfo pointInfo;
        List<SkuItem> skuList = data.getSkuList();
        List listK0 = skuList != null ? CollectionsKt.K0(skuList, 3) : null;
        if (listK0 == null) {
            listK0 = CollectionsKt.l();
        }
        List<SkuItem> skuPointList = data.getSkuPointList();
        List listK1 = skuPointList != null ? CollectionsKt.K0(skuPointList, 3) : null;
        if (listK1 == null) {
            listK1 = CollectionsKt.l();
        }
        List<SkuItem> list = listK0;
        ArrayList arrayList = new ArrayList(CollectionsKt.v(list, 10));
        for (SkuItem skuItem : list) {
            skuItem.setMemberDetail(this.memberDetail);
            arrayList.add(skuItem);
        }
        MemberDetail memberDetail = this.memberDetail;
        int i11 = 0;
        int point = (memberDetail == null || (pointInfo = memberDetail.getPointInfo()) == null) ? 0 : pointInfo.getPoint();
        List<SkuItem> list2 = listK1;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.v(list2, 10));
        for (SkuItem skuItem2 : list2) {
            skuItem2.setUserPoints(Integer.valueOf(point));
            arrayList2.add(skuItem2);
        }
        com.transsion.member.adapter.k kVar = this.skuListAdapter;
        if (Intrinsics.c(kVar != null ? kVar.getData() : null, CollectionsKt.U0(arrayList))) {
            com.transsion.member.adapter.i iVar = this.redeemListAdapter;
            if (Intrinsics.c(iVar != null ? iVar.getData() : null, CollectionsKt.U0(arrayList2))) {
                return;
            }
        }
        for (Object obj : arrayList) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt.u();
            }
            SkuItem skuItem3 = (SkuItem) obj;
            String hotIcon = skuItem3.getHotIcon();
            if (hotIcon != null && hotIcon.length() != 0) {
                this.selectedSkuItem = skuItem3;
                this.defaultSelectedPosition = i11;
            }
            i11 = i12;
        }
        com.transsion.member.adapter.k kVar2 = new com.transsion.member.adapter.k(CollectionsKt.U0(arrayList));
        kVar2.l(R$id.item_root);
        kVar2.G1(this.defaultSelectedPosition);
        kVar2.F1(new Function2() { // from class: com.transsion.member.m
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj2, Object obj3) {
                return MemberFragment.n1(this.f46590a, (SkuItem) obj2, (View) obj3);
            }
        });
        this.skuListAdapter = kVar2;
        wm.n mViewBinding = getMViewBinding();
        if (mViewBinding != null && (recyclerView = mViewBinding.f77828k) != null) {
            recyclerView.setLayoutManager(new NpaGridLayoutManager(recyclerView.getContext(), 3));
            if (recyclerView.getItemDecorationCount() <= 0) {
                recyclerView.addItemDecoration(new com.transsion.member.adapter.a(3, com.blankj.utilcode.util.a0.a(12.0f)));
            }
            recyclerView.setAdapter(this.skuListAdapter);
        }
        com.transsion.member.adapter.i iVar2 = new com.transsion.member.adapter.i(CollectionsKt.U0(arrayList2));
        iVar2.l(R$id.item_root);
        iVar2.F1(new Function2() { // from class: com.transsion.member.n
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj2, Object obj3) {
                return MemberFragment.o1(this.f46591a, (SkuItem) obj2, (View) obj3);
            }
        });
        this.redeemListAdapter = iVar2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ILoginApi mLoginApi_delegate$lambda$1() {
        return (ILoginApi) TheRouter.d(ILoginApi.class, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit n1(MemberFragment memberFragment, SkuItem item, View view) {
        Intrinsics.h(item, "item");
        Intrinsics.h(view, "view");
        memberFragment.selectedSkuItem = item;
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit o1(MemberFragment memberFragment, SkuItem item, View view) {
        Intrinsics.h(item, "item");
        Intrinsics.h(view, "view");
        if (com.transsion.baseui.util.c.f43504a.a(view.getId(), 2000L)) {
            return Unit.f67061a;
        }
        lg.a.C0828a.g(lg.a.f68839a, "The productId and coins: " + item.getSkuId() + ", " + item.getCoin(), false, 2, null);
        String duration = item.getDuration();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(duration);
        sb2.append("_reward");
        memberFragment.i1(sb2.toString(), item.getSkuId());
        memberFragment.e1(item);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:20:0x002b  */
    public final void q1(final String productId, boolean isSubscription) {
        boolean z10;
        MemberInfo memberInfo;
        MemberInfo memberInfo2;
        MemberDetail memberDetail = this.memberDetail;
        if ((memberDetail == null || (memberInfo2 = memberDetail.getMemberInfo()) == null) ? false : memberInfo2.isActive()) {
            MemberDetail memberDetail2 = this.memberDetail;
            z10 = memberDetail2 != null && (memberInfo = memberDetail2.getMemberInfo()) != null && memberInfo.getMemberType() == 2;
        }
        this.isPremium = z10;
        lg.a.C0828a.g(lg.a.f68839a, "before pay isPremium: " + z10, false, 2, null);
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        FragmentActivity activity = getActivity();
        AppCompatActivity appCompatActivity = activity instanceof AppCompatActivity ? (AppCompatActivity) activity : null;
        if (appCompatActivity != null) {
            com.transsion.payment.lib.f.f47794b.a().e(appCompatActivity, productId, Double.valueOf(0.0d), null, isSubscription, null, new com.transsion.payment.lib.b() { // from class: com.transsion.member.MemberFragment$startPay$1$1
                @Override // com.transsion.payment.lib.b
                public void a(Integer num, String str, boolean z11, String str2) {
                    lg.a.C0828a.m(lg.a.f68839a, "Payment failed " + str + ", " + num, false, 2, null);
                    if (num != null && num.intValue() == -30) {
                        Ref.BooleanRef booleanRef2 = booleanRef;
                        if (booleanRef2.element) {
                            return;
                        }
                        booleanRef2.element = true;
                        com.tn.lib.widget.toast.core.h hVar = com.tn.lib.widget.toast.core.h.f41479a;
                        Context context = this.f46317a.getContext();
                        hVar.l(context != null ? context.getString(R$string.member_pay_pending) : null);
                        return;
                    }
                    if (num == null || num.intValue() != 1003) {
                        this.f46317a.j1(productId, num, str);
                        if (this.f46317a.getContext() != null) {
                            this.f46317a.L0();
                        }
                        kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.c()), null, null, new MemberFragment$startPay$1$1$error$3(this.f46317a, null), 3, null);
                        return;
                    }
                    this.f46317a.j1(productId, num, str);
                    com.tn.lib.widget.toast.core.h hVar2 = com.tn.lib.widget.toast.core.h.f41479a;
                    Context context2 = this.f46317a.getContext();
                    hVar2.l(context2 != null ? context2.getString(R$string.member_pay_processing) : null);
                    if (this.f46317a.getContext() != null) {
                        this.f46317a.L0();
                    }
                }

                @Override // com.transsion.payment.lib.b
                public void b(boolean z11) {
                    if (z11) {
                        this.f46317a.showLoading();
                    }
                }

                /* JADX WARN: Code duplicated, block: B:20:0x0050  */
                @Override // com.transsion.payment.lib.b
                public void c(int i11, String balance, String str) {
                    boolean z11;
                    MemberInfo memberInfo3;
                    MemberInfo memberInfo4;
                    Intrinsics.h(balance, "balance");
                    lg.a.C0828a c0828a = lg.a.f68839a;
                    lg.a.C0828a.g(c0828a, "Payment succeed " + str, false, 2, null);
                    MemberDetail memberDetail3 = this.f46317a.memberDetail;
                    if ((memberDetail3 == null || (memberInfo4 = memberDetail3.getMemberInfo()) == null) ? false : memberInfo4.isActive()) {
                        MemberDetail memberDetail4 = this.f46317a.memberDetail;
                        if ((memberDetail4 == null || (memberInfo3 = memberDetail4.getMemberInfo()) == null || memberInfo3.getMemberType() != 2) ? false : true) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                    } else {
                        z11 = false;
                    }
                    lg.a.C0828a.g(c0828a, "after pay isPremium:  " + z11, false, 2, null);
                    this.f46317a.shouldRefreshPurchasedInfo = true;
                    lg.a.C0828a.g(c0828a, "Should refresh purchased info", false, 2, null);
                    this.f46317a.k1(productId);
                    kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.c()), null, null, new MemberFragment$startPay$1$1$success$1(this.f46317a, null), 3, null);
                    kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this.f46317a), null, null, new MemberFragment$startPay$1$1$success$2(str, null), 3, null);
                    if (this.f46317a.getContext() != null) {
                        this.f46317a.L0();
                    }
                    kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.c()), null, null, new MemberFragment$startPay$1$1$success$4(this.f46317a, null), 3, null);
                }
            }, new Function1() { // from class: com.transsion.member.o
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return MemberFragment.r1(this.f46595a, productId, (String) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit r1(MemberFragment memberFragment, String str, String orderId) {
        Intrinsics.h(orderId, "orderId");
        memberFragment.orderId = orderId;
        com.transsion.baselib.helper.f fVar = com.transsion.baselib.helper.f.f43269a;
        String str2 = memberFragment.sceneId;
        String str3 = memberFragment.traceId;
        if (str3 == null) {
            str3 = "";
        }
        com.transsion.baselib.helper.f.b(fVar, "memberdetail", str2, orderId, str3, str, null, 32, null);
        return Unit.f67061a;
    }

    private final void s1(float alpha) {
        wm.n mViewBinding;
        ConstraintLayout constraintLayout;
        if (!isAdded() || (mViewBinding = getMViewBinding()) == null || (constraintLayout = mViewBinding.f77831n) == null) {
            return;
        }
        constraintLayout.setBackgroundColor(I0(androidx.core.content.b.getColor(requireContext(), com.tn.lib.widget.R$color.gray_dark_00), RangesKt.h(alpha, 1.0f)));
    }

    private final void t1(UserInfo userInfo) {
        wm.n mViewBinding;
        ConstraintLayout.b bVar;
        if (userInfo == null || (mViewBinding = getMViewBinding()) == null) {
            return;
        }
        if (userInfo.getUserType() == 1) {
            View avatarBg = mViewBinding.f77819b;
            Intrinsics.g(avatarBg, "avatarBg");
            avatarBg.setVisibility(0);
            ShapeableImageView ivAvatarPremium = mViewBinding.f77822e;
            Intrinsics.g(ivAvatarPremium, "ivAvatarPremium");
            ivAvatarPremium.setVisibility(0);
            ej.f.a aVar = ej.f.f61882a;
            Context context = mViewBinding.f77822e.getContext();
            Intrinsics.g(context, "getContext(...)");
            ej.f.b bVarI = aVar.m(context).g(userInfo.getAvatar()).i(com.tn.lib.widget.R$mipmap.profile_default_avatar);
            ShapeableImageView ivAvatarPremium2 = mViewBinding.f77822e;
            Intrinsics.g(ivAvatarPremium2, "ivAvatarPremium");
            bVarI.d(ivAvatarPremium2);
            mViewBinding.f77825h.setText(androidx.core.text.a.c().m(userInfo.getNickname(), androidx.core.text.u.f8253a));
            mViewBinding.f77825h.setOnClickListener(null);
            mViewBinding.f77825h.setCompoundDrawablesRelative(null, null, null, null);
            ViewGroup.LayoutParams layoutParams = mViewBinding.f77825h.getLayoutParams();
            ConstraintLayout.b bVar2 = layoutParams instanceof ConstraintLayout.b ? (ConstraintLayout.b) layoutParams : null;
            if (bVar2 != null) {
                bVar2.setMarginStart(gk.b.a(8));
            }
            mViewBinding.f77825h.requestLayout();
            ViewGroup.LayoutParams layoutParams2 = mViewBinding.f77834q.getLayoutParams();
            bVar = layoutParams2 instanceof ConstraintLayout.b ? (ConstraintLayout.b) layoutParams2 : null;
            if (bVar != null) {
                bVar.setMarginStart(gk.b.a(8));
            }
            mViewBinding.f77834q.requestLayout();
            return;
        }
        View avatarBg2 = mViewBinding.f77819b;
        Intrinsics.g(avatarBg2, "avatarBg");
        avatarBg2.setVisibility(8);
        ShapeableImageView ivAvatarPremium3 = mViewBinding.f77822e;
        Intrinsics.g(ivAvatarPremium3, "ivAvatarPremium");
        ivAvatarPremium3.setVisibility(8);
        AppCompatTextView appCompatTextView = mViewBinding.f77825h;
        Context context2 = getContext();
        appCompatTextView.setText(context2 != null ? context2.getString(R$string.member_login) : null);
        AppCompatTextView appCompatTextView2 = mViewBinding.f77825h;
        Context context3 = getContext();
        appCompatTextView2.setCompoundDrawablesRelativeWithIntrinsicBounds((Drawable) null, (Drawable) null, context3 != null ? context3.getDrawable(com.tn.lib.widget.R$mipmap.ic_arrow_right_for_member) : null, (Drawable) null);
        mViewBinding.f77825h.setCompoundDrawablePadding(0);
        AppCompatTextView ivName = mViewBinding.f77825h;
        Intrinsics.g(ivName, "ivName");
        jg.c.c(ivName, 0L, new Function1() { // from class: com.transsion.member.p
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MemberFragment.u1(this.f46597a, (View) obj);
            }
        }, 1, null);
        ViewGroup.LayoutParams layoutParams3 = mViewBinding.f77825h.getLayoutParams();
        ConstraintLayout.b bVar3 = layoutParams3 instanceof ConstraintLayout.b ? (ConstraintLayout.b) layoutParams3 : null;
        if (bVar3 != null) {
            bVar3.setMarginStart(gk.b.a(12));
        }
        mViewBinding.f77825h.requestLayout();
        ViewGroup.LayoutParams layoutParams4 = mViewBinding.f77834q.getLayoutParams();
        bVar = layoutParams4 instanceof ConstraintLayout.b ? (ConstraintLayout.b) layoutParams4 : null;
        if (bVar != null) {
            bVar.setMarginStart(gk.b.a(12));
        }
        mViewBinding.f77834q.requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit u1(MemberFragment memberFragment, View it) {
        Intrinsics.h(it, "it");
        ILoginApi mLoginApi = memberFragment.getMLoginApi();
        if (mLoginApi != null) {
            mLoginApi.g(memberFragment);
        }
        ILoginApi mLoginApi2 = memberFragment.getMLoginApi();
        if (mLoginApi2 != null) {
            Context contextRequireContext = memberFragment.requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            mLoginApi2.j(contextRequireContext);
        }
        return Unit.f67061a;
    }

    private final void v1() {
        String activityId;
        TextView textView;
        ImageView imageView;
        TextView textView2;
        TextView textView3;
        ImageView imageView2;
        Lottery lottery;
        Lottery lottery2;
        IRewardsCenterApi iRewardsCenterApi = (IRewardsCenterApi) TheRouter.d(IRewardsCenterApi.class, new Object[0]);
        RewardsCenterData rewardsCenterDataA = iRewardsCenterApi != null ? iRewardsCenterApi.a() : null;
        if (rewardsCenterDataA == null || (lottery2 = rewardsCenterDataA.getLottery()) == null || (activityId = lottery2.getActivityId()) == null) {
            activityId = "0";
        }
        boolean z10 = Integer.parseInt(activityId) > 0;
        String bgImage = (rewardsCenterDataA == null || (lottery = rewardsCenterDataA.getLottery()) == null) ? null : lottery.getBgImage();
        if (z10) {
            wm.n mViewBinding = getMViewBinding();
            if (mViewBinding != null && (imageView2 = mViewBinding.f77829l) != null) {
                imageView2.setVisibility(0);
            }
            wm.n mViewBinding2 = getMViewBinding();
            ViewGroup.LayoutParams layoutParams = (mViewBinding2 == null || (textView3 = mViewBinding2.f77835r) == null) ? null : textView3.getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = layoutParams instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams : null;
            if (layoutParams2 != null) {
                layoutParams2.topMargin = gk.b.a(-20);
            }
            wm.n mViewBinding3 = getMViewBinding();
            ImageView imageView3 = mViewBinding3 != null ? mViewBinding3.f77829l : null;
            if (getContext() != null && imageView3 != null) {
                Glide.with(requireContext()).load2(bgImage).into(imageView3);
            }
        } else {
            wm.n mViewBinding4 = getMViewBinding();
            if (mViewBinding4 != null && (imageView = mViewBinding4.f77829l) != null) {
                imageView.setVisibility(8);
            }
            wm.n mViewBinding5 = getMViewBinding();
            ViewGroup.LayoutParams layoutParams3 = (mViewBinding5 == null || (textView = mViewBinding5.f77835r) == null) ? null : textView.getLayoutParams();
            LinearLayout.LayoutParams layoutParams4 = layoutParams3 instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams3 : null;
            if (layoutParams4 != null) {
                layoutParams4.topMargin = gk.b.a(16);
            }
        }
        wm.n mViewBinding6 = getMViewBinding();
        if (mViewBinding6 == null || (textView2 = mViewBinding6.f77835r) == null) {
            return;
        }
        textView2.requestLayout();
    }

    public final void L0() {
        if (N0().isAdded()) {
            N0().dismissAllowingStateLoss();
        } else {
            lg.a.C0828a.g(lg.a.f68839a, "Dialog not is added", false, 2, null);
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    /* JADX INFO: renamed from: P0, reason: merged with bridge method [inline-methods] */
    public wm.n getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        wm.n nVarC = wm.n.c(inflater);
        Intrinsics.g(nVarC, "inflate(...)");
        return nVarC;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initListener() {
        RelativeLayout relativeLayout;
        TextView textView;
        AppCompatImageView appCompatImageView;
        wm.n mViewBinding = getMViewBinding();
        if (mViewBinding != null && (appCompatImageView = mViewBinding.f77823f) != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.member.j
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MemberFragment.R0(this.f46584a, view);
                }
            });
        }
        wm.n mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (textView = mViewBinding2.f77835r) != null) {
            jg.c.c(textView, 0L, new Function1() { // from class: com.transsion.member.q
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return MemberFragment.S0(this.f46718a, (View) obj);
                }
            }, 1, null);
        }
        wm.n mViewBinding3 = getMViewBinding();
        if (mViewBinding3 == null || (relativeLayout = mViewBinding3.f77821d) == null) {
            return;
        }
        jg.c.c(relativeLayout, 0L, new Function1() { // from class: com.transsion.member.r
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MemberFragment.T0(this.f46721a, (View) obj);
            }
        }, 1, null);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        ILoginApi mLoginApi;
        M0();
        if (getIsSelf() && (mLoginApi = getMLoginApi()) != null) {
            mLoginApi.g(this);
        }
        this.loginLaunch = registerForActivityResult(new f.j(), new androidx.activity.result.a() { // from class: com.transsion.member.s
            @Override // androidx.activity.result.a
            public final void a(Object obj) {
                MemberFragment.U0((ActivityResult) obj);
            }
        });
        wm.n mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            if (getActivity() instanceof MemberActivity) {
                mViewBinding.f77823f.setVisibility(0);
            } else {
                mViewBinding.f77823f.setVisibility(8);
            }
            mViewBinding.f77837t.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.member.t
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MemberFragment.V0(this.f46724a, view);
                }
            });
            J0();
            s1(0.0f);
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        MemberViewModel memberViewModelO0 = O0();
        memberViewModelO0.D().j(getViewLifecycleOwner(), new d(new Function1() { // from class: com.transsion.member.u
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MemberFragment.Z0(this.f46725a, (MemberDetail) obj);
            }
        }));
        memberViewModelO0.K().j(getViewLifecycleOwner(), new d(new Function1() { // from class: com.transsion.member.v
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MemberFragment.a1(this.f46726a, (SkuData) obj);
            }
        }));
        memberViewModelO0.H().j(getViewLifecycleOwner(), new d(new Function1() { // from class: com.transsion.member.w
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MemberFragment.W0(this.f46890a, (RedeemResult) obj);
            }
        }));
        memberViewModelO0.M().j(getViewLifecycleOwner(), new d(new Function1() { // from class: com.transsion.member.x
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MemberFragment.X0(this.f46900a, (zm.d) obj);
            }
        }));
        memberViewModelO0.L().j(getViewLifecycleOwner(), new d(new Function1() { // from class: com.transsion.member.y
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MemberFragment.Y0(this.f46902a, (Pair) obj);
            }
        }));
        O0().O();
        t1(this.mUserInfo);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public boolean isShowPageStateLayoutTitle() {
        return false;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void loadDefaultData() {
        TextView textView;
        RecyclerView recyclerView;
        TextView textView2;
        RecyclerView recyclerView2;
        super.loadDefaultData();
        try {
            Result.Companion companion = Result.INSTANCE;
            IMemberApi iMemberApi = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
            boolean zF = iMemberApi != null ? iMemberApi.f() : false;
            IMemberApi iMemberApi2 = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
            boolean zC = iMemberApi2 != null ? iMemberApi2.c() : false;
            if (zF) {
                wm.n mViewBinding = getMViewBinding();
                if (mViewBinding != null && (recyclerView2 = mViewBinding.f77828k) != null) {
                    recyclerView2.setVisibility(0);
                }
                wm.n mViewBinding2 = getMViewBinding();
                if (mViewBinding2 != null && (textView2 = mViewBinding2.f77835r) != null) {
                    textView2.setText(getString(zC ? R$string.member_renew_now : R$string.member_pay_now));
                }
            } else {
                wm.n mViewBinding3 = getMViewBinding();
                if (mViewBinding3 != null && (recyclerView = mViewBinding3.f77828k) != null) {
                    recyclerView.setVisibility(8);
                }
                wm.n mViewBinding4 = getMViewBinding();
                if (mViewBinding4 != null && (textView = mViewBinding4.f77835r) != null) {
                    textView.setText(getString(R$string.member_redeem));
                }
            }
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void logResume() {
        super.logResume();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public hj.b newLogViewConfig() {
        return new hj.b("memberdetail", false, 2, null);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v11) {
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0052  */
    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        boolean z10;
        HashMap mapG;
        HashMap mapG2;
        HashMap mapG3;
        HashMap mapG4;
        UserInfo userInfoI;
        super.onCreate(savedInstanceState);
        ILoginApi mLoginApi = getMLoginApi();
        String userId = null;
        UserInfo userInfoI2 = mLoginApi != null ? mLoginApi.i() : null;
        this.mUserInfo = userInfoI2;
        this.oldUid = userInfoI2 != null ? userInfoI2.getUserId() : null;
        UserInfo userInfo = this.mUserInfo;
        String userId2 = userInfo != null ? userInfo.getUserId() : null;
        if (userId2 == null || userId2.length() == 0) {
            z10 = true;
        } else {
            UserInfo userInfo2 = this.mUserInfo;
            String userId3 = userInfo2 != null ? userInfo2.getUserId() : null;
            ILoginApi mLoginApi2 = getMLoginApi();
            if (mLoginApi2 != null && (userInfoI = mLoginApi2.i()) != null) {
                userId = userInfoI.getUserId();
            }
            if (Intrinsics.c(userId3, userId)) {
                z10 = true;
            } else {
                z10 = false;
            }
        }
        this.isSelf = z10;
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null && (mapG4 = logViewConfig.g()) != null) {
        }
        if (this.sourceValue != null) {
            hj.b logViewConfig2 = getLogViewConfig();
            if (logViewConfig2 == null || (mapG3 = logViewConfig2.g()) == null) {
                return;
            }
            return;
        }
        if (getActivity() instanceof MemberActivity) {
            hj.b logViewConfig3 = getLogViewConfig();
            if (logViewConfig3 == null || (mapG2 = logViewConfig3.g()) == null) {
                return;
            }
            return;
        }
        hj.b logViewConfig4 = getLogViewConfig();
        if (logViewConfig4 == null || (mapG = logViewConfig4.g()) == null) {
            return;
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        ILoginApi mLoginApi = getMLoginApi();
        if (mLoginApi != null) {
            mLoginApi.p(this);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (isResumed()) {
            if (hidden) {
                logPause();
            } else {
                f1();
                logResume();
            }
        }
        com.transsion.baseui.activity.k.h(null, this, hidden, null, 9, null);
    }

    @Override // dz.a
    public void onLogin(UserInfo user) {
        Intrinsics.h(user, "user");
        dz.a.C0737a.a(this, user);
        f1();
        O0().y();
    }

    @Override // dz.a
    public void onLogout() {
        dz.a.C0737a.b(this);
        f1();
        O0().y();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        com.transsion.baseui.activity.k.l(null, this, null, 5, null);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onResume() {
        RecyclerView recyclerView;
        super.onResume();
        f1();
        com.transsion.baseui.activity.k.p(null, this, "visible=" + isVisible(), 1, null);
        wm.n mViewBinding = getMViewBinding();
        if (mViewBinding != null && (recyclerView = mViewBinding.f77828k) != null && recyclerView.getVisibility() == 0) {
            com.transsion.baselib.helper.f fVar = com.transsion.baselib.helper.f.f43269a;
            String str = this.sceneId;
            String str2 = str == null ? "" : str;
            String str3 = this.traceId;
            fVar.d("memberdetail", str2, str3 == null ? "" : str3, "", this.subjectId);
        }
        if (this.isFirstResume) {
            this.isFirstResume = false;
        } else {
            O0().y();
        }
    }

    @Override // dz.a
    public void onUpdateUserInfo(UserInfo user) {
        Intrinsics.h(user, "user");
        if (getIsSelf()) {
            t1(user);
        }
    }

    public final void p1(int points) {
        List<SkuItem> skuPointList;
        PointInfo pointInfo;
        MemberDetail memberDetail = this.memberDetail;
        if (memberDetail != null && (pointInfo = memberDetail.getPointInfo()) != null) {
            pointInfo.setPoint(points);
        }
        SkuData skuDataJ = O0().J();
        if (skuDataJ == null || (skuPointList = skuDataJ.getSkuPointList()) == null) {
            return;
        }
        h1(skuPointList);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void retryLoadData() {
        IMemberApi iMemberApi = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
        if (iMemberApi != null) {
            IMemberApi.a.a(iMemberApi, null, 1, null);
        }
    }

    public final void showLoading() {
        N0().l0(this, "LoadingDialog");
    }
}
