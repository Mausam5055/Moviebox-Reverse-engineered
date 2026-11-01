package com.transsnet.downloader.manager;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class u {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f59503c = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f59504a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f59505b;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public u() {
        this.f59504a = true;
        this.f59504a = ti.b.f76253a.c();
    }

    private final View c(Context context) {
        View viewInflate = LayoutInflater.from(context).inflate(R$layout.layout_downloading_play_guide, (ViewGroup) null);
        Intrinsics.g(viewInflate, "inflate(...)");
        return viewInflate;
    }

    private final void e(FrameLayout frameLayout, View view) {
        int iA = a0.a(106.0f);
        int iA2 = a0.a(16.0f);
        Context context = view.getContext();
        Intrinsics.f(context, "null cannot be cast to non-null type android.app.Activity");
        final View viewC = c((Activity) context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(a0.a(230.0f), -2);
        layoutParams.topMargin = iA;
        layoutParams.setMarginStart(iA2);
        frameLayout.addView(viewC, layoutParams);
        viewC.postDelayed(new Runnable() { // from class: com.transsnet.downloader.manager.s
            @Override // java.lang.Runnable
            public final void run() {
                u.f(viewC);
            }
        }, 3000L);
        viewC.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.manager.t
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                u.g(viewC, view2);
            }
        });
        this.f59504a = false;
        ti.b.f76253a.d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(View view) {
        if (view.getParent() != null) {
            ViewParent parent = view.getParent();
            Intrinsics.f(parent, "null cannot be cast to non-null type android.view.ViewGroup");
            ((ViewGroup) parent).removeView(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(View view, View view2) {
        if (view.getParent() != null) {
            ViewParent parent = view.getParent();
            Intrinsics.f(parent, "null cannot be cast to non-null type android.view.ViewGroup");
            ((ViewGroup) parent).removeView(view);
        }
    }

    public final void d(FrameLayout fragmentRootView, BaseViewHolder holder, long j11) {
        View viewOrNull;
        Intrinsics.h(fragmentRootView, "fragmentRootView");
        Intrinsics.h(holder, "holder");
        if (this.f59504a && !this.f59505b && (viewOrNull = holder.getViewOrNull(R$id.iv_cover)) != null && jg.c.i(viewOrNull)) {
            this.f59505b = true;
            e(fragmentRootView, viewOrNull);
        }
    }
}
