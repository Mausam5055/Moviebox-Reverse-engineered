package com.transsion.postdetail.ui.adapter.favorite;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.view.CornerTextView;
import com.tn.lib.widget.R$string;
import com.transsion.baseui.util.TimeUtilKt;
import com.transsion.baseui.util.j;
import com.transsion.baseui.util.q;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;
import com.transsion.ugcvideodetail.api.UGCVideoTypeKt;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoBelongToCollection;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import ej.f;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import nh.m;
import r6.h;
import r6.i;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u0000 !2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0002\"#B)\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ%\u0010\u000f\u001a\u00020\r2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\f2\u0006\u0010\u000e\u001a\u00020\rH\u0014¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0014\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0018\u0010 \u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001f¨\u0006$"}, d2 = {"Lcom/transsion/postdetail/ui/adapter/favorite/b;", "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "Lr6/i;", "", "data", "Lsj/b;", "exposureHelper", "", "showNumberTh", "<init>", "(Ljava/util/List;Lsj/b;Z)V", "", "", RequestParameters.POSITION, "N1", "(Ljava/util/List;I)I", "Lcom/transsion/postdetail/ui/adapter/favorite/a;", "itemClickListener", "", "Q1", "(Lcom/transsion/postdetail/ui/adapter/favorite/a;)V", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "holder", "B0", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V", "G", "Lsj/b;", "H", "Z", "I", "Lcom/transsion/postdetail/ui/adapter/favorite/a;", "clickListener", "J", "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class b extends BaseProviderMultiAdapter<UGCVideo> implements i {
    private static final String K = "UgcFavoriteFeedAdapter";
    public static final int L = 1;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private final sj.b exposureHelper;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private final boolean showNumberTh;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private a clickListener;

    /* JADX INFO: renamed from: com.transsion.postdetail.ui.adapter.favorite.b$b, reason: collision with other inner class name */
    public static final class C0651b extends BaseItemProvider {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final sj.b f49390e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final boolean f49391f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private a f49392g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final String f49393h = "/ugc/favorite";

        public C0651b(sj.b bVar, boolean z10) {
            this.f49390e = bVar;
            this.f49391f = z10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void A(C0651b c0651b, UGCVideo uGCVideo, Ref.IntRef intRef, View view) {
            if (!m.f70474a.e()) {
                uh.b.f76753a.d(R$string.no_network_toast);
                return;
            }
            a aVar = c0651b.f49392g;
            if (aVar != null) {
                aVar.a(uGCVideo);
            }
            c0651b.B(WebConstants.FIELD_ITEM, uGCVideo, intRef.element);
        }

        private final void B(String str, UGCVideo uGCVideo, int i11) {
            HashMap map = new HashMap();
            map.put("module_name", str);
            map.put("ops", String.valueOf(uGCVideo.getOps()));
            map.put("content_id", String.valueOf(uGCVideo.getUgcVideoId()));
            UGCVideoBelongToCollection belongToCollection = uGCVideo.getBelongToCollection();
            map.put("belong_to_collection_id", String.valueOf(belongToCollection != null ? belongToCollection.getCollectionId() : null));
            map.put(RequestParameters.POSITION, String.valueOf(i11));
            map.put("refer_subject_id", String.valueOf(uGCVideo.getSubjectId()));
            map.put("content_type", "ugc_video");
            com.transsion.baselib.helper.a.f43262a.b(this.f49393h, map);
        }

        public final void C(a aVar) {
            this.f49392g = aVar;
        }

        @Override // com.chad.library.adapter.base.provider.BaseItemProvider
        public int l() {
            return 1;
        }

        @Override // com.chad.library.adapter.base.provider.BaseItemProvider
        public int m() {
            return R$layout.fragment_favorite_item_waterfall_feed;
        }

        @Override // com.chad.library.adapter.base.provider.BaseItemProvider
        /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
        public void b(BaseViewHolder holder, final UGCVideo feedItem) {
            String thumbnail;
            Intrinsics.h(holder, "holder");
            Intrinsics.h(feedItem, "feedItem");
            final Ref.IntRef intRef = new Ref.IntRef();
            intRef.element = holder.getBindingAdapterPosition();
            ShapeableImageView shapeableImageView = (ShapeableImageView) holder.getViewOrNull(R$id.coverImage);
            if (shapeableImageView != null) {
                f.a aVar = f.f61882a;
                Context context = shapeableImageView.getContext();
                Intrinsics.g(context, "getContext(...)");
                f.b bVarM = aVar.m(context);
                Cover cover = feedItem.getCover();
                f.b bVarG = bVarM.g(cover != null ? cover.getUrl() : null);
                Cover cover2 = feedItem.getCover();
                if (cover2 == null || (thumbnail = cover2.getThumbnail()) == null) {
                    thumbnail = "";
                }
                bVarG.l(thumbnail).d(shapeableImageView);
                shapeableImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ui.adapter.favorite.c
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        b.C0651b.A(this.f49394a, feedItem, intRef, view);
                    }
                });
            }
            String corner = feedItem.getCorner();
            if (corner == null) {
                CornerTextView cornerTextView = (CornerTextView) holder.getViewOrNull(R$id.languageTag);
                if (cornerTextView != null) {
                    cornerTextView.setVisibility(4);
                }
            } else {
                holder.setText(R$id.languageTag, corner);
            }
            ImageView imageView = (ImageView) holder.getViewOrNull(R$id.trending_grid_type_icon);
            if (imageView != null) {
                UGCVideoTypeKt.i(imageView, feedItem, null, 4, null);
            }
            int i11 = R$id.trending_grid_time_text;
            Long duration = feedItem.getDuration();
            holder.setText(i11, TimeUtilKt.a(duration != null ? Integer.valueOf((int) duration.longValue()) : null));
            holder.setText(R$id.videoTitle, feedItem.getTitle());
            holder.setText(R$id.videoInfo, q.e(feedItem.isVerticalImmStyle() ? CollectionsKt.q("special_#shorts_icon", Utils.a().getString(com.transsion.baseui.R$string.ugc_video_shorts), j.c(feedItem.getWatchNum(), k())) : CollectionsKt.q(j.c(feedItem.getWatchNum(), k()), TimeUtilKt.l(String.valueOf(feedItem.getPublishTime()))), k()));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(List<UGCVideo> data, sj.b bVar, boolean z10) {
        super(data);
        Intrinsics.h(data, "data");
        this.exposureHelper = bVar;
        this.showNumberTh = z10;
    }

    public /* synthetic */ b(List list, sj.b bVar, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, bVar, (i11 & 4) != 0 ? false : z10);
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter, com.chad.library.adapter.base.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: B0 */
    public void onViewAttachedToWindow(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.onViewAttachedToWindow(holder);
        int bindingAdapterPosition = holder.getBindingAdapterPosition();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("曝光的位置position11: ");
        sb2.append(bindingAdapterPosition);
        sj.b bVar = this.exposureHelper;
        if (bVar != null) {
            RecyclerView.m layoutManager = getRecyclerView().getLayoutManager();
            Intrinsics.f(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.StaggeredGridLayoutManager");
            sj.b.j(bVar, (StaggeredGridLayoutManager) layoutManager, bindingAdapterPosition, true, false, 8, null);
        }
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    protected int N1(List<? extends UGCVideo> data, int position) {
        Intrinsics.h(data, "data");
        return 1;
    }

    public final void Q1(a itemClickListener) {
        this.clickListener = itemClickListener;
        C0651b c0651b = new C0651b(this.exposureHelper, this.showNumberTh);
        c0651b.C(this.clickListener);
        F1(c0651b);
    }

    @Override // r6.i
    public /* bridge */ /* synthetic */ r6.f b(BaseQuickAdapter baseQuickAdapter) {
        return h.a(this, baseQuickAdapter);
    }
}
