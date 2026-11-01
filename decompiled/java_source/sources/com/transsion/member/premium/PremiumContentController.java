package com.transsion.member.premium;

import android.app.Activity;
import android.view.ViewTreeObserver;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.u;
import androidx.p009lifecycle.v;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.y0;
import com.therouter.TheRouter;
import com.tn.lib.widget.R$string;
import com.transsion.member.MemberViewModel;
import com.transsion.member.dialog.MemberBasicDialog;
import com.transsion.member.dialog.MemberPromoCodeDialog;
import com.transsion.member.promotion.PromotionManager;
import com.transsion.member.view.PremiumContentView;
import com.transsion.memberapi.AllMemberRightsData;
import com.transsion.memberapi.FeatureRights;
import com.transsion.memberapi.IMemberApi;
import com.transsion.memberapi.MemberDetail;
import com.transsion.memberapi.MemberFeatureData;
import com.transsion.memberapi.MemberInfo;
import com.transsion.memberapi.MemberPriceData;
import com.transsion.memberapi.MemberPriceItem;
import com.transsion.memberapi.RightsMapData;
import com.transsion.memberapi.SkuPromotionDto;
import java.util.ArrayList;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class PremiumContentController {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final y0 f46599a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final u f46600b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final PremiumContentView f46601c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a f46602d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Lazy f46603e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Lazy f46604f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private MemberPriceData f46605g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private SkuPromotionDto f46606h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private volatile boolean f46607i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f46608j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Activity f46609k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final d f46610l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f46611m;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Function1 f46612a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Function0 f46613b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Function0 f46614c;

        public a() {
            this(null, null, null, 7, null);
        }

        public a(Function1 onMemberDetailChanged, Function0 onMemberDetailLoadFailed, Function0 onDismissLoading) {
            Intrinsics.h(onMemberDetailChanged, "onMemberDetailChanged");
            Intrinsics.h(onMemberDetailLoadFailed, "onMemberDetailLoadFailed");
            Intrinsics.h(onDismissLoading, "onDismissLoading");
            this.f46612a = onMemberDetailChanged;
            this.f46613b = onMemberDetailLoadFailed;
            this.f46614c = onDismissLoading;
        }

        public /* synthetic */ a(Function1 function1, Function0 function0, Function0 function2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? new Function1() { // from class: com.transsion.member.premium.i
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return PremiumContentController.a.d((MemberDetail) obj);
                }
            } : function1, (i11 & 2) != 0 ? new Function0() { // from class: com.transsion.member.premium.j
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return PremiumContentController.a.e();
                }
            } : function0, (i11 & 4) != 0 ? new Function0() { // from class: com.transsion.member.premium.k
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return PremiumContentController.a.f();
                }
            } : function2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit d(MemberDetail it) {
            Intrinsics.h(it, "it");
            return Unit.f67061a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit e() {
            return Unit.f67061a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit f() {
            return Unit.f67061a;
        }

        public final Function0 g() {
            return this.f46614c;
        }

        public final Function1 h() {
            return this.f46612a;
        }

        public final Function0 i() {
            return this.f46613b;
        }
    }

    public static final class b implements Function0 {
        b() {
        }

        public void a() {
            PremiumContentController.this.I();
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            a();
            return Unit.f67061a;
        }
    }

    public static final class c implements ViewTreeObserver.OnGlobalLayoutListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ MemberDetail f46617b;

        c(MemberDetail memberDetail) {
            this.f46617b = memberDetail;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            Integer daysLeft;
            PremiumContentController.this.f46601c.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            PremiumContentController premiumContentController = PremiumContentController.this;
            MemberInfo memberInfo = this.f46617b.getMemberInfo();
            int iIntValue = 0;
            int vipLevel = memberInfo != null ? memberInfo.getVipLevel() : 0;
            MemberInfo memberInfo2 = this.f46617b.getMemberInfo();
            if (memberInfo2 != null && (daysLeft = memberInfo2.getDaysLeft()) != null) {
                iIntValue = daysLeft.intValue();
            }
            premiumContentController.u(vipLevel, iIntValue);
        }
    }

    public static final class d implements zm.f {
        d() {
        }

        @Override // zm.f
        public void a(Integer num, String str) {
        }

        @Override // zm.f
        public void b() {
            PremiumContentController.this.J();
        }
    }

    public static final class e implements ViewTreeObserver.OnGlobalLayoutListener {
        e() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            MemberInfo memberInfo;
            Integer daysLeft;
            MemberInfo memberInfo2;
            PremiumContentController.this.f46601c.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            PremiumContentController premiumContentController = PremiumContentController.this;
            MemberDetail memberDetail = (MemberDetail) premiumContentController.v().D().f();
            int iIntValue = 0;
            int vipLevel = (memberDetail == null || (memberInfo2 = memberDetail.getMemberInfo()) == null) ? 0 : memberInfo2.getVipLevel();
            MemberDetail memberDetail2 = (MemberDetail) PremiumContentController.this.v().D().f();
            if (memberDetail2 != null && (memberInfo = memberDetail2.getMemberInfo()) != null && (daysLeft = memberInfo.getDaysLeft()) != null) {
                iIntValue = daysLeft.intValue();
            }
            premiumContentController.u(vipLevel, iIntValue);
        }
    }

    static final class f implements c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f46620a;

        f(Function1 function) {
            Intrinsics.h(function, "function");
            this.f46620a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f46620a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override // androidx.p009lifecycle.c0
        public final /* synthetic */ void onChanged(Object obj) {
            this.f46620a.invoke(obj);
        }
    }

    public PremiumContentController(y0 viewModelStoreOwner, u lifecycleOwner, PremiumContentView contentView, a callbacks) {
        Intrinsics.h(viewModelStoreOwner, "viewModelStoreOwner");
        Intrinsics.h(lifecycleOwner, "lifecycleOwner");
        Intrinsics.h(contentView, "contentView");
        Intrinsics.h(callbacks, "callbacks");
        this.f46599a = viewModelStoreOwner;
        this.f46600b = lifecycleOwner;
        this.f46601c = contentView;
        this.f46602d = callbacks;
        this.f46603e = LazyKt.b(new Function0() { // from class: com.transsion.member.premium.g
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return PremiumContentController.C(this.f46641a);
            }
        });
        this.f46604f = LazyKt.b(new Function0() { // from class: com.transsion.member.premium.h
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return PremiumContentController.H();
            }
        });
        this.f46610l = new d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit A() {
        ak.k.h("oneroom://com.community.oneroom/profile/user_center_labels_feedback", null, 1, null);
        return Unit.f67061a;
    }

    private final void B() {
        v().u();
        v().x();
        v().O();
        kotlinx.coroutines.k.d(v.a(this.f46600b), null, null, new PremiumContentController$loadInitialData$1(this, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MemberViewModel C(PremiumContentController premiumContentController) {
        return (MemberViewModel) new v0(premiumContentController.f46599a).a(MemberViewModel.class);
    }

    private final void D() {
        v().D().j(this.f46600b, new f(new Function1() { // from class: com.transsion.member.premium.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PremiumContentController.E(this.f46638a, (MemberDetail) obj);
            }
        }));
        v().E().j(this.f46600b, new f(new Function1() { // from class: com.transsion.member.premium.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PremiumContentController.F(this.f46639a, (MemberPriceData) obj);
            }
        }));
        v().A().j(this.f46600b, new f(new Function1() { // from class: com.transsion.member.premium.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PremiumContentController.G(this.f46640a, (AllMemberRightsData) obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit E(PremiumContentController premiumContentController, MemberDetail memberDetail) {
        if (memberDetail != null) {
            premiumContentController.f46601c.setMemberDetail(memberDetail);
            premiumContentController.f46602d.h().invoke(memberDetail);
            premiumContentController.f46601c.getViewTreeObserver().addOnGlobalLayoutListener(premiumContentController.new c(memberDetail));
        } else {
            premiumContentController.f46602d.i().invoke();
            if (nh.m.f70474a.e()) {
                com.tn.lib.widget.toast.core.h.f41479a.k(R$string.failed_toast);
            } else {
                uh.b.f76753a.d(R$string.no_network_toast);
            }
        }
        premiumContentController.f46602d.g().invoke();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit F(PremiumContentController premiumContentController, MemberPriceData memberPriceData) {
        lg.a.C0828a.f(lg.a.f68839a, "liyang", "MemberGoods返回！promotionReady ->" + premiumContentController.f46607i, false, 4, null);
        if (premiumContentController.f46607i) {
            SkuPromotionDto skuPromotionDto = premiumContentController.f46606h;
            premiumContentController.s(memberPriceData, skuPromotionDto != null ? skuPromotionDto.getItems() : null);
        } else {
            premiumContentController.f46605g = memberPriceData;
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit G(PremiumContentController premiumContentController, AllMemberRightsData allMemberRightsData) {
        RightsMapData rightsMap;
        FeatureRights basic;
        RightsMapData rightsMap2;
        FeatureRights pro;
        RightsMapData rightsMap3;
        FeatureRights features;
        List<MemberFeatureData> rights = null;
        premiumContentController.f46601c.refreshFeaturesList((allMemberRightsData == null || (rightsMap3 = allMemberRightsData.getRightsMap()) == null || (features = rightsMap3.getFeatures()) == null) ? null : features.getRights());
        premiumContentController.f46601c.setProFeatureData((allMemberRightsData == null || (rightsMap2 = allMemberRightsData.getRightsMap()) == null || (pro = rightsMap2.getPro()) == null) ? null : pro.getRights());
        PremiumContentView premiumContentView = premiumContentController.f46601c;
        if (allMemberRightsData != null && (rightsMap = allMemberRightsData.getRightsMap()) != null && (basic = rightsMap.getBasic()) != null) {
            rights = basic.getRights();
        }
        premiumContentView.setBasicFeatureData(rights);
        premiumContentController.f46602d.g().invoke();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PromotionManager H() {
        return new PromotionManager();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void J() {
        v().v();
    }

    private final void M() {
        MemberBasicDialog memberBasicDialog = new MemberBasicDialog();
        memberBasicDialog.F0(this.f46610l);
        memberBasicDialog.G0("member/memberdetail");
        memberBasicDialog.k0(this.f46609k, "MemberBasicDialog");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void s(MemberPriceData memberPriceData, List list) {
        List<MemberPriceItem> arrayList;
        List<MemberPriceItem> arrayList2;
        PremiumContentView premiumContentView = this.f46601c;
        if (memberPriceData == null || (arrayList = memberPriceData.getProMembers()) == null) {
            arrayList = new ArrayList<>();
        }
        if (memberPriceData == null || (arrayList2 = memberPriceData.getBasicMember()) == null) {
            arrayList2 = new ArrayList<>();
        }
        premiumContentView.setMemberGoodsData(arrayList, arrayList2, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void u(int i11, int i12) {
        IMemberApi iMemberApi = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
        boolean zF = iMemberApi != null ? iMemberApi.f() : false;
        if (i11 == 1 && i12 <= 7 && !this.f46611m && zF && Intrinsics.c("video_detail/vip_banner", this.f46601c.getSceneId())) {
            this.f46611m = true;
            M();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final MemberViewModel v() {
        return (MemberViewModel) this.f46603e.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PromotionManager w() {
        return (PromotionManager) this.f46604f.getValue();
    }

    private final void x(final Activity activity) {
        this.f46609k = activity;
        this.f46601c.setOnPurchaseListener(this.f46610l);
        this.f46601c.setOnBasicRenewClickListener(new Function0() { // from class: com.transsion.member.premium.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return PremiumContentController.y(this.f46635a);
            }
        });
        this.f46601c.initMemberCard(activity);
        this.f46601c.setOnPromoCodeClickListener(new Function0() { // from class: com.transsion.member.premium.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return PremiumContentController.z(activity, this);
            }
        });
        this.f46601c.setOnFeedbackClickListener(new Function0() { // from class: com.transsion.member.premium.c
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return PremiumContentController.A();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit y(PremiumContentController premiumContentController) {
        premiumContentController.M();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit z(Activity activity, PremiumContentController premiumContentController) {
        MemberPromoCodeDialog.INSTANCE.a(premiumContentController.new b()).k0(activity, "MemberPromoCodeDialog");
        return Unit.f67061a;
    }

    public final void I() {
        v().w();
    }

    public final void K() {
        this.f46611m = false;
        this.f46601c.getViewTreeObserver().addOnGlobalLayoutListener(new e());
    }

    public final void L(boolean z10) {
        this.f46611m = z10;
    }

    public final void t(Activity activity) {
        Intrinsics.h(activity, "activity");
        if (this.f46608j) {
            return;
        }
        this.f46608j = true;
        x(activity);
        D();
        B();
    }
}
