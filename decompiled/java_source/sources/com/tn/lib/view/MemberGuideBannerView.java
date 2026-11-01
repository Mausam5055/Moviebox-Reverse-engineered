package com.tn.lib.view;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.bumptech.glide.Glide;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.tn.lib.widget.R$anim;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$drawable;
import com.tn.lib.widget.R$font;
import com.tn.lib.widget.R$mipmap;
import com.tn.lib.widget.R$string;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\t*\u0001E\u0018\u0000 V2\u00020\u0001:\u00012B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\nH\u0002¢\u0006\u0004\b\r\u0010\fJ\u000f\u0010\u000e\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000e\u0010\fJ\u0019\u0010\u0011\u001a\u00020\n2\b\b\u0002\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0013\u0010\fJ\u000f\u0010\u0014\u001a\u00020\nH\u0014¢\u0006\u0004\b\u0014\u0010\fJ\u000f\u0010\u0015\u001a\u00020\nH\u0014¢\u0006\u0004\b\u0015\u0010\fJ\u0017\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0017\u0010\u0012J]\u0010!\u001a\u00020\u00002\b\u0010\u0019\u001a\u0004\u0018\u00010\u00182\b\u0010\u001a\u001a\u0004\u0018\u00010\u00182\b\u0010\u001b\u001a\u0004\u0018\u00010\u00182\b\u0010\u001c\u001a\u0004\u0018\u00010\u00182\b\b\u0002\u0010\u001d\u001a\u00020\u000f2\b\u0010\u001e\u001a\u0004\u0018\u00010\u000f2\b\u0010\u001f\u001a\u0004\u0018\u00010\u00062\b\u0010 \u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b!\u0010\"J\u0015\u0010%\u001a\u00020\u00002\u0006\u0010$\u001a\u00020#¢\u0006\u0004\b%\u0010&J!\u0010(\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u000f2\b\b\u0002\u0010'\u001a\u00020\u000fH\u0007¢\u0006\u0004\b(\u0010)J\u0015\u0010,\u001a\u00020\u00002\u0006\u0010+\u001a\u00020*¢\u0006\u0004\b,\u0010-J\u0015\u0010/\u001a\u00020\u00002\u0006\u0010.\u001a\u00020\u0018¢\u0006\u0004\b/\u00100R\u0014\u00104\u001a\u0002018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u00103R\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R\u0016\u0010 \u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u00108R\u0016\u00109\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u00108R\u0016\u0010;\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u00108R\u0016\u0010<\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u00108R\u0016\u0010>\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u00108R\u0016\u0010A\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@R\u0014\u0010D\u001a\u00020B8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010CR\u0014\u0010H\u001a\u00020E8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bF\u0010GR\u0016\u0010\u0019\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010IR\u0016\u0010\u001a\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010IR\u0016\u0010\u001b\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010IR\u0016\u0010\u001c\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010IR\u0016\u0010M\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010@R*\u0010U\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010N8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bO\u0010P\u001a\u0004\bQ\u0010R\"\u0004\bS\u0010T¨\u0006W"}, d2 = {"Lcom/tn/lib/view/MemberGuideBannerView;", "Landroid/widget/LinearLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", CampaignEx.JSON_KEY_AD_K, "()V", "l", "f", "", "animate", "i", "(Z)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "onAttachedToWindow", "onDetachedFromWindow", "isVisible", "onVisibilityAggregated", "", "pageName", "sceneId", "traceId", "subjectId", "isRefresh", "isActive", "daysLeft", "isProMember", "setMemberInfo", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)Lcom/tn/lib/view/MemberGuideBannerView;", "Landroid/view/View$OnClickListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setBtnClickListener", "(Landroid/view/View$OnClickListener;)Lcom/tn/lib/view/MemberGuideBannerView;", "overlapMemberContent", "setZeroTreasureVisible", "(ZZ)Lcom/tn/lib/view/MemberGuideBannerView;", "", "radius", "setRadius", "(F)Lcom/tn/lib/view/MemberGuideBannerView;", "iconUrl", "setZeroTreasureIcon", "(Ljava/lang/String;)Lcom/tn/lib/view/MemberGuideBannerView;", "Lth/c;", "a", "Lth/c;", "binding", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/Integer;", "c", "Z", "hasSetMemberInfo", "e", "isAggregatedVisible", "hasBeenAggregatedVisible", "g", "shouldRotateBenefitMessages", "h", "I", "benefitMessageIndex", "", "[I", "benefitMessageResIds", "com/tn/lib/view/MemberGuideBannerView$benefitMessageCarouselRunnable$1", "j", "Lcom/tn/lib/view/MemberGuideBannerView$benefitMessageCarouselRunnable$1;", "benefitMessageCarouselRunnable", "Ljava/lang/String;", "m", "n", "o", "remindType", "Lkotlin/Function0;", TtmlNode.TAG_P, "Lkotlin/jvm/functions/Function0;", "getRefreshMemberInfo", "()Lkotlin/jvm/functions/Function0;", "setRefreshMemberInfo", "(Lkotlin/jvm/functions/Function0;)V", "refreshMemberInfo", CampaignEx.JSON_KEY_AD_Q, "UI_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class MemberGuideBannerView extends LinearLayout {

    @Deprecated
    public static final long BENEFIT_MESSAGE_CAROUSEL_INTERVAL_MS = 2000;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final a f40962q = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final th.c binding;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private Integer daysLeft;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private boolean isProMember;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private boolean hasSetMemberInfo;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private boolean isAggregatedVisible;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private boolean hasBeenAggregatedVisible;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private boolean shouldRotateBenefitMessages;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private int benefitMessageIndex;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private final int[] benefitMessageResIds;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private final MemberGuideBannerView$benefitMessageCarouselRunnable$1 benefitMessageCarouselRunnable;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private String pageName;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private String sceneId;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private String traceId;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private String subjectId;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private int remindType;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private Function0 refreshMemberInfo;

    private static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public MemberGuideBannerView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public MemberGuideBannerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r2v5, types: [com.tn.lib.view.MemberGuideBannerView$benefitMessageCarouselRunnable$1] */
    @JvmOverloads
    public MemberGuideBannerView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        th.c cVarC = th.c.c(LayoutInflater.from(context), this, true);
        Intrinsics.g(cVarC, "inflate(...)");
        this.binding = cVarC;
        d();
        this.benefitMessageResIds = new int[]{R$string.member_banner_share_with_friends_family, R$string.member_banner_sign_in_on_tv_web_mobile};
        this.benefitMessageCarouselRunnable = new Runnable() { // from class: com.tn.lib.view.MemberGuideBannerView$benefitMessageCarouselRunnable$1
            @Override // java.lang.Runnable
            public void run() {
                if (this.this$0.shouldRotateBenefitMessages && this.this$0.isAttachedToWindow()) {
                    MemberGuideBannerView memberGuideBannerView = this.this$0;
                    memberGuideBannerView.benefitMessageIndex = (memberGuideBannerView.benefitMessageIndex + 1) % this.this$0.benefitMessageResIds.length;
                    MemberGuideBannerView.j(this.this$0, false, 1, null);
                    this.this$0.postDelayed(this, 2000L);
                }
            }
        };
        this.pageName = "";
        this.sceneId = "";
        this.traceId = "";
        this.subjectId = "";
    }

    public /* synthetic */ MemberGuideBannerView(Context context, AttributeSet attributeSet, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i11);
    }

    private final void d() {
        this.binding.f76226f.setFactory(new ViewSwitcher.ViewFactory() { // from class: com.tn.lib.view.m
            @Override // android.widget.ViewSwitcher.ViewFactory
            public final View makeView() {
                return MemberGuideBannerView.e(this.f41370a);
            }
        });
        this.binding.f76226f.setInAnimation(AnimationUtils.loadAnimation(getContext(), R$anim.member_benefit_text_in));
        this.binding.f76226f.setOutAnimation(AnimationUtils.loadAnimation(getContext(), R$anim.member_benefit_text_out));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final View e(MemberGuideBannerView memberGuideBannerView) {
        TextView textView = new TextView(memberGuideBannerView.getContext());
        textView.setLayoutParams(new FrameLayout.LayoutParams(-1, -2));
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setMaxLines(2);
        textView.setTypeface(y0.h.g(textView.getContext(), R$font.mulish_regular));
        textView.setTextColor(androidx.core.content.b.getColor(textView.getContext(), R$color.yellow_dark_10));
        textView.setTextSize(2, 11.0f);
        return textView;
    }

    private final void f() {
        removeCallbacks(this.benefitMessageCarouselRunnable);
        if (this.shouldRotateBenefitMessages && isAttachedToWindow()) {
            postDelayed(this.benefitMessageCarouselRunnable, 2000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(MemberGuideBannerView memberGuideBannerView, View.OnClickListener onClickListener, View view) {
        com.transsion.baselib.helper.f.f43269a.f(memberGuideBannerView.pageName, memberGuideBannerView.sceneId, memberGuideBannerView.traceId, memberGuideBannerView.subjectId, memberGuideBannerView.remindType);
        onClickListener.onClick(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(MemberGuideBannerView memberGuideBannerView, float f11) {
        memberGuideBannerView.binding.f76224d.setRadius(f11);
    }

    private final void i(boolean animate) {
        String string = getContext().getString(this.benefitMessageResIds[this.benefitMessageIndex]);
        Intrinsics.g(string, "getString(...)");
        if (animate) {
            this.binding.f76226f.setText(string);
        } else {
            this.binding.f76226f.setCurrentText(string);
        }
    }

    static /* synthetic */ void j(MemberGuideBannerView memberGuideBannerView, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = true;
        }
        memberGuideBannerView.i(z10);
    }

    private final void k() {
        this.shouldRotateBenefitMessages = true;
        this.benefitMessageIndex = 0;
        i(false);
        f();
    }

    private final void l() {
        this.shouldRotateBenefitMessages = false;
        removeCallbacks(this.benefitMessageCarouselRunnable);
    }

    public static /* synthetic */ MemberGuideBannerView setZeroTreasureVisible$default(MemberGuideBannerView memberGuideBannerView, boolean z10, boolean z11, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z11 = true;
        }
        return memberGuideBannerView.setZeroTreasureVisible(z10, z11);
    }

    public final Function0<Unit> getRefreshMemberInfo() {
        return this.refreshMemberInfo;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        f();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.benefitMessageCarouselRunnable);
        this.isAggregatedVisible = false;
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onVisibilityAggregated(boolean isVisible) {
        Function0 function0;
        super.onVisibilityAggregated(isVisible);
        if (this.isAggregatedVisible == isVisible) {
            return;
        }
        this.isAggregatedVisible = isVisible;
        if (isVisible) {
            if (this.hasBeenAggregatedVisible && (function0 = this.refreshMemberInfo) != null) {
                function0.invoke();
            }
            this.hasBeenAggregatedVisible = true;
        }
    }

    public final MemberGuideBannerView setBtnClickListener(final View.OnClickListener listener) {
        Intrinsics.h(listener, "listener");
        this.binding.f76224d.setOnClickListener(new View.OnClickListener() { // from class: com.tn.lib.view.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MemberGuideBannerView.g(this.f41371a, listener, view);
            }
        });
        return this;
    }

    public final MemberGuideBannerView setMemberInfo(String pageName, String sceneId, String traceId, String subjectId, boolean isRefresh, Boolean isActive, Integer daysLeft, Boolean isProMember) {
        this.pageName = pageName == null ? "" : pageName;
        this.sceneId = sceneId == null ? "" : sceneId;
        this.traceId = traceId == null ? "" : traceId;
        this.subjectId = subjectId == null ? "" : subjectId;
        this.daysLeft = daysLeft;
        this.isProMember = isProMember != null ? isProMember.booleanValue() : false;
        this.hasSetMemberInfo = true;
        l();
        if (Intrinsics.c(isActive, Boolean.TRUE)) {
            if ((daysLeft != null ? daysLeft.intValue() : 0) <= 7) {
                this.binding.f76227g.setText(getContext().getString(R$string.member_banner_remind_day, daysLeft));
                this.binding.f76226f.setCurrentText(getContext().getString(R$string.member_banner_vip_content));
                this.binding.f76225e.setText(getContext().getString(R$string.member_banner_vip_btn_content));
                this.binding.f76222b.setImageResource(R$mipmap.icon_member_guider_banner_1);
                this.remindType = 3;
            } else if (Intrinsics.c(isProMember, Boolean.FALSE)) {
                this.binding.f76227g.setText(getContext().getString(R$string.member_banner_upgrade_to_premium_pro));
                k();
                this.binding.f76225e.setText(getContext().getString(R$string.me_vip_upgrade));
                this.binding.f76222b.setImageResource(R$mipmap.icon_member_guider_banner_2);
                this.remindType = 4;
            } else {
                setVisibility(8);
                this.remindType = -1;
            }
        } else {
            this.remindType = 0;
            this.binding.f76227g.setText(getContext().getString(R$string.member_banner_unlock_title));
            this.binding.f76226f.setCurrentText(getContext().getString(R$string.member_banner_unlock_content));
            this.binding.f76225e.setText(getContext().getString(R$string.member_banner_unlock));
            this.binding.f76222b.setImageResource(R$mipmap.icon_member_guider_banner_1);
        }
        AppCompatImageView iconBg = this.binding.f76222b;
        Intrinsics.g(iconBg, "iconBg");
        ViewGroup.LayoutParams layoutParams = iconBg.getLayoutParams();
        if (layoutParams == null) {
            throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        }
        ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
        ((ViewGroup.MarginLayoutParams) bVar).width = gk.b.a(this.remindType == 4 ? 62 : 52);
        iconBg.setLayoutParams(bVar);
        this.binding.f76222b.requestLayout();
        int i11 = this.remindType;
        if (i11 >= 0 && !isRefresh) {
            com.transsion.baselib.helper.f.f43269a.h(pageName == null ? "" : pageName, sceneId == null ? "" : sceneId, traceId == null ? "" : traceId, subjectId, i11);
        }
        return this;
    }

    public final MemberGuideBannerView setRadius(final float radius) {
        this.binding.getRoot().post(new Runnable() { // from class: com.tn.lib.view.o
            @Override // java.lang.Runnable
            public final void run() {
                MemberGuideBannerView.h(this.f41373a, radius);
            }
        });
        return this;
    }

    public final void setRefreshMemberInfo(Function0<Unit> function0) {
        this.refreshMemberInfo = function0;
    }

    public final MemberGuideBannerView setZeroTreasureIcon(String iconUrl) {
        Intrinsics.h(iconUrl, "iconUrl");
        Glide.with(this.binding.f76223c).load2(iconUrl).placeholder(R$drawable.bg_zero_treasure).error(R$drawable.bg_zero_treasure).into(this.binding.f76223c);
        return this;
    }

    @JvmOverloads
    public final MemberGuideBannerView setZeroTreasureVisible(boolean z10) {
        return setZeroTreasureVisible$default(this, z10, false, 2, null);
    }

    @JvmOverloads
    public final MemberGuideBannerView setZeroTreasureVisible(boolean isVisible, boolean overlapMemberContent) {
        AppCompatImageView ivZeroTreasure = this.binding.f76223c;
        Intrinsics.g(ivZeroTreasure, "ivZeroTreasure");
        int iA = 0;
        ivZeroTreasure.setVisibility(isVisible ? 0 : 8);
        CardView cardView = this.binding.f76224d;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        if (isVisible && overlapMemberContent) {
            iA = gk.b.a(-15);
        }
        layoutParams.topMargin = iA;
        cardView.setLayoutParams(layoutParams);
        this.binding.f76224d.setRadius(gk.b.a(6));
        return this;
    }
}
