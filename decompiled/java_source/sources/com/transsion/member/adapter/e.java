package com.transsion.member.adapter;

import android.content.Context;
import android.os.CountDownTimer;
import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.cloud.hisavana.sdk.common.util.n0;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.tn.lib.widget.R$drawable;
import com.transsion.member.R$color;
import com.transsion.member.R$id;
import com.transsion.member.R$layout;
import com.transsion.member.R$string;
import com.transsion.member.promotion.m;
import com.transsion.member.widget.StrokeLinearLayout;
import com.transsion.memberapi.MemberPriceItem;
import com.transsion.memberapi.SkuPromotionContent;
import com.transsion.memberapi.SkuPromotionItem;
import com.transsion.memberapi.SkuPromotionSku;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.math.BigDecimal;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0011\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u0000 I2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001JB\u0015\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u001f\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u001f\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0018\u0010\u0019J\u0015\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b\u001c\u0010\u001dJu\u0010&\u001a\u00020\u000f2f\u0010%\u001ab\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u001f\u0012\b\b \u0012\u0004\b\b(\u0017\u0012\u0015\u0012\u0013\u0018\u00010\n¢\u0006\f\b\u001f\u0012\b\b \u0012\u0004\b\b(\u000b\u0012\u0013\u0012\u00110\f¢\u0006\f\b\u001f\u0012\b\b \u0012\u0004\b\b(!\u0012\u0013\u0012\u00110\"¢\u0006\f\b\u001f\u0012\b\b \u0012\u0004\b\b(#\u0012\u0004\u0012\u00020\u000f0\u001ej\u0002`$¢\u0006\u0004\b&\u0010'J4\u0010+\u001a\u00020\u000f2%\u0010*\u001a!\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u001f\u0012\b\b \u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\u000f0(j\u0002`)¢\u0006\u0004\b+\u0010,J\u0015\u0010.\u001a\u00020\u000f2\u0006\u0010-\u001a\u00020\u001a¢\u0006\u0004\b.\u0010\u001dJ\u001d\u00101\u001a\u00020\u000f2\u000e\u00100\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010/¢\u0006\u0004\b1\u0010\u0007J\u000f\u00102\u001a\u00020\u001aH\u0016¢\u0006\u0004\b2\u00103R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105Rz\u0010%\u001af\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u001f\u0012\b\b \u0012\u0004\b\b(\u0017\u0012\u0015\u0012\u0013\u0018\u00010\n¢\u0006\f\b\u001f\u0012\b\b \u0012\u0004\b\b(\u000b\u0012\u0013\u0012\u00110\f¢\u0006\f\b\u001f\u0012\b\b \u0012\u0004\b\b(!\u0012\u0013\u0012\u00110\"¢\u0006\f\b\u001f\u0012\b\b \u0012\u0004\b\b(#\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u001ej\u0004\u0018\u0001`$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107R9\u0010:\u001a%\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u001f\u0012\b\b \u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\u000f\u0018\u00010(j\u0004\u0018\u0001`)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u0016\u0010<\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010;R\u0016\u0010>\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010;R\u001e\u00100\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010/8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@R \u0010F\u001a\u000e\u0012\u0004\u0012\u00020B\u0012\u0004\u0012\u00020C0A8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bD\u0010ER \u0010H\u001a\u000e\u0012\u0004\u0012\u00020B\u0012\u0004\u0012\u00020\f0A8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bG\u0010E¨\u0006K"}, d2 = {"Lcom/transsion/member/adapter/e;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/memberapi/MemberPriceItem;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "", "dataList", "<init>", "(Ljava/util/List;)V", "Landroid/widget/TextView;", "tvCountdown", "Lcom/transsion/memberapi/SkuPromotionItem;", "promotionItem", "", "H1", "(Landroid/widget/TextView;Lcom/transsion/memberapi/SkuPromotionItem;)Z", "", "G1", "(Lcom/transsion/memberapi/SkuPromotionItem;)V", "", "remainingMillis", "N1", "(JLandroid/widget/TextView;)V", "holder", WebConstants.FIELD_ITEM, "E1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/memberapi/MemberPriceItem;)V", "", "defaultSelectedPosition", "K1", "(I)V", "Lkotlin/Function4;", "Lkotlin/ParameterName;", "name", "countdownFinished", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Lcom/transsion/member/adapter/MemberGoodsItemCallback;", "clickCallback", "I1", "(Lkotlin/jvm/functions/Function4;)V", "Lkotlin/Function1;", "Lcom/transsion/member/adapter/MemberGoodsCountdownFinishCallback;", "callback", "J1", "(Lkotlin/jvm/functions/Function1;)V", NativeComponentConstants.KEY_COMPONENT_TYPE, "L1", "", "promotionItems", "M1", "getItemCount", "()I", "F", "Lcom/transsion/memberapi/MemberPriceItem;", "G", "Lkotlin/jvm/functions/Function4;", "H", "Lkotlin/jvm/functions/Function1;", "countdownFinishCallback", "I", "selectedPosition", "J", "memberCardType", "K", "Ljava/util/List;", "", "", "Landroid/os/CountDownTimer;", "L", "Ljava/util/Map;", "countdownTimers", "M", "countdownActiveStates", "N", "a", "Member_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class e extends BaseQuickAdapter {
    public static final int O = 8;
    public static final int P = 1;
    public static final int Q = 2;
    public static final long R = 3600000;
    public static final long S = 1000;
    public static final int T = 12;

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private MemberPriceItem item;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private Function4<? super MemberPriceItem, ? super SkuPromotionItem, ? super Boolean, ? super View, Unit> clickCallback;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private Function1<? super SkuPromotionItem, Unit> countdownFinishCallback;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private int selectedPosition;

    /* JADX INFO: renamed from: J, reason: from kotlin metadata */
    private int memberCardType;

    /* JADX INFO: renamed from: K, reason: from kotlin metadata */
    private List<SkuPromotionItem> promotionItems;

    /* JADX INFO: renamed from: L, reason: from kotlin metadata */
    private final Map<String, CountDownTimer> countdownTimers;

    /* JADX INFO: renamed from: M, reason: from kotlin metadata */
    private final Map<String, Boolean> countdownActiveStates;

    public static final class b extends CountDownTimer {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ e f46417a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ TextView f46418b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ SkuPromotionItem f46419c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(long j11, e eVar, TextView textView, SkuPromotionItem skuPromotionItem) {
            super(j11, 1000L);
            this.f46417a = eVar;
            this.f46418b = textView;
            this.f46419c = skuPromotionItem;
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            this.f46417a.N1(0L, this.f46418b);
            this.f46417a.G1(this.f46419c);
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j11) {
            this.f46417a.N1(j11, this.f46418b);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(List<MemberPriceItem> dataList) {
        super(R$layout.item_sku_new, dataList);
        Intrinsics.h(dataList, "dataList");
        this.memberCardType = 1;
        this.countdownTimers = new LinkedHashMap();
        this.countdownActiveStates = new LinkedHashMap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F1(e eVar, BaseViewHolder baseViewHolder, SkuPromotionItem skuPromotionItem, String str, MemberPriceItem memberPriceItem, View view) {
        lg.a.C0828a.g(lg.a.f68839a, "Should buy now", false, 2, null);
        int i11 = eVar.selectedPosition;
        int adapterPosition = baseViewHolder.getAdapterPosition();
        eVar.selectedPosition = adapterPosition;
        if (i11 != adapterPosition) {
            eVar.notifyItemChanged(i11);
        }
        eVar.notifyItemChanged(eVar.selectedPosition);
        boolean z10 = skuPromotionItem != null;
        boolean z11 = (z10 && Intrinsics.c(eVar.countdownActiveStates.get(str), Boolean.TRUE)) ? false : true;
        Function4<? super MemberPriceItem, ? super SkuPromotionItem, ? super Boolean, ? super View, Unit> function4 = eVar.clickCallback;
        if (function4 != null) {
            if (!z10 || z11) {
                skuPromotionItem = null;
            }
            Boolean boolValueOf = Boolean.valueOf(z11);
            Intrinsics.e(view);
            function4.invoke(memberPriceItem, skuPromotionItem, boolValueOf, view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void G1(SkuPromotionItem promotionItem) {
        String skuId;
        SkuPromotionSku sku = promotionItem.getSku();
        if (sku == null || (skuId = sku.getSkuId()) == null) {
            skuId = "";
        }
        if (Intrinsics.c(this.countdownActiveStates.get(skuId), Boolean.TRUE)) {
            this.countdownActiveStates.put(skuId, Boolean.FALSE);
            Function1<? super SkuPromotionItem, Unit> function1 = this.countdownFinishCallback;
            if (function1 != null) {
                function1.invoke(promotionItem);
            }
        }
    }

    private final boolean H1(TextView tvCountdown, SkuPromotionItem promotionItem) {
        String skuId;
        Function1<? super SkuPromotionItem, Unit> function1;
        Integer countdownHours;
        SkuPromotionSku sku = promotionItem.getSku();
        if (sku == null || (skuId = sku.getSkuId()) == null) {
            skuId = "";
        }
        CountDownTimer countDownTimer = this.countdownTimers.get(skuId);
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        this.countdownTimers.remove(skuId);
        SkuPromotionContent promotionContent = promotionItem.getPromotionContent();
        int iF = (promotionContent == null || (countdownHours = promotionContent.getCountdownHours()) == null) ? 12 : RangesKt.f(countdownHours.intValue(), 0);
        long jA = m.f46701a.a();
        if (jA <= 0) {
            N1(0L, tvCountdown);
            G1(promotionItem);
            return false;
        }
        long jG = RangesKt.g((jA + (((long) iF) * 3600000)) - System.currentTimeMillis(), 0L);
        boolean zC = Intrinsics.c(this.countdownActiveStates.get(skuId), Boolean.TRUE);
        this.countdownActiveStates.put(skuId, Boolean.valueOf(jG > 0));
        N1(jG, tvCountdown);
        if (jG != 0) {
            this.countdownTimers.put(skuId, new b(jG, this, tvCountdown, promotionItem).start());
            return true;
        }
        if (zC && (function1 = this.countdownFinishCallback) != null) {
            function1.invoke(promotionItem);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void N1(long remainingMillis, TextView tvCountdown) {
        long j11 = (remainingMillis + 999) / 1000;
        long j12 = RangesKt.j(j11 / 3600, 99L);
        Context context = tvCountdown.getContext();
        int i11 = R$string.member_page_ends_in;
        String str = String.format("%02d:%02d:%02d", Arrays.copyOf(new Object[]{Long.valueOf(j12), Long.valueOf((j11 % 3600) / 60), Long.valueOf(j11 % 60)}, 3));
        Intrinsics.g(str, "format(...)");
        tvCountdown.setText(context.getString(i11, str));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: E1, reason: merged with bridge method [inline-methods] */
    public void F(final BaseViewHolder holder, final MemberPriceItem item) {
        SkuPromotionItem skuPromotionItem;
        String skuId;
        int i11;
        boolean z10;
        int i12;
        float fB;
        String str;
        SkuPromotionSku sku;
        SkuPromotionSku sku2;
        Object next;
        SkuPromotionSku sku3;
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        AppCompatTextView appCompatTextView = (AppCompatTextView) holder.getView(R$id.price);
        AppCompatTextView appCompatTextView2 = (AppCompatTextView) holder.getView(R$id.tv_per_month_price);
        LinearLayout linearLayout = (LinearLayout) holder.getView(R$id.hot_container);
        AppCompatTextView appCompatTextView3 = (AppCompatTextView) holder.getView(R$id.tv_count_down);
        List<SkuPromotionItem> list = this.promotionItems;
        if (list != null) {
            Iterator<T> it = list.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                } else {
                    next = it.next();
                    sku3 = ((SkuPromotionItem) next).getSku();
                }
            } while (!Intrinsics.c(sku3 != null ? sku3.getSkuId() : null, item.getSkuId()));
            skuPromotionItem = (SkuPromotionItem) next;
        } else {
            skuPromotionItem = null;
        }
        if (skuPromotionItem == null || (sku2 = skuPromotionItem.getSku()) == null || (skuId = sku2.getSkuId()) == null) {
            skuId = "";
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        String skuId2 = (skuPromotionItem == null || (sku = skuPromotionItem.getSku()) == null) ? null : sku.getSkuId();
        lg.a.C0828a.f(c0828a, "liyang", "matchedPromotion skuId -> " + skuId2 + ", current item skuId -> " + item.getSkuId(), false, 4, null);
        if (skuPromotionItem != null) {
            boolean zH1 = H1(appCompatTextView3, skuPromotionItem);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(item.getCurrencySymbol() + String.valueOf(zH1 ? item.getDiscountPrice() : item.getPrice()));
            spannableStringBuilder.setSpan(new AbsoluteSizeSpan(14, true), 0, 1, 33);
            appCompatTextView.setText(spannableStringBuilder);
            if (zH1) {
                str = item.getCurrencySymbol() + item.getPrice();
            } else {
                Number priceUnit = item.getPriceUnit();
                if (priceUnit == null) {
                    priceUnit = 0;
                }
                if (priceUnit.intValue() != 0) {
                    str = item.getCurrencySymbol() + n0.a(new BigDecimal(priceUnit.toString())).toPlainString() + " / Mon";
                } else {
                    appCompatTextView2.setVisibility(8);
                    str = "";
                }
            }
            appCompatTextView2.setText(str);
            appCompatTextView2.getPaint().setStrikeThruText(zH1);
            linearLayout.setVisibility(zH1 ? 0 : 8);
            if (zH1) {
                linearLayout.setBackground(getContext().getDrawable(this.memberCardType == 1 ? R$drawable.bg_member_basic_hot_icon : R$drawable.bg_member_pro_hot_icon));
                ((TextView) holder.getView(R$id.tv_hot_content)).setText(item.getDiscountRate() + "% OFF");
                appCompatTextView3.setVisibility(0);
                boolean z11 = this.memberCardType == 2;
                appCompatTextView3.setBackground(getContext().getDrawable(z11 ? R$drawable.bg_member_pro_count_down : R$drawable.bg_member_basic_count_down));
                appCompatTextView3.setTextColor(getContext().getColor(z11 ? R$color.member_pro_count_down_color : R$color.member_basic_count_down_color));
            } else {
                appCompatTextView3.setVisibility(8);
            }
            z10 = false;
        } else {
            SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(item.getCurrencySymbol() + item.getPrice());
            spannableStringBuilder2.setSpan(new AbsoluteSizeSpan(14, true), 0, 1, 33);
            appCompatTextView.setText(spannableStringBuilder2);
            Number priceUnit2 = item.getPriceUnit();
            if (priceUnit2 == null) {
                priceUnit2 = 0;
            }
            appCompatTextView2.getPaint().setStrikeThruText(false);
            if (priceUnit2.intValue() != 0) {
                String str2 = item.getCurrencySymbol() + n0.a(new BigDecimal(priceUnit2.toString())).toPlainString() + " / Mon";
                z10 = false;
                appCompatTextView2.setVisibility(0);
                appCompatTextView2.setText(str2);
                i11 = 8;
            } else {
                i11 = 8;
                z10 = false;
                appCompatTextView2.setVisibility(8);
            }
            linearLayout.setVisibility(i11);
            appCompatTextView3.setVisibility(i11);
        }
        androidx.core.widget.m.h(appCompatTextView, 11, 24, 1, 2);
        appCompatTextView.setTextColor(Utils.a().getColor(com.tn.lib.widget.R$color.white));
        appCompatTextView2.setTextColor(Utils.a().getColor(com.tn.lib.widget.R$color.white_60));
        AppCompatTextView appCompatTextView4 = (AppCompatTextView) holder.getView(R$id.title);
        appCompatTextView4.setText(item.getDescription());
        appCompatTextView4.setTextColor(Utils.a().getColor(com.tn.lib.widget.R$color.white_80));
        StrokeLinearLayout strokeLinearLayout = (StrokeLinearLayout) holder.getView(R$id.sku_new_root);
        if (holder.getAdapterPosition() == this.selectedPosition) {
            z10 = true;
        }
        strokeLinearLayout.setSelected(z10);
        if (strokeLinearLayout.isSelected()) {
            fB = dk.a.b(2);
            i12 = 1;
        } else {
            i12 = 1;
            fB = dk.a.b(1);
        }
        strokeLinearLayout.setStrokeWidth(fB);
        strokeLinearLayout.setBackgroundResource(this.memberCardType == i12 ? com.transsion.member.R$drawable.bg_sku_basic_item_selector : com.transsion.member.R$drawable.bg_sku_item_selector);
        final SkuPromotionItem skuPromotionItem2 = skuPromotionItem;
        final String str3 = skuId;
        strokeLinearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.member.adapter.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                e.F1(this.f46412a, holder, skuPromotionItem2, str3, item, view);
            }
        });
        int iB = linearLayout.getVisibility() == 0 ? dk.a.b(5) : dk.a.b(24);
        ViewGroup.LayoutParams layoutParams = appCompatTextView4.getLayoutParams();
        LinearLayout.LayoutParams layoutParams2 = layoutParams instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams : null;
        if (layoutParams2 != null) {
            layoutParams2.topMargin = iB;
            appCompatTextView4.setLayoutParams(layoutParams2);
        }
        this.item = item;
    }

    public final void I1(Function4<? super MemberPriceItem, ? super SkuPromotionItem, ? super Boolean, ? super View, Unit> clickCallback) {
        Intrinsics.h(clickCallback, "clickCallback");
        this.clickCallback = clickCallback;
    }

    public final void J1(Function1<? super SkuPromotionItem, Unit> callback) {
        Intrinsics.h(callback, "callback");
        this.countdownFinishCallback = callback;
    }

    public final void K1(int defaultSelectedPosition) {
        this.selectedPosition = defaultSelectedPosition;
    }

    public final void L1(int type) {
        this.memberCardType = type;
    }

    public final void M1(List<SkuPromotionItem> promotionItems) {
        this.promotionItems = promotionItems;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return getData().size();
    }
}
