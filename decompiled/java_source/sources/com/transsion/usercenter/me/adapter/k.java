package com.transsion.usercenter.me.adapter;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.cloud.tmc.integration.event.EventConstants;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.widget.R$color;
import com.transsion.baselib.kids.KidsAccountManager;
import com.transsion.moviedetailapi.IMovieDetailService;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;
import com.transsion.usercenter.kids.AccountSwitchDialog;
import com.transsion.usercenter.kids.CreateKidsProfileDialog;
import com.transsion.usercenter.kids.PinInputDialog;
import com.transsion.usercenter.profile.ProfileSubjectListViewModel;
import com.transsion.usercenter.profile.bean.IconItemInfo;
import com.transsion.usercenter.profile.bean.MeItemInfo;
import com.transsion.version.update.UpdateManager;
import com.transsnet.loginapi.ILoginApi;
import com.transsnet.loginapi.bean.UserInfo;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class k extends BaseItemProvider {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final a f56950i = new a(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final o f56951e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Lazy f56952f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Lazy f56953g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Lazy f56954h;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public k() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public k(o oVar) {
        this.f56951e = oVar;
        this.f56952f = LazyKt.b(new Function0() { // from class: com.transsion.usercenter.me.adapter.f
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return k.L();
            }
        });
        this.f56953g = LazyKt.b(new Function0() { // from class: com.transsion.usercenter.me.adapter.g
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                k.C();
                return null;
            }
        });
        this.f56954h = LazyKt.b(new Function0() { // from class: com.transsion.usercenter.me.adapter.h
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return k.K();
            }
        });
    }

    public /* synthetic */ k(o oVar, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : oVar);
    }

    public static /* synthetic */ aq.b C() {
        J();
        return null;
    }

    private final void D(BaseViewHolder baseViewHolder, IconItemInfo iconItemInfo) {
        int iB = TextUtils.equals(iconItemInfo.getModuleName(), "linked_devices") ? dk.a.b(36) : dk.a.b(52);
        ViewGroup.LayoutParams layoutParams = baseViewHolder.itemView.getLayoutParams();
        if (layoutParams != null && layoutParams.height != iB) {
            layoutParams.height = iB;
            baseViewHolder.itemView.setLayoutParams(layoutParams);
        }
        ((TextView) baseViewHolder.getView(R$id.desTv)).setTextColor(androidx.core.content.b.getColor(k(), TextUtils.equals(iconItemInfo.getModuleName(), "linked_devices") ? R$color.white_60 : R$color.text_03));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:75:0x016b  */
    /* JADX WARN: Code duplicated, block: B:77:0x0173  */
    /* JADX WARN: Code duplicated, block: B:79:0x017d  */
    /* JADX WARN: Code duplicated, block: B:80:0x018d  */
    /* JADX WARN: Code duplicated, block: B:81:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:88:0x01d0  */
    /* JADX WARN: Code duplicated, block: B:89:0x01de  */
    /* JADX WARN: Code duplicated, block: B:91:0x01e4  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static final Unit F(IconItemInfo iconItemInfo, k kVar, MeItemInfo meItemInfo, BaseViewHolder baseViewHolder, View it) {
        String deepLink;
        o oVar;
        Function1<MeItemInfo, Unit> function1Q1;
        Bundle bundle;
        ILoginApi iLoginApiG;
        IMovieDetailService iMovieDetailServiceH;
        UserInfo userInfoI;
        Function1<MeItemInfo, Unit> function1Q2;
        Function1<MeItemInfo, Unit> function1Q3;
        ILoginApi iLoginApiG2;
        o oVar2;
        Function1<MeItemInfo, Unit> function1Q4;
        Intrinsics.h(it, "it");
        boolean zC = Intrinsics.c(iconItemInfo.getDeepLink(), "my_activity_type");
        if (zC && (oVar2 = kVar.f56951e) != null && (function1Q4 = oVar2.Q1()) != null) {
            function1Q4.invoke(meItemInfo);
        }
        if (iconItemInfo.getCheckLogin() && ((iLoginApiG2 = kVar.G()) == null || !iLoginApiG2.a())) {
            ILoginApi iLoginApiG3 = kVar.G();
            if (iLoginApiG3 != null) {
                iLoginApiG3.j(kVar.k());
            }
            return Unit.f67061a;
        }
        String moduleName = iconItemInfo.getModuleName();
        if (moduleName != null) {
            com.transsion.usercenter.me.u.f57015a.b(moduleName);
        }
        String userId = null;
        if (TextUtils.equals(iconItemInfo.getModuleName(), "linked_devices")) {
            Navigator.x(TheRouter.c("/profile/device_management"), baseViewHolder.itemView.getContext(), null, 2, null);
            o oVar3 = kVar.f56951e;
            if (oVar3 != null && (function1Q3 = oVar3.Q1()) != null) {
                function1Q3.invoke(meItemInfo);
            }
            return Unit.f67061a;
        }
        if (TextUtils.equals(iconItemInfo.getModuleName(), "tv_download_web_link")) {
            com.transsion.baselib.report.launch.b.f43370a.b().putBoolean("key_tv_download_web_link_clicked", true);
            iconItemInfo.setShowNewBadge(false);
            baseViewHolder.getView(R$id.newBadgeTv).setVisibility(8);
            Navigator.x(TheRouter.c("/profile/tv_download_web_link").F("index", 0), baseViewHolder.itemView.getContext(), null, 2, null);
            o oVar4 = kVar.f56951e;
            if (oVar4 != null && (function1Q2 = oVar4.Q1()) != null) {
                function1Q2.invoke(meItemInfo);
            }
            return Unit.f67061a;
        }
        String deepLink2 = iconItemInfo.getDeepLink();
        if (deepLink2 != null) {
            switch (deepLink2.hashCode()) {
                case -2037279396:
                    if (!deepLink2.equals("post_list_type")) {
                        deepLink = iconItemInfo.getDeepLink();
                        if (deepLink != null) {
                            ak.k.h(deepLink, null, 1, null);
                        }
                    } else if (ak.g.f639a.b()) {
                        bundle = new Bundle();
                        bundle.putInt(EventConstants.KEY_SOURCE, !Intrinsics.c(iconItemInfo.getDeepLink(), "post_list_type") ? 1 : 0);
                        iLoginApiG = kVar.G();
                        if (iLoginApiG != null && (userInfoI = iLoginApiG.i()) != null) {
                            userId = userInfoI.getUserId();
                        }
                        bundle.putString("userId", userId);
                        iMovieDetailServiceH = kVar.H();
                        if (iMovieDetailServiceH != null) {
                            iMovieDetailServiceH.b(kVar.k(), bundle, ProfileSubjectListViewModel.class, iconItemInfo.getTitle());
                        }
                    } else if (Intrinsics.c(iconItemInfo.getDeepLink(), "post_list_type")) {
                        new Bundle();
                        Navigator.x(TheRouter.c("/ugc/likes"), baseViewHolder.itemView.getContext(), null, 2, null);
                    } else {
                        Navigator.x(TheRouter.c("/postdetail/favorite"), baseViewHolder.itemView.getContext(), null, 2, null);
                    }
                    break;
                case -1499034234:
                    if (!deepLink2.equals("subscribe_list_type")) {
                        deepLink = iconItemInfo.getDeepLink();
                        if (deepLink != null) {
                            ak.k.h(deepLink, null, 1, null);
                        }
                    } else {
                        Navigator.x(TheRouter.c("/subscription/my_subscription"), baseViewHolder.itemView.getContext(), null, 2, null);
                    }
                    break;
                case 391932183:
                    if (!deepLink2.equals("my_activity_type")) {
                        deepLink = iconItemInfo.getDeepLink();
                        if (deepLink != null) {
                            ak.k.h(deepLink, null, 1, null);
                        }
                    } else {
                        Navigator.x(TheRouter.c("/profile/my_activity"), baseViewHolder.itemView.getContext(), null, 2, null);
                    }
                    break;
                case 1085848142:
                    if (!deepLink2.equals("parental_pin_type")) {
                        deepLink = iconItemInfo.getDeepLink();
                        if (deepLink != null) {
                            ak.k.h(deepLink, null, 1, null);
                        }
                    } else {
                        kVar.M();
                    }
                    break;
                case 1211088224:
                    if (!deepLink2.equals("study_mode_type")) {
                        deepLink = iconItemInfo.getDeepLink();
                        if (deepLink != null) {
                            ak.k.h(deepLink, null, 1, null);
                        }
                    } else {
                        String strE = KidsAccountManager.f43286a.e();
                        if (strE == null || strE.length() == 0) {
                            CreateKidsProfileDialog.Companion.b(CreateKidsProfileDialog.INSTANCE, false, false, false, 7, null).X(kVar.k(), "CreateKidsProfileDialog");
                        } else {
                            AccountSwitchDialog.Companion.b(AccountSwitchDialog.INSTANCE, false, 1, null).X(kVar.k(), "AccountSwitchDialog");
                        }
                    }
                    break;
                case 1897178003:
                    if (!deepLink2.equals("like_list_type")) {
                        deepLink = iconItemInfo.getDeepLink();
                        if (deepLink != null) {
                            ak.k.h(deepLink, null, 1, null);
                        }
                    } else if (ak.g.f639a.b()) {
                        bundle = new Bundle();
                        bundle.putInt(EventConstants.KEY_SOURCE, !Intrinsics.c(iconItemInfo.getDeepLink(), "post_list_type") ? 1 : 0);
                        iLoginApiG = kVar.G();
                        if (iLoginApiG != null) {
                            userId = userInfoI.getUserId();
                        }
                        bundle.putString("userId", userId);
                        iMovieDetailServiceH = kVar.H();
                        if (iMovieDetailServiceH != null) {
                            iMovieDetailServiceH.b(kVar.k(), bundle, ProfileSubjectListViewModel.class, iconItemInfo.getTitle());
                        }
                    } else if (Intrinsics.c(iconItemInfo.getDeepLink(), "post_list_type")) {
                        new Bundle();
                        Navigator.x(TheRouter.c("/ugc/likes"), baseViewHolder.itemView.getContext(), null, 2, null);
                    } else {
                        Navigator.x(TheRouter.c("/postdetail/favorite"), baseViewHolder.itemView.getContext(), null, 2, null);
                    }
                    break;
                default:
                    deepLink = iconItemInfo.getDeepLink();
                    if (deepLink != null) {
                        ak.k.h(deepLink, null, 1, null);
                    }
                    break;
            }
        } else {
            deepLink = iconItemInfo.getDeepLink();
            if (deepLink != null) {
                ak.k.h(deepLink, null, 1, null);
            }
        }
        if (!zC && (oVar = kVar.f56951e) != null && (function1Q1 = oVar.Q1()) != null) {
            function1Q1.invoke(meItemInfo);
        }
        return Unit.f67061a;
    }

    private final ILoginApi G() {
        return (ILoginApi) this.f56954h.getValue();
    }

    private final IMovieDetailService H() {
        return (IMovieDetailService) this.f56952f.getValue();
    }

    private final boolean I(String str) {
        return TextUtils.equals(str, "linked_devices") || TextUtils.equals(str, "tv_download_web_link") || TextUtils.equals(str, "my_activity");
    }

    private static final aq.b J() {
        android.support.v4.media.session.c.a(TheRouter.d(aq.b.class, new Object[0]));
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ILoginApi K() {
        return (ILoginApi) TheRouter.d(ILoginApi.class, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IMovieDetailService L() {
        return (IMovieDetailService) TheRouter.d(IMovieDetailService.class, new Object[0]);
    }

    private final void M() {
        KidsAccountManager kidsAccountManager = KidsAccountManager.f43286a;
        final String strE = kidsAccountManager.e();
        if (strE == null) {
            strE = "";
        }
        if (kidsAccountManager.i()) {
            Navigator.x(TheRouter.c("/kids/pin_management").K("arg_kids_id", strE), null, null, 3, null);
        } else {
            PinInputDialog.Companion.b(PinInputDialog.INSTANCE, false, new Function1() { // from class: com.transsion.usercenter.me.adapter.j
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return k.N(strE, (String) obj);
                }
            }, null, 5, null).X(k(), "PinInputDialog");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit N(String str, String pin) {
        Intrinsics.h(pin, "pin");
        KidsAccountManager.f43286a.p(pin);
        Navigator.x(TheRouter.c("/kids/pin_management").K("arg_kids_id", str), null, null, 3, null);
        return Unit.f67061a;
    }

    private final void O(String str) {
        if (I(str)) {
            com.transsion.usercenter.me.u uVar = com.transsion.usercenter.me.u.f57015a;
            if (str == null) {
                str = "";
            }
            uVar.a(str);
        }
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
    public void b(final BaseViewHolder helper, final MeItemInfo item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        Object data = item.getData();
        final IconItemInfo iconItemInfo = data instanceof IconItemInfo ? (IconItemInfo) data : null;
        if (iconItemInfo == null) {
            return;
        }
        View itemView = helper.itemView;
        Intrinsics.g(itemView, "itemView");
        jg.c.c(itemView, 0L, new Function1() { // from class: com.transsion.usercenter.me.adapter.i
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return k.F(iconItemInfo, this, item, helper, (View) obj);
            }
        }, 1, null);
        ((TextView) helper.getView(R$id.titleTv)).setText(iconItemInfo.getTitle());
        ((TextView) helper.getView(R$id.desTv)).setText(iconItemInfo.getDes());
        helper.getView(R$id.divider).setVisibility(iconItemInfo.getDivider() ? 0 : 8);
        helper.getView(R$id.bgView).setBackgroundResource(iconItemInfo.getBgRes());
        ((ImageView) helper.getView(R$id.icIV)).setImageResource(iconItemInfo.getIconRes());
        helper.getView(R$id.newBadgeTv).setVisibility(iconItemInfo.getShowNewBadge() ? 0 : 8);
        D(helper, iconItemInfo);
        O(iconItemInfo.getModuleName());
        ViewGroup.LayoutParams layoutParams = helper.itemView.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        if (marginLayoutParams != null) {
            marginLayoutParams.topMargin = iconItemInfo.getTop();
        }
        if (!TextUtils.equals(iconItemInfo.getModuleName(), "setting")) {
            helper.getView(R$id.setting_tv_tips).setVisibility(8);
            helper.getView(R$id.image_red_tips).setVisibility(8);
            return;
        }
        View view = helper.getView(R$id.image_red_tips);
        View view2 = helper.getView(R$id.setting_tv_tips);
        boolean z10 = !ak.o.f646a.j() && com.transsion.baselib.report.launch.b.f43370a.b().getBoolean("k_is_family_mode_badge", true);
        boolean zG = UpdateManager.f57518f.a().g();
        view.setVisibility(z10 ? 0 : 8);
        view2.setVisibility(!z10 && zG ? 0 : 8);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return 5;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.mine_item_icon_layout;
    }
}
