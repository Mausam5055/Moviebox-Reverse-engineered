package com.transsion.usercenter.profile.adapter;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.util.TimeUtilKt;
import com.transsion.baseui.util.j;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.ugcvideodetail.api.UGCVideoTypeKt;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoHashTag;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import ej.f;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import r6.h;
import r6.i;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\u0018\u0000 \u00162\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0002\u0017\u0018B\u001f\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tJ%\u0010\r\u001a\u00020\u000b2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\n2\u0006\u0010\f\u001a\u00020\u000bH\u0014¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0019"}, d2 = {"Lcom/transsion/usercenter/profile/adapter/c;", "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "Lr6/i;", "", "data", "Lsj/b;", "exposureHelper", "<init>", "(Ljava/util/List;Lsj/b;)V", "", "", RequestParameters.POSITION, "N1", "(Ljava/util/List;I)I", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "holder", "", "B0", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V", "G", "Lsj/b;", "H", "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class c extends BaseProviderMultiAdapter<UGCVideo> implements i {
    private static final String I = "UserProfileVideoAdapter";
    public static final int J = 1;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private final sj.b exposureHelper;

    public static final class b extends BaseItemProvider {
        private final void y(BaseViewHolder baseViewHolder, UGCVideo uGCVideo) {
            String url;
            String thumbnail;
            UGCVideoHashTag uGCVideoHashTag;
            ShapeableImageView shapeableImageView = (ShapeableImageView) baseViewHolder.getView(R$id.iv_cover);
            f.b bVarM = f.f61882a.m(k());
            Cover cover = uGCVideo.getCover();
            if (cover == null || (url = cover.getUrl()) == null) {
                url = "";
            }
            f.b bVarI = bVarM.g(url).i(R$color.cl37);
            Cover cover2 = uGCVideo.getCover();
            if (cover2 == null || (thumbnail = cover2.getThumbnail()) == null) {
                thumbnail = "";
            }
            bVarI.l(thumbnail).d(shapeableImageView);
            int i11 = R$id.tv_title;
            String title = uGCVideo.getTitle();
            if (title == null) {
                title = "";
            }
            baseViewHolder.setText(i11, title);
            baseViewHolder.setText(R$id.tv_views, j.c(uGCVideo.getWatchNum(), k()));
            List<UGCVideoHashTag> hashTags = uGCVideo.getHashTags();
            String title2 = (hashTags == null || (uGCVideoHashTag = (UGCVideoHashTag) CollectionsKt.l0(hashTags, 0)) == null) ? null : uGCVideoHashTag.getTitle();
            boolean z10 = true;
            if (title2 == null || title2.length() == 0) {
                baseViewHolder.setVisible(R$id.separator, false);
                baseViewHolder.setText(R$id.tv_type, "");
            } else {
                baseViewHolder.setVisible(R$id.separator, true);
                baseViewHolder.setText(R$id.tv_type, title2);
            }
            UGCVideoTypeKt.i((ImageView) baseViewHolder.getView(R$id.iv_res_post_type), uGCVideo, null, 4, null);
            Long duration = uGCVideo.getDuration();
            baseViewHolder.setText(R$id.tv_duration, TimeUtilKt.q(duration != null ? duration.longValue() : 0L));
            String corner = uGCVideo.getCorner();
            View view = baseViewHolder.getView(R$id.tag_audio);
            TextView textView = (TextView) baseViewHolder.getView(R$id.tv_audio_tag);
            if (corner != null && !StringsKt.q0(corner)) {
                z10 = false;
            }
            view.setVisibility(z10 ? 8 : 0);
            String corner2 = uGCVideo.getCorner();
            textView.setText(corner2 != null ? corner2 : "");
        }

        @Override // com.chad.library.adapter.base.provider.BaseItemProvider
        public int l() {
            return 1;
        }

        @Override // com.chad.library.adapter.base.provider.BaseItemProvider
        public int m() {
            return R$layout.user_profile_item_video;
        }

        @Override // com.chad.library.adapter.base.provider.BaseItemProvider
        /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
        public void b(BaseViewHolder holder, UGCVideo data) {
            Intrinsics.h(holder, "holder");
            Intrinsics.h(data, "data");
            lg.a.C0828a.f(lg.a.f68839a, c.I, "convert position=" + holder.getLayoutPosition() + " id=" + data.getUgcVideoId(), false, 4, null);
            y(holder, data);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(List<UGCVideo> data, sj.b bVar) {
        super(data);
        Intrinsics.h(data, "data");
        this.exposureHelper = bVar;
        F1(new b());
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter, com.chad.library.adapter.base.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: B0 */
    public void onViewAttachedToWindow(BaseViewHolder holder) {
        sj.b bVar;
        Intrinsics.h(holder, "holder");
        super.onViewAttachedToWindow(holder);
        int bindingAdapterPosition = holder.getBindingAdapterPosition();
        RecyclerView.m layoutManager = getRecyclerView().getLayoutManager();
        if (!(layoutManager instanceof LinearLayoutManager) || (bVar = this.exposureHelper) == null) {
            return;
        }
        bVar.i(layoutManager, bindingAdapterPosition, true, false);
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    protected int N1(List<? extends UGCVideo> data, int position) {
        Intrinsics.h(data, "data");
        return 1;
    }

    @Override // r6.i
    public /* bridge */ /* synthetic */ r6.f b(BaseQuickAdapter baseQuickAdapter) {
        return h.a(this, baseQuickAdapter);
    }
}
