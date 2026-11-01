package ly;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.collection.s;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.TnTextView;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.ugcvideodetail.api.UGCVideoTypeKt;
import com.transsnet.downloader.R$drawable;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;
import com.transsnet.downloader.R$mipmap;
import com.transsnet.downloader.R$string;
import com.transsnet.downloader.adapter.DownloadedHolderKt;
import com.transsnet.downloader.adapter.LayoutType;
import com.transsnet.downloader.manager.DownloadEsHelper;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import nh.m;

/* JADX INFO: loaded from: classes7.dex */
public final class g extends BaseItemProvider {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final a f69068l = new a(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f69069e = R$string.downloading_time_left;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f69070f = R$string.download_status_waiting;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f69071g = R$string.download_status_paused;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f69072h = R$string.download_status_failed;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f69073i = R$string.download_status_no_net;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final oy.c f69074j = new oy.c();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Map f69075k = new LinkedHashMap();

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final long f69076a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long f69077b;

        public b(long j11, long j12) {
            this.f69076a = j11;
            this.f69077b = j12;
        }

        public final long a() {
            return this.f69076a;
        }

        public final long b() {
            return this.f69077b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.f69076a == bVar.f69076a && this.f69077b == bVar.f69077b;
        }

        public int hashCode() {
            return (s.a(this.f69076a) * 31) + s.a(this.f69077b);
        }

        public String toString() {
            return "SpeedSnapshot(progress=" + this.f69076a + ", timeStamp=" + this.f69077b + ")";
        }
    }

    private final void B(BaseViewHolder baseViewHolder, DownloadBean downloadBean) {
        Object objY;
        long progress = downloadBean.getProgress();
        if (progress < 0) {
            progress = 0;
        }
        Long size = downloadBean.getSize();
        long jLongValue = size != null ? size.longValue() : 1L;
        if (jLongValue <= 0) {
            jLongValue = 1;
        }
        float f11 = 100;
        int i11 = (int) (((progress * 1.0f) / jLongValue) * f11);
        boolean zA = com.transsnet.downloader.util.h.f59938a.a();
        int status = downloadBean.getStatus();
        if (status == 1 || status == 2) {
            ProgressBar progressBar = (ProgressBar) baseViewHolder.getView(R$id.pb_download);
            progressBar.setProgressDrawable(androidx.core.content.b.getDrawable(baseViewHolder.itemView.getContext(), zA ? R$drawable.bg_progress_bar_svip : R$drawable.bg_progress_bar_pause));
            progressBar.setSecondaryProgress(downloadBean.getIsPreDownload() ? i11 : 0);
            if (downloadBean.getIsPreDownload()) {
                i11 = 0;
            }
            progressBar.setProgress(i11);
        } else {
            ProgressBar progressBar2 = (ProgressBar) baseViewHolder.getView(R$id.pb_download);
            progressBar2.setProgressDrawable(androidx.core.content.b.getDrawable(baseViewHolder.itemView.getContext(), R$drawable.bg_progress_bar_pause));
            progressBar2.setSecondaryProgress(i11);
            progressBar2.setProgress(0);
        }
        new StringBuilder(oh.b.a(progress, 1));
        oh.b.a(jLongValue, 1);
        ((TextView) baseViewHolder.getView(R$id.tv_state_progress)).setText(oh.b.a(jLongValue, 1));
        int i12 = R$color.white_80;
        int status2 = downloadBean.getStatus();
        if (status2 == 1 || status2 == 2) {
            if (downloadBean.getIsPreDownload()) {
                objY = Integer.valueOf(this.f69070f);
            } else {
                i12 = R$color.white_80;
                objY = y(downloadBean);
            }
        } else if (status2 == 3) {
            objY = Integer.valueOf(this.f69070f);
        } else if (status2 == 4) {
            objY = Integer.valueOf(this.f69071g);
            i12 = R$color.error_50;
        } else if (status2 != 6) {
            objY = null;
        } else {
            objY = (downloadBean.isNoNetError() || !m.f70474a.e()) ? Integer.valueOf(this.f69073i) : Integer.valueOf(this.f69072h);
            i12 = R$color.error_50;
        }
        TnTextView tnTextView = (TnTextView) baseViewHolder.getView(R$id.tv_time_or_status);
        if (objY instanceof Integer) {
            tnTextView.setTextById(((Number) objY).intValue());
        } else if (objY instanceof String) {
            tnTextView.setTextWithString((CharSequence) objY);
        }
        tnTextView.setTextColor(androidx.core.content.b.getColor(baseViewHolder.itemView.getContext(), i12));
        C(baseViewHolder, downloadBean, zA);
        int status3 = downloadBean.getStatus();
        if (status3 == 1 || status3 == 2 || status3 == 3) {
            ((AppCompatImageView) baseViewHolder.getView(R$id.iv_state_bg)).setImageResource(R$mipmap.ic_download_pause);
        } else if (status3 == 4 || status3 == 6) {
            ((AppCompatImageView) baseViewHolder.getView(R$id.iv_state_bg)).setImageResource(R$mipmap.ic_download_downloading);
        }
        long readProgress = downloadBean.getReadProgress();
        Long duration = downloadBean.getDuration();
        long jLongValue2 = duration != null ? duration.longValue() : 1L;
        ((ProgressBar) baseViewHolder.getView(R$id.progress_bar)).setProgress((int) (((readProgress * 1.0f) / (jLongValue2 <= 0 ? 1L : jLongValue2)) * f11));
    }

