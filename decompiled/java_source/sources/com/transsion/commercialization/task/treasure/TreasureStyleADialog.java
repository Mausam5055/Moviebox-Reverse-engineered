package com.transsion.commercialization.task.treasure;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.v;
import com.cloud.tmc.integration.event.EventConstants;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.widget.R$style;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.commercialization.R$layout;
import com.transsion.memberapi.AdModule;
import com.transsion.memberapi.LotteryDisableModule;
import com.transsion.memberapi.LotteryModule;
import com.transsion.memberapi.MemberCheckResult;
import com.transsion.memberapi.MemberModule;
import com.transsion.memberapi.MemberSceneType;
import com.transsion.memberapi.OrModule;
import com.transsion.memberapi.PayModule;
import com.transsion.memberapi.ThreeInOnePopup;
import com.transsion.memberapi.ThreeInOnePopupTitle;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\u0003J\u000f\u0010\b\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\b\u0010\u0003J\u000f\u0010\t\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\t\u0010\u0003J\u000f\u0010\n\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\n\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u000b\u0010\u0003J\u0017\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0019\u0010\u0012\u001a\u00020\u00042\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J!\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00142\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0018\u0010\u0003J\u000f\u0010\u0019\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0019\u0010\u0003J\u0017\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010 \u001a\u00020\u00002\b\u0010\u001f\u001a\u0004\u0018\u00010\u001e¢\u0006\u0004\b \u0010!J\u0017\u0010#\u001a\u00020\u00002\b\u0010\"\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b#\u0010$J\u0017\u0010'\u001a\u00020\u00002\b\u0010&\u001a\u0004\u0018\u00010%¢\u0006\u0004\b'\u0010(J\u0017\u0010+\u001a\u00020\u00002\b\u0010*\u001a\u0004\u0018\u00010)¢\u0006\u0004\b+\u0010,R\u0018\u00100\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/R\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102R\u0018\u0010\"\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R\u0018\u0010&\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R\u0018\u0010*\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u00108R\u0016\u0010<\u001a\u0002098\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u0010;¨\u0006="}, d2 = {"Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "", "v0", "D0", "E0", "H0", "F0", "B0", "u0", "", "moduleName", "t0", "(Ljava/lang/String;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onResume", "onDestroy", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "(Landroid/content/res/Configuration;)V", "Lcom/transsion/memberapi/MemberCheckResult;", "memberCheckResult", "z0", "(Lcom/transsion/memberapi/MemberCheckResult;)Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;", "genre", "x0", "(Ljava/lang/String;)Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;", "Lok/b;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "y0", "(Lok/b;)Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;", "Lcom/transsion/memberapi/MemberSceneType;", "sceneType", "A0", "(Lcom/transsion/memberapi/MemberSceneType;)Lcom/transsion/commercialization/task/treasure/TreasureStyleADialog;", "Lkk/e;", "c", "Lkk/e;", "bind", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/memberapi/MemberCheckResult;", "e", "Ljava/lang/String;", "f", "Lok/b;", "g", "Lcom/transsion/memberapi/MemberSceneType;", "", "h", "Z", "isDisplayed", "Commercialization_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class TreasureStyleADialog extends BaseDialog {

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private kk.e bind;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private MemberCheckResult memberCheckResult;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private String genre;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private ok.b listener;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private MemberSceneType sceneType;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private boolean isDisplayed;

    public static final class a implements c {
        a() {
        }

        @Override // com.transsion.commercialization.task.treasure.c
        public void a() {
            ok.b bVar = TreasureStyleADialog.this.listener;
            if (bVar != null) {
                bVar.onSuccess();
            }
            TreasureStyleADialog.this.dismissAllowingStateLoss();
            TreasureStyleADialog.this.t0("typeAdInstall");
        }

        @Override // com.transsion.commercialization.task.treasure.c
        public void b() {
            TreasureStyleADialog.this.t0("typeAdChange");
        }
    }

    public TreasureStyleADialog() {
        super(R$layout.dialog_treasure_intercept_layout);
    }

    private final void B0() {
        ThreeInOnePopup threeInOnePopup;
        AdModule adModule;
        final TreasureAdView treasureAdView;
        MemberCheckResult memberCheckResult = this.memberCheckResult;
        if (memberCheckResult == null || (threeInOnePopup = memberCheckResult.getThreeInOnePopup()) == null || (adModule = threeInOnePopup.getAdModule()) == null || Intrinsics.c(adModule.getEnable(), Boolean.FALSE)) {
            return;
        }
        ok.c.f71034a.a(getClassTag() + " --> typeAd() --> 开始渲染 --> genre = " + this.genre);
        kk.e eVar = this.bind;
        if (eVar == null || (treasureAdView = eVar.f66837b) == null) {
            return;
        }
        treasureAdView.setListener(new a());
        treasureAdView.setGenre(this.genre);
        treasureAdView.setAdCallback(new Function1() { // from class: com.transsion.commercialization.task.treasure.i
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return TreasureStyleADialog.C0(treasureAdView, this, ((Boolean) obj).booleanValue());
            }
        });
        treasureAdView.loadAd();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit C0(TreasureAdView treasureAdView, TreasureStyleADialog treasureStyleADialog, boolean z10) {
        ThreeInOnePopup threeInOnePopup;
        OrModule orModule;
        kk.e eVar;
        LinearLayout linearLayout;
        if (z10) {
            treasureAdView.setVisibility(0);
            MemberCheckResult memberCheckResult = treasureStyleADialog.memberCheckResult;
            if (memberCheckResult != null && (threeInOnePopup = memberCheckResult.getThreeInOnePopup()) != null && (orModule = threeInOnePopup.getOrModule()) != null && !Intrinsics.c(orModule.getEnable(), Boolean.FALSE) && (eVar = treasureStyleADialog.bind) != null && (linearLayout = eVar.f66845j) != null) {
                linearLayout.setVisibility(0);
            }
        } else {
            ok.c.f71034a.a(treasureStyleADialog.getClassTag() + " --> typeAd() --> 广告加载失败");
        }
        return Unit.f67061a;
    }

    private final void D0() {
        ThreeInOnePopup threeInOnePopup;
        LotteryModule lotteryModule;
        TextView textView;
        TextView textView2;
        TextView textView3;
        String text;
        String highlightText;
        ShapeableImageView shapeableImageView;
        MemberCheckResult memberCheckResult = this.memberCheckResult;
        if (memberCheckResult == null || (threeInOnePopup = memberCheckResult.getThreeInOnePopup()) == null || (lotteryModule = threeInOnePopup.getLotteryModule()) == null || Intrinsics.c(lotteryModule.getEnable(), Boolean.FALSE)) {
            return;
        }
        ok.c.f71034a.a(getClassTag() + " --> typeLottery() --> 开始渲染");
        kk.e eVar = this.bind;
        if (eVar != null && (shapeableImageView = eVar.f66843h) != null) {
            shapeableImageView.setVisibility(0);
            ej.f.a aVar = ej.f.f61882a;
            Context context = shapeableImageView.getContext();
            Intrinsics.g(context, "getContext(...)");
            aVar.m(context).g(lotteryModule.getBannerUrl()).d(shapeableImageView);
        }
        kk.e eVar2 = this.bind;
        if (eVar2 != null && (textView3 = eVar2.f66850o) != null) {
            textView3.setVisibility(0);
            ui.c cVar = ui.c.f76759a;
            ThreeInOnePopupTitle firstTitle = lotteryModule.getFirstTitle();
            String str = "";
            if (firstTitle == null || (text = firstTitle.getText()) == null) {
                text = "";
            }
            ThreeInOnePopupTitle firstTitle2 = lotteryModule.getFirstTitle();
            if (firstTitle2 != null && (highlightText = firstTitle2.getHighlightText()) != null) {
                str = highlightText;
            }
            textView3.setText(cVar.a(text, str, Color.parseColor("#59D440")));
        }
        kk.e eVar3 = this.bind;
        if (eVar3 != null && (textView2 = eVar3.f66851p) != null) {
            textView2.setVisibility(0);
            ThreeInOnePopupTitle secondTitle = lotteryModule.getSecondTitle();
            textView2.setText(secondTitle != null ? secondTitle.getText() : null);
        }
        kk.e eVar4 = this.bind;
        if (eVar4 == null || (textView = eVar4.f66852q) == null) {
            return;
        }
        textView.setVisibility(0);
        ThreeInOnePopupTitle thirdTitle = lotteryModule.getThirdTitle();
        textView.setText(thirdTitle != null ? thirdTitle.getText() : null);
    }

    private final void E0() {
        ThreeInOnePopup threeInOnePopup;
        LotteryDisableModule lotteryDisableModule;
        TextView textView;
        TextView textView2;
        String text;
        String highlightText;
        AppCompatImageView appCompatImageView;
        MemberCheckResult memberCheckResult = this.memberCheckResult;
        if (memberCheckResult == null || (threeInOnePopup = memberCheckResult.getThreeInOnePopup()) == null || (lotteryDisableModule = threeInOnePopup.getLotteryDisableModule()) == null || Intrinsics.c(lotteryDisableModule.getEnable(), Boolean.FALSE)) {
            return;
        }
        ok.c.f71034a.a(getClassTag() + " --> typeLotteryDisable() --> 开始渲染");
        kk.e eVar = this.bind;
        if (eVar != null && (appCompatImageView = eVar.f66841f) != null) {
            appCompatImageView.setVisibility(0);
            ej.f.a aVar = ej.f.f61882a;
            Context context = appCompatImageView.getContext();
            Intrinsics.g(context, "getContext(...)");
            aVar.m(context).g(lotteryDisableModule.getBannerUrl()).d(appCompatImageView);
        }
        kk.e eVar2 = this.bind;
        if (eVar2 != null && (textView2 = eVar2.f66850o) != null) {
            textView2.setVisibility(0);
            ui.c cVar = ui.c.f76759a;
            ThreeInOnePopupTitle firstTitle = lotteryDisableModule.getFirstTitle();
            String str = "";
            if (firstTitle == null || (text = firstTitle.getText()) == null) {
                text = "";
            }
            ThreeInOnePopupTitle firstTitle2 = lotteryDisableModule.getFirstTitle();
            if (firstTitle2 != null && (highlightText = firstTitle2.getHighlightText()) != null) {
                str = highlightText;
            }
            textView2.setText(cVar.a(text, str, Color.parseColor("#59D440")));
        }
        kk.e eVar3 = this.bind;
        if (eVar3 == null || (textView = eVar3.f66851p) == null) {
            return;
        }
        textView.setVisibility(0);
        ThreeInOnePopupTitle secondTitle = lotteryDisableModule.getSecondTitle();
        textView.setText(secondTitle != null ? secondTitle.getText() : null);
    }

    private final void F0() {
        ThreeInOnePopup threeInOnePopup;
        MemberModule memberModule;
        TextView textView;
        AppCompatImageView appCompatImageView;
        ConstraintLayout constraintLayout;
        MemberCheckResult memberCheckResult = this.memberCheckResult;
        if (memberCheckResult == null || (threeInOnePopup = memberCheckResult.getThreeInOnePopup()) == null || (memberModule = threeInOnePopup.getMemberModule()) == null || Intrinsics.c(memberModule.getEnable(), Boolean.FALSE)) {
            return;
        }
        ok.c.f71034a.a(getClassTag() + " --> typeMember() --> 开始渲染");
        kk.e eVar = this.bind;
        if (eVar != null && (constraintLayout = eVar.f66838c) != null) {
            constraintLayout.setVisibility(0);
            constraintLayout.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.commercialization.task.treasure.k
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TreasureStyleADialog.G0(this.f43936a, view);
                }
            });
        }
        kk.e eVar2 = this.bind;
        if (eVar2 != null && (appCompatImageView = eVar2.f66842g) != null) {
            ej.f.a aVar = ej.f.f61882a;
            Context context = appCompatImageView.getContext();
            Intrinsics.g(context, "getContext(...)");
            aVar.m(context).g(memberModule.getIconUrl()).d(appCompatImageView);
        }
        kk.e eVar3 = this.bind;
        if (eVar3 == null || (textView = eVar3.f66849n) == null) {
            return;
        }
        ThreeInOnePopupTitle text = memberModule.getText();
        textView.setText(text != null ? text.getText() : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G0(TreasureStyleADialog treasureStyleADialog, View view) {
        treasureStyleADialog.t0("typeMember");
        kotlinx.coroutines.k.d(v.a(treasureStyleADialog), null, null, new TreasureStyleADialog$typeMember$1$1$1$1(treasureStyleADialog, null), 3, null);
    }

    private final void H0() {
        ThreeInOnePopup threeInOnePopup;
        final PayModule payModule;
        ConstraintLayout constraintLayout;
        TextView textView;
        TextView textView2;
        MemberCheckResult memberCheckResult = this.memberCheckResult;
        if (memberCheckResult == null || (threeInOnePopup = memberCheckResult.getThreeInOnePopup()) == null || (payModule = threeInOnePopup.getPayModule()) == null || Intrinsics.c(payModule.getEnable(), Boolean.FALSE)) {
            return;
        }
        ok.c.f71034a.a(getClassTag() + " --> typePay() --> 开始渲染");
        kk.e eVar = this.bind;
        if (eVar == null || (constraintLayout = eVar.f66839d) == null) {
            return;
        }
        if (eVar != null && constraintLayout != null) {
            constraintLayout.setVisibility(0);
        }
        kk.e eVar2 = this.bind;
        if (eVar2 != null && (textView2 = eVar2.f66847l) != null) {
            textView2.setText(payModule.getMoney());
        }
        kk.e eVar3 = this.bind;
        if (eVar3 != null && (textView = eVar3.f66846k) != null) {
            ThreeInOnePopupTitle text = payModule.getText();
            textView.setText(text != null ? text.getText() : null);
        }
        constraintLayout.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.commercialization.task.treasure.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TreasureStyleADialog.I0(this.f43934a, payModule, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I0(final TreasureStyleADialog treasureStyleADialog, PayModule payModule, View view) {
        treasureStyleADialog.t0("typePay");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("activity", "lottery");
        FragmentActivity activity = treasureStyleADialog.getActivity();
        AppCompatActivity appCompatActivity = activity instanceof AppCompatActivity ? (AppCompatActivity) activity : null;
        if (appCompatActivity != null) {
            com.transsion.payment.lib.f fVarA = com.transsion.payment.lib.f.f47794b.a();
            String skuId = payModule.getSkuId();
            if (skuId == null) {
                skuId = "";
            }
            fVarA.e(appCompatActivity, skuId, (148 & 4) != 0 ? null : null, (148 & 8) != 0 ? null : null, (148 & 16) != 0 ? false : false, (148 & 32) != 0 ? null : linkedHashMap, new com.transsion.payment.lib.b() { // from class: com.transsion.commercialization.task.treasure.TreasureStyleADialog$typePay$1$1$2$1$1
                @Override // com.transsion.payment.lib.b
                public void a(Integer num, String str, boolean z10, String str2) {
                    ok.c.f71034a.a(this.f43927a.getClassTag() + " --> error(支付失败) --> Payment failed " + str + ", " + num);
                }

                @Override // com.transsion.payment.lib.b
                public void b(boolean z10) {
                }

                @Override // com.transsion.payment.lib.b
                public void c(int i11, String balance, String str) {
                    Intrinsics.h(balance, "balance");
                    ok.c.f71034a.a(this.f43927a.getClassTag() + " --> success(支付成功) --> 1.激励任务完成 -- 2. 支付成功，请求大转盘信息");
                    ok.b bVar = this.f43927a.listener;
                    if (bVar != null) {
                        bVar.onSuccess();
                    }
                    kotlinx.coroutines.k.d(v.a(this.f43927a), null, null, new TreasureStyleADialog$typePay$1$1$2$1$1$success$1(str, this.f43927a, null), 3, null);
                }
            }, (148 & 128) != 0 ? null : null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void t0(String moduleName) {
        String value;
        FragmentActivity activity = getActivity();
        if (activity != null) {
            HashMap map = new HashMap();
            map.put("dialog_name", "3_in_1");
            map.put("module_name", moduleName);
            MemberSceneType memberSceneType = this.sceneType;
            if (memberSceneType == null || (value = memberSceneType.getValue()) == null) {
                value = "sceneType == null";
            }
            map.put(EventConstants.KEY_SOURCE, value);
            hj.i iVar = hj.i.f64505a;
            String simpleName = activity.getClass().getSimpleName();
            Intrinsics.g(simpleName, "getSimpleName(...)");
            iVar.p(simpleName, map);
        }
    }

    private final void u0() {
        String value;
        if (this.isDisplayed) {
            return;
        }
        this.isDisplayed = true;
        FragmentActivity activity = getActivity();
        if (activity != null) {
            HashMap map = new HashMap();
            map.put("dialog_name", "3_in_1");
            MemberSceneType memberSceneType = this.sceneType;
            if (memberSceneType == null || (value = memberSceneType.getValue()) == null) {
                value = "sceneType == null";
            }
            map.put(EventConstants.KEY_SOURCE, value);
            hj.i iVar = hj.i.f64505a;
            String simpleName = activity.getClass().getSimpleName();
            Intrinsics.g(simpleName, "getSimpleName(...)");
            iVar.r(simpleName, map);
        }
    }

    private final void v0() {
        ThreeInOnePopup threeInOnePopup;
        List<String> moduleOrder;
        String str;
        AppCompatImageView appCompatImageView;
        kk.e eVar = this.bind;
        if (eVar != null && (appCompatImageView = eVar.f66840e) != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.commercialization.task.treasure.h
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TreasureStyleADialog.w0(this.f43931a, view);
                }
            });
        }
        MemberCheckResult memberCheckResult = this.memberCheckResult;
        if (memberCheckResult == null || (threeInOnePopup = memberCheckResult.getThreeInOnePopup()) == null || (moduleOrder = threeInOnePopup.getModuleOrder()) == null) {
            return;
        }
        for (String str2 : moduleOrder) {
            switch (str2.hashCode()) {
                case -2108817340:
                    if (str2.equals(ThreeInOnePopup.THREE_IN_ONE_MODULE_TYPE_PAY)) {
                        H0();
                    } else {
                        continue;
                    }
                    break;
                case -1373222562:
                    if (str2.equals(ThreeInOnePopup.THREE_IN_ONE_MODULE_TYPE_MEMBER)) {
                        F0();
                    } else {
                        continue;
                    }
                    break;
                case -1334275730:
                    if (str2.equals(ThreeInOnePopup.THREE_IN_ONE_MODULE_TYPE_LOTTERY_DISABLE)) {
                        E0();
                    } else {
                        continue;
                    }
                    break;
                case -1141281069:
                    str = ThreeInOnePopup.THREE_IN_ONE_MODULE_TYPE_UNSPECIFIED;
                    break;
                case -214437659:
                    if (str2.equals(ThreeInOnePopup.THREE_IN_ONE_MODULE_TYPE_LOTTERY)) {
                        D0();
                    } else {
                        continue;
                    }
                    break;
                case 1733088487:
                    if (str2.equals(ThreeInOnePopup.THREE_IN_ONE_MODULE_TYPE_AD)) {
                        B0();
                    } else {
                        continue;
                    }
                    break;
                case 1733088935:
                    str = ThreeInOnePopup.THREE_IN_ONE_MODULE_TYPE_OR;
                    break;
                default:
                    continue;
            }
            str2.equals(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w0(TreasureStyleADialog treasureStyleADialog, View view) {
        treasureStyleADialog.t0("ivClose");
        treasureStyleADialog.dismissAllowingStateLoss();
    }

    public final TreasureStyleADialog A0(MemberSceneType sceneType) {
        this.sceneType = sceneType;
        return this;
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        Intrinsics.h(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        dismissAllowingStateLoss();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.BaseDialogStyle);
    }

    @Override // com.transsion.baseui.dialog.BaseDialog, androidx.fragment.app.Fragment
    public void onDestroy() {
        TreasureAdView treasureAdView;
        super.onDestroy();
        kk.e eVar = this.bind;
        if (eVar == null || (treasureAdView = eVar.f66837b) == null) {
            return;
        }
        treasureAdView.onDestroy();
    }

    @Override // com.transsion.baseui.dialog.BaseDialog, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        u0();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.setCancelable(false);
        }
        this.bind = kk.e.a(view);
        v0();
    }

    public final TreasureStyleADialog x0(String genre) {
        this.genre = genre;
        return this;
    }

    public final TreasureStyleADialog y0(ok.b listener) {
        this.listener = listener;
        return this;
    }

    public final TreasureStyleADialog z0(MemberCheckResult memberCheckResult) {
        this.memberCheckResult = memberCheckResult;
        return this;
    }
}
