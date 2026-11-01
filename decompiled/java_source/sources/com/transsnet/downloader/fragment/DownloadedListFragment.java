package com.transsnet.downloader.fragment;

import android.content.Context;
import android.view.View;
import androidx.p009lifecycle.Lifecycle;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.StateView;
import com.transsnet.downloader.R$string;
import com.transsnet.downloader.api.DownloadPageType;
import com.transsnet.downloader.viewmodel.DownloadViewModel;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \u00122\u00020\u0001:\u0001\u0013B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0003J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\n\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u000b\u0010\u0003J\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0011\u0010\t¨\u0006\u0014"}, d2 = {"Lcom/transsnet/downloader/fragment/DownloadedListFragment;", "Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;", "<init>", "()V", "", "l1", "n1", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "initViewData", "initViewModel", "", "isShowTitleLayout", "Landroid/view/View;", "getEmptyView", "(Z)Landroid/view/View;", "getPageName", CampaignEx.JSON_KEY_AD_K, "a", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class DownloadedListFragment extends DownloadedBaseFragment {

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: com.transsnet.downloader.fragment.DownloadedListFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DownloadedListFragment a() {
            return new DownloadedListFragment();
        }
    }

    static final class b implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f59036a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f59036a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f59036a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof androidx.p009lifecycle.c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override // androidx.p009lifecycle.c0
        public final /* synthetic */ void onChanged(Object obj) {
            this.f59036a.invoke(obj);
        }
    }

    private final void l1() {
        DownloadViewModel.N(s0(), false, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit m1(DownloadedListFragment downloadedListFragment) {
        Navigator.x(TheRouter.c("/home/movieFilter").F("tabId", 2), downloadedListFragment.requireContext(), null, 2, null);
        return Unit.f67061a;
    }

    private final void n1() {
        Function1 function1 = new Function1() { // from class: com.transsnet.downloader.fragment.m5
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DownloadedListFragment.o1(this.f59261a, (my.a) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = my.a.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(this, name, Lifecycle.State.CREATED, kotlinx.coroutines.y0.c().q(), false, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit o1(DownloadedListFragment downloadedListFragment, my.a it) {
        Intrinsics.h(it, "it");
        try {
            downloadedListFragment.l1();
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit p1(DownloadedListFragment downloadedListFragment, List list) {
        downloadedListFragment.D0(list);
        return Unit.f67061a;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public View getEmptyView(boolean isShowTitleLayout) {
        if (getMEmptyView() == null) {
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            StateView stateView = new StateView(contextRequireContext);
            String string = stateView.getContext().getString(R$string.download_no_historical_tips);
            Intrinsics.g(string, "getString(...)");
            stateView.showData(4, 6, false, "", string);
            String string2 = stateView.getContext().getString(R$string.download_empty_find_free_source);
            Intrinsics.g(string2, "getString(...)");
            stateView.setReTryTxt(string2);
            stateView.retry(new Function0() { // from class: com.transsnet.downloader.fragment.k5
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return DownloadedListFragment.m1(this.f59246a);
                }
            });
            f1(stateView);
        }
        View mEmptyView = getMEmptyView();
        Intrinsics.e(mEmptyView);
        return mEmptyView;
    }

    @Override // com.transsnet.downloader.fragment.DownloadListBaseFragment
    public String getPageName() {
        return DownloadPageType.DOWNLOAD.getPageName();
    }

    @Override // com.transsnet.downloader.fragment.DownloadListBaseFragment, com.transsion.baseui.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        String string;
        Context context = getContext();
        return (context == null || (string = context.getString(R$string.download_no_historical_tips)) == null) ? "" : string;
    }

    @Override // com.transsnet.downloader.fragment.DownloadedBaseFragment, com.transsnet.downloader.fragment.DownloadListBaseFragment, com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        super.initViewData();
        n1();
    }

    @Override // com.transsnet.downloader.fragment.DownloadedBaseFragment, com.transsnet.downloader.fragment.DownloadListBaseFragment, com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        super.initViewModel();
        s0().O().j(this, new b(new Function1() { // from class: com.transsnet.downloader.fragment.l5
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DownloadedListFragment.p1(this.f59253a, (List) obj);
            }
        }));
    }
}
