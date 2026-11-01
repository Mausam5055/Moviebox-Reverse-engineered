package com.transsion.shorttv.ui.adapter.provider;

import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import androidx.p009lifecycle.y0;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv.R$string;
import com.transsion.shorttv.base.widget.NpaLinearLayoutManager;
import com.transsion.shorttv.bean.OperateItem;
import com.transsion.shorttv.bean.Pager;
import com.transsion.shorttv.bean.ShortTVRespData;
import com.transsion.shorttv.bean.ShortTvItemType;
import com.transsion.shorttv.bean.Subject;
import com.transsion.shorttv.ui.adapter.ShortTVHeaderViewAdapter;
import com.transsion.shorttv.viewmodel.ShortTvViewModel;
import java.util.List;
import java.util.Locale;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes6.dex */
public final class ShortTvFavoriteProvider extends BaseItemProvider {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final a f53155m = new a(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Fragment f53156e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Lazy f53157f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Lazy f53158g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f53159h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final boolean f53160i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f53161j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private ShortTVHeaderViewAdapter f53162k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private xr.b f53163l;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static final class b implements xr.a {
        b() {
        }

        @Override // xr.a
        public void a(int i11, long j11, View view) {
            List<Object> data;
            List<Object> data2;
            ShortTVHeaderViewAdapter shortTVHeaderViewAdapter = ShortTvFavoriteProvider.this.f53162k;
            if (((shortTVHeaderViewAdapter == null || (data2 = shortTVHeaderViewAdapter.getData()) == null) ? 0 : data2.size()) <= i11) {
                return;
            }
            ShortTVHeaderViewAdapter shortTVHeaderViewAdapter2 = ShortTvFavoriteProvider.this.f53162k;
            Subject subject = (shortTVHeaderViewAdapter2 == null || (data = shortTVHeaderViewAdapter2.getData()) == null) ? null : (Subject) data.get(i11);
            if (subject != null) {
                ShortTvFavoriteProvider.this.M().a("minitv_explore", subject, i11, Long.valueOf(j11), ShortTvFavoriteProvider.this.L());
            }
        }
    }

    public static final class c extends RecyclerView.l {
        c() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.l
        public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.y state) {
            Intrinsics.h(outRect, "outRect");
            Intrinsics.h(view, "view");
            Intrinsics.h(parent, "parent");
            Intrinsics.h(state, "state");
            super.getItemOffsets(outRect, view, parent, state);
            int childAdapterPosition = parent.getChildAdapterPosition(view);
            RecyclerView.Adapter adapter = parent.getAdapter();
            if (adapter != null) {
                if (childAdapterPosition == 0) {
                    if (ShortTvFavoriteProvider.this.f53160i) {
                        outRect.right = ShortTvFavoriteProvider.this.f53161j * 2;
                        return;
                    } else {
                        outRect.left = ShortTvFavoriteProvider.this.f53161j * 2;
                        return;
                    }
                }
                if (childAdapterPosition == adapter.getItemCount() - 1) {
                    outRect.right = ShortTvFavoriteProvider.this.f53161j;
                    outRect.left = ShortTvFavoriteProvider.this.f53161j;
                } else if (ShortTvFavoriteProvider.this.f53160i) {
                    outRect.right = ShortTvFavoriteProvider.this.f53161j;
                } else {
                    outRect.left = ShortTvFavoriteProvider.this.f53161j;
                }
            }
        }
    }

    static final class d implements c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f53166a;

        d(Function1 function) {
            Intrinsics.h(function, "function");
            this.f53166a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f53166a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override // androidx.p009lifecycle.c0
        public final /* synthetic */ void onChanged(Object obj) {
            this.f53166a.invoke(obj);
        }
    }

