package com.transsion.shorttv.utils;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv.base.widget.NpaLinearLayoutManager;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import ms.l0;

/* JADX INFO: loaded from: classes6.dex */
public abstract class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final List f53662a = CollectionsKt.q(new ShortTvVideoCtrBean(0.5f, "0.5x"), new ShortTvVideoCtrBean(0.75f, "0.75x"), new ShortTvVideoCtrBean(1.0f, "1x"), new ShortTvVideoCtrBean(1.25f, "1.25x"), new ShortTvVideoCtrBean(1.5f, "1.5x"), new ShortTvVideoCtrBean(1.75f, "1.75x"), new ShortTvVideoCtrBean(2.0f, "2x"));

    public static final List b() {
        return f53662a;
    }

    public static final void c(View view, List dataList, final Function1 itemClickCallback) {
        Intrinsics.h(view, "<this>");
        Intrinsics.h(dataList, "dataList");
        Intrinsics.h(itemClickCallback, "itemClickCallback");
        Context context = view.getContext();
        View viewInflate = LayoutInflater.from(context).inflate(R$layout.short_tv_layout_video_pop, (ViewGroup) null);
        final PopupWindow popupWindow = new PopupWindow(viewInflate, -2, -2, true);
        l0 l0VarA = l0.a(viewInflate);
        Intrinsics.g(l0VarA, "bind(...)");
        l0VarA.f69865b.setLayoutManager(new NpaLinearLayoutManager(context, 1, false));
        RecyclerView recyclerView = l0VarA.f69865b;
        j jVar = new j(dataList);
        jVar.w1(new p6.d() { // from class: com.transsion.shorttv.utils.k
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view2, int i11) {
                l.d(popupWindow, itemClickCallback, baseQuickAdapter, view2, i11);
            }
        });
        recyclerView.setAdapter(jVar);
        popupWindow.setOutsideTouchable(true);
        int iA = (yr.a.a(38) * dataList.size()) + yr.a.a(4);
        popupWindow.showAsDropDown(view, (view.getWidth() - yr.a.a(80)) / 2, (-view.getHeight()) - iA, 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(PopupWindow popupWindow, Function1 function1, BaseQuickAdapter adapter, View view, int i11) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        if (ds.d.f61428a.a(view.getId(), 1000L)) {
            return;
        }
        Object item = adapter.getItem(i11);
        ShortTvVideoCtrBean shortTvVideoCtrBean = item instanceof ShortTvVideoCtrBean ? (ShortTvVideoCtrBean) item : null;
        if (shortTvVideoCtrBean != null) {
            function1.invoke(shortTvVideoCtrBean);
        }
        popupWindow.dismiss();
    }
}
