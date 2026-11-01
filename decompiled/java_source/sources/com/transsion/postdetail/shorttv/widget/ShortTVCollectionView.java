package com.transsion.postdetail.shorttv.widget;

import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import androidx.p009lifecycle.y0;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.HorizontalRecyclerview2;
import com.tn.lib.view.layoutmanager.NpaLinearLayoutManager;
import com.tn.lib.widget.TnTextView;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.moviedetailapi.bean.ShortTVRespData;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.postdetail.R$layout;
import com.transsion.postdetail.R$string;
import com.transsion.postdetail.shorttv.adapter.ShortTVHeaderViewAdapter;
import com.transsion.postdetail.shorttv.viewmodel.ShortTVContentViewModel;
import com.transsnet.downloader.DownloadManagerApi;
import com.transsnet.loginapi.ILoginApi;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import java.util.Locale;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import so.i0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 D2\u00020\u0001:\u0001!B9\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000fB)\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u000e\u0010\u0010B3\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u000e\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0015\u0010\u0014J\u001f\u0010\u0019\u001a\u00020\u00122\u000e\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0016H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u0017H\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\r\u0010 \u001a\u00020\u0012¢\u0006\u0004\b \u0010\u0014R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&R\u0014\u0010*\u001a\u00020'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010)R\u0014\u0010,\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010+R\u0014\u00100\u001a\u00020-8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010/R\u001b\u00106\u001a\u0002018BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b2\u00103\u001a\u0004\b4\u00105R\u0018\u00109\u001a\u0004\u0018\u0001078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u00108R\u0018\u0010=\u001a\u0004\u0018\u00010:8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010<R\u0016\u0010?\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010$R\u001d\u0010C\u001a\u0004\u0018\u00010@8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u00103\u001a\u0004\bA\u0010B¨\u0006E"}, d2 = {"Lcom/transsion/postdetail/shorttv/widget/ShortTVCollectionView;", "Landroid/widget/LinearLayout;", "Landroidx/fragment/app/Fragment;", "fragment", "", NativeComponentConstants.KEY_COMPONENT_TYPE, "Lcom/transsion/postdetail/shorttv/j;", "recReport", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lcom/transsion/postdetail/shorttv/j;Landroid/content/Context;Landroid/util/AttributeSet;I)V", "(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lcom/transsion/postdetail/shorttv/j;Landroid/content/Context;)V", "(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lcom/transsion/postdetail/shorttv/j;Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "e", "()V", "h", "", "Lcom/transsion/moviedetailapi/bean/Subject;", "list", "l", "(Ljava/util/List;)V", "subject", CampaignEx.JSON_KEY_AD_K, "(Lcom/transsion/moviedetailapi/bean/Subject;)V", "getItemOptType", "()Ljava/lang/String;", "clearExposureCache", "a", "Landroidx/fragment/app/Fragment;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "c", "Lcom/transsion/postdetail/shorttv/j;", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Z", "isRTL", "I", "dp8", "Lso/i0;", "f", "Lso/i0;", "viewBinding", "Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;", "g", "Lkotlin/Lazy;", "getViewModel", "()Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;", "viewModel", "Lcom/transsion/postdetail/shorttv/adapter/ShortTVHeaderViewAdapter;", "Lcom/transsion/postdetail/shorttv/adapter/ShortTVHeaderViewAdapter;", "headerAdapter", "Lsj/b;", "i", "Lsj/b;", "exposureHelper", "j", "nextPage", "Lcom/transsnet/loginapi/ILoginApi;", "getLoginApi", "()Lcom/transsnet/loginapi/ILoginApi;", "loginApi", "Companion", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ShortTVCollectionView extends LinearLayout {
    public static final String TYPE_COLLECTION = "collection";

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final Fragment fragment;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final String type;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final com.transsion.postdetail.shorttv.j recReport;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final boolean isRTL;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final int dp8;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private final i0 viewBinding;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private final Lazy viewModel;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private ShortTVHeaderViewAdapter headerAdapter;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private sj.b exposureHelper;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private String nextPage;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private final Lazy loginApi;

    public static final class b implements sj.a {
        b() {
        }

        @Override // sj.a
        public void a(int i11, long j11, View view) {
            List<Object> data;
            List<Object> data2;
            ShortTVHeaderViewAdapter shortTVHeaderViewAdapter = ShortTVCollectionView.this.headerAdapter;
            if (((shortTVHeaderViewAdapter == null || (data2 = shortTVHeaderViewAdapter.getData()) == null) ? 0 : data2.size()) <= i11) {
                return;
            }
            ShortTVHeaderViewAdapter shortTVHeaderViewAdapter2 = ShortTVCollectionView.this.headerAdapter;
            Subject subject = (shortTVHeaderViewAdapter2 == null || (data = shortTVHeaderViewAdapter2.getData()) == null) ? null : (Subject) data.get(i11);
            if (subject != null) {
                ShortTVCollectionView.this.recReport.a("minitv_explore", subject, i11, j11, ShortTVCollectionView.this.getItemOptType());
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
                    if (ShortTVCollectionView.this.isRTL) {
                        outRect.right = ShortTVCollectionView.this.dp8 * 2;
                        return;
                    } else {
                        outRect.left = ShortTVCollectionView.this.dp8 * 2;
                        return;
                    }
                }
                if (childAdapterPosition == adapter.getItemCount() - 1) {
                    outRect.right = ShortTVCollectionView.this.dp8;
                    outRect.left = ShortTVCollectionView.this.dp8;
                } else if (ShortTVCollectionView.this.isRTL) {
                    outRect.right = ShortTVCollectionView.this.dp8;
                } else {
                    outRect.left = ShortTVCollectionView.this.dp8;
                }
            }
        }
    }

    static final class d implements c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f49254a;

        d(Function1 function) {
            Intrinsics.h(function, "function");
            this.f49254a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f49254a;
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
            this.f49254a.invoke(obj);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShortTVCollectionView(Fragment fragment, String type, com.transsion.postdetail.shorttv.j recReport, Context context) {
        this(fragment, type, recReport, context, null);
        Intrinsics.h(fragment, "fragment");
        Intrinsics.h(type, "type");
        Intrinsics.h(recReport, "recReport");
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShortTVCollectionView(Fragment fragment, String type, com.transsion.postdetail.shorttv.j recReport, Context context, AttributeSet attributeSet) {
        this(fragment, type, recReport, context, attributeSet, 0);
        Intrinsics.h(fragment, "fragment");
        Intrinsics.h(type, "type");
        Intrinsics.h(recReport, "recReport");
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortTVCollectionView(final Fragment fragment, String type, com.transsion.postdetail.shorttv.j recReport, Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(fragment, "fragment");
        Intrinsics.h(type, "type");
        Intrinsics.h(recReport, "recReport");
        Intrinsics.h(context, "context");
        this.fragment = fragment;
        this.type = type;
        this.recReport = recReport;
        this.isRTL = TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1;
        this.dp8 = a0.a(8.0f);
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.transsion.postdetail.shorttv.widget.ShortTVCollectionView$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return fragment;
            }
        };
        this.viewModel = FragmentViewModelLazyKt.a(fragment, Reflection.b(ShortTVContentViewModel.class), new Function0<x0>() { // from class: com.transsion.postdetail.shorttv.widget.ShortTVCollectionView$special$$inlined$viewModels$default$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final x0 invoke() {
                x0 viewModelStore = ((y0) function0.invoke()).getViewModelStore();
                Intrinsics.g(viewModelStore, "ownerProducer().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<v0.c>() { // from class: com.transsion.postdetail.shorttv.widget.ShortTVCollectionView$special$$inlined$viewModels$default$3
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
        this.nextPage = "0";
        this.loginApi = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.shorttv.widget.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ShortTVCollectionView.j();
            }
        });
        View.inflate(context, R$layout.layout_short_tv_collection, this);
        i0 i0VarA = i0.a(this);
        Intrinsics.g(i0VarA, "bind(...)");
        this.viewBinding = i0VarA;
        setOrientation(1);
        e();
        h();
    }

    private final void e() {
        this.exposureHelper = new sj.b(0.6f, new b(), false, 4, null);
        ShortTVHeaderViewAdapter shortTVHeaderViewAdapter = new ShortTVHeaderViewAdapter(null, 1, null);
        shortTVHeaderViewAdapter.w1(new p6.d() { // from class: com.transsion.postdetail.shorttv.widget.c
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                ShortTVCollectionView.f(this.f49286a, baseQuickAdapter, view, i11);
            }
        });
        this.headerAdapter = shortTVHeaderViewAdapter;
        HorizontalRecyclerview2 horizontalRecyclerview2 = this.viewBinding.f75549b;
        horizontalRecyclerview2.setLayoutManager(new NpaLinearLayoutManager(horizontalRecyclerview2.getContext(), 0, false));
        horizontalRecyclerview2.addItemDecoration(new c());
        horizontalRecyclerview2.setAdapter(this.headerAdapter);
        sj.b bVar = this.exposureHelper;
        Intrinsics.e(bVar);
        horizontalRecyclerview2.addOnScrollListener(bVar);
        this.viewBinding.f75552e.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.shorttv.widget.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShortTVCollectionView.g(this.f49287a, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(ShortTVCollectionView shortTVCollectionView, BaseQuickAdapter adapter, View view, int i11) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "<unused var>");
        Object item = adapter.getItem(i11);
        if (item instanceof Subject) {
            Subject subject = (Subject) item;
            shortTVCollectionView.recReport.b("minitv_explore", subject, i11, shortTVCollectionView.getItemOptType());
            shortTVCollectionView.k(subject);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(ShortTVCollectionView shortTVCollectionView, View view) {
        lg.a.C0828a.g(lg.a.f68839a, "Click view all", false, 2, null);
        Navigator.x(TheRouter.c("/shorts/favorite"), shortTVCollectionView.getContext(), null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getItemOptType() {
        return Intrinsics.c(this.type, "collection") ? "collection" : "continue_watching";
    }

    private final ILoginApi getLoginApi() {
        return (ILoginApi) this.loginApi.getValue();
    }

    private final ShortTVContentViewModel getViewModel() {
        return (ShortTVContentViewModel) this.viewModel.getValue();
    }

    private final void h() {
        if (Intrinsics.c(this.type, "collection")) {
            TnTextView tvTitleTrending = this.viewBinding.f75551d;
            Intrinsics.g(tvTitleTrending, "tvTitleTrending");
            tvTitleTrending.setVisibility(8);
            AppCompatTextView appCompatTextView = this.viewBinding.f75550c;
            Context context = getContext();
            appCompatTextView.setText(context != null ? context.getString(R$string.short_tv_my_list) : null);
            getViewModel().h().j(this.fragment, new d(new Function1() { // from class: com.transsion.postdetail.shorttv.widget.b
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return ShortTVCollectionView.i(this.f49285a, (ShortTVRespData) obj);
                }
            }));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit i(ShortTVCollectionView shortTVCollectionView, ShortTVRespData shortTVRespData) {
        String nextPage;
        if (shortTVRespData == null) {
            return Unit.f67061a;
        }
        Pager pager = shortTVRespData.getPager();
        if (pager == null || (nextPage = pager.getNextPage()) == null) {
            nextPage = "0";
        }
        shortTVCollectionView.nextPage = nextPage;
        shortTVCollectionView.l(shortTVRespData.getItems());
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ILoginApi j() {
        return (ILoginApi) TheRouter.d(ILoginApi.class, new Object[0]);
    }

    private final void k(Subject subject) {
        Context context = getContext();
        if (context == null || !Intrinsics.c(getItemOptType(), "collection")) {
            return;
        }
        DownloadManagerApi.f58398j.a().d0((FragmentActivity) context, "minitv_explore", (384 & 4) != 0 ? "" : "", subject.getOps(), (384 & 16) != 0 ? null : "download_subject", (384 & 32) != 0 ? false : false, (384 & 64) != 0 ? null : subject, (384 & 128) != 0 ? null : null, (384 & 256) != 0 ? Boolean.FALSE : null);
    }

    private final void l(List list) {
        ShortTVHeaderViewAdapter shortTVHeaderViewAdapter;
        lg.a.C0828a.f(lg.a.f68839a, "ShortTVCollectionView", "updateList, type:" + this.type + "，size:" + (list != null ? Integer.valueOf(list.size()) : null), false, 4, null);
        List list2 = list;
        if (list2 == null || list2.isEmpty() || (shortTVHeaderViewAdapter = this.headerAdapter) == null) {
            return;
        }
        shortTVHeaderViewAdapter.n1(list2);
    }

    public final void clearExposureCache() {
        sj.b bVar = this.exposureHelper;
        if (bVar != null) {
            bVar.f();
        }
    }
}
