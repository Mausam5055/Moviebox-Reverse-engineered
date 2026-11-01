package com.transsion.shorttv.ui.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.shorttv.R$layout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u00132\u00020\u0001:\u0001\u0010B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tB\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\nB\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\b\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\r\u0010\u000eR\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0014"}, d2 = {"Lcom/transsion/shorttv/ui/widget/ShortTvCategoryView;", "Landroidx/appcompat/widget/LinearLayoutCompat;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "(Landroid/content/Context;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "g", "()V", "Lms/g0;", "a", "Lms/g0;", "viewBinding", "Companion", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ShortTvCategoryView extends LinearLayoutCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final ms.g0 viewBinding;

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
        View.inflate(context, R$layout.short_tv_layout_category, this);
        ms.g0 g0VarA = ms.g0.a(this);
        Intrinsics.g(g0VarA, "bind(...)");
        this.viewBinding = g0VarA;
        g();
    }

    private final void g() {
        this.viewBinding.f69783d.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.shorttv.ui.widget.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShortTvCategoryView.h(this.f53586a, view);
            }
        });
        this.viewBinding.f69782c.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.shorttv.ui.widget.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShortTvCategoryView.i(this.f53592a, view);
            }
        });
        this.viewBinding.f69781b.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.shorttv.ui.widget.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShortTvCategoryView.j(this.f53595a, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(ShortTvCategoryView shortTvCategoryView, View view) {
        lg.a.C0828a.f(lg.a.f68839a, "ShortTVDiscoverCategoryView", "click Latest", false, 4, null);
        Navigator.x(TheRouter.c("/home/playlist").K("label", "fresh-releases-list").K("category", "TVSHOW").K("recType", "OPT").K("topIds", null), shortTvCategoryView.getContext(), null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(ShortTvCategoryView shortTvCategoryView, View view) {
        lg.a.C0828a.f(lg.a.f68839a, "ShortTVDiscoverCategoryView", "click Hottest", false, 4, null);
        Navigator.x(TheRouter.c("/home/playlist").K("label", "must-watch-list").K("category", "TVSHOW").K("recType", "OPT").K("topIds", null), shortTvCategoryView.getContext(), null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(ShortTvCategoryView shortTvCategoryView, View view) {
        lg.a.C0828a.f(lg.a.f68839a, "ShortTVDiscoverCategoryView", "click All", false, 4, null);
        Navigator.x(TheRouter.c("/home/movieFilter").F("tabId", 7).K("tabCode", "ShortTV").z("showViewPager", false), shortTvCategoryView.getContext(), null, 2, null);
    }
}
