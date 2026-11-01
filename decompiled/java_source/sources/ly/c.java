package ly;

import android.view.View;
import androidx.p009lifecycle.b0;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.tn.lib.net.bean.BaseDto;
import com.tn.lib.widget.R$string;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;
import com.transsnet.downloader.adapter.LayoutType;
import com.transsnet.downloader.bean.MovieRecBean;
import com.transsnet.downloader.viewmodel.DownloadViewModel;
import com.transsnet.downloader.widget.DownloadPanelForYouFootView;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import nh.m;

/* JADX INFO: loaded from: classes7.dex */
public final class c extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final DownloadViewModel f69058e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f69059f = 1;

    public c(DownloadViewModel downloadViewModel) {
        this.f69058e = downloadViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit A(c cVar) {
        if (!m.f70474a.e()) {
            uh.b.f76753a.d(R$string.no_network_toast);
            return Unit.f67061a;
        }
        DownloadViewModel downloadViewModel = cVar.f69058e;
        if (downloadViewModel != null) {
            int i11 = cVar.f69059f + 1;
            cVar.f69059f = i11;
            downloadViewModel.S(i11, 6);
        }
        return Unit.f67061a;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return LayoutType.FOR_YOU.ordinal();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.adapter_download_item_for_you;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, DownloadBean item) {
        b0 b0VarT;
        BaseDto baseDto;
        MovieRecBean movieRecBean;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        DownloadViewModel downloadViewModel = this.f69058e;
        List<Subject> items = (downloadViewModel == null || (b0VarT = downloadViewModel.T()) == null || (baseDto = (BaseDto) b0VarT.f()) == null || (movieRecBean = (MovieRecBean) baseDto.getData()) == null) ? null : movieRecBean.getItems();
        List<Subject> list = items;
        if (list == null || list.isEmpty()) {
            View itemView = helper.itemView;
            Intrinsics.g(itemView, "itemView");
            jg.c.g(itemView);
            return;
        }
        View itemView2 = helper.itemView;
        Intrinsics.g(itemView2, "itemView");
        jg.c.k(itemView2);
        DownloadPanelForYouFootView downloadPanelForYouFootView = (DownloadPanelForYouFootView) helper.getView(R$id.v_for_you);
        try {
            Result.Companion companion = Result.INSTANCE;
            BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
            downloadPanelForYouFootView.initBrowseReport(baseProviderMultiAdapterG != null ? baseProviderMultiAdapterG.getRecyclerView() : null);
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
        downloadPanelForYouFootView.setRefreshClickCallback(new Function0() { // from class: ly.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return c.A(this.f69057a);
            }
        });
        downloadPanelForYouFootView.setData(items);
    }
}