    public ShortTvFavoriteProvider(final Fragment fragment) {
        Intrinsics.h(fragment, "fragment");
        this.f53156e = fragment;
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.transsion.shorttv.ui.adapter.provider.ShortTvFavoriteProvider$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return fragment;
            }
        };
        this.f53157f = FragmentViewModelLazyKt.a(fragment, Reflection.b(ShortTvViewModel.class), new Function0<x0>() { // from class: com.transsion.shorttv.ui.adapter.provider.ShortTvFavoriteProvider$special$$inlined$viewModels$default$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final x0 invoke() {
                x0 viewModelStore = ((y0) function0.invoke()).getViewModelStore();
                Intrinsics.g(viewModelStore, "ownerProducer().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<v0.c>() { // from class: com.transsion.shorttv.ui.adapter.provider.ShortTvFavoriteProvider$special$$inlined$viewModels$default$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final v0.c invoke() {
                Object objInvoke = function0.invoke();
                androidx.p009lifecycle.m mVar = objInvoke instanceof androidx.p009lifecycle.m ? (androidx.p009lifecycle.m) objInvoke : null;
                v0.c defaultViewModelProviderFactory = mVar != null ? mVar.getDefaultViewModelProviderFactory() : null;
                if (defaultViewModelProviderFactory == null) {
                    defaultViewModelProviderFactory = fragment.getDefaultViewModelProviderFactory();
                }
                Intrinsics.g(defaultViewModelProviderFactory, "(ownerProducer() as? Has…tViewModelProviderFactory");
                return defaultViewModelProviderFactory;
            }
        });
        this.f53158g = LazyKt.b(new Function0() { // from class: com.transsion.shorttv.ui.adapter.provider.c
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ShortTvFavoriteProvider.P();
            }
        });
        this.f53159h = "0";
        this.f53160i = TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1;
        this.f53161j = a0.a(8.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit I(ShortTvFavoriteProvider shortTvFavoriteProvider, ShortTVRespData shortTVRespData) {
        String nextPage;
        if (shortTVRespData == null) {
            return Unit.f67061a;
        }
        Pager pager = shortTVRespData.getPager();
        if (pager == null || (nextPage = pager.getNextPage()) == null) {
            nextPage = "0";
        }
        shortTvFavoriteProvider.f53159h = nextPage;
        shortTvFavoriteProvider.Q(shortTVRespData.getItems());
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void J(ShortTvFavoriteProvider shortTvFavoriteProvider, BaseQuickAdapter adapter, View view, int i11) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "<unused var>");
        Object item = adapter.getItem(i11);
        if (item instanceof Subject) {
            Subject subject = (Subject) item;
            shortTvFavoriteProvider.M().c("minitv_explore", subject, i11, shortTvFavoriteProvider.L());
            shortTvFavoriteProvider.O(subject);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K(BaseViewHolder baseViewHolder, View view) {
        lg.a.C0828a.g(lg.a.f68839a, "Click view all", false, 2, null);
        Navigator.x(TheRouter.c(ls.a.f69034a.c()), baseViewHolder.itemView.getContext(), null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String L() {
        return "collection";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ss.a M() {
        return (ss.a) this.f53158g.getValue();
    }

    private final ShortTvViewModel N() {
        return (ShortTvViewModel) this.f53157f.getValue();
    }

    private final void O(Subject subject) {
        ns.a aVar = ns.a.f70542a;
        Context contextK = k();
        Intrinsics.f(contextK, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        aVar.a((FragmentActivity) contextK, "minitv_explore", subject.getOps(), (64 & 8) != 0 ? null : "download_subject", (64 & 16) != 0 ? false : false, (64 & 32) != 0 ? null : subject, (64 & 64) != 0 ? null : null, (64 & 128) != 0 ? Boolean.FALSE : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ss.a P() {
        return new ss.a();
    }

    private final void Q(List list) {
        ShortTVHeaderViewAdapter shortTVHeaderViewAdapter;
        lg.a.C0828a.f(lg.a.f68839a, "ShortTvFavorite", "updateList, size:" + (list != null ? Integer.valueOf(list.size()) : null), false, 4, null);
        List list2 = list;
        if (list2 == null || list2.isEmpty() || (shortTVHeaderViewAdapter = this.f53162k) == null) {
            return;
        }
        shortTVHeaderViewAdapter.n1(list2);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
    public void b(final BaseViewHolder helper, OperateItem item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        ((TextView) helper.getView(R$id.tv_title)).setText(Utils.a().getString(R$string.short_tv_my_list));
        N().c0().j(this.f53156e, new d(new Function1() { // from class: com.transsion.shorttv.ui.adapter.provider.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ShortTvFavoriteProvider.I(this.f53175a, (ShortTVRespData) obj);
            }
        }));
        this.f53163l = new xr.b(0.6f, new b(), false, 4, null);
        ShortTVHeaderViewAdapter shortTVHeaderViewAdapter = new ShortTVHeaderViewAdapter(null, 1, null);
        shortTVHeaderViewAdapter.w1(new p6.d() { // from class: com.transsion.shorttv.ui.adapter.provider.e
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                ShortTvFavoriteProvider.J(this.f53176a, baseQuickAdapter, view, i11);
            }
        });
        this.f53162k = shortTVHeaderViewAdapter;
        RecyclerView recyclerView = (RecyclerView) helper.getView(R$id.recycler_view);
        recyclerView.setLayoutManager(new NpaLinearLayoutManager(recyclerView.getContext(), 0, false));
        recyclerView.addItemDecoration(new c());
        recyclerView.setAdapter(this.f53162k);
        xr.b bVar = this.f53163l;
        Intrinsics.e(bVar);
        recyclerView.addOnScrollListener(bVar);
        ((TextView) helper.getView(R$id.tv_view_all)).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.shorttv.ui.adapter.provider.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShortTvFavoriteProvider.K(helper, view);
            }
        });
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return ShortTvItemType.FAVORITE.ordinal();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.short_tv_layout_favorite;
    }
}
