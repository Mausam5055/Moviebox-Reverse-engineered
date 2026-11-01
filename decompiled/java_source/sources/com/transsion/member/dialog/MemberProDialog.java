package com.transsion.member.dialog;

import android.app.Dialog;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import androidx.p009lifecycle.y0;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tn.lib.widget.R$style;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.member.MemberViewModel;
import com.transsion.member.R$layout;
import com.transsion.member.promotion.PromotionManager;
import com.transsion.member.view.MemberProView;
import com.transsion.memberapi.AllMemberRightsData;
import com.transsion.memberapi.FeatureRights;
import com.transsion.memberapi.MemberFeatureData;
import com.transsion.memberapi.MemberPriceData;
import com.transsion.memberapi.MemberPriceItem;
import com.transsion.memberapi.RightsMapData;
import com.transsion.memberapi.SkuPromotionDto;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0003J)\u0010\f\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u00072\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tH\u0002¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u0010\u001a\u00020\u00042\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J!\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00122\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0019\u0010\u0018\u001a\u00020\u00042\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0015\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b\u001c\u0010\u001dJ\u0015\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u001a¢\u0006\u0004\b\u001f\u0010\u001dJ\u0015\u0010!\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u001a¢\u0006\u0004\b!\u0010\u001dJ\u0015\u0010#\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u001a¢\u0006\u0004\b#\u0010\u001dR\u001b\u0010)\u001a\u00020$8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(R\u0018\u0010-\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u0018\u00100\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/R\u0016\u0010\u001b\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102R\u0016\u0010\u001e\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00102R\u0016\u0010 \u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00102R\u0016\u0010\"\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00102R\u001b\u0010:\u001a\u0002068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b7\u0010&\u001a\u0004\b8\u00109R\u0018\u0010=\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010<R\u0018\u0010A\u001a\u0004\u0018\u00010>8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@R\u0016\u0010E\u001a\u00020B8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010D¨\u0006F"}, d2 = {"Lcom/transsion/member/dialog/MemberProDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "", "initView", "D0", "Lcom/transsion/memberapi/MemberPriceData;", "data", "", "Lcom/transsion/memberapi/SkuPromotionItem;", "promotionItems", "x0", "(Lcom/transsion/memberapi/MemberPriceData;Ljava/util/List;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Lzm/f;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "F0", "(Lzm/f;)V", "", "pageName", "G0", "(Ljava/lang/String;)V", "traceId", "J0", "subjectId", "I0", "sceneId", "H0", "Lcom/transsion/member/MemberViewModel;", "c", "Lkotlin/Lazy;", "y0", "()Lcom/transsion/member/MemberViewModel;", "memberViewModel", "Lwm/i;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lwm/i;", "bind", "e", "Lzm/f;", "onPurchaseListener", "f", "Ljava/lang/String;", "g", "h", "i", "Lcom/transsion/member/promotion/PromotionManager;", "j", "z0", "()Lcom/transsion/member/promotion/PromotionManager;", "promotionManager", CampaignEx.JSON_KEY_AD_K, "Lcom/transsion/memberapi/MemberPriceData;", "pendingGoodsData", "Lcom/transsion/memberapi/SkuPromotionDto;", "l", "Lcom/transsion/memberapi/SkuPromotionDto;", "pendingSkuPromotionDto", "", "m", "Z", "promotionReady", "Member_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class MemberProDialog extends BaseDialog {

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final Lazy memberViewModel;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private wm.i bind;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private zm.f onPurchaseListener;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private String pageName;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private String traceId;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private String subjectId;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private String sceneId;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private final Lazy promotionManager;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private MemberPriceData pendingGoodsData;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private SkuPromotionDto pendingSkuPromotionDto;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private volatile boolean promotionReady;

    static final class a implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f46480a;

        a(Function1 function) {
            Intrinsics.h(function, "function");
            this.f46480a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f46480a;
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
            this.f46480a.invoke(obj);
        }
    }

    public MemberProDialog() {
        super(R$layout.dialog_member_pro_layout);
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.transsion.member.dialog.MemberProDialog$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return this;
            }
        };
        this.memberViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(MemberViewModel.class), new Function0<x0>() { // from class: com.transsion.member.dialog.MemberProDialog$special$$inlined$viewModels$default$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final x0 invoke() {
                x0 viewModelStore = ((y0) function0.invoke()).getViewModelStore();
                Intrinsics.g(viewModelStore, "ownerProducer().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<v0.c>() { // from class: com.transsion.member.dialog.MemberProDialog$special$$inlined$viewModels$default$3
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
        this.pageName = "";
        this.traceId = "";
        this.subjectId = "";
        this.sceneId = "";
        this.promotionManager = LazyKt.b(new Function0() { // from class: com.transsion.member.dialog.n
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return MemberProDialog.E0();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit A0(MemberProDialog memberProDialog, MemberPriceData memberPriceData) {
        if (memberProDialog.promotionReady) {
            SkuPromotionDto skuPromotionDto = memberProDialog.pendingSkuPromotionDto;
            memberProDialog.x0(memberPriceData, skuPromotionDto != null ? skuPromotionDto.getItems() : null);
        } else {
            memberProDialog.pendingGoodsData = memberPriceData;
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit B0(wm.i iVar, AllMemberRightsData allMemberRightsData) {
        RightsMapData rightsMap;
        FeatureRights pro;
        List<MemberFeatureData> rights;
        if (allMemberRightsData != null && (rightsMap = allMemberRightsData.getRightsMap()) != null && (pro = rightsMap.getPro()) != null && (rights = pro.getRights()) != null) {
            iVar.f77765d.setFeatureData(rights);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit C0(MemberProDialog memberProDialog, View it) {
        Intrinsics.h(it, "it");
        memberProDialog.dismissAllowingStateLoss();
        return Unit.f67061a;
    }

    private final void D0() {
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new MemberProDialog$loadPromotionConcurrently$1(this, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PromotionManager E0() {
        return new PromotionManager();
    }

    private final void initView() {
        final wm.i iVar = this.bind;
        if (iVar != null) {
            MemberProView.init$default(iVar.f77765d, null, null, null, null, 15, null);
            iVar.f77765d.setSubjectId(this.subjectId);
            iVar.f77765d.setPageName(this.pageName);
            iVar.f77765d.setTraceId(this.traceId);
            iVar.f77765d.setSceneId(this.sceneId);
            iVar.f77765d.setModuleName("pro_semi");
            zm.f fVar = this.onPurchaseListener;
            if (fVar != null) {
                MemberProView memberProView = iVar.f77765d;
                Intrinsics.e(fVar);
                memberProView.setOnPurchaseListener(fVar);
            }
            if (getActivity() != null) {
                MemberProView memberProView2 = iVar.f77765d;
                FragmentActivity fragmentActivityRequireActivity = requireActivity();
                Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
                memberProView2.setActivity(fragmentActivityRequireActivity);
            }
            y0().x();
            y0().u();
            y0().E().j(this, new a(new Function1() { // from class: com.transsion.member.dialog.o
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return MemberProDialog.A0(this.f46540a, (MemberPriceData) obj);
                }
            }));
            y0().A().j(this, new a(new Function1() { // from class: com.transsion.member.dialog.p
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return MemberProDialog.B0(iVar, (AllMemberRightsData) obj);
                }
            }));
            ImageView ivMemberClose = iVar.f77763b;
            Intrinsics.g(ivMemberClose, "ivMemberClose");
            jg.c.c(ivMemberClose, 0L, new Function1() { // from class: com.transsion.member.dialog.q
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return MemberProDialog.C0(this.f46542a, (View) obj);
                }
            }, 1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void x0(MemberPriceData data, List promotionItems) {
        MemberProView memberProView;
        List<MemberPriceItem> arrayList;
        wm.i iVar = this.bind;
        if (iVar == null || (memberProView = iVar.f77765d) == null) {
            return;
        }
        if (data == null || (arrayList = data.getProMembers()) == null) {
            arrayList = new ArrayList<>();
        }
        memberProView.setMemberGoodsData(arrayList, promotionItems);
    }

    private final MemberViewModel y0() {
        return (MemberViewModel) this.memberViewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PromotionManager z0() {
        return (PromotionManager) this.promotionManager.getValue();
    }

    public final void F0(zm.f listener) {
        this.onPurchaseListener = listener;
    }

    public final void G0(String pageName) {
        Intrinsics.h(pageName, "pageName");
        this.pageName = pageName;
    }

    public final void H0(String sceneId) {
        Intrinsics.h(sceneId, "sceneId");
        this.sceneId = sceneId;
    }

    public final void I0(String subjectId) {
        Intrinsics.h(subjectId, "subjectId");
        this.subjectId = subjectId;
    }

    public final void J0(String traceId) {
        Intrinsics.h(traceId, "traceId");
        this.traceId = traceId;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.center_DialogStyle);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Window window;
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        Dialog dialog = getDialog();
        if (dialog != null && (window = dialog.getWindow()) != null) {
            window.setLayout(-1, -2);
            window.setGravity(80);
            window.setBackgroundDrawable(new ColorDrawable(0));
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.dimAmount = 0.7f;
            window.setAttributes(attributes);
            window.addFlags(2);
        }
        this.bind = wm.i.a(view);
        Dialog dialog2 = getDialog();
        if (dialog2 != null) {
            dialog2.setCancelable(true);
        }
        Dialog dialog3 = getDialog();
        if (dialog3 != null) {
            dialog3.setCanceledOnTouchOutside(false);
        }
        y0().O();
        D0();
        initView();
    }
}
