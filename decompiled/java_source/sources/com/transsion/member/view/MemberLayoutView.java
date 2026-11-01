package com.transsion.member.view;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.p009lifecycle.v0;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.dialog.BaseMemberLoadingDialog;
import com.transsion.member.MemberViewModel;
import com.transsion.member.dialog.MemberPromoCodeDialog;
import com.transsion.member.premium.PremiumContentController;
import com.transsion.memberapi.MemberDetail;
import com.transsion.memberapi.MemberSource;
import com.transsnet.loginapi.ILoginApi;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u001a\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 }2\u00020\u00012\u00020\u0002:\u0001OB'\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ[\u0010\u0015\u001a\u00020\f2\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b2\u0010\b\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u001c\b\u0002\u0010\u0014\u001a\u0016\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\f\u0018\u00010\u0011¢\u0006\u0004\b\u0015\u0010\u0016J\r\u0010\u0017\u001a\u00020\f¢\u0006\u0004\b\u0017\u0010\u0018J\r\u0010\u0019\u001a\u00020\f¢\u0006\u0004\b\u0019\u0010\u0018J\r\u0010\u001a\u001a\u00020\u0007¢\u0006\u0004\b\u001a\u0010\u001bJ\r\u0010\u001c\u001a\u00020\f¢\u0006\u0004\b\u001c\u0010\u0018J\u0015\u0010\u001e\u001a\u00020\f2\u0006\u0010\u001d\u001a\u00020\u0007¢\u0006\u0004\b\u001e\u0010\u001fJ\u001f\u0010 \u001a\u00020\f2\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b¢\u0006\u0004\b \u0010!J\u001f\u0010\"\u001a\u00020\f2\u0010\b\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b¢\u0006\u0004\b\"\u0010!J\u0015\u0010$\u001a\u00020\f2\u0006\u0010#\u001a\u00020\u0013¢\u0006\u0004\b$\u0010%J\u0015\u0010'\u001a\u00020\f2\u0006\u0010&\u001a\u00020\u0013¢\u0006\u0004\b'\u0010%J\u0015\u0010)\u001a\u00020\f2\u0006\u0010(\u001a\u00020\u0013¢\u0006\u0004\b)\u0010%J\u0015\u0010+\u001a\u00020\f2\u0006\u0010*\u001a\u00020\u0013¢\u0006\u0004\b+\u0010%J\r\u0010,\u001a\u00020\f¢\u0006\u0004\b,\u0010\u0018J\r\u0010-\u001a\u00020\f¢\u0006\u0004\b-\u0010\u0018J\u0017\u00100\u001a\u00020\f2\u0006\u0010/\u001a\u00020.H\u0016¢\u0006\u0004\b0\u00101J\u000f\u00102\u001a\u00020\fH\u0016¢\u0006\u0004\b2\u0010\u0018J\u0017\u00103\u001a\u00020\f2\u0006\u0010/\u001a\u00020.H\u0016¢\u0006\u0004\b3\u00101J\u0017\u00106\u001a\u00020\f2\u0006\u00105\u001a\u000204H\u0016¢\u0006\u0004\b6\u00107J\u000f\u00108\u001a\u00020\fH\u0002¢\u0006\u0004\b8\u0010\u0018J\u000f\u00109\u001a\u00020\fH\u0002¢\u0006\u0004\b9\u0010\u0018J\u000f\u0010:\u001a\u00020\fH\u0002¢\u0006\u0004\b:\u0010\u0018J\u000f\u0010;\u001a\u00020\fH\u0002¢\u0006\u0004\b;\u0010\u0018J\u0019\u0010=\u001a\u00020\f2\b\u0010<\u001a\u0004\u0018\u00010.H\u0002¢\u0006\u0004\b=\u00101J\u0019\u0010@\u001a\u00020\f2\b\u0010?\u001a\u0004\u0018\u00010>H\u0002¢\u0006\u0004\b@\u0010AJ\u000f\u0010B\u001a\u00020\fH\u0002¢\u0006\u0004\bB\u0010\u0018J\u000f\u0010C\u001a\u00020\fH\u0002¢\u0006\u0004\bC\u0010\u0018J\u000f\u0010D\u001a\u000204H\u0002¢\u0006\u0004\bD\u0010EJ\u0017\u0010H\u001a\u00020\f2\u0006\u0010G\u001a\u00020FH\u0002¢\u0006\u0004\bH\u0010IJ\u001f\u0010L\u001a\u00020\u00072\u0006\u0010J\u001a\u00020\u00072\u0006\u0010K\u001a\u00020FH\u0002¢\u0006\u0004\bL\u0010MR\u0014\u0010Q\u001a\u00020N8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bO\u0010PR\u001d\u0010W\u001a\u0004\u0018\u00010R8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bS\u0010T\u001a\u0004\bU\u0010VR\u001b\u0010\\\u001a\u00020X8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bY\u0010T\u001a\u0004\bZ\u0010[R\u001e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b]\u0010^R\u001e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b_\u0010^R\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b`\u0010aR*\u0010\u0014\u001a\u0016\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\f\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bb\u0010cR\u0018\u0010g\u001a\u0004\u0018\u00010d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\be\u0010fR\u0018\u0010j\u001a\u0004\u0018\u00010>8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bh\u0010iR\u0016\u0010\u001d\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010kR\u0016\u0010&\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010lR\u0016\u0010#\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bm\u0010lR\u0016\u0010(\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bn\u0010lR\u0016\u0010*\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bo\u0010lR\u0016\u0010q\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bp\u0010lR\u0018\u0010t\u001a\u0004\u0018\u0001048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\br\u0010sR\u001b\u0010x\u001a\u00020u8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b;\u0010T\u001a\u0004\bv\u0010wR\u0014\u0010|\u001a\u00020y8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bz\u0010{¨\u0006~"}, d2 = {"Lcom/transsion/member/view/MemberLayoutView;", "Landroid/widget/LinearLayout;", "Ldz/a;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Lkotlin/Function0;", "", "onClose", "onPurchaseSucceed", "Lcom/transsion/memberapi/MemberSource;", EventConstants.KEY_SOURCE, "Lkotlin/Function2;", "Landroidx/fragment/app/DialogFragment;", "", "showDialog", "init", "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/transsion/memberapi/MemberSource;Lkotlin/jvm/functions/Function2;)V", "resetControllerFirstShowDlg", "()V", "onResume", "getScreenState", "()I", "onDestroy", "screenState", "setScreenState", "(I)V", "setOnClose", "(Lkotlin/jvm/functions/Function0;)V", "setOnPurchaseSucceed", "traceId", "setTraceId", "(Ljava/lang/String;)V", "sceneId", "setSceneId", "subjectId", "setSubjectId", "pageName", "setPageName", "updateViewWithScreenState", "updateZeroTreasureState", "Lcom/transsnet/loginapi/bean/UserInfo;", "user", "onLogin", "(Lcom/transsnet/loginapi/bean/UserInfo;)V", "onLogout", "onUpdateUserInfo", "", "isVisible", "onVisibilityAggregated", "(Z)V", "s", TmcStartParams.KEY_URL_SHORT, "y", CampaignEx.JSON_KEY_AD_Q, "userInfo", "B", "Lcom/transsion/memberapi/MemberDetail;", "detail", "setMemberDetail", "(Lcom/transsion/memberapi/MemberDetail;)V", "z", CampaignEx.JSON_KEY_AD_K, "t", "()Z", "", "alpha", "A", "(F)V", TtmlNode.ATTR_TTS_COLOR, "fraction", "j", "(IF)I", "Lwm/t;", "a", "Lwm/t;", "binding", "Lcom/transsnet/loginapi/ILoginApi;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlin/Lazy;", "getMLoginApi", "()Lcom/transsnet/loginapi/ILoginApi;", "mLoginApi", "Lcom/transsion/member/MemberViewModel;", "c", "getMemberViewModel", "()Lcom/transsion/member/MemberViewModel;", "memberViewModel", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lkotlin/jvm/functions/Function0;", "e", "f", "Lcom/transsion/memberapi/MemberSource;", "g", "Lkotlin/jvm/functions/Function2;", "Lcom/transsion/member/premium/PremiumContentController;", "h", "Lcom/transsion/member/premium/PremiumContentController;", "premiumContentController", "i", "Lcom/transsion/memberapi/MemberDetail;", "memberDetail", "I", "Ljava/lang/String;", "l", "m", "n", "o", "orderId", TtmlNode.TAG_P, "Ljava/lang/Boolean;", "lastVisible", "Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;", "getMLoadingDialog", "()Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;", "mLoadingDialog", "Landroidx/fragment/app/FragmentActivity;", "getHostActivity", "()Landroidx/fragment/app/FragmentActivity;", "hostActivity", "Companion", "Member_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class MemberLayoutView extends LinearLayout implements dz.a {
    public static final int SCREEN_ALL = 0;
    public static final int SCREEN_HALF = 1;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final wm.t binding;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final Lazy mLoginApi;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final Lazy memberViewModel;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private Function0 onClose;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private Function0 onPurchaseSucceed;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private MemberSource source;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private Function2 showDialog;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private PremiumContentController premiumContentController;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private MemberDetail memberDetail;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private int screenState;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private String sceneId;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private String traceId;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private String subjectId;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private String pageName;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private String orderId;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private Boolean lastVisible;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private final Lazy mLoadingDialog;
    public static final int $stable = 8;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public MemberLayoutView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public MemberLayoutView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public MemberLayoutView(final Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        wm.t tVarC = wm.t.c(LayoutInflater.from(context), this, true);
        Intrinsics.g(tVarC, "inflate(...)");
        this.binding = tVarC;
        this.mLoginApi = LazyKt.b(new Function0() { // from class: com.transsion.member.view.p
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return MemberLayoutView.w();
            }
        });
        this.memberViewModel = LazyKt.b(new Function0() { // from class: com.transsion.member.view.q
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return MemberLayoutView.x(context);
            }
        });
        this.sceneId = "";
        this.traceId = "";
        this.subjectId = "";
        this.pageName = "";
        this.orderId = "";
        this.mLoadingDialog = LazyKt.b(new Function0() { // from class: com.transsion.member.view.r
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return MemberLayoutView.v();
            }
        });
        setOrientation(1);
    }

    public /* synthetic */ MemberLayoutView(Context context, AttributeSet attributeSet, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i11);
    }

    private final void A(float alpha) {
        this.binding.f77881g.setBackgroundColor(j(getContext().getColor(R$color.gray_dark_00), RangesKt.h(alpha, 1.0f)));
    }

    private final void B(UserInfo userInfo) {
    }

    private final FragmentActivity getHostActivity() {
        Context context = getContext();
        Intrinsics.f(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        return (FragmentActivity) context;
    }

    private final BaseMemberLoadingDialog getMLoadingDialog() {
        return (BaseMemberLoadingDialog) this.mLoadingDialog.getValue();
    }

    private final ILoginApi getMLoginApi() {
        return (ILoginApi) this.mLoginApi.getValue();
    }

    private final MemberViewModel getMemberViewModel() {
        return (MemberViewModel) this.memberViewModel.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void init$default(MemberLayoutView memberLayoutView, Function0 function0, Function0 function1, MemberSource memberSource, Function2 function2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            function0 = null;
        }
        if ((i11 & 2) != 0) {
            function1 = null;
        }
        if ((i11 & 4) != 0) {
            memberSource = null;
        }
        if ((i11 & 8) != 0) {
            function2 = null;
        }
        memberLayoutView.init(function0, function1, memberSource, function2);
    }

    private final int j(int color, float fraction) {
        return Color.argb((int) (Color.alpha(color) * fraction), Color.red(color), Color.green(color), Color.blue(color));
    }

    private final void k() {
        if (getMLoadingDialog().isAdded()) {
            getMLoadingDialog().dismissAllowingStateLoss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit l(MemberLayoutView memberLayoutView, MemberDetail detail) {
        Intrinsics.h(detail, "detail");
        memberLayoutView.memberDetail = detail;
        memberLayoutView.setMemberDetail(detail);
        memberLayoutView.B(detail.getUserInfo());
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit m(MemberLayoutView memberLayoutView) {
        memberLayoutView.k();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit n(final MemberLayoutView memberLayoutView) {
        MemberPromoCodeDialog memberPromoCodeDialogA = MemberPromoCodeDialog.INSTANCE.a(new Function0() { // from class: com.transsion.member.view.x
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return MemberLayoutView.o(this.f46887a);
            }
        });
        FragmentManager supportFragmentManager = memberLayoutView.getHostActivity().getSupportFragmentManager();
        Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
        memberPromoCodeDialogA.show(supportFragmentManager, "MemberPromoCodeDialog");
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit o(MemberLayoutView memberLayoutView) {
        memberLayoutView.z();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(MemberLayoutView memberLayoutView, View view, int i11, int i12, int i13, int i14) {
        memberLayoutView.binding.f77876b.setBackgroundColor(memberLayoutView.j(Color.rgb(18, 20, 28), RangesKt.l(i12 / 80.0f, 0.0f, 1.0f)));
    }

    private final void q() {
        ImageView ivMemberClose = this.binding.f77877c;
        Intrinsics.g(ivMemberClose, "ivMemberClose");
        jg.c.c(ivMemberClose, 0L, new Function1() { // from class: com.transsion.member.view.w
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MemberLayoutView.r(this.f46886a, (View) obj);
            }
        }, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit r(MemberLayoutView memberLayoutView, View it) {
        Intrinsics.h(it, "it");
        Function0 function0 = memberLayoutView.onClose;
        if (function0 != null) {
            function0.invoke();
        }
        return Unit.f67061a;
    }

    private final void s() {
        A(0.0f);
        updateViewWithScreenState();
    }

    private final void setMemberDetail(MemberDetail detail) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void setOnClose$default(MemberLayoutView memberLayoutView, Function0 function0, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            function0 = null;
        }
        memberLayoutView.setOnClose(function0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void setOnPurchaseSucceed$default(MemberLayoutView memberLayoutView, Function0 function0, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            function0 = null;
        }
        memberLayoutView.setOnPurchaseSucceed(function0);
    }

    private final boolean t() {
        ILoginApi mLoginApi = getMLoginApi();
        if (mLoginApi == null) {
            return false;
        }
        UserInfo userInfoI = mLoginApi.i();
        String userId = userInfoI != null ? userInfoI.getUserId() : null;
        if (userId != null && userId.length() != 0) {
            UserInfo userInfoI2 = mLoginApi.i();
            if (!Intrinsics.c(userId, userInfoI2 != null ? userInfoI2.getUserId() : null)) {
                return false;
            }
        }
        return true;
    }

    private final void u() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final BaseMemberLoadingDialog v() {
        return new BaseMemberLoadingDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ILoginApi w() {
        return (ILoginApi) TheRouter.d(ILoginApi.class, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MemberViewModel x(Context context) {
        Intrinsics.f(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        return (MemberViewModel) new v0((FragmentActivity) context).a(MemberViewModel.class);
    }

    private final void y() {
    }

    private final void z() {
        PremiumContentController premiumContentController = this.premiumContentController;
        if (premiumContentController != null) {
            premiumContentController.I();
        }
        getMemberViewModel().z();
    }

    public final int getScreenState() {
        return this.screenState;
    }

    public final void init(Function0<Unit> onClose, Function0<Unit> onPurchaseSucceed, MemberSource source, Function2<? super DialogFragment, ? super String, Unit> showDialog) {
        ILoginApi mLoginApi;
        this.onClose = onClose;
        this.onPurchaseSucceed = onPurchaseSucceed;
        this.source = source;
        this.showDialog = showDialog;
        if (t() && (mLoginApi = getMLoginApi()) != null) {
            mLoginApi.g(this);
        }
        s();
        PremiumContentView layoutContent = this.binding.f77879e;
        Intrinsics.g(layoutContent, "layoutContent");
        layoutContent.setTrackerInfo(this.sceneId, this.pageName, this.traceId, this.subjectId);
        PremiumContentController premiumContentController = new PremiumContentController(getHostActivity(), getHostActivity(), layoutContent, new PremiumContentController.a(new Function1() { // from class: com.transsion.member.view.s
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MemberLayoutView.l(this.f46882a, (MemberDetail) obj);
            }
        }, null, new Function0() { // from class: com.transsion.member.view.t
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return MemberLayoutView.m(this.f46883a);
            }
        }, 2, null));
        premiumContentController.L(false);
        premiumContentController.t(getHostActivity());
        this.premiumContentController = premiumContentController;
        layoutContent.setOnPromoCodeClickListener(new Function0() { // from class: com.transsion.member.view.u
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return MemberLayoutView.n(this.f46884a);
            }
        });
        y();
        q();
        ILoginApi mLoginApi2 = getMLoginApi();
        B(mLoginApi2 != null ? mLoginApi2.i() : null);
        u();
        this.binding.f77880f.setOnScrollChangeListener(new View.OnScrollChangeListener() { // from class: com.transsion.member.view.v
            @Override // android.view.View.OnScrollChangeListener
            public final void onScrollChange(View view, int i11, int i12, int i13, int i14) {
                MemberLayoutView.p(this.f46885a, view, i11, i12, i13, i14);
            }
        });
    }

    public final void onDestroy() {
        ILoginApi mLoginApi = getMLoginApi();
        if (mLoginApi != null) {
            mLoginApi.p(this);
        }
        this.onClose = null;
        this.onPurchaseSucceed = null;
        this.showDialog = null;
    }

    @Override // dz.a
    public void onLogin(UserInfo user) {
        Intrinsics.h(user, "user");
        z();
        getMemberViewModel().y();
    }

    @Override // dz.a
    public void onLogout() {
        z();
        getMemberViewModel().y();
    }

    public final void onResume() {
        z();
    }

    @Override // dz.a
    public void onUpdateUserInfo(UserInfo user) {
        Intrinsics.h(user, "user");
        if (t()) {
            B(user);
        }
    }

    @Override // android.view.View
    public void onVisibilityAggregated(boolean isVisible) {
        super.onVisibilityAggregated(isVisible);
        if (Intrinsics.c(this.lastVisible, Boolean.valueOf(isVisible))) {
            return;
        }
        this.lastVisible = Boolean.valueOf(isVisible);
    }

    public final void resetControllerFirstShowDlg() {
        PremiumContentController premiumContentController = this.premiumContentController;
        if (premiumContentController != null) {
            premiumContentController.K();
        }
    }

    public final void setOnClose(Function0<Unit> onClose) {
        this.onClose = onClose;
    }

    public final void setOnPurchaseSucceed(Function0<Unit> onPurchaseSucceed) {
        this.onPurchaseSucceed = onPurchaseSucceed;
    }

    public final void setPageName(String pageName) {
        Intrinsics.h(pageName, "pageName");
        this.pageName = pageName;
    }

    public final void setSceneId(String sceneId) {
        Intrinsics.h(sceneId, "sceneId");
        this.sceneId = sceneId;
    }

    public final void setScreenState(int screenState) {
        this.screenState = screenState;
    }

    public final void setSubjectId(String subjectId) {
        Intrinsics.h(subjectId, "subjectId");
        this.subjectId = subjectId;
    }

    public final void setTraceId(String traceId) {
        Intrinsics.h(traceId, "traceId");
        this.traceId = traceId;
    }

    public final void updateViewWithScreenState() {
    }

    public final void updateZeroTreasureState() {
    }
}
