package com.transsion.commercialization.dialog;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import com.blankj.utilcode.util.Utils;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Target;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.transsion.bean.HomePopupEntity;
import com.transsion.bean.HomePopupInfo;
import com.transsion.commercialization.R$id;
import com.transsion.commercialization.R$layout;
import com.transsion.commercialization.dialog.TrendingFloatView;
import com.transsion.commercializationapi.ICommonDialogApi;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import hj.i;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import lg.a;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001aB\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0004\u0010\bB#\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0019\u0010\u0014\u001a\u00020\u000f2\b\b\u0002\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\u000f2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016¢\u0006\u0004\b\u0018\u0010\u0019R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006\u001e"}, d2 = {"Lcom/transsion/commercialization/dialog/TrendingFloatView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "getClassTag", "()Ljava/lang/String;", "", "f", "()V", "", "isClose", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "(Z)V", "Lcom/transsion/bean/HomePopupEntity;", "homePopup", "showData", "(Lcom/transsion/bean/HomePopupEntity;)V", "a", "Lcom/transsion/bean/HomePopupEntity;", "mHomePopup", "Companion", "Commercialization_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TrendingFloatView extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private HomePopupEntity mHomePopup;

    public static final class b implements RequestListener {
        b() {
        }

        @Override // com.bumptech.glide.request.RequestListener
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean onResourceReady(Drawable p11, Object p12, Target target, DataSource p13, boolean z10) {
            Intrinsics.h(p11, "p0");
            Intrinsics.h(p12, "p1");
            Intrinsics.h(p13, "p3");
            a.C0828a.f(a.f68839a, "zxb_popup", TrendingFloatView.this.getClassTag() + " --> init() --> onResourceReady() --> 图片加载成功", false, 4, null);
            TrendingFloatView.this.f();
            TrendingFloatView.this.setVisibility(0);
            return false;
        }

        @Override // com.bumptech.glide.request.RequestListener
        public boolean onLoadFailed(GlideException glideException, Object obj, Target p11, boolean z10) {
            Intrinsics.h(p11, "p2");
            return true;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TrendingFloatView(Context context) {
        super(context);
        Intrinsics.h(context, "context");
        addView(LayoutInflater.from(getContext()).inflate(R$layout.widget_float_view_layout, (ViewGroup) this, false), -2, -2);
        setVisibility(8);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TrendingFloatView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.h(context, "context");
        addView(LayoutInflater.from(getContext()).inflate(R$layout.widget_float_view_layout, (ViewGroup) this, false), -2, -2);
        setVisibility(8);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TrendingFloatView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        addView(LayoutInflater.from(getContext()).inflate(R$layout.widget_float_view_layout, (ViewGroup) this, false), -2, -2);
        setVisibility(8);
    }

    private final void d(boolean isClose) {
        HomePopupInfo widget;
        HomePopupInfo widget2;
        HomePopupInfo widget3;
        HashMap map = new HashMap();
        HomePopupEntity homePopupEntity = this.mHomePopup;
        String name = null;
        map.put("widget_id", String.valueOf((homePopupEntity == null || (widget3 = homePopupEntity.getWidget()) == null) ? null : Long.valueOf(widget3.getId())));
        HomePopupEntity homePopupEntity2 = this.mHomePopup;
        map.put("widget_type", String.valueOf((homePopupEntity2 == null || (widget2 = homePopupEntity2.getWidget()) == null) ? null : Integer.valueOf(widget2.getType())));
        HomePopupEntity homePopupEntity3 = this.mHomePopup;
        if (homePopupEntity3 != null && (widget = homePopupEntity3.getWidget()) != null) {
            name = widget.getName();
        }
        map.put("widget_name", String.valueOf(name));
        if (isClose) {
            map.put("widget_close", "close");
        }
        i.f64505a.p("home_common_widget", map);
    }

    static /* synthetic */ void e(TrendingFloatView trendingFloatView, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = false;
        }
        trendingFloatView.d(z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f() {
        HomePopupInfo widget;
        HomePopupInfo widget2;
        HomePopupInfo widget3;
        HashMap map = new HashMap();
        HomePopupEntity homePopupEntity = this.mHomePopup;
        String name = null;
        map.put("widget_id", String.valueOf((homePopupEntity == null || (widget3 = homePopupEntity.getWidget()) == null) ? null : Long.valueOf(widget3.getId())));
        HomePopupEntity homePopupEntity2 = this.mHomePopup;
        map.put("widget_type", String.valueOf((homePopupEntity2 == null || (widget2 = homePopupEntity2.getWidget()) == null) ? null : Integer.valueOf(widget2.getType())));
        HomePopupEntity homePopupEntity3 = this.mHomePopup;
        if (homePopupEntity3 != null && (widget = homePopupEntity3.getWidget()) != null) {
            name = widget.getName();
        }
        map.put("widget_name", String.valueOf(name));
        i.f64505a.D("home_common_widget", map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(final TrendingFloatView trendingFloatView, final HomePopupEntity homePopupEntity) {
        AppCompatImageView appCompatImageView = (AppCompatImageView) trendingFloatView.findViewById(R$id.ivClose);
        appCompatImageView.setVisibility(0);
        appCompatImageView.setOnClickListener(new View.OnClickListener() { // from class: lk.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TrendingFloatView.h(this.f68965a, homePopupEntity, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getClassTag() {
        String simpleName = TrendingFloatView.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(TrendingFloatView trendingFloatView, HomePopupEntity homePopupEntity, View view) {
        trendingFloatView.setVisibility(8);
        ICommonDialogApi iCommonDialogApi = (ICommonDialogApi) TheRouter.d(ICommonDialogApi.class, new Object[0]);
        if (iCommonDialogApi != null) {
            iCommonDialogApi.a(homePopupEntity);
        }
        trendingFloatView.d(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(HomePopupEntity homePopupEntity, TrendingFloatView trendingFloatView, View view) {
        String externalUrl;
        HomePopupInfo widget;
        String innerUrl;
        HomePopupInfo widget2;
        String innerUrl2;
        HomePopupInfo widget3;
        com.transsion.ad.strategy.b bVar = com.transsion.ad.strategy.b.f42227a;
        if (homePopupEntity == null || (widget3 = homePopupEntity.getWidget()) == null || (externalUrl = widget3.getExternalUrl()) == null) {
            externalUrl = "";
        }
        if (bVar.g(externalUrl)) {
            return;
        }
        if (homePopupEntity == null || (widget2 = homePopupEntity.getWidget()) == null || (innerUrl2 = widget2.getInnerUrl()) == null || StringsKt.W(innerUrl2, "oneroom://com.community.oneroom?type=", false, 2, null)) {
            zj.b bVar2 = zj.b.f79427a;
            Context context = trendingFloatView.getContext();
            Intrinsics.g(context, "getContext(...)");
            zj.b.d(bVar2, context, (homePopupEntity == null || (widget = homePopupEntity.getWidget()) == null || (innerUrl = widget.getInnerUrl()) == null) ? "" : innerUrl, null, 4, null);
        } else {
            com.transsion.ad.strategy.b.b(bVar, homePopupEntity.getWidget().getExternalUrl(), homePopupEntity.getWidget().getInnerUrl(), null, 4, null);
        }
        e(trendingFloatView, false, 1, null);
    }

    public final void showData(final HomePopupEntity homePopup) {
        HomePopupInfo widget;
        HomePopupInfo widget2;
        HomePopupInfo widget3;
        HomePopupInfo widget4;
        HomePopupInfo widget5;
        String img = null;
        if (TextUtils.isEmpty((homePopup == null || (widget5 = homePopup.getWidget()) == null) ? null : widget5.getImg())) {
            setVisibility(8);
            return;
        }
        HomePopupEntity homePopupEntity = this.mHomePopup;
        if (TextUtils.equals((homePopupEntity == null || (widget4 = homePopupEntity.getWidget()) == null) ? null : widget4.getImg(), (homePopup == null || (widget3 = homePopup.getWidget()) == null) ? null : widget3.getImg())) {
            return;
        }
        this.mHomePopup = homePopup;
        RequestManager requestManagerWith = Glide.with(Utils.a());
        if (homePopup != null && (widget2 = homePopup.getWidget()) != null) {
            img = widget2.getImg();
        }
        requestManagerWith.load2(img).listener(new b()).into((ImageView) findViewById(R$id.f43735iv));
        postDelayed(new Runnable() { // from class: lk.h
            @Override // java.lang.Runnable
            public final void run() {
                TrendingFloatView.g(this.f68961a, homePopup);
            }
        }, ((long) ((homePopup == null || (widget = homePopup.getWidget()) == null) ? 0 : widget.getCloseDelay())) * 1000);
        setOnClickListener(new View.OnClickListener() { // from class: lk.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TrendingFloatView.i(homePopup, this, view);
            }
        });
    }
}
