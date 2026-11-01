package com.transsion.postdetail.shorttv.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.blankj.utilcode.util.a0;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.moviedetailapi.bean.PlayListDeepLink;
import com.transsion.postdetail.R$layout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import so.h0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u00132\u00020\u0001:\u0001\u0010B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tB\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\nB\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\b\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\r\u0010\u000eR\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0014"}, d2 = {"Lcom/transsion/postdetail/shorttv/widget/ShortTvCategoryView;", "Landroidx/appcompat/widget/LinearLayoutCompat;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "(Landroid/content/Context;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "g", "()V", "Lso/h0;", "a", "Lso/h0;", "viewBinding", "Companion", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ShortTvCategoryView extends LinearLayoutCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final h0 viewBinding;

    public static final class b implements ViewTreeObserver.OnGlobalLayoutListener {
        b() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            ShortTvCategoryView.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            int iMax = Math.max(ShortTvCategoryView.this.viewBinding.f75542b.getWidth(), a0.a(48.0f));
            lg.a.C0828a c0828a = lg.a.f68839a;
            lg.a.C0828a.f(c0828a, "ShortTVDiscoverCategoryView", "渲染结束获取的宽度为 " + iMax + ", 原始宽度为 " + ShortTvCategoryView.this.viewBinding.f75542b.getWidth(), false, 4, null);
            int iF = (((com.transsion.core.utils.e.f() - a0.a(32.0f)) - iMax) - a0.a(16.0f)) / 2;
            lg.a.C0828a.f(c0828a, "ShortTVDiscoverCategoryView", "计算得出, ivAll.width = " + iMax + ", viewWidth = " + iF, false, 4, null);
            AppCompatTextView appCompatTextView = ShortTvCategoryView.this.viewBinding.f75544d;
            ViewGroup.LayoutParams layoutParams = appCompatTextView.getLayoutParams();
            if (layoutParams != null) {
                layoutParams.width = iF;
            }
            appCompatTextView.setLayoutParams(layoutParams);
            AppCompatTextView appCompatTextView2 = ShortTvCategoryView.this.viewBinding.f75543c;
            ViewGroup.LayoutParams layoutParams2 = appCompatTextView2.getLayoutParams();
            if (layoutParams2 != null) {
                layoutParams2.width = iF;
            }
            appCompatTextView2.setLayoutParams(layoutParams2);
            AppCompatTextView appCompatTextView3 = ShortTvCategoryView.this.viewBinding.f75542b;
            ViewGroup.LayoutParams layoutParams3 = appCompatTextView3.getLayoutParams();
            if (layoutParams3 != null) {
                layoutParams3.width = iMax;
            }
            appCompatTextView3.setLayoutParams(layoutParams3);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShortTvCategoryView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShortTvCategoryView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortTvCategoryView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        View.inflate(context, R$layout.layout_short_tv_category, this);
        h0 h0VarA = h0.a(this);
        Intrinsics.g(h0VarA, "bind(...)");
        this.viewBinding = h0VarA;
        g();
    }

    private final void g() {
        getViewTreeObserver().addOnGlobalLayoutListener(new b());
        this.viewBinding.f75544d.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.shorttv.widget.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShortTvCategoryView.h(this.f49294a, view);
            }
        });
        this.viewBinding.f75543c.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.shorttv.widget.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShortTvCategoryView.i(this.f49295a, view);
            }
        });
        this.viewBinding.f75542b.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.shorttv.widget.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShortTvCategoryView.j(this.f49296a, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(ShortTvCategoryView shortTvCategoryView, View view) {
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, "ShortTVDiscoverCategoryView", "click Latest", false, 4, null);
        PlayListDeepLink playListDeepLinkA = PlayListDeepLink.INSTANCE.a("oneroom://com.community.oneroom?type=/home/playlist&category=TVSHOW&recType=OPT&label=fresh-releases-list");
        if (playListDeepLinkA != null) {
            Navigator.x(TheRouter.c("/home/playlist").K("label", playListDeepLinkA.getLabel()).K("category", playListDeepLinkA.getCategory()).K("recType", playListDeepLinkA.getRecType()).K("topIds", null), shortTvCategoryView.getContext(), null, 2, null);
        } else {
            lg.a.C0828a.m(c0828a, "Invalid deeplink for oneroom://com.community.oneroom?type=/home/playlist&category=TVSHOW&recType=OPT&label=fresh-releases-list", false, 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(ShortTvCategoryView shortTvCategoryView, View view) {
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, "ShortTVDiscoverCategoryView", "click Hottest", false, 4, null);
        PlayListDeepLink playListDeepLinkA = PlayListDeepLink.INSTANCE.a("oneroom://com.community.oneroom?type=/home/playlist&category=TVSHOW&recType=OPT&label=must-watch-list");
        if (playListDeepLinkA != null) {
            Navigator.x(TheRouter.c("/home/playlist").K("label", playListDeepLinkA.getLabel()).K("category", playListDeepLinkA.getCategory()).K("recType", playListDeepLinkA.getRecType()).K("topIds", null), shortTvCategoryView.getContext(), null, 2, null);
        } else {
            lg.a.C0828a.m(c0828a, "Invalid deeplink for oneroom://com.community.oneroom?type=/home/playlist&category=TVSHOW&recType=OPT&label=must-watch-list", false, 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(ShortTvCategoryView shortTvCategoryView, View view) {
        lg.a.C0828a.f(lg.a.f68839a, "ShortTVDiscoverCategoryView", "click All", false, 4, null);
        Navigator.x(TheRouter.c("/home/movieFilter").F("tabId", 7).K("tabCode", "ShortTV").z("showViewPager", false), shortTvCategoryView.getContext(), null, 2, null);
    }
}
