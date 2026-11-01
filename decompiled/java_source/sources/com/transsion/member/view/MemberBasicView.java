package com.transsion.member.view;

import android.app.Activity;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.DialogFragment;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.y0;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestManager;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.layoutmanager.NpaGridLayoutManager;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.dialog.BaseMemberLoadingDialog;
import com.transsion.member.MemberViewModel;
import com.transsion.member.R$string;
import com.transsion.member.promotion.PromotionSelectionHelper;
import com.transsion.memberapi.IMemberApi;
import com.transsion.memberapi.IPremiumApi;
import com.transsion.memberapi.MemberDetail;
import com.transsion.memberapi.MemberFeatureData;
import com.transsion.memberapi.MemberInfo;
import com.transsion.memberapi.MemberPriceItem;
import com.transsion.memberapi.MemberSource;
import com.transsion.memberapi.SkuPromotionItem;
import com.transsion.memberapi.SkuPromotionSku;
import com.transsion.rewardscenterapi.IRewardsCenterApi;
import com.transsion.rewardscenterapi.Lottery;
import com.transsion.rewardscenterapi.RewardsCenterData;
import com.transsnet.loginapi.ILoginApi;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.UUID;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.o0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000¾\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 \u0097\u00012\u00020\u00012\u00020\u0002:\u0001ZB'\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u000e\u0010\u000fJ[\u0010\u0019\u001a\u00020\r2\u0010\b\u0002\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u00102\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u00102\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u001c\b\u0002\u0010\u0018\u001a\u0016\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\r\u0018\u00010\u0015¢\u0006\u0004\b\u0019\u0010\u001aJ\r\u0010\u001b\u001a\u00020\u0007¢\u0006\u0004\b\u001b\u0010\u001cJ\r\u0010\u001d\u001a\u00020\r¢\u0006\u0004\b\u001d\u0010\u001eJ\u0015\u0010 \u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020\u0007¢\u0006\u0004\b \u0010!J\u001f\u0010\"\u001a\u00020\r2\u0010\b\u0002\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u0010¢\u0006\u0004\b\"\u0010#J\u0015\u0010&\u001a\u00020\r2\u0006\u0010%\u001a\u00020$¢\u0006\u0004\b&\u0010'J\u0015\u0010)\u001a\u00020\r2\u0006\u0010(\u001a\u00020\u0017¢\u0006\u0004\b)\u0010*J\u0015\u0010,\u001a\u00020\r2\u0006\u0010+\u001a\u00020\u0017¢\u0006\u0004\b,\u0010*J\u0015\u0010.\u001a\u00020\r2\u0006\u0010-\u001a\u00020\u0017¢\u0006\u0004\b.\u0010*J\u0015\u00100\u001a\u00020\r2\u0006\u0010/\u001a\u00020\u0017¢\u0006\u0004\b0\u0010*J\u0015\u00102\u001a\u00020\r2\u0006\u00101\u001a\u00020\u0017¢\u0006\u0004\b2\u0010*J\r\u00103\u001a\u00020\r¢\u0006\u0004\b3\u0010\u001eJ+\u00109\u001a\u00020\r2\f\u00106\u001a\b\u0012\u0004\u0012\u000205042\u000e\u00108\u001a\n\u0012\u0004\u0012\u000207\u0018\u000104¢\u0006\u0004\b9\u0010:J\u001b\u0010=\u001a\u00020\r2\f\u0010<\u001a\b\u0012\u0004\u0012\u00020;04¢\u0006\u0004\b=\u0010>J\u0017\u0010A\u001a\u00020\r2\u0006\u0010@\u001a\u00020?H\u0016¢\u0006\u0004\bA\u0010BJ\u000f\u0010C\u001a\u00020\rH\u0016¢\u0006\u0004\bC\u0010\u001eJ\u0017\u0010F\u001a\u00020\r2\u0006\u0010E\u001a\u00020DH\u0016¢\u0006\u0004\bF\u0010GJ\u000f\u0010H\u001a\u00020\rH\u0002¢\u0006\u0004\bH\u0010\u001eJ\u000f\u0010I\u001a\u00020\rH\u0002¢\u0006\u0004\bI\u0010\u001eJ!\u0010L\u001a\u00020\r2\u0006\u0010J\u001a\u00020\u00172\b\b\u0002\u0010K\u001a\u00020DH\u0002¢\u0006\u0004\bL\u0010MJ\u000f\u0010N\u001a\u00020\rH\u0002¢\u0006\u0004\bN\u0010\u001eJ\u000f\u0010O\u001a\u00020\rH\u0002¢\u0006\u0004\bO\u0010\u001eJ\u0011\u0010Q\u001a\u0004\u0018\u00010PH\u0002¢\u0006\u0004\bQ\u0010RJ\u0017\u0010T\u001a\u00020\r2\u0006\u0010S\u001a\u00020\u0017H\u0002¢\u0006\u0004\bT\u0010*J+\u0010W\u001a\u00020\r2\u0006\u0010S\u001a\u00020\u00172\b\u0010U\u001a\u0004\u0018\u00010\u00072\b\u0010V\u001a\u0004\u0018\u00010\u0017H\u0002¢\u0006\u0004\bW\u0010XR\u0014\u0010\\\u001a\u00020Y8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bZ\u0010[R\u001b\u0010b\u001a\u00020]8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b^\u0010_\u001a\u0004\b`\u0010aR\u001e\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bc\u0010dR\u001e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\be\u0010dR\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bf\u0010gR*\u0010\u0018\u001a\u0016\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\r\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bh\u0010iR\u0018\u0010m\u001a\u0004\u0018\u00010j8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bk\u0010lR\u0018\u0010p\u001a\u0004\u0018\u00010n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bI\u0010oR\u0018\u0010s\u001a\u0004\u0018\u0001058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bq\u0010rR\u0018\u0010u\u001a\u0004\u0018\u0001078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010tR\u0016\u0010w\u001a\u00020D8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010vR\u001d\u0010|\u001a\u0004\u0018\u00010x8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\by\u0010_\u001a\u0004\bz\u0010{R\u0016\u0010\u007f\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b}\u0010~R\u0018\u0010\u0081\u0001\u001a\u00020D8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0080\u0001\u0010vR\u0017\u0010\u0082\u0001\u001a\u00020D8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u0010vR\u0016\u0010\u001f\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bW\u0010~R\u0017\u0010+\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bT\u0010\u0083\u0001R\u0017\u0010-\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bQ\u0010\u0083\u0001R\u0018\u0010(\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0084\u0001\u0010\u0083\u0001R\u0018\u0010/\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0085\u0001\u0010\u0083\u0001R\u0017\u00101\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bL\u0010\u0083\u0001R\u0019\u0010\u0087\u0001\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0086\u0001\u0010\u0083\u0001R\u001b\u0010\u008a\u0001\u001a\u0004\u0018\u00010D8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0088\u0001\u0010\u0089\u0001R \u0010\u008f\u0001\u001a\u00030\u008b\u00018BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b\u008c\u0001\u0010_\u001a\u0006\b\u008d\u0001\u0010\u008e\u0001R\u001b\u0010\u0092\u0001\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0090\u0001\u0010\u0091\u0001R\"\u0010\u0096\u0001\u001a\u000b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0093\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0094\u0001\u0010\u0095\u0001¨\u0006\u0098\u0001"}, d2 = {"Lcom/transsion/member/view/MemberBasicView;", "Landroid/widget/LinearLayout;", "Ldz/a;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Landroid/app/Activity;", "activity", "", "setActivity", "(Landroid/app/Activity;)V", "Lkotlin/Function0;", "onClose", "onPurchaseSucceed", "Lcom/transsion/memberapi/MemberSource;", EventConstants.KEY_SOURCE, "Lkotlin/Function2;", "Landroidx/fragment/app/DialogFragment;", "", "showDialog", "init", "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/transsion/memberapi/MemberSource;Lkotlin/jvm/functions/Function2;)V", "getScreenState", "()I", "onDestroy", "()V", "screenState", "setScreenState", "(I)V", "setOnClose", "(Lkotlin/jvm/functions/Function0;)V", "Lzm/f;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setOnPurchaseListener", "(Lzm/f;)V", "traceId", "setTraceId", "(Ljava/lang/String;)V", "sceneId", "setSceneId", "moduleName", "setModuleName", "subjectId", "setSubjectId", "pageName", "setPageName", "updateZeroTreasureState", "", "Lcom/transsion/memberapi/MemberPriceItem;", "data", "Lcom/transsion/memberapi/SkuPromotionItem;", "promotionItems", "setMemberGoodsData", "(Ljava/util/List;Ljava/util/List;)V", "Lcom/transsion/memberapi/MemberFeatureData;", "featureData", "setFeatureData", "(Ljava/util/List;)V", "Lcom/transsnet/loginapi/bean/UserInfo;", "user", "onLogin", "(Lcom/transsnet/loginapi/bean/UserInfo;)V", "onLogout", "", "isVisible", "onVisibilityAggregated", "(Z)V", CampaignEx.JSON_KEY_AD_K, "h", "productId", "isSubscription", TmcStartParams.KEY_URL_SHORT, "(Ljava/lang/String;Z)V", "j", "o", "Landroidx/appcompat/app/AppCompatActivity;", CampaignEx.JSON_KEY_AD_R, "()Landroidx/appcompat/app/AppCompatActivity;", "skuId", CampaignEx.JSON_KEY_AD_Q, "code", "message", TtmlNode.TAG_P, "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V", "Lwm/s;", "a", "Lwm/s;", "binding", "Lcom/transsion/member/MemberViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlin/Lazy;", "getMemberViewModel", "()Lcom/transsion/member/MemberViewModel;", "memberViewModel", "c", "Lkotlin/jvm/functions/Function0;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "e", "Lcom/transsion/memberapi/MemberSource;", "f", "Lkotlin/jvm/functions/Function2;", "Lcom/transsion/memberapi/MemberDetail;", "g", "Lcom/transsion/memberapi/MemberDetail;", "memberDetail", "Lcom/transsion/member/adapter/e;", "Lcom/transsion/member/adapter/e;", "memberGoodsInfoAdapter", "i", "Lcom/transsion/memberapi/MemberPriceItem;", "selectedSkuItem", "Lcom/transsion/memberapi/SkuPromotionItem;", "selectedPromotionItem", "Z", "countDownFinished", "Lcom/transsnet/loginapi/ILoginApi;", "l", "getMLoginApi", "()Lcom/transsnet/loginapi/ILoginApi;", "mLoginApi", "m", "I", "defaultSelectedPosition", "n", "shouldRefreshPurchasedInfo", "isPremium", "Ljava/lang/String;", "s", "t", "v", "orderId", "w", "Ljava/lang/Boolean;", "lastVisible", "Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;", "x", "getMLoadingDialog", "()Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;", "mLoadingDialog", "y", "Lzm/f;", "purchaseListener", "Ljava/lang/ref/WeakReference;", "z", "Ljava/lang/ref/WeakReference;", "hostActivity", "Companion", "Member_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class MemberBasicView extends LinearLayout implements dz.a {
    public static final int SCREEN_ALL = 0;
    public static final int SCREEN_HALF = 1;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final wm.s binding;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final Lazy memberViewModel;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private Function0 onClose;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private Function0 onPurchaseSucceed;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private MemberSource source;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private Function2 showDialog;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private MemberDetail memberDetail;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private com.transsion.member.adapter.e memberGoodsInfoAdapter;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private MemberPriceItem selectedSkuItem;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private SkuPromotionItem selectedPromotionItem;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private boolean countDownFinished;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private final Lazy mLoginApi;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private int defaultSelectedPosition;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private boolean shouldRefreshPurchasedInfo;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private boolean isPremium;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private int screenState;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private String sceneId;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private String moduleName;

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    private String traceId;

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    private String subjectId;

    /* JADX INFO: renamed from: u, reason: collision with root package name and from kotlin metadata */
    private String pageName;

    /* JADX INFO: renamed from: v, reason: collision with root package name and from kotlin metadata */
    private String orderId;

    /* JADX INFO: renamed from: w, reason: collision with root package name and from kotlin metadata */
    private Boolean lastVisible;

    /* JADX INFO: renamed from: x, reason: collision with root package name and from kotlin metadata */
    private final Lazy mLoadingDialog;

    /* JADX INFO: renamed from: y, reason: collision with root package name and from kotlin metadata */
    private zm.f purchaseListener;

    /* JADX INFO: renamed from: z, reason: collision with root package name and from kotlin metadata */
    private WeakReference hostActivity;
    public static final int $stable = 8;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public MemberBasicView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public MemberBasicView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public MemberBasicView(final Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        wm.s sVarC = wm.s.c(LayoutInflater.from(context), this, true);
        Intrinsics.g(sVarC, "inflate(...)");
        this.binding = sVarC;
        this.memberViewModel = LazyKt.b(new Function0() { // from class: com.transsion.member.view.h
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return MemberBasicView.n(this.f46869a, context);
            }
        });
        this.mLoginApi = LazyKt.b(new Function0() { // from class: com.transsion.member.view.i
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return MemberBasicView.m();
            }
        });
        this.defaultSelectedPosition = -1;
        this.sceneId = "";
        this.moduleName = "";
        this.traceId = "";
        this.subjectId = "";
        this.pageName = "";
        this.orderId = "";
        this.mLoadingDialog = LazyKt.b(new Function0() { // from class: com.transsion.member.view.j
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return MemberBasicView.l();
            }
        });
        setOrientation(1);
    }

    public /* synthetic */ MemberBasicView(Context context, AttributeSet attributeSet, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i11);
    }

    private final BaseMemberLoadingDialog getMLoadingDialog() {
        return (BaseMemberLoadingDialog) this.mLoadingDialog.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ILoginApi getMLoginApi() {
        return (ILoginApi) this.mLoginApi.getValue();
    }

    private final MemberViewModel getMemberViewModel() {
        return (MemberViewModel) this.memberViewModel.getValue();
    }

    private final void h() {
        com.transsion.baseui.widget.GradientTextView tvPayBtn = this.binding.f77874q;
        Intrinsics.g(tvPayBtn, "tvPayBtn");
        jg.c.c(tvPayBtn, 0L, new Function1() { // from class: com.transsion.member.view.g
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MemberBasicView.i(this.f46867a, (View) obj);
            }
        }, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit i(MemberBasicView memberBasicView, View it) {
        String skuId;
        Intrinsics.h(it, "it");
        IMemberApi iMemberApi = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
        if (iMemberApi != null ? iMemberApi.f() : false) {
            SkuPromotionItem skuPromotionItem = memberBasicView.selectedPromotionItem;
            String str = "";
            if (skuPromotionItem == null) {
                MemberPriceItem memberPriceItem = memberBasicView.selectedSkuItem;
                if (memberPriceItem != null) {
                    String skuId2 = memberPriceItem.getSkuId();
                    v(memberBasicView, skuId2 != null ? skuId2 : "", false, 2, null);
                }
            } else if (skuPromotionItem != null) {
                SkuPromotionSku sku = skuPromotionItem.getSku();
                if (sku != null && (skuId = sku.getSkuId()) != null) {
                    str = skuId;
                }
                v(memberBasicView, str, false, 2, null);
            }
        } else {
            Navigator.x(TheRouter.c("/rewards/center").K(EventConstants.KEY_SOURCE, "memberdetail"), null, null, 3, null);
        }
        return Unit.f67061a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void init$default(MemberBasicView memberBasicView, Function0 function0, Function0 function1, MemberSource memberSource, Function2 function2, int i11, Object obj) {
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
        memberBasicView.init(function0, function1, memberSource, function2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void j() {
        ak.k.h("oneroom://com.community.oneroom/profile/user_center_labels_feedback", null, 1, null);
    }

    private final void k() {
        try {
            Result.Companion companion = Result.INSTANCE;
            int i11 = 0;
            IMemberApi iMemberApi = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
            boolean zF = iMemberApi != null ? iMemberApi.f() : false;
            RecyclerView ivSkuList = this.binding.f77860c;
            Intrinsics.g(ivSkuList, "ivSkuList");
            if (!zF) {
                i11 = 8;
            }
            ivSkuList.setVisibility(i11);
            this.binding.getRoot().getLayoutParams().height = zF ? -2 : gk.b.a(250);
            this.binding.f77874q.setText(getContext().getString(zF ? R$string.member_pay_now : R$string.member_redeem));
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final BaseMemberLoadingDialog l() {
        return new BaseMemberLoadingDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ILoginApi m() {
        return (ILoginApi) TheRouter.d(ILoginApi.class, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final MemberViewModel n(MemberBasicView memberBasicView, Context context) {
        WeakReference weakReference = memberBasicView.hostActivity;
        ComponentCallbacks2 componentCallbacks2 = weakReference != null ? (Activity) weakReference.get() : null;
        y0 y0Var = componentCallbacks2 instanceof y0 ? (y0) componentCallbacks2 : null;
        if (y0Var == null) {
            y0 y0Var2 = context instanceof y0 ? (y0) context : null;
            if (y0Var2 == null) {
                throw new IllegalStateException("MemberBasicView 必须在 ViewModelStoreOwner 上下文中使用，当前 context: " + context.getClass().getSimpleName() + "。若在 Dialog 中使用请先调用 setActivity()。");
            }
            y0Var = y0Var2;
        }
        return (MemberViewModel) new v0(y0Var).a(MemberViewModel.class);
    }

    private final void o() {
        getMemberViewModel().w();
        getMemberViewModel().z();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void p(String skuId, Integer code, String message) {
        String strM;
        HashMap map = new HashMap();
        map.put("opt_type", "pay_result");
        map.put("sku_id", skuId);
        map.put("fail_code", String.valueOf(code));
        if (message == null) {
            message = "";
        }
        map.put("fail_message", message);
        map.put("order_id", this.orderId);
        map.put("trace_id", this.traceId);
        map.put("result_type", "result_fail");
        map.put("scene_id", this.sceneId);
        IPremiumApi iPremiumApi = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
        if (iPremiumApi == null || (strM = iPremiumApi.m()) == null) {
            strM = "non-vip";
        }
        map.put("membership_status", strM);
        hj.i.f64505a.s(this.pageName, "purchase", map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void q(String skuId) {
        String strM;
        HashMap map = new HashMap();
        map.put("opt_type", "pay_result");
        map.put("sku_id", skuId);
        map.put("order_id", this.orderId);
        map.put("trace_id", this.traceId);
        map.put("result_type", "result_success");
        map.put("scene_id", this.sceneId);
        IPremiumApi iPremiumApi = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
        if (iPremiumApi == null || (strM = iPremiumApi.m()) == null) {
            strM = "non-vip";
        }
        map.put("membership_status", strM);
        hj.i.f64505a.s(this.pageName, "purchase", map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AppCompatActivity r() {
        Context context = getContext();
        AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
        if (appCompatActivity == null || appCompatActivity.isDestroyed() || appCompatActivity.isFinishing()) {
            return null;
        }
        return appCompatActivity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit s(MemberBasicView memberBasicView, MemberPriceItem item, SkuPromotionItem skuPromotionItem, boolean z10, View view) {
        Intrinsics.h(item, "item");
        Intrinsics.h(view, "<unused var>");
        memberBasicView.selectedSkuItem = item;
        memberBasicView.selectedPromotionItem = skuPromotionItem;
        memberBasicView.countDownFinished = z10;
        return Unit.f67061a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void setOnClose$default(MemberBasicView memberBasicView, Function0 function0, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            function0 = null;
        }
        memberBasicView.setOnClose(function0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit t(MemberBasicView memberBasicView, SkuPromotionItem it) {
        Intrinsics.h(it, "it");
        memberBasicView.countDownFinished = true;
        return Unit.f67061a;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0046  */
    /* JADX WARN: Multi-variable type inference failed */
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
    private final void u(final String productId, boolean isSubscription) {
        boolean z10;
        SkuPromotionSku sku;
        String marketingActivityId;
        SkuPromotionSku sku2;
        MemberInfo memberInfo;
        MemberInfo memberInfo2;
        if (this.selectedPromotionItem != null && this.countDownFinished) {
            com.tn.lib.widget.toast.core.h hVar = com.tn.lib.widget.toast.core.h.f41479a;
            Context context = getContext();
            hVar.l(context != null ? context.getString(R$string.member_promotion_end) : null);
            return;
        }
        MemberDetail memberDetail = this.memberDetail;
        if ((memberDetail == null || (memberInfo2 = memberDetail.getMemberInfo()) == null) ? false : memberInfo2.isActive()) {
            MemberDetail memberDetail2 = this.memberDetail;
            z10 = (memberDetail2 != null && (memberInfo = memberDetail2.getMemberInfo()) != null && memberInfo.getMemberType() == 2) == true;
        }
        this.isPremium = z10;
        lg.a.C0828a.g(lg.a.f68839a, "MemberLayoutView before pay isPremium: " + z10, false, 2, null);
        MemberPriceItem memberPriceItem = this.selectedSkuItem;
        Double price = memberPriceItem != null ? memberPriceItem.getPrice() : null;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        SkuPromotionItem skuPromotionItem = this.selectedPromotionItem;
        if (skuPromotionItem != null && !this.countDownFinished) {
            if (skuPromotionItem == null || (sku2 = skuPromotionItem.getSku()) == null || (price = sku2.getDiscountPrice()) == null) {
                SkuPromotionItem skuPromotionItem2 = this.selectedPromotionItem;
                price = (skuPromotionItem2 == null || (sku = skuPromotionItem2.getSku()) == null) ? null : sku.getPrice();
            }
            SkuPromotionItem skuPromotionItem3 = this.selectedPromotionItem;
            if (skuPromotionItem3 == null || (marketingActivityId = skuPromotionItem3.getMarketingActivityId()) == null) {
                marketingActivityId = "";
            }
            linkedHashMap.put("marketingActivityId", marketingActivityId);
        }
        Double d11 = price;
        com.transsion.payment.lib.f fVarA = com.transsion.payment.lib.f.f47794b.a();
        WeakReference weakReference = this.hostActivity;
        Activity activity = weakReference != null ? (Activity) weakReference.get() : null;
        Intrinsics.f(activity, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        fVarA.e((AppCompatActivity) activity, productId, d11, null, isSubscription, linkedHashMap, new com.transsion.payment.lib.b() { // from class: com.transsion.member.view.MemberBasicView$startPay$1
            @Override // com.transsion.payment.lib.b
            public void a(Integer num, String str, boolean z11, String str2) {
                lg.a.C0828a.m(lg.a.f68839a, "MemberBasicView payment failed " + str + ", " + num, false, 2, null);
                this.f46798a.p(productId, num, str);
                kotlinx.coroutines.k.d(o0.a(kotlinx.coroutines.y0.c()), null, null, new MemberBasicView$startPay$1$error$1(this.f46798a, num, str, null), 3, null);
            }

            @Override // com.transsion.payment.lib.b
            public void b(boolean z11) {
            }

            @Override // com.transsion.payment.lib.b
            public void c(int i11, String balance, String str) {
                Intrinsics.h(balance, "balance");
                lg.a.C0828a.g(lg.a.f68839a, "MemberBasicView payment succeed " + str, false, 2, null);
                this.f46798a.shouldRefreshPurchasedInfo = true;
                this.f46798a.q(productId);
                kotlinx.coroutines.k.d(o0.a(kotlinx.coroutines.y0.c()), null, null, new MemberBasicView$startPay$1$success$1(this.f46798a, null), 3, null);
            }
        }, new Function1() { // from class: com.transsion.member.view.m
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MemberBasicView.w(this.f46877a, productId, (String) obj);
            }
        });
    }

    static /* synthetic */ void v(MemberBasicView memberBasicView, String str, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        memberBasicView.u(str, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit w(MemberBasicView memberBasicView, String str, String orderId) {
        Intrinsics.h(orderId, "orderId");
        memberBasicView.orderId = orderId;
        com.transsion.baselib.helper.f.f43269a.a(memberBasicView.pageName, memberBasicView.sceneId, orderId, memberBasicView.traceId, str, memberBasicView.moduleName);
        return Unit.f67061a;
    }

    public final int getScreenState() {
        return this.screenState;
    }

    public final void init(Function0<Unit> onClose, Function0<Unit> onPurchaseSucceed, MemberSource source, Function2<? super DialogFragment, ? super String, Unit> showDialog) {
        this.onClose = onClose;
        this.onPurchaseSucceed = onPurchaseSucceed;
        this.source = source;
        this.showDialog = showDialog;
        h();
        updateZeroTreasureState();
        k();
    }

    public final void onDestroy() {
        this.onClose = null;
        this.onPurchaseSucceed = null;
        this.showDialog = null;
    }

    @Override // dz.a
    public void onLogin(UserInfo user) {
        Intrinsics.h(user, "user");
        o();
    }

    @Override // dz.a
    public void onLogout() {
        o();
    }

    @Override // dz.a
    public void onUpdateUserInfo(UserInfo userInfo) {
        dz.a.C0737a.c(this, userInfo);
    }

    @Override // android.view.View
    public void onVisibilityAggregated(boolean isVisible) {
        super.onVisibilityAggregated(isVisible);
        if (Intrinsics.c(this.lastVisible, Boolean.valueOf(isVisible))) {
            return;
        }
        this.lastVisible = Boolean.valueOf(isVisible);
        if (isVisible) {
            RecyclerView ivSkuList = this.binding.f77860c;
            Intrinsics.g(ivSkuList, "ivSkuList");
            if (ivSkuList.getVisibility() == 0) {
                if (TextUtils.isEmpty(this.traceId)) {
                    String string = UUID.randomUUID().toString();
                    Intrinsics.g(string, "toString(...)");
                    this.traceId = string;
                }
                com.transsion.baselib.helper.f.f43269a.d(this.pageName, this.sceneId, this.traceId, this.moduleName, this.subjectId);
            }
        }
    }

    public final void setActivity(Activity activity) {
        Intrinsics.h(activity, "activity");
        this.hostActivity = new WeakReference(activity);
    }

    public final void setFeatureData(List<MemberFeatureData> featureData) {
        Intrinsics.h(featureData, "featureData");
        wm.s sVar = this.binding;
        int i11 = 0;
        List listO = CollectionsKt.o(sVar.f77867j, sVar.f77868k, sVar.f77869l, sVar.f77870m, sVar.f77871n);
        wm.s sVar2 = this.binding;
        List listO2 = CollectionsKt.o(sVar2.f77862e, sVar2.f77863f, sVar2.f77864g, sVar2.f77865h, sVar2.f77866i);
        for (Object obj : featureData) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt.u();
            }
            MemberFeatureData memberFeatureData = (MemberFeatureData) obj;
            if (i11 < listO.size()) {
                Glide.with(getContext()).load2(memberFeatureData.getFeatureIcon()).override(gk.b.a(20), gk.b.a(20)).into((ImageView) listO.get(i11));
                ((TextView) listO2.get(i11)).setText(memberFeatureData.getFeatureName());
            }
            i11 = i12;
        }
    }

    public final void setMemberGoodsData(List<MemberPriceItem> data, List<SkuPromotionItem> promotionItems) {
        Object next;
        Object next2;
        Object next3;
        Object next4;
        Object next5;
        SkuPromotionSku sku;
        Intrinsics.h(data, "data");
        if (data.isEmpty()) {
            return;
        }
        com.transsion.member.adapter.e eVar = this.memberGoodsInfoAdapter;
        if (eVar == null) {
            com.transsion.member.adapter.e eVar2 = new com.transsion.member.adapter.e(CollectionsKt.U0(data));
            eVar2.I1(new Function4() { // from class: com.transsion.member.view.k
                @Override // kotlin.jvm.functions.Function4
                public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                    return MemberBasicView.s(this.f46874a, (MemberPriceItem) obj, (SkuPromotionItem) obj2, ((Boolean) obj3).booleanValue(), (View) obj4);
                }
            });
            eVar2.J1(new Function1() { // from class: com.transsion.member.view.l
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return MemberBasicView.t(this.f46876a, (SkuPromotionItem) obj);
                }
            });
            eVar2.L1(1);
            this.memberGoodsInfoAdapter = eVar2;
            RecyclerView recyclerView = this.binding.f77860c;
            recyclerView.setLayoutManager(new NpaGridLayoutManager(recyclerView.getContext(), 3));
            if (recyclerView.getItemDecorationCount() <= 0) {
                recyclerView.addItemDecoration(new com.transsion.member.adapter.a(3, com.blankj.utilcode.util.a0.a(8.0f)));
            }
            recyclerView.setAdapter(this.memberGoodsInfoAdapter);
        } else {
            List<MemberPriceItem> list = data;
            if (Intrinsics.c(eVar != null ? eVar.getData() : null, CollectionsKt.U0(list))) {
                return;
            }
            com.transsion.member.adapter.e eVar3 = this.memberGoodsInfoAdapter;
            if (eVar3 != null) {
                eVar3.n1(list);
            }
        }
        com.transsion.member.adapter.e eVar4 = this.memberGoodsInfoAdapter;
        if (eVar4 != null) {
            eVar4.M1(promotionItems);
        }
        List<SkuPromotionItem> list2 = promotionItems;
        if (list2 == null || list2.isEmpty()) {
            Iterator<T> it = data.iterator();
            if (it.hasNext()) {
                next = it.next();
                if (it.hasNext()) {
                    Double price = ((MemberPriceItem) next).getPrice();
                    double dDoubleValue = price != null ? price.doubleValue() : Double.MAX_VALUE;
                    do {
                        Object next6 = it.next();
                        Double price2 = ((MemberPriceItem) next6).getPrice();
                        double dDoubleValue2 = price2 != null ? price2.doubleValue() : Double.MAX_VALUE;
                        if (Double.compare(dDoubleValue, dDoubleValue2) > 0) {
                            next = next6;
                            dDoubleValue = dDoubleValue2;
                        }
                    } while (it.hasNext());
                }
            } else {
                next = null;
            }
            MemberPriceItem memberPriceItem = (MemberPriceItem) next;
            this.defaultSelectedPosition = RangesKt.f(CollectionsKt.n0(data, memberPriceItem), 0);
            this.selectedSkuItem = memberPriceItem;
            this.selectedPromotionItem = null;
        } else {
            List<MemberPriceItem> list3 = data;
            ArrayList arrayList = new ArrayList();
            for (MemberPriceItem memberPriceItem2 : list3) {
                Iterator<T> it2 = promotionItems.iterator();
                do {
                    if (!it2.hasNext()) {
                        next5 = null;
                        break;
                    } else {
                        next5 = it2.next();
                        sku = ((SkuPromotionItem) next5).getSku();
                    }
                } while (!Intrinsics.c(sku != null ? sku.getSkuId() : null, memberPriceItem2.getSkuId()));
                SkuPromotionItem skuPromotionItem = (SkuPromotionItem) next5;
                Pair pairA = skuPromotionItem != null ? TuplesKt.a(memberPriceItem2, skuPromotionItem) : null;
                if (pairA != null) {
                    arrayList.add(pairA);
                }
            }
            if (arrayList.isEmpty()) {
                Iterator<T> it3 = list3.iterator();
                if (it3.hasNext()) {
                    next4 = it3.next();
                    if (it3.hasNext()) {
                        Double price3 = ((MemberPriceItem) next4).getPrice();
                        double dDoubleValue3 = price3 != null ? price3.doubleValue() : Double.MAX_VALUE;
                        do {
                            Object next7 = it3.next();
                            Double price4 = ((MemberPriceItem) next7).getPrice();
                            double dDoubleValue4 = price4 != null ? price4.doubleValue() : Double.MAX_VALUE;
                            if (Double.compare(dDoubleValue3, dDoubleValue4) > 0) {
                                next4 = next7;
                                dDoubleValue3 = dDoubleValue4;
                            }
                        } while (it3.hasNext());
                    }
                } else {
                    next4 = null;
                }
                MemberPriceItem memberPriceItem3 = (MemberPriceItem) next4;
                this.defaultSelectedPosition = RangesKt.f(CollectionsKt.n0(data, memberPriceItem3), 0);
                this.selectedSkuItem = memberPriceItem3;
                this.selectedPromotionItem = null;
            } else if (arrayList.size() == 1) {
                Pair pair = (Pair) CollectionsKt.i0(arrayList);
                MemberPriceItem memberPriceItem4 = (MemberPriceItem) pair.component1();
                SkuPromotionItem skuPromotionItem2 = (SkuPromotionItem) pair.component2();
                if (PromotionSelectionHelper.f46671a.b(skuPromotionItem2)) {
                    Iterator<T> it4 = list3.iterator();
                    if (it4.hasNext()) {
                        next3 = it4.next();
                        if (it4.hasNext()) {
                            Double price5 = ((MemberPriceItem) next3).getPrice();
                            double dDoubleValue5 = price5 != null ? price5.doubleValue() : Double.MAX_VALUE;
                            do {
                                Object next8 = it4.next();
                                Double price6 = ((MemberPriceItem) next8).getPrice();
                                double dDoubleValue6 = price6 != null ? price6.doubleValue() : Double.MAX_VALUE;
                                if (Double.compare(dDoubleValue5, dDoubleValue6) > 0) {
                                    next3 = next8;
                                    dDoubleValue5 = dDoubleValue6;
                                }
                            } while (it4.hasNext());
                        }
                    } else {
                        next3 = null;
                    }
                    MemberPriceItem memberPriceItem5 = (MemberPriceItem) next3;
                    this.defaultSelectedPosition = RangesKt.f(CollectionsKt.n0(data, memberPriceItem5), 0);
                    this.selectedSkuItem = memberPriceItem5;
                    this.selectedPromotionItem = null;
                } else {
                    this.defaultSelectedPosition = data.indexOf(memberPriceItem4);
                    this.selectedSkuItem = memberPriceItem4;
                    this.selectedPromotionItem = skuPromotionItem2;
                }
            } else {
                Pair pairA2 = PromotionSelectionHelper.f46671a.a(arrayList);
                if (pairA2 != null) {
                    MemberPriceItem memberPriceItem6 = (MemberPriceItem) pairA2.component1();
                    SkuPromotionItem skuPromotionItem3 = (SkuPromotionItem) pairA2.component2();
                    this.defaultSelectedPosition = data.indexOf(memberPriceItem6);
                    this.selectedSkuItem = memberPriceItem6;
                    this.selectedPromotionItem = skuPromotionItem3;
                } else {
                    Iterator<T> it5 = list3.iterator();
                    if (it5.hasNext()) {
                        next2 = it5.next();
                        if (it5.hasNext()) {
                            Double price7 = ((MemberPriceItem) next2).getPrice();
                            double dDoubleValue7 = price7 != null ? price7.doubleValue() : Double.MAX_VALUE;
                            do {
                                Object next9 = it5.next();
                                Double price8 = ((MemberPriceItem) next9).getPrice();
                                double dDoubleValue8 = price8 != null ? price8.doubleValue() : Double.MAX_VALUE;
                                if (Double.compare(dDoubleValue7, dDoubleValue8) > 0) {
                                    next2 = next9;
                                    dDoubleValue7 = dDoubleValue8;
                                }
                            } while (it5.hasNext());
                        }
                    } else {
                        next2 = null;
                    }
                    MemberPriceItem memberPriceItem7 = (MemberPriceItem) next2;
                    this.defaultSelectedPosition = RangesKt.f(CollectionsKt.n0(data, memberPriceItem7), 0);
                    this.selectedSkuItem = memberPriceItem7;
                    this.selectedPromotionItem = null;
                }
            }
        }
        com.transsion.member.adapter.e eVar5 = this.memberGoodsInfoAdapter;
        if (eVar5 != null) {
            eVar5.K1(this.defaultSelectedPosition);
        }
    }

    public final void setModuleName(String moduleName) {
        Intrinsics.h(moduleName, "moduleName");
        this.moduleName = moduleName;
    }

    public final void setOnClose(Function0<Unit> onClose) {
        this.onClose = onClose;
    }

    public final void setOnPurchaseListener(zm.f listener) {
        Intrinsics.h(listener, "listener");
        this.purchaseListener = listener;
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

    public final void updateZeroTreasureState() {
        String activityId;
        Lottery lottery;
        Lottery lottery2;
        IRewardsCenterApi iRewardsCenterApi = (IRewardsCenterApi) TheRouter.d(IRewardsCenterApi.class, new Object[0]);
        bgImage = null;
        String bgImage = null;
        RewardsCenterData rewardsCenterDataA = iRewardsCenterApi != null ? iRewardsCenterApi.a() : null;
        if (rewardsCenterDataA == null || (lottery2 = rewardsCenterDataA.getLottery()) == null || (activityId = lottery2.getActivityId()) == null) {
            activityId = "0";
        }
        if (Integer.parseInt(activityId) > 0) {
            ImageView ivZeroTreasure = this.binding.f77861d;
            Intrinsics.g(ivZeroTreasure, "ivZeroTreasure");
            ivZeroTreasure.setVisibility(0);
            ViewGroup.LayoutParams layoutParams = this.binding.f77874q.getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = layoutParams instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams : null;
            if (layoutParams2 != null) {
                layoutParams2.topMargin = gk.b.a(-20);
            }
            RequestManager requestManagerWith = Glide.with(getContext());
            if (rewardsCenterDataA != null && (lottery = rewardsCenterDataA.getLottery()) != null) {
                bgImage = lottery.getBgImage();
            }
            Intrinsics.e(requestManagerWith.load2(bgImage).placeholder(R$color.transparent).into(this.binding.f77861d));
        } else {
            ImageView ivZeroTreasure2 = this.binding.f77861d;
            Intrinsics.g(ivZeroTreasure2, "ivZeroTreasure");
            ivZeroTreasure2.setVisibility(8);
            ViewGroup.LayoutParams layoutParams3 = this.binding.f77874q.getLayoutParams();
            LinearLayout.LayoutParams layoutParams4 = layoutParams3 instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams3 : null;
            if (layoutParams4 != null) {
                layoutParams4.topMargin = gk.b.a(16);
            }
        }
        this.binding.f77874q.requestLayout();
    }
}
