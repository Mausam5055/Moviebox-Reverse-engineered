package ly;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.tn.lib.widget.TnTextView;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baseui.R$drawable;
import com.transsion.baseui.R$mipmap;
import com.transsion.ugcvideodetail.api.UGCVideoTypeKt;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;
import com.transsnet.downloader.R$string;
import com.transsnet.downloader.adapter.LayoutType;
import com.transsnet.downloader.api.DownloadPageType;
import com.transsnet.downloader.popup.PopupManager;
import com.transsnet.downloader.util.DownloadUtilKt;
import com.transsnet.downloader.util.a0;
import java.util.List;
import java.util.UUID;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class f extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f69067e;

    public f() {
        String string = UUID.randomUUID().toString();
        Intrinsics.g(string, "toString(...)");
        this.f69067e = string;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit C(BaseViewHolder baseViewHolder, DownloadBean downloadBean, f fVar, View view) {
        Intrinsics.h(view, "view");
        a0 a0Var = a0.f59916a;
        Context context = view.getContext();
        Intrinsics.g(context, "getContext(...)");
        a0Var.a(context, new PopupManager(baseViewHolder.getAbsoluteAdapterPosition(), downloadBean), "save_local/vip_prompt", fVar.f69067e);
        com.transsion.baselib.helper.f.f43269a.f(DownloadPageType.DOWNLOAD.getPageName(), "save_local/vip_prompt", fVar.f69067e, downloadBean.getSubjectId(), 2);
        return Unit.f67061a;
    }

    private final void D(BaseViewHolder baseViewHolder, final DownloadBean downloadBean) {
        long readProgress;
        if (downloadBean.isShorts()) {
            ep.e eVar = ep.e.f61974a;
            String postId = downloadBean.getPostId();
            Intrinsics.e(postId);
            readProgress = eVar.c(postId);
        } else {
            readProgress = downloadBean.getReadProgress();
        }
        final long j11 = readProgress;
        Long duration = downloadBean.getDuration();
        long jLongValue = duration != null ? duration.longValue() : 1L;
        final int i11 = (int) (((j11 * 1.0f) / (jLongValue > 0 ? jLongValue : 1L)) * 100);
        ((ProgressBar) baseViewHolder.getView(R$id.progress_bar)).setProgress(i11);
        final Context context = baseViewHolder.itemView.getContext();
        if (i11 < 0 || i11 >= 101) {
            return;
        }
        ((TnTextView) baseViewHolder.getView(R$id.tv_read_progress)).setTextAction(new Function0() { // from class: ly.e
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return f.E(i11, j11, downloadBean, context);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence E(int i11, long j11, DownloadBean downloadBean, Context context) {
        if (i11 != 0) {
            if (i11 != 100) {
                return downloadBean.getType() == 1 ? context.getString(R$string.download_listened, Integer.valueOf(i11)) : context.getString(R$string.download_watched, Integer.valueOf(i11));
            }
            return context.getString(R$string.download_finished);
        }
        if (j11 > 0) {
            return downloadBean.getType() == 1 ? context.getString(R$string.download_listened, 1) : context.getString(R$string.download_watched, 1);
        }
        return context.getString(R$string.download_not_open);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public void b(final BaseViewHolder helper, final DownloadBean item) {
        String ugcVideoType;
        String strA;
        List<Object> data;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        int position = helper.getPosition();
        BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
        ((ConstraintLayout) helper.getView(R$id.cl_item_root)).setPadding(0, 0, 0, position == ((baseProviderMultiAdapterG == null || (data = baseProviderMultiAdapterG.getData()) == null) ? 0 : data.size()) - 1 ? dk.a.b(100) : dk.a.b(8));
        String str = "";
        if (item.isInnerRes()) {
            String cover = item.getCover();
            if (cover != null) {
                Context context = helper.itemView.getContext();
                Intrinsics.g(context, "getContext(...)");
                DownloadUtilKt.a(context, (ImageView) helper.getView(R$id.iv_cover), cover, item.getThumbnail());
            }
        } else {
            AppCompatImageView appCompatImageView = (AppCompatImageView) helper.getView(R$id.iv_cover);
            com.transsnet.downloader.viewmodel.a0 a0Var = com.transsnet.downloader.viewmodel.a0.f60085a;
            String cover2 = item.getCover();
            if (cover2 == null) {
                cover2 = "";
            }
            appCompatImageView.setImageBitmap(a0Var.d(cover2));
        }
        boolean z10 = item.getType() == 9;
        helper.setGone(R$id.tv_shorts, !z10);
        if (z10) {
            helper.setGone(R$id.iv_type, true);
        } else {
            helper.setGone(R$id.iv_type, false);
            AppCompatImageView appCompatImageView2 = (AppCompatImageView) helper.getView(R$id.iv_type);
            if (!item.isInnerRes()) {
                appCompatImageView2.setImageResource(R$drawable.ic_tag_local_file);
            } else if (!item.isUGCVideo() || (ugcVideoType = item.getUgcVideoType()) == null || ugcVideoType.length() == 0) {
                appCompatImageView2.setImageResource(com.transsion.moviedetailapi.g.a(Integer.valueOf(item.getSubjectType())));
            } else {
                UGCVideoTypeKt.j(appCompatImageView2, item.getUgcCateLev1Id(), item.getUgcCateLev2Id(), item.getUgcCateLev3Id(), item.getUgcCateLev4Id(), item.getUgcVideoType());
            }
        }
        TextView textView = (TextView) helper.getView(R$id.tv_btn);
        if (item.isInnerRes()) {
            textView.setBackground(androidx.core.content.b.getDrawable(Utils.a(), R$drawable.bg_btn_save_new));
            Drawable drawable = androidx.core.content.b.getDrawable(Utils.a(), R$mipmap.icon_download_premium);
            if (drawable != null) {
                drawable.setBounds(0, 0, dk.a.b(11), dk.a.b(11));
            }
            textView.setCompoundDrawablesRelative(drawable, null, null, null);
            textView.setCompoundDrawablePadding(dk.a.b(2));
            textView.setText(androidx.core.content.b.getString(Utils.a(), com.transsion.baseui.R$string.Save));
            jg.c.c(textView, 0L, new Function1() { // from class: ly.d
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return f.C(helper, item, this, (View) obj);
                }
            }, 1, null);
            com.transsion.baselib.helper.f.f43269a.h(DownloadPageType.DOWNLOAD.getPageName(), "save_local/vip_prompt", this.f69067e, item.getSubjectId(), 2);
        } else {
            textView.setBackground(androidx.core.content.b.getDrawable(Utils.a(), R$drawable.bg_btn_01_new));
            textView.setText(androidx.core.content.b.getString(Utils.a(), com.transsion.baseui.R$string.play));
            textView.setCompoundDrawablesRelative(null, null, null, null);
        }
        ((TextView) helper.getView(R$id.tv_name)).setText(item.getTitleNameAppendResolution());
        TextView textView2 = (TextView) helper.getView(R$id.tv_ep);
        textView2.setVisibility(item.getEpName().length() > 0 ? 0 : 8);
        textView2.setText(item.getEpName());
        Long size = item.getSize();
        if (size != null && (strA = oh.b.a(size.longValue(), 1)) != null) {
            str = strA;
        }
        ((TextView) helper.getView(R$id.tv_file_size)).setText(str);
        if (item.getStatus() == 10) {
            jg.c.k(helper.getView(R$id.tv_series_line));
            TextView textView3 = (TextView) helper.getView(R$id.tv_series_count);
            jg.c.k(textView3);
            textView3.setText(helper.itemView.getContext().getString(R$string.download_episodes, Integer.valueOf(item.getCount())));
            jg.c.g(helper.getView(R$id.layout_no_file_tips));
        } else {
            jg.c.g(helper.getView(R$id.tv_series_count));
            jg.c.g(helper.getView(R$id.tv_series_line));
            boolean zIsFileExist = item.isFileExist();
            helper.getView(R$id.layout_no_file_tips).setVisibility(!zIsFileExist ? 0 : 8);
            helper.getView(R$id.iv_play).setVisibility(zIsFileExist ? 0 : 8);
        }
        D(helper, item);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
    public void f(BaseViewHolder helper, DownloadBean item, List payloads) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        Intrinsics.h(payloads, "payloads");
        super.f(helper, item, payloads);
        if (payloads.isEmpty()) {
            return;
        }
        Object objV0 = CollectionsKt.v0(payloads);
        if (objV0 instanceof DownloadBean) {
            D(helper, (DownloadBean) objV0);
        }
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return LayoutType.DONE_LAYOUT.ordinal();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.adapter_downloaded_item;
    }
}
