package com.transsion.commercialization.task.wheel;

import android.app.Dialog;
import android.graphics.Color;
import android.os.Bundle;
import android.text.SpannableString;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.v;
import com.blankj.utilcode.util.ToastUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.widget.R$string;
import com.tn.lib.widget.R$style;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.bean.lottery.LotteryDrawResultEntity;
import com.transsion.bean.lottery.LotteryUserActivityHighlightTextTitleBean;
import com.transsion.bean.lottery.LotteryUserActivityInfoEntity;
import com.transsion.bean.lottery.LotteryUserActivityInfoPriceItemsBean;
import com.transsion.bean.lottery.LotteryUserActivityTitleBean;
import com.transsion.commercialization.R$layout;
import com.transsion.wrapperad.R$drawable;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.k;
import nh.m;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\u0003J\u0017\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0019\u0010\u000e\u001a\u00020\u00042\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ!\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0014\u0010\u0003J\u0017\u0010\u0017\u001a\u00020\u00002\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015¢\u0006\u0004\b\u0017\u0010\u0018R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u001b\u0010%\u001a\u00020 8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$R\u0016\u0010)\u001a\u00020&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(¨\u0006*"}, d2 = {"Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "", "A0", "z0", "w0", "", "moduleName", "v0", "(Ljava/lang/String;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onResume", "Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;", "infoBean", "D0", "(Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;)Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;", "c", "Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;", "lotteryUserActivityInfoBean", "Lkk/f;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lkk/f;", "bind", "Lcom/transsion/commercialization/task/treasure/b;", "e", "Lkotlin/Lazy;", "x0", "()Lcom/transsion/commercialization/task/treasure/b;", "iTreasureApi", "", "f", "Z", "isDisplayed", "Commercialization_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class TreasureWheelDialog extends BaseDialog {

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private LotteryUserActivityInfoEntity lotteryUserActivityInfoBean;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private kk.f bind;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final Lazy iTreasureApi;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private boolean isDisplayed;

    public static final class a implements e {
        a() {
        }

        @Override // com.transsion.commercialization.task.wheel.e
        public void a() {
            e.a.c(this);
        }

        @Override // com.transsion.commercialization.task.wheel.e
        public void b(LotteryUserActivityInfoPriceItemsBean lotteryUserActivityInfoPriceItemsBean) {
            e.a.e(this, lotteryUserActivityInfoPriceItemsBean);
        }

        @Override // com.transsion.commercialization.task.wheel.e
        public void c(LotteryDrawResultEntity.LotteryResultBean lotteryResultBean) {
            new TreasureWheelStateDialog().u0(lotteryResultBean).k0(com.blankj.utilcode.util.a.b(), "TreasureWheelStateDialog");
            TreasureWheelDialog.this.dismissAllowingStateLoss();
        }

        @Override // com.transsion.commercialization.task.wheel.e
        public void d() {
            e.a.d(this);
            TreasureWheelDialog.this.z0();
            TreasureWheelDialog.this.v0("spin_now");
        }

        @Override // com.transsion.commercialization.task.wheel.e
        public void e() {
            e.a.b(this);
        }

        @Override // com.transsion.commercialization.task.wheel.e
        public void f(String msg) {
            Intrinsics.h(msg, "msg");
            e.a.a(this, msg);
        }
    }

    public TreasureWheelDialog() {
        super(R$layout.dialog_treasure_wheel_layout);
        this.iTreasureApi = LazyKt.b(new Function0() { // from class: com.transsion.commercialization.task.wheel.h
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TreasureWheelDialog.y0();
            }
        });
    }

    private final void A0() {
        String text;
        String highlightText;
        String text2;
        AppCompatImageView appCompatImageView;
        TextView textView;
        TextView textView2;
        LotteryUserActivityTitleBean title;
        LotteryUserActivityHighlightTextTitleBean secondTitle;
        String highlightText2;
        LotteryUserActivityTitleBean title2;
        LotteryUserActivityHighlightTextTitleBean secondTitle2;
        TextView textView3;
        LotteryUserActivityTitleBean title3;
        LotteryUserActivityHighlightTextTitleBean firstTitle;
        LotteryUserActivityTitleBean title4;
        LotteryUserActivityHighlightTextTitleBean firstTitle2;
        LuckyWheelView luckyWheelView;
        LuckyWheelView luckyWheelView2;
        LuckyWheelView luckyWheelView3;
        LuckyWheelView luckyWheelView4;
        LuckyWheelView luckyWheelView5;
        LuckyWheelView luckyWheelView6;
        ok.c cVar = ok.c.f71034a;
        String classTag = getClassTag();
        LotteryUserActivityInfoEntity lotteryUserActivityInfoEntity = this.lotteryUserActivityInfoBean;
        cVar.a(classTag + " --> render() --> priceItems = " + (lotteryUserActivityInfoEntity != null ? lotteryUserActivityInfoEntity.getPriceItems() : null));
        kk.f fVar = this.bind;
        if (fVar != null && (luckyWheelView6 = fVar.f66857c) != null) {
            LotteryUserActivityInfoEntity lotteryUserActivityInfoEntity2 = this.lotteryUserActivityInfoBean;
            luckyWheelView6.setWheelItems(lotteryUserActivityInfoEntity2 != null ? lotteryUserActivityInfoEntity2.getPriceItems() : null);
        }
        kk.f fVar2 = this.bind;
        if (fVar2 != null && (luckyWheelView5 = fVar2.f66857c) != null) {
            luckyWheelView5.setCenterIndicator(R$drawable.treasure_wheel_center_indicator);
        }
        kk.f fVar3 = this.bind;
        if (fVar3 != null && (luckyWheelView4 = fVar3.f66857c) != null) {
            luckyWheelView4.setStartAngularSpeed(20.0f);
        }
        kk.f fVar4 = this.bind;
        if (fVar4 != null && (luckyWheelView3 = fVar4.f66857c) != null) {
            luckyWheelView3.setImageSizeRatio(0.45f);
        }
        kk.f fVar5 = this.bind;
        if (fVar5 != null && (luckyWheelView2 = fVar5.f66857c) != null) {
            luckyWheelView2.setImageRadiusRatio(0.65f);
        }
        kk.f fVar6 = this.bind;
        if (fVar6 != null && (luckyWheelView = fVar6.f66857c) != null) {
            luckyWheelView.setOnWheelStateListener(new a());
        }
        ui.c cVar2 = ui.c.f76759a;
        LotteryUserActivityInfoEntity lotteryUserActivityInfoEntity3 = this.lotteryUserActivityInfoBean;
        String str = "";
        if (lotteryUserActivityInfoEntity3 == null || (title4 = lotteryUserActivityInfoEntity3.getTitle()) == null || (firstTitle2 = title4.getFirstTitle()) == null || (text = firstTitle2.getText()) == null) {
            text = "";
        }
        LotteryUserActivityInfoEntity lotteryUserActivityInfoEntity4 = this.lotteryUserActivityInfoBean;
        if (lotteryUserActivityInfoEntity4 == null || (title3 = lotteryUserActivityInfoEntity4.getTitle()) == null || (firstTitle = title3.getFirstTitle()) == null || (highlightText = firstTitle.getHighlightText()) == null) {
            highlightText = "";
        }
        SpannableString spannableStringA = cVar2.a(text, highlightText, Color.parseColor("#59D440"));
        kk.f fVar7 = this.bind;
        if (fVar7 != null && (textView3 = fVar7.f66860f) != null) {
            textView3.setText(spannableStringA);
        }
        LotteryUserActivityInfoEntity lotteryUserActivityInfoEntity5 = this.lotteryUserActivityInfoBean;
        if (lotteryUserActivityInfoEntity5 == null || (title2 = lotteryUserActivityInfoEntity5.getTitle()) == null || (secondTitle2 = title2.getSecondTitle()) == null || (text2 = secondTitle2.getText()) == null) {
            text2 = "";
        }
        LotteryUserActivityInfoEntity lotteryUserActivityInfoEntity6 = this.lotteryUserActivityInfoBean;
        if (lotteryUserActivityInfoEntity6 != null && (title = lotteryUserActivityInfoEntity6.getTitle()) != null && (secondTitle = title.getSecondTitle()) != null && (highlightText2 = secondTitle.getHighlightText()) != null) {
            str = highlightText2;
        }
        SpannableString spannableStringB = cVar2.b(text2, str, Color.parseColor("#94DA02"), Color.parseColor("#FFFFFF"));
        kk.f fVar8 = this.bind;
        if (fVar8 != null && (textView2 = fVar8.f66861g) != null) {
            textView2.setText(spannableStringB);
        }
        kk.f fVar9 = this.bind;
        if (fVar9 != null && (textView = fVar9.f66859e) != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.commercialization.task.wheel.f
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TreasureWheelDialog.B0(this.f43980a, view);
                }
            });
        }
        kk.f fVar10 = this.bind;
        if (fVar10 == null || (appCompatImageView = fVar10.f66856b) == null) {
            return;
        }
        appCompatImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.commercialization.task.wheel.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TreasureWheelDialog.C0(this.f43981a, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B0(TreasureWheelDialog treasureWheelDialog, View view) {
        LuckyWheelView luckyWheelView;
        if (m.f70474a.e()) {
            kk.f fVar = treasureWheelDialog.bind;
            if (fVar == null || (luckyWheelView = fVar.f66857c) == null) {
                return;
            }
            luckyWheelView.startIndicator();
            return;
        }
        ToastUtils.r(R$string.no_network);
        ok.c.f71034a.a(treasureWheelDialog.getClassTag() + " --> lotteryDraw() --> 无网络直接拒绝操作");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C0(TreasureWheelDialog treasureWheelDialog, View view) {
        treasureWheelDialog.v0("close");
        treasureWheelDialog.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void v0(String moduleName) {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            HashMap map = new HashMap();
            map.put("dialog_name", "lucky_wheel");
            map.put("module_name", moduleName);
            hj.i iVar = hj.i.f64505a;
            String simpleName = activity.getClass().getSimpleName();
            Intrinsics.g(simpleName, "getSimpleName(...)");
            iVar.p(simpleName, map);
        }
    }

    private final void w0() {
        if (this.isDisplayed) {
            return;
        }
        this.isDisplayed = true;
        HashMap map = new HashMap();
        FragmentActivity activity = getActivity();
        if (activity != null) {
            map.put("dialog_name", "lucky_wheel");
            hj.i iVar = hj.i.f64505a;
            String simpleName = activity.getClass().getSimpleName();
            Intrinsics.g(simpleName, "getSimpleName(...)");
            iVar.r(simpleName, map);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final com.transsion.commercialization.task.treasure.b x0() {
        return (com.transsion.commercialization.task.treasure.b) this.iTreasureApi.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.transsion.commercialization.task.treasure.b y0() {
        return (com.transsion.commercialization.task.treasure.b) zg.c.f79414e.a().h(com.transsion.commercialization.task.treasure.b.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void z0() {
        k.d(v.a(this), null, null, new TreasureWheelDialog$lotteryDraw$1(this, null), 3, null);
    }

    public final TreasureWheelDialog D0(LotteryUserActivityInfoEntity infoBean) {
        this.lotteryUserActivityInfoBean = infoBean;
        return this;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.BaseDialogStyle);
    }

    @Override // com.transsion.baseui.dialog.BaseDialog, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        w0();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Window window;
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        Dialog dialog = getDialog();
        if (dialog != null && (window = dialog.getWindow()) != null) {
            window.setLayout(-1, -2);
        }
        Dialog dialog2 = getDialog();
        if (dialog2 != null) {
            dialog2.setCancelable(false);
        }
        this.bind = kk.f.a(view);
        A0();
    }
}
