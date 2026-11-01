package ly;

import android.content.Context;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.ugcvideodetail.api.UGCVideoTypeKt;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;
import com.transsnet.downloader.R$string;
import com.transsnet.downloader.adapter.DownloadedHolderKt;
import com.transsnet.downloader.ugc.adapter.UGCDownloadStaggeredAdapter;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class i extends BaseItemProvider {
    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return UGCDownloadStaggeredAdapter.ItemType.MORE_WAITING.ordinal();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.adapter_ugc_more_waiting_item;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, DownloadBean item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        ((TextView) helper.getView(R$id.tvTitle)).setText(helper.itemView.getContext().getString(R$string.ugc_more_waiting_for_download, Integer.valueOf(item.getCount())));
        AppCompatImageView appCompatImageView = (AppCompatImageView) helper.getView(R$id.ivImage1);
        AppCompatImageView appCompatImageView2 = (AppCompatImageView) helper.getView(R$id.ivImage2);
        List<DownloadBean> seriesList = item.getSeriesList();
        if (seriesList.isEmpty()) {
            Context context = helper.itemView.getContext();
            Intrinsics.g(context, "getContext(...)");
            String cover = item.getCover();
            DownloadedHolderKt.a(context, appCompatImageView, cover != null ? cover : "", item.getThumbnail());
            appCompatImageView2.setVisibility(8);
            UGCVideoTypeKt.j((ImageView) helper.getView(R$id.ivTag), item.getUgcCateLev1Id(), item.getUgcCateLev2Id(), item.getUgcCateLev3Id(), item.getUgcCateLev4Id(), item.getUgcVideoType());
            return;
        }
        DownloadBean downloadBean = seriesList.get(0);
        Context context2 = helper.itemView.getContext();
        Intrinsics.g(context2, "getContext(...)");
        String cover2 = downloadBean.getCover();
        if (cover2 == null) {
            cover2 = "";
        }
        DownloadedHolderKt.a(context2, appCompatImageView, cover2, downloadBean.getThumbnail());
        if (seriesList.size() > 1) {
            DownloadBean downloadBean2 = seriesList.get(1);
            appCompatImageView2.setVisibility(0);
            Context context3 = helper.itemView.getContext();
            Intrinsics.g(context3, "getContext(...)");
            String cover3 = downloadBean2.getCover();
            DownloadedHolderKt.a(context3, appCompatImageView2, cover3 != null ? cover3 : "", downloadBean2.getThumbnail());
        } else {
            appCompatImageView2.setVisibility(4);
        }
        UGCVideoTypeKt.j((ImageView) helper.getView(R$id.ivTag), downloadBean.getUgcCateLev1Id(), downloadBean.getUgcCateLev2Id(), downloadBean.getUgcCateLev3Id(), downloadBean.getUgcCateLev4Id(), downloadBean.getUgcVideoType());
    }
}
