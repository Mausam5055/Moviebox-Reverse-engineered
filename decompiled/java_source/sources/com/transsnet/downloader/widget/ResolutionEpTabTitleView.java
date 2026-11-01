package com.transsnet.downloader.widget;

import android.content.Context;
import com.cloud.tmc.integration.event.EventConstants;
import com.tn.lib.widget.R$color;
import com.transsnet.downloader.R$drawable;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.titles.SimplePagerTitleView;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0010\r\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u001f\u0010\r\u001a\u00020\n2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\r\u0010\fJ\u000f\u0010\u000e\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0013\u0010\u0012J\u0019\u0010\u0016\u001a\u00020\n2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u0019\u0010\u0018\u001a\u00020\n2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016¢\u0006\u0004\b\u0018\u0010\u0017J!\u0010\u001b\u001a\u00020\n2\u0010\u0010\u001a\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0014\u0018\u00010\u0019H\u0016¢\u0006\u0004\b\u001b\u0010\u001cR\u0014\u0010 \u001a\u00020\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001f¨\u0006!"}, d2 = {"Lcom/transsnet/downloader/widget/ResolutionEpTabTitleView;", "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;", "Ltj/a;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "", "index", "totalCount", "", "onSelected", "(II)V", "onDeselected", "changeLocal", "()V", "resId", "setTextById", "(I)V", "setHintById", "", "srt", "setHintWithString", "(Ljava/lang/CharSequence;)V", "setTextWithString", "Lkotlin/Function0;", EventConstants.KEY_ACTION, "setTextAction", "(Lkotlin/jvm/functions/Function0;)V", "Ltj/c;", "c", "Ltj/c;", "textDelegate", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ResolutionEpTabTitleView extends SimplePagerTitleView implements tj.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final tj.c textDelegate;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ResolutionEpTabTitleView(Context context) {
        super(context);
        Intrinsics.h(context, "context");
        int iA = com.blankj.utilcode.util.a0.a(8.0f);
        setSelectedColor(androidx.core.content.b.getColor(context, R$color.main));
        setNormalColor(androidx.core.content.b.getColor(context, R$color.text_02));
        setTextSize(16.0f);
        setGravity(17);
        setTypeface(jg.a.c(context));
        setPadding(iA, 0, iA, 0);
        setBackgroundResource(R$drawable.selector_download_resolution_bg);
        this.textDelegate = new tj.c(this);
    }

    @Override // tj.a
    public void changeLocal() {
        this.textDelegate.changeLocal();
    }

    @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.titles.SimplePagerTitleView, j00.d
    public void onDeselected(int index, int totalCount) {
        super.onDeselected(index, totalCount);
        setBackgroundColor(0);
    }

    @Override // net.lucode.hackware.magicindicator.buildins.commonnavigator.titles.SimplePagerTitleView, j00.d
    public void onSelected(int index, int totalCount) {
        super.onSelected(index, totalCount);
        setBackgroundResource(R$drawable.bg_res_ep_tab);
    }

    public void setHintById(int resId) {
        this.textDelegate.b(resId);
    }

    public void setHintWithString(CharSequence srt) {
        this.textDelegate.c(srt);
    }

    public void setLocalChangeListener(Function0<Unit> function0) {
        tj.a.C0925a.a(this, function0);
    }

    public void setTextAction(Function0<? extends CharSequence> action) {
        this.textDelegate.e(action);
    }

    public void setTextById(int resId) {
        this.textDelegate.f(resId);
    }

    public void setTextWithString(CharSequence srt) {
        this.textDelegate.g(srt);
    }
}