    private final void C(BaseViewHolder baseViewHolder, DownloadBean downloadBean, boolean z10) {
        ConstraintLayout constraintLayout = (ConstraintLayout) baseViewHolder.getView(R$id.speedLimitContainer);
        TextView textView = (TextView) baseViewHolder.getView(R$id.tvSpeedLimitSpeed);
        boolean z11 = downloadBean.getStatus() == 1 || downloadBean.getStatus() == 2;
        double dK = RangesKt.k(this.f69074j.d(), 0.0d, 1.0d);
        long currentDownloadSpeed = (long) (downloadBean.getCurrentDownloadSpeed() * dK);
        if (!z10 || !z11 || downloadBean.getIsPreDownload() || dK <= 0.0d || currentDownloadSpeed <= 0) {
            constraintLayout.setVisibility(8);
            textView.setText("");
            return;
        }
        constraintLayout.setVisibility(0);
        textView.setText("+" + oh.b.b(currentDownloadSpeed, 1, 0) + "/s");
    }

    private final String y(DownloadBean downloadBean) {
        long currentDownloadSpeed;
        long jCurrentTimeMillis = System.currentTimeMillis();
        String resourceId = downloadBean.getResourceId();
        if (resourceId == null) {
            resourceId = downloadBean.getUrl();
        }
        b bVar = (b) this.f69075k.get(resourceId);
        long jB = bVar == null ? 0L : (jCurrentTimeMillis - bVar.b()) / 1000;
        if (bVar != null && jB < 2 && downloadBean.getCurrentDownloadSpeed() > 0) {
            return oh.b.b(downloadBean.getCurrentDownloadSpeed(), 1, 0) + "/s";
        }
        if (bVar == null || jB <= 0) {
            currentDownloadSpeed = downloadBean.getCurrentDownloadSpeed();
        } else {
            long progress = downloadBean.getProgress() - bVar.a();
            currentDownloadSpeed = progress > 0 ? progress / jB : downloadBean.getCurrentDownloadSpeed();
        }
        this.f69075k.put(resourceId, new b(downloadBean.getProgress(), jCurrentTimeMillis));
        if (currentDownloadSpeed <= 0) {
            return "0KB/s";
        }
        downloadBean.setCurrentDownloadSpeed(currentDownloadSpeed);
        return oh.b.b(currentDownloadSpeed, 1, 0) + "/s";
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
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
            DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f59419m.a();
            DownloadBean downloadBean = (DownloadBean) objV0;
            String resourceId = downloadBean.getResourceId();
            if (resourceId == null) {
                resourceId = item.getUrl();
            }
            DownloadBean downloadBeanQ = downloadEsHelperA.q(resourceId);
            if (downloadBeanQ != null) {
                downloadBean = downloadBeanQ;
            }
            B(helper, downloadBean);
        }
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return LayoutType.NO_DONE_LAYOUT.ordinal();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.adapter_downloading_item;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, DownloadBean item) {
        String ugcVideoType;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f59419m.a();
        String resourceId = item.getResourceId();
        if (resourceId == null) {
            resourceId = item.getUrl();
        }
        DownloadBean downloadBeanQ = downloadEsHelperA.q(resourceId);
        if (downloadBeanQ == null) {
            downloadBeanQ = item;
        }
        View view = helper.getView(R$id.card_cover);
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        int position = helper.getPosition();
        BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
        marginLayoutParams.bottomMargin = dk.a.b(position == (baseProviderMultiAdapterG != null ? baseProviderMultiAdapterG.getItemCount() : 0) - 1 ? 16 : 12);
        view.setLayoutParams(marginLayoutParams);
        String cover = downloadBeanQ.getCover();
        if (cover != null) {
            Context context = helper.itemView.getContext();
            Intrinsics.g(context, "getContext(...)");
            DownloadedHolderKt.a(context, (ImageView) helper.getView(R$id.iv_cover), cover, item.getThumbnail());
        }
        boolean z10 = item.getType() == 9;
        helper.setGone(R$id.tv_shorts, !z10);
        if (z10) {
            helper.setGone(R$id.iv_type, true);
        } else {
            helper.setGone(R$id.iv_type, false);
            AppCompatImageView appCompatImageView = (AppCompatImageView) helper.getView(R$id.iv_type);
            if (!downloadBeanQ.isUGCVideo() || (ugcVideoType = downloadBeanQ.getUgcVideoType()) == null || ugcVideoType.length() == 0) {
                appCompatImageView.setImageResource(com.transsion.moviedetailapi.g.a(Integer.valueOf(downloadBeanQ.getSubjectType())));
            } else {
                UGCVideoTypeKt.j(appCompatImageView, downloadBeanQ.getUgcCateLev1Id(), downloadBeanQ.getUgcCateLev2Id(), downloadBeanQ.getUgcCateLev3Id(), downloadBeanQ.getUgcCateLev4Id(), downloadBeanQ.getUgcVideoType());
            }
        }
        TextView textView = (TextView) helper.getView(R$id.tv_name);
        textView.setText(downloadBeanQ.getTitleNameAppendResolution());
        textView.setTag(downloadBeanQ.getResourceId());
        TextView textView2 = (TextView) helper.getView(R$id.tv_ep);
        textView2.setVisibility(downloadBeanQ.getEpName().length() > 0 ? 0 : 8);
        textView2.setText(downloadBeanQ.getEpName());
        B(helper, downloadBeanQ);
    }
}
