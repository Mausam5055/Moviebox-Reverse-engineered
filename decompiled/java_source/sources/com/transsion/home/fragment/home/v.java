package com.transsion.home.fragment.home;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import com.tn.lib.widget.R$color;
import com.transsion.mb.config.manager.ConfigBean;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class v {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f45187b = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f45188c = 8;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ImageView f45189a;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public v(ImageView ivNovelIcon) {
        Intrinsics.h(ivNovelIcon, "ivNovelIcon");
        this.f45189a = ivNovelIcon;
        b();
    }

    private final void b() {
        ConfigBean configBeanD = sm.f.d(sm.f.f75407c.a(), "sa_novel_icon_config", false, 2, null);
        String value = configBeanD != null ? configBeanD.getValue() : null;
        if (value == null || value.length() == 0) {
            jg.c.g(this.f45189a);
            return;
        }
        try {
            final HomeNovelIconBean homeNovelIconBean = (HomeNovelIconBean) com.blankj.utilcode.util.o.d(value, HomeNovelIconBean.class);
            String deeplink = homeNovelIconBean.getDeeplink();
            if (deeplink != null && deeplink.length() != 0) {
                String icUrl = homeNovelIconBean.getIcUrl();
                if (icUrl != null) {
                    ej.f.a aVar = ej.f.f61882a;
                    Context context = this.f45189a.getContext();
                    Intrinsics.g(context, "getContext(...)");
                    aVar.m(context).g(icUrl).i(R$color.transparent).d(this.f45189a);
                }
                jg.c.k(this.f45189a);
                d();
                this.f45189a.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.fragment.home.u
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        v.c(this.f45185a, homeNovelIconBean, view);
                    }
                });
                return;
            }
            jg.c.g(this.f45189a);
        } catch (Throwable unused) {
            jg.c.g(this.f45189a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(v vVar, HomeNovelIconBean homeNovelIconBean, View view) {
        vVar.e();
        ak.k.h(homeNovelIconBean.getDeeplink(), null, 1, null);
    }

    private final void d() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("module_name", RewardPlus.ICON);
        linkedHashMap.put("item_type", "novel");
        hj.i.f64505a.D("Trending", linkedHashMap);
    }

    private final void e() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("module_name", RewardPlus.ICON);
        linkedHashMap.put("item_type", "novel");
        hj.i.f64505a.p("Trending", linkedHashMap);
    }
}
