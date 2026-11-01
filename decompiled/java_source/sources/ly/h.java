package ly;

import android.content.Context;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsnet.downloader.R$drawable;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;
import com.transsnet.downloader.R$mipmap;
import com.transsnet.downloader.R$string;
import com.transsnet.downloader.util.DownloadUtil;
import com.transsnet.downloader.viewmodel.a0;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes7.dex */
public final class h extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final float f69078e;

    public h(float f11) {
        this.f69078e = f11;
    }

    private final int A(DownloadBean downloadBean) {
        Iterator<T> it = downloadBean.getSeriesList().iterator();
        int i11 = 0;
        while (it.hasNext()) {
            if (((DownloadBean) it.next()).getIsCheck()) {
                i11++;
            }
        }
        return i11;
    }

    private final void B(BaseViewHolder baseViewHolder, DownloadBean downloadBean) {
        TextView textView = (TextView) baseViewHolder.getView(R$id.tv_more_count);
        ImageView imageView = (ImageView) baseViewHolder.getView(R$id.iv_more);
        if (!downloadBean.getIsCheck()) {
            imageView.setImageResource(R$drawable.ic_download_group_unselected);
            jg.c.g(textView);
            return;
        }
        if (!downloadBean.isSeriesCollection()) {
            imageView.setImageResource(R$drawable.ic_download_group_selected);
            jg.c.g(textView);
        } else if (downloadBean.getIsSeriesAllCheck()) {
            imageView.setImageResource(R$drawable.ic_download_group_selected);
            jg.c.g(textView);
        } else {
            imageView.setImageResource(R$drawable.shape_transfer_select_icon_bg);
            jg.c.k(textView);
            int iA = A(downloadBean);
            textView.setText(iA > 99 ? "99+" : String.valueOf(iA));
        }
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return 0;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.item_transfer_select_item;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, DownloadBean bean) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(bean, "bean");
        jg.c.g(helper.getView(R$id.iv_play));
        ProgressBar progressBar = (ProgressBar) helper.getViewOrNull(R$id.progress_bar);
        if (progressBar != null) {
            jg.c.g(progressBar);
        }
        ImageView imageView = (ImageView) helper.getView(R$id.iv_cover);
        String cover = bean.getCover();
        String str = "";
        if (cover != null && !Intrinsics.c(imageView.getTag(), cover)) {
            imageView.setTag(cover);
            if (StringsKt.W(cover, "http", false, 2, null)) {
                ej.f.a aVar = ej.f.f61882a;
                Context context = imageView.getContext();
                Intrinsics.g(context, "getContext(...)");
                ej.f.b bVarG = aVar.m(context).g(cover);
                String thumbnail = bean.getThumbnail();
                if (thumbnail == null) {
                    thumbnail = "";
                }
                bVarG.l(thumbnail).d(imageView);
            } else {
                imageView.setImageBitmap(a0.f60085a.d(cover));
            }
        }
        ((ImageView) helper.getView(R$id.iv_type)).setImageResource(DownloadUtil.f59900a.r(bean));
        ((TextView) helper.getView(R$id.tv_name)).setText(bean.getTitleNameAppendResolution());
        TextView textView = (TextView) helper.getView(R$id.tv_ep);
        textView.setText(bean.getTitleNameAppendResolution());
        String epName = bean.getEpName();
        if (epName == null || epName.length() == 0) {
            jg.c.g(textView);
        } else {
            jg.c.k(textView);
            textView.setText(bean.getEpName());
        }
        Long size = bean.getSize();
        if (size != null) {
            String strA = oh.b.a(size.longValue(), this.f69078e == 12.0f ? 1 : 0);
            if (strA != null) {
                str = strA;
            }
        }
        if (bean.isSeriesCollection()) {
            jg.c.k(helper.getView(R$id.v_series_top_bg));
            jg.c.k(helper.getView(R$id.v_series_top_bg_2));
            TextView textView2 = (TextView) helper.getView(R$id.tv_file_size);
            textView2.setText(helper.itemView.getContext().getString(R$string.download_files, Integer.valueOf(bean.getCount())) + " · " + str);
            textView2.setCompoundDrawablesRelativeWithIntrinsicBounds(R$mipmap.ic_download_series, 0, 0, 0);
        } else {
            jg.c.g(helper.getView(R$id.v_series_top_bg));
            jg.c.g(helper.getView(R$id.v_series_top_bg_2));
            TextView textView3 = (TextView) helper.getView(R$id.tv_file_size);
            textView3.setText(str);
            textView3.setCompoundDrawablesRelativeWithIntrinsicBounds(0, 0, 0, 0);
        }
        B(helper, bean);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public void f(BaseViewHolder helper, DownloadBean item, List payloads) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        Intrinsics.h(payloads, "payloads");
        super.f(helper, item, payloads);
        if (payloads.isEmpty()) {
            return;
        }
        Object obj = payloads.get(payloads.size() - 1);
        if (obj instanceof DownloadBean) {
            B(helper, (DownloadBean) obj);
        }
    }
}
