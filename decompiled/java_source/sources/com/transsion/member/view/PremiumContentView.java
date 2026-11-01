package com.transsion.member.view;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.transsion.member.z0;
import com.transsion.memberapi.IMemberApi;
import com.transsion.memberapi.MemberAgreement;
import com.transsion.memberapi.MemberDetail;
import com.transsion.memberapi.MemberFeatureData;
import com.transsion.memberapi.MemberInfo;
import com.transsion.memberapi.MemberPriceItem;
import com.transsion.memberapi.MembershipDetailType;
import com.transsion.memberapi.SkuPromotionItem;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0012\b\u0007\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u001d\u0010\u000f\u001a\u00020\n2\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\r¢\u0006\u0004\b\u000f\u0010\u0010J\u001d\u0010\u0011\u001a\u00020\n2\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\r¢\u0006\u0004\b\u0011\u0010\u0010J\u001d\u0010\u0012\u001a\u00020\n2\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\r¢\u0006\u0004\b\u0012\u0010\u0010J\u0015\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0015\u0010\u0016J\u0015\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0017\u0010\u0016J\u0015\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0018\u0010\u0016J1\u0010\u001e\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u00192\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0019¢\u0006\u0004\b\u001e\u0010\u001fJ\u0015\u0010!\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020 ¢\u0006\u0004\b!\u0010\"J9\u0010)\u001a\u00020\n2\f\u0010%\u001a\b\u0012\u0004\u0012\u00020$0#2\f\u0010&\u001a\b\u0012\u0004\u0012\u00020$0#2\u000e\u0010(\u001a\n\u0012\u0004\u0012\u00020'\u0018\u00010#¢\u0006\u0004\b)\u0010*J\u0015\u0010-\u001a\u00020\n2\u0006\u0010,\u001a\u00020+¢\u0006\u0004\b-\u0010.J\u0015\u0010/\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b/\u0010\u0016J\u0015\u00100\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b0\u0010\u0016J\u0015\u00101\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b1\u0010\u0016J\u0017\u00104\u001a\u00020\n2\b\u00103\u001a\u0004\u0018\u000102¢\u0006\u0004\b4\u00105J!\u00108\u001a\u00020\n2\b\u00106\u001a\u0004\u0018\u00010\u00192\b\u00107\u001a\u0004\u0018\u00010\u0019¢\u0006\u0004\b8\u00109J\r\u0010:\u001a\u00020\n¢\u0006\u0004\b:\u0010\fJ\u001d\u0010=\u001a\u00020\n2\u000e\u0010<\u001a\n\u0012\u0004\u0012\u00020;\u0018\u00010#¢\u0006\u0004\b=\u0010>J\r\u0010?\u001a\u00020\n¢\u0006\u0004\b?\u0010\fJ\u001d\u0010@\u001a\u00020\n2\u000e\u0010<\u001a\n\u0012\u0004\u0012\u00020;\u0018\u00010#¢\u0006\u0004\b@\u0010>J\u001d\u0010A\u001a\u00020\n2\u000e\u0010<\u001a\n\u0012\u0004\u0012\u00020;\u0018\u00010#¢\u0006\u0004\bA\u0010>R\u0014\u0010E\u001a\u00020B8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bC\u0010DR\u0018\u0010I\u001a\u0004\u0018\u00010F8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010HR\u0016\u0010L\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010KR\u0016\u0010\u001b\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bM\u0010NR\"\u0010\u001a\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bO\u0010N\u001a\u0004\bP\u0010Q\"\u0004\bR\u0010SR\"\u0010U\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bT\u0010K\u001a\u0004\bU\u0010V\"\u0004\bW\u0010\u0016¨\u0006X"}, d2 = {"Lcom/transsion/member/view/PremiumContentView;", "Landroid/widget/LinearLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "i", "()V", "Lkotlin/Function0;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setOnPromoCodeClickListener", "(Lkotlin/jvm/functions/Function0;)V", "setOnFeedbackClickListener", "setOnBasicRenewClickListener", "", "isVisible", "setFeedbackContainerVisible", "(Z)V", "setFeedbackVisible", "setPromoCodeVisible", "", "sceneId", "pageName", "traceId", "subjectId", "setTrackerInfo", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "Lzm/f;", "setOnPurchaseListener", "(Lzm/f;)V", "", "Lcom/transsion/memberapi/MemberPriceItem;", "proMembers", "basicMembers", "Lcom/transsion/memberapi/SkuPromotionItem;", "promotionItems", "setMemberGoodsData", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V", "Landroid/app/Activity;", "activity", "initMemberCard", "(Landroid/app/Activity;)V", "setProVisible", "setBasicVisible", "setBasicStatusVisible", "Lcom/transsion/memberapi/MemberDetail;", "memberDetail", "setMemberDetail", "(Lcom/transsion/memberapi/MemberDetail;)V", CampaignEx.JSON_KEY_TITLE, "content", "setAgreement", "(Ljava/lang/String;Ljava/lang/String;)V", "hideAgreement", "Lcom/transsion/memberapi/MemberFeatureData;", "data", "refreshFeaturesList", "(Ljava/util/List;)V", "checkVisible", "setBasicFeatureData", "setProFeatureData", "Lwm/v;", "a", "Lwm/v;", "binding", "Lcom/transsion/member/adapter/c;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/member/adapter/c;", "memberFeatureAdapter", "c", "Z", "hasExpRv", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/lang/String;", "e", "getSceneId", "()Ljava/lang/String;", "setSceneId", "(Ljava/lang/String;)V", "f", "isActivity", "()Z", "setActivity", "Member_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class PremiumContentView extends LinearLayout {
    public static final int $stable = 8;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final wm.v binding;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private com.transsion.member.adapter.c memberFeatureAdapter;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private boolean hasExpRv;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private String pageName;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private String sceneId;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private boolean isActivity;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public PremiumContentView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public PremiumContentView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public PremiumContentView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        wm.v vVarC = wm.v.c(LayoutInflater.from(context), this, true);
        Intrinsics.g(vVarC, "inflate(...)");
        this.binding = vVarC;
        setOrientation(1);
        this.pageName = "";
        this.sceneId = "";
    }

    public /* synthetic */ PremiumContentView(Context context, AttributeSet attributeSet, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(PremiumContentView premiumContentView) {
        premiumContentView.checkVisible();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit f(Function0 function0, View it) {
        Intrinsics.h(it, "it");
        if (function0 != null) {
            function0.invoke();
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit g(Function0 function0, View it) {
        Intrinsics.h(it, "it");
        if (function0 != null) {
            function0.invoke();
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit h(Function0 function0, View it) {
        Intrinsics.h(it, "it");
        if (function0 != null) {
            function0.invoke();
        }
        return Unit.f67061a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x002a  */
    private final void i() {
        boolean z10;
        View viewFeedbackDivider = this.binding.f77916m;
        Intrinsics.g(viewFeedbackDivider, "viewFeedbackDivider");
        TextView tvFeedback = this.binding.f77914k;
        Intrinsics.g(tvFeedback, "tvFeedback");
        if (tvFeedback.getVisibility() == 0) {
            TextView tvPromoCode = this.binding.f77915l;
            Intrinsics.g(tvPromoCode, "tvPromoCode");
            if (tvPromoCode.getVisibility() == 0) {
                z10 = true;
            } else {
                z10 = false;
            }
        } else {
            z10 = false;
        }
        viewFeedbackDivider.setVisibility(z10 ? 0 : 8);
    }

    public static /* synthetic */ void setTrackerInfo$default(PremiumContentView premiumContentView, String str, String str2, String str3, String str4, int i11, Object obj) {
        if ((i11 & 8) != 0) {
            str4 = null;
        }
        premiumContentView.setTrackerInfo(str, str2, str3, str4);
    }

    public final void checkVisible() {
        List<Object> data;
        if (this.hasExpRv) {
            return;
        }
        com.transsion.member.adapter.c cVar = this.memberFeatureAdapter;
        this.hasExpRv = z0.f46908a.a((LinearLayoutManager) this.binding.f77905b.getLayoutManager(), (cVar == null || (data = cVar.getData()) == null) ? 0 : data.size(), this.pageName);
    }

    public final String getSceneId() {
        return this.sceneId;
    }

    public final void hideAgreement() {
        TextView tvAgreementTitle = this.binding.f77912i;
        Intrinsics.g(tvAgreementTitle, "tvAgreementTitle");
        tvAgreementTitle.setVisibility(8);
        TextView tvAgreementContent = this.binding.f77911h;
        Intrinsics.g(tvAgreementContent, "tvAgreementContent");
        tvAgreementContent.setVisibility(8);
    }

    public final void initMemberCard(Activity activity) {
        Intrinsics.h(activity, "activity");
        this.binding.f77908e.setActivity(activity);
        this.binding.f77907d.setActivity(activity);
        MemberProView.init$default(this.binding.f77908e, null, null, null, null, 15, null);
        MemberBasicView.init$default(this.binding.f77907d, null, null, null, null, 15, null);
    }

    /* JADX INFO: renamed from: isActivity, reason: from getter */
    public final boolean getIsActivity() {
        return this.isActivity;
    }

    public final void refreshFeaturesList(List<MemberFeatureData> data) {
        List listA = com.transsion.member.g.f46558a.a(data);
        IMemberApi iMemberApi = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
        boolean zF = iMemberApi != null ? iMemberApi.f() : false;
        LinearLayout llFeatureRights = this.binding.f77910g;
        Intrinsics.g(llFeatureRights, "llFeatureRights");
        llFeatureRights.setVisibility(!listA.isEmpty() && zF ? 0 : 8);
        if (listA.isEmpty() || !zF) {
            return;
        }
        if (this.binding.f77905b.getLayoutManager() == null) {
            LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext());
            linearLayoutManager.setSmoothScrollbarEnabled(false);
            this.binding.f77905b.setLayoutManager(linearLayoutManager);
        }
        com.transsion.member.adapter.c cVar = this.memberFeatureAdapter;
        if (cVar == null) {
            com.transsion.member.adapter.c cVar2 = new com.transsion.member.adapter.c(CollectionsKt.U0(listA));
            this.memberFeatureAdapter = cVar2;
            this.binding.f77905b.setAdapter(cVar2);
            this.binding.f77905b.setNestedScrollingEnabled(false);
        } else {
            cVar.n1(listA);
        }
        this.binding.f77905b.postDelayed(new Runnable() { // from class: com.transsion.member.view.h0
            @Override // java.lang.Runnable
            public final void run() {
                PremiumContentView.e(this.f46871a);
            }
        }, 500L);
    }

    public final void setActivity(boolean z10) {
        this.isActivity = z10;
    }

    public final void setAgreement(String title, String content) {
        if (this.isActivity) {
            TextView tvAgreementTitle = this.binding.f77912i;
            Intrinsics.g(tvAgreementTitle, "tvAgreementTitle");
            tvAgreementTitle.setVisibility(0);
            TextView tvAgreementContent = this.binding.f77911h;
            Intrinsics.g(tvAgreementContent, "tvAgreementContent");
            tvAgreementContent.setVisibility(0);
            this.binding.f77912i.setText(title);
            this.binding.f77911h.setText(content);
        }
    }

    public final void setBasicFeatureData(List<MemberFeatureData> data) {
        MemberBasicView memberBasicView = this.binding.f77907d;
        if (data == null) {
            data = CollectionsKt.l();
        }
        memberBasicView.setFeatureData(data);
    }

    public final void setBasicStatusVisible(boolean isVisible) {
        LinearLayout layoutUserBasicStatus = this.binding.f77909f;
        Intrinsics.g(layoutUserBasicStatus, "layoutUserBasicStatus");
        layoutUserBasicStatus.setVisibility(isVisible ? 0 : 8);
    }

    public final void setBasicVisible(boolean isVisible) {
        MemberBasicView layoutPremiumBasic = this.binding.f77907d;
        Intrinsics.g(layoutPremiumBasic, "layoutPremiumBasic");
        layoutPremiumBasic.setVisibility(isVisible ? 0 : 8);
    }

    public final void setFeedbackContainerVisible(boolean isVisible) {
        LinearLayout layoutFeedback = this.binding.f77906c;
        Intrinsics.g(layoutFeedback, "layoutFeedback");
        layoutFeedback.setVisibility(isVisible ? 0 : 8);
    }

    public final void setFeedbackVisible(boolean isVisible) {
        TextView tvFeedback = this.binding.f77914k;
        Intrinsics.g(tvFeedback, "tvFeedback");
        tvFeedback.setVisibility(isVisible ? 0 : 8);
        i();
    }

    public final void setMemberDetail(MemberDetail memberDetail) {
        MemberInfo memberInfo;
        List<MemberAgreement> memberAgreements;
        setBasicStatusVisible(false);
        IMemberApi iMemberApi = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
        boolean zF = iMemberApi != null ? iMemberApi.f() : false;
        setProVisible(zF);
        MembershipDetailType membershipDetailTypeA = memberDetail != null ? MembershipDetailType.INSTANCE.a(memberDetail.getMemberInfo()) : MembershipDetailType.GUEST;
        MemberAgreement memberAgreement = null;
        if (membershipDetailTypeA == MembershipDetailType.TRIAL || membershipDetailTypeA == MembershipDetailType.FINANCIAL_MEMBER || membershipDetailTypeA == MembershipDetailType.SUBSCRIPTION_MEMBER) {
            Integer numValueOf = (memberDetail == null || (memberInfo = memberDetail.getMemberInfo()) == null) ? null : Integer.valueOf(memberInfo.getVipLevel());
            if (numValueOf != null && numValueOf.intValue() == 1) {
                if (zF) {
                    setBasicVisible(false);
                    setBasicStatusVisible(true);
                } else {
                    setProVisible(false);
                    setBasicVisible(true);
                    setBasicStatusVisible(false);
                }
            } else if (numValueOf != null && numValueOf.intValue() == 2) {
                if (zF) {
                    setBasicVisible(false);
                } else {
                    setBasicVisible(true);
                }
                setBasicStatusVisible(false);
            } else {
                setBasicVisible(true);
            }
        } else {
            setBasicVisible(true);
        }
        if (memberDetail != null && (memberAgreements = memberDetail.getMemberAgreements()) != null) {
            memberAgreement = (MemberAgreement) CollectionsKt.k0(memberAgreements);
        }
        if (memberAgreement != null) {
            setAgreement(memberAgreement.getTitle(), memberAgreement.getContent());
        } else {
            hideAgreement();
        }
    }

    public final void setMemberGoodsData(List<MemberPriceItem> proMembers, List<MemberPriceItem> basicMembers, List<SkuPromotionItem> promotionItems) {
        Intrinsics.h(proMembers, "proMembers");
        Intrinsics.h(basicMembers, "basicMembers");
        lg.a.C0828a.f(lg.a.f68839a, "liyang", "setMemberGoodsData: proMembers ->" + proMembers + ", basicMembers -> " + basicMembers, false, 4, null);
        this.binding.f77908e.setMemberGoodsData(proMembers, promotionItems);
        this.binding.f77907d.setMemberGoodsData(basicMembers, promotionItems);
    }

    public final void setOnBasicRenewClickListener(final Function0<Unit> listener) {
        TextView tvBasicRenew = this.binding.f77913j;
        Intrinsics.g(tvBasicRenew, "tvBasicRenew");
        jg.c.c(tvBasicRenew, 0L, new Function1() { // from class: com.transsion.member.view.k0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PremiumContentView.f(listener, (View) obj);
            }
        }, 1, null);
    }

    public final void setOnFeedbackClickListener(final Function0<Unit> listener) {
        TextView tvFeedback = this.binding.f77914k;
        Intrinsics.g(tvFeedback, "tvFeedback");
        jg.c.c(tvFeedback, 0L, new Function1() { // from class: com.transsion.member.view.j0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PremiumContentView.g(listener, (View) obj);
            }
        }, 1, null);
    }

    public final void setOnPromoCodeClickListener(final Function0<Unit> listener) {
        TextView tvPromoCode = this.binding.f77915l;
        Intrinsics.g(tvPromoCode, "tvPromoCode");
        jg.c.c(tvPromoCode, 0L, new Function1() { // from class: com.transsion.member.view.i0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PremiumContentView.h(listener, (View) obj);
            }
        }, 1, null);
    }

    public final void setOnPurchaseListener(zm.f listener) {
        Intrinsics.h(listener, "listener");
        this.binding.f77908e.setOnPurchaseListener(listener);
        this.binding.f77907d.setOnPurchaseListener(listener);
    }

    public final void setProFeatureData(List<MemberFeatureData> data) {
        MemberProView memberProView = this.binding.f77908e;
        if (data == null) {
            data = CollectionsKt.l();
        }
        memberProView.setFeatureData(data);
    }

    public final void setProVisible(boolean isVisible) {
        MemberProView layoutPremiumPro = this.binding.f77908e;
        Intrinsics.g(layoutPremiumPro, "layoutPremiumPro");
        layoutPremiumPro.setVisibility(isVisible ? 0 : 8);
    }

    public final void setPromoCodeVisible(boolean isVisible) {
        TextView tvPromoCode = this.binding.f77915l;
        Intrinsics.g(tvPromoCode, "tvPromoCode");
        tvPromoCode.setVisibility(isVisible ? 0 : 8);
        i();
    }

    public final void setSceneId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.sceneId = str;
    }

    public final void setTrackerInfo(String sceneId, String pageName, String traceId, String subjectId) {
        Intrinsics.h(sceneId, "sceneId");
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(traceId, "traceId");
        this.binding.f77908e.setModuleName("pro");
        this.binding.f77907d.setModuleName("basic");
        this.pageName = pageName;
        this.binding.f77908e.setPageName(pageName);
        this.binding.f77907d.setPageName(pageName);
        this.sceneId = sceneId;
        this.binding.f77908e.setSceneId(sceneId);
        this.binding.f77907d.setSceneId(sceneId);
        this.binding.f77908e.setTraceId(traceId);
        this.binding.f77907d.setTraceId(traceId);
        this.binding.f77908e.setSubjectId(subjectId == null ? "" : subjectId);
        MemberBasicView memberBasicView = this.binding.f77907d;
        if (subjectId == null) {
            subjectId = "";
        }
        memberBasicView.setSubjectId(subjectId);
        TextView tvAgreementTitle = this.binding.f77912i;
        Intrinsics.g(tvAgreementTitle, "tvAgreementTitle");
        tvAgreementTitle.setVisibility(this.isActivity ? 0 : 8);
        TextView tvAgreementContent = this.binding.f77911h;
        Intrinsics.g(tvAgreementContent, "tvAgreementContent");
        tvAgreementContent.setVisibility(this.isActivity ? 0 : 8);
        LinearLayout layoutFeedback = this.binding.f77906c;
        Intrinsics.g(layoutFeedback, "layoutFeedback");
        layoutFeedback.setVisibility(this.isActivity ? 0 : 8);
    }
}
