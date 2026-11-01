package com.transsion.shorttv_pugc.ui.adapter.provider;

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
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv.R$string;
import com.transsion.shorttv_pugc.base.widget.NpaLinearLayoutManager;
import com.transsion.shorttv_pugc.bean.OperateItem;
import com.transsion.shorttv_pugc.bean.Pager;
import com.transsion.shorttv_pugc.bean.ShortTVRespData;
import com.transsion.shorttv_pugc.bean.ShortTvItemType;
import com.transsion.shorttv_pugc.bean.Subject;
import com.transsion.shorttv_pugc.ui.adapter.ShortTVHeaderViewAdapter;
import com.transsion.shorttv_pugc.viewmodel.ShortTvViewModel;
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
    public static final a f54049m = new a(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Fragment f54050e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Lazy f54051f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Lazy f54052g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f54053h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final boolean f54054i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f54055j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private ShortTVHeaderViewAdapter f54056k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private bt.b f54057l;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static final class b implements bt.a {
        b() {
        }

        @Override // bt.a
        public void a(int i11, long j11, View view) {
            List<Object> data;
            List<Object> data2;
            ShortTVHeaderViewAdapter shortTVHeaderViewAdapter = ShortTvFavoriteProvider.this.f54056k;
            if (((shortTVHeaderViewAdapter == null || (data2 = shortTVHeaderViewAdapter.getData()) == null) ? 0 : data2.size()) <= i11) {
                return;
            }
            ShortTVHeaderViewAdapter shortTVHeaderViewAdapter2 = ShortTvFavoriteProvider.this.f54056k;
            Subject subject = (shortTVHeaderViewAdapter2 == null || (data = shortTVHeaderViewAdapter2.getData()) == null) ? null : (Subject) data.get(i11);
            if (subject != null) {
                ShortTvFavoriteProvider.this.M().a("minitv_explore", subject, i11, j11, ShortTvFavoriteProvider.this.L());
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
                    if (ShortTvFavoriteProvider.this.f54054i) {
                        outRect.right = ShortTvFavoriteProvider.this.f54055j * 2;
                        return;
                    } else {
                        outRect.left = ShortTvFavoriteProvider.this.f54055j * 2;
                        return;
                    }
                }
                if (childAdapterPosition == adapter.getItemCount() - 1) {
                    outRect.right = ShortTvFavoriteProvider.this.f54055j;
                    outRect.left = ShortTvFavoriteProvider.this.f54055j;
                } else if (ShortTvFavoriteProvider.this.f54054i) {
                    outRect.right = ShortTvFavoriteProvider.this.f54055j;
                } else {
                    outRect.left = ShortTvFavoriteProvider.this.f54055j;
                }
            }
        }
    }

    static final class d implements c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f54060a;

        d(Function1 function) {
            Intrinsics.h(function, "function");
            this.f54060a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f54060a;
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
            this.f54060a.invoke(obj);
        }
    }

    public ShortTvFavoriteProvider(final Fragment fragment) {
        Intrinsics.h(fragment, "fragment");
        this.f54050e = fragment;
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.transsion.shorttv_pugc.ui.adapter.provider.ShortTvFavoriteProvider$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return fragment;
            }
        };
        this.f54051f = FragmentViewModelLazyKt.a(fragment, Reflection.b(ShortTvViewModel.class), new Function0<x0>() { // from class: com.transsion.shorttv_pugc.ui.adapter.provider.ShortTvFavoriteProvider$special$$inlined$viewModels$default$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final x0 invoke() {
                x0 viewModelStore = ((y0) function0.invoke()).getViewModelStore();
                Intrinsics.g(viewModelStore, "ownerProducer().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<v0.c>() { // from class: com.transsion.shorttv_pugc.ui.adapter.provider.ShortTvFavoriteProvider$special$$inlined$viewModels$default$3
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
        this.f54052g = LazyKt.b(new Function0() { // from class: com.transsion.shorttv_pugc.ui.adapter.provider.d
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ShortTvFavoriteProvider.P();
            }
        });
        this.f54053h = "0";
        this.f54054i = TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1;
        this.f54055j = a0.a(8.0f);
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
        shortTvFavoriteProvider.f54053h = nextPage;
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
            shortTvFavoriteProvider.M().b("minitv_explore", subject, i11, shortTvFavoriteProvider.L());
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
    public final ut.b M() {
        return (ut.b) this.f54052g.getValue();
    }

    private final ShortTvViewModel N() {
        return (ShortTvViewModel) this.f54051f.getValue();
    }

    private final void O(Subject subject) {
        qt.a aVar = qt.a.f73700a;
        Context contextK = k();
        Intrinsics.f(contextK, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        aVar.a((FragmentActivity) contextK, "minitv_explore", subject.getOps(), (PsExtractor.AUDIO_STREAM & 8) != 0 ? null : "download_subject", (PsExtractor.AUDIO_STREAM & 16) != 0 ? false : false, (PsExtractor.AUDIO_STREAM & 32) != 0 ? null : subject, (PsExtractor.AUDIO_STREAM & 64) != 0 ? null : null, (PsExtractor.AUDIO_STREAM & 128) != 0 ? Boolean.FALSE : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ut.b P() {
        return new ut.b();
    }

    private final void Q(List list) {
        ShortTVHeaderViewAdapter shortTVHeaderViewAdapter;
        lg.a.C0828a.f(lg.a.f68839a, "ShortTvFavorite", "updateList, size:" + (list != null ? Integer.valueOf(list.size()) : null), false, 4, null);
        List list2 = list;
        if (list2 == null || list2.isEmpty() || (shortTVHeaderViewAdapter = this.f54056k) == null) {
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
        N().x().j(this.f54050e, new d(new Function1() { // from class: com.transsion.shorttv_pugc.ui.adapter.provider.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ShortTvFavoriteProvider.I(this.f54061a, (ShortTVRespData) obj);
            }
        }));
        this.f54057l = new bt.b(0.6f, new b(), false, 4, null);
        ShortTVHeaderViewAdapter shortTVHeaderViewAdapter = new ShortTVHeaderViewAdapter(null, 1, null);
        shortTVHeaderViewAdapter.w1(new p6.d() { // from class: com.transsion.shorttv_pugc.ui.adapter.provider.b
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                ShortTvFavoriteProvider.J(this.f54062a, baseQuickAdapter, view, i11);
            }
        });
        this.f54056k = shortTVHeaderViewAdapter;
        RecyclerView recyclerView = (RecyclerView) helper.getView(R$id.recycler_view);
        recyclerView.setLayoutManager(new NpaLinearLayoutManager(recyclerView.getContext(), 0, false));
        recyclerView.addItemDecoration(new c());
        recyclerView.setAdapter(this.f54056k);
        bt.b bVar = this.f54057l;
        Intrinsics.e(bVar);
        recyclerView.addOnScrollListener(bVar);
        ((TextView) helper.getView(R$id.tv_view_all)).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.shorttv_pugc.ui.adapter.provider.c
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
        return R$layout.pugc_short_tv_layout_favorite;
    }
}
