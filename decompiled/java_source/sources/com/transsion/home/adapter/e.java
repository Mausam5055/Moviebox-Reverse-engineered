package com.transsion.home.adapter;

import ak.o;
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
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.util.TimeUtilKt;
import com.transsion.baseui.util.j;
import com.transsion.home.R$drawable;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.ugcvideodetail.api.UGCVideoTypeKt;
import com.transsion.ugcvideodetail.api.bean.UGCContent;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoCreator;
import com.transsion.ugcvideodetail.api.bean.UGCVideoHashTag;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import r6.h;
import r6.i;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0007\u0018\u0000 )2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0003*+,B3\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\n\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\fJ%\u0010\u0010\u001a\u00020\u000e2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\r2\u0006\u0010\u000f\u001a\u00020\u000eH\u0014¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0018\u0010\"\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R*\u0010\n\u001a\u00020\b2\u0006\u0010#\u001a\u00020\b8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010\u001a\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(¨\u0006-"}, d2 = {"Lcom/transsion/home/adapter/e;", "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;", "Lcom/transsion/ugcvideodetail/api/bean/UGCContent;", "Lr6/i;", "", "data", "Lhl/b;", "exposureHelper", "", "showNumberTh", "isEducationList", "<init>", "(Ljava/util/List;Lhl/b;ZZ)V", "", "", RequestParameters.POSITION, "N1", "(Ljava/util/List;I)I", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "holder", "", "B0", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V", "G", "Lhl/b;", "H", "Z", "Lcom/transsion/home/adapter/e$c;", "I", "Lcom/transsion/home/adapter/e$c;", "filmItemProvider", "Lcom/transsion/home/adapter/e$b;", "J", "Lcom/transsion/home/adapter/e$b;", "eduFilmItemProvider", AppMeasurementSdk.ConditionalUserProperty.VALUE, "K", "Q1", "()Z", "R1", "(Z)V", "L", "a", "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class e extends BaseProviderMultiAdapter<UGCContent> implements i {
    public static final int M = 8;
    private static final String N = "FilmListAdapter";
    public static final int O = 1;
    public static final int P = 2;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private final hl.b exposureHelper;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private final boolean showNumberTh;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private c filmItemProvider;

    /* JADX INFO: renamed from: J, reason: from kotlin metadata */
    private b eduFilmItemProvider;

    /* JADX INFO: renamed from: K, reason: from kotlin metadata */
    private boolean isEducationList;

    public static final class b extends BaseItemProvider {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final hl.b f44268e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final boolean f44269f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f44270g;

        public b(hl.b bVar, boolean z10, boolean z11) {
            this.f44268e = bVar;
            this.f44269f = z10;
            this.f44270g = z11;
        }

        /* JADX WARN: Code duplicated, block: B:45:0x0102  */
        private final void A(BaseViewHolder baseViewHolder, UGCVideo uGCVideo) {
            String url;
            String thumbnail;
            UGCVideoHashTag uGCVideoHashTag;
            String title;
            String avatar;
            String nickname;
            ShapeableImageView shapeableImageView = (ShapeableImageView) baseViewHolder.getView(R$id.iv_cover);
            ej.f.a aVar = ej.f.f61882a;
            ej.f.b bVarM = aVar.m(k());
            Cover cover = uGCVideo.getCover();
            if (cover == null || (url = cover.getUrl()) == null) {
                url = "";
            }
            ej.f.b bVarI = bVarM.g(url).i(R$color.cl37);
            Cover cover2 = uGCVideo.getCover();
            if (cover2 == null || (thumbnail = cover2.getThumbnail()) == null) {
                thumbnail = "";
            }
            bVarI.l(thumbnail).d(shapeableImageView);
            int i11 = R$id.tv_title;
            String title2 = uGCVideo.getTitle();
            if (title2 == null) {
                title2 = "";
            }
            baseViewHolder.setText(i11, title2);
            baseViewHolder.setText(R$id.tv_views, j.c(uGCVideo.getWatchNum(), k()));
            boolean z10 = true;
            if (!this.f44270g || o.f646a.i()) {
                baseViewHolder.setVisible(R$id.iv_res_post_type, true);
                baseViewHolder.setGone(R$id.iv_upload_user_icon, true);
                ((ImageView) baseViewHolder.getView(R$id.iv_res_post_type)).setImageResource(UGCVideoTypeKt.e(uGCVideo.getCategory()));
                if (o.f646a.i()) {
                    Long publishTime = uGCVideo.getPublishTime();
                    long jLongValue = publishTime != null ? publishTime.longValue() : 0L;
                    if (jLongValue > 0) {
                        title = TimeUtilKt.i(jLongValue);
                    } else {
                        title = "";
                    }
                } else {
                    List<UGCVideoHashTag> hashTags = uGCVideo.getHashTags();
                    if (hashTags == null || (uGCVideoHashTag = (UGCVideoHashTag) CollectionsKt.l0(hashTags, 0)) == null || (title = uGCVideoHashTag.getTitle()) == null) {
                        title = "";
                    }
                }
                if (title.length() == 0) {
                    baseViewHolder.setVisible(R$id.separator, false);
                    baseViewHolder.setText(R$id.tv_type, "");
                } else {
                    baseViewHolder.setVisible(R$id.separator, true);
                    baseViewHolder.setText(R$id.tv_type, title);
                }
            } else {
                baseViewHolder.setGone(R$id.iv_res_post_type, true);
                baseViewHolder.setVisible(R$id.iv_upload_user_icon, true);
                ej.f.b bVarM2 = aVar.m(k());
                UGCVideoCreator creator = uGCVideo.getCreator();
                if (creator == null || (avatar = creator.getAvatar()) == null) {
                    avatar = "";
                }
                bVarM2.g(avatar).i(R$drawable.icon_ugc_user_upload).d((ImageView) baseViewHolder.getView(R$id.iv_upload_user_icon));
                int i12 = R$id.tv_type;
                UGCVideoCreator creator2 = uGCVideo.getCreator();
                if (creator2 == null || (nickname = creator2.getNickname()) == null) {
                    nickname = "";
                }
                baseViewHolder.setText(i12, nickname);
            }
            if (o.f646a.i()) {
                z(baseViewHolder, uGCVideo);
            }
            baseViewHolder.setText(R$id.tv_duration, uGCVideo.getTimeOrCount(k()));
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

        private final void y(BaseViewHolder baseViewHolder) {
            int i11;
            int layoutPosition = baseViewHolder.getLayoutPosition();
            View view = baseViewHolder.getView(R$id.tag_ranking);
            TextView textView = (TextView) baseViewHolder.getView(R$id.tv_ranking);
            if (!this.f44269f) {
                view.setVisibility(8);
                return;
            }
            view.setVisibility(0);
            int i12 = layoutPosition + 1;
            textView.setText(String.valueOf(i12));
            if (i12 == 1) {
                i11 = R$drawable.bg_ranking_no1;
            } else if (i12 != 2) {
                i11 = i12 != 3 ? R$drawable.bg_ranking_normal : R$drawable.bg_ranking_no3;
            } else {
                i11 = R$drawable.bg_ranking_no2;
            }
            view.setBackgroundResource(i11);
        }

        private final void z(BaseViewHolder baseViewHolder, UGCVideo uGCVideo) {
            RecyclerView recyclerView = (RecyclerView) baseViewHolder.getViewOrNull(R$id.recyclerTag);
            if (recyclerView == null) {
                return;
            }
            List<UGCVideoHashTag> filteredHashTags = uGCVideo.getFilteredHashTags();
            List<UGCVideoHashTag> list = filteredHashTags;
            if (list == null || list.isEmpty()) {
                recyclerView.setAdapter(null);
                recyclerView.setVisibility(8);
                return;
            }
            recyclerView.setVisibility(0);
            if (recyclerView.getLayoutManager() == null) {
                recyclerView.setLayoutManager(new LinearLayoutManager(k(), 0, false));
                recyclerView.setNestedScrollingEnabled(false);
            }
            Intrinsics.e(filteredHashTags);
            recyclerView.setAdapter(new com.transsion.home.adapter.operateUGC.adapter.f(filteredHashTags));
        }

        @Override // com.chad.library.adapter.base.provider.BaseItemProvider
        /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
        public void b(BaseViewHolder holder, UGCContent data) {
            Intrinsics.h(holder, "holder");
            Intrinsics.h(data, "data");
            String topicType = data.getTopicType();
            lg.a.C0828a c0828a = lg.a.f68839a;
            lg.a.C0828a.f(c0828a, e.N, "convert: position=" + holder.getLayoutPosition() + ", topicType=" + topicType, false, 4, null);
            if (Intrinsics.c(topicType, "UGC_VIDEO")) {
                UGCVideo video = data.getVideo();
                if (video != null) {
                    A(holder, video);
                } else {
                    lg.a.C0828a.z(c0828a, e.N, "convert: UGC_VIDEO but video is null at position=" + holder.getLayoutPosition(), false, 4, null);
                }
            } else {
                lg.a.C0828a.z(c0828a, e.N, "convert: unsupported topicType=" + topicType + " at position=" + holder.getLayoutPosition(), false, 4, null);
            }
            y(holder);
        }

        public final void C(boolean z10) {
            this.f44270g = z10;
        }

        @Override // com.chad.library.adapter.base.provider.BaseItemProvider
        public int l() {
            return 2;
        }

        @Override // com.chad.library.adapter.base.provider.BaseItemProvider
        public int m() {
            return R$layout.ugc_item_edu_film_list;
        }
    }

    public static final class c extends BaseItemProvider {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final hl.b f44271e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final boolean f44272f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f44273g;

        public c(hl.b bVar, boolean z10, boolean z11) {
            this.f44271e = bVar;
            this.f44272f = z10;
            this.f44273g = z11;
        }

        private final void y(BaseViewHolder baseViewHolder) {
            int i11;
            int layoutPosition = baseViewHolder.getLayoutPosition();
            View view = baseViewHolder.getView(R$id.tag_ranking);
            TextView textView = (TextView) baseViewHolder.getView(R$id.tv_ranking);
            if (!this.f44272f) {
                view.setVisibility(8);
                return;
            }
            view.setVisibility(0);
            int i12 = layoutPosition + 1;
            textView.setText(String.valueOf(i12));
            if (i12 == 1) {
                i11 = R$drawable.bg_ranking_no1;
            } else if (i12 != 2) {
                i11 = i12 != 3 ? R$drawable.bg_ranking_normal : R$drawable.bg_ranking_no3;
            } else {
                i11 = R$drawable.bg_ranking_no2;
            }
            view.setBackgroundResource(i11);
        }

        private final void z(BaseViewHolder baseViewHolder, UGCVideo uGCVideo) {
            String url;
            String thumbnail;
            String title;
            UGCVideoHashTag uGCVideoHashTag;
            String avatar;
            String nickname;
            ShapeableImageView shapeableImageView = (ShapeableImageView) baseViewHolder.getView(R$id.iv_cover);
            ej.f.a aVar = ej.f.f61882a;
            ej.f.b bVarM = aVar.m(k());
            Cover cover = uGCVideo.getCover();
            if (cover == null || (url = cover.getUrl()) == null) {
                url = "";
            }
            ej.f.b bVarI = bVarM.g(url).i(R$color.cl37);
            Cover cover2 = uGCVideo.getCover();
            if (cover2 == null || (thumbnail = cover2.getThumbnail()) == null) {
                thumbnail = "";
            }
            bVarI.l(thumbnail).d(shapeableImageView);
            int i11 = R$id.tv_title;
            String title2 = uGCVideo.getTitle();
            if (title2 == null) {
                title2 = "";
            }
            baseViewHolder.setText(i11, title2);
            baseViewHolder.setText(R$id.tv_views, j.c(uGCVideo.getWatchNum(), k()));
            boolean z10 = true;
            if (this.f44273g) {
                baseViewHolder.setGone(R$id.iv_res_post_type, true);
                baseViewHolder.setVisible(R$id.iv_upload_user_icon, true);
                ej.f.b bVarM2 = aVar.m(k());
                UGCVideoCreator creator = uGCVideo.getCreator();
                if (creator == null || (avatar = creator.getAvatar()) == null) {
                    avatar = "";
                }
                bVarM2.g(avatar).i(R$drawable.icon_ugc_user_upload).d((ImageView) baseViewHolder.getView(R$id.iv_upload_user_icon));
                int i12 = R$id.tv_type;
                UGCVideoCreator creator2 = uGCVideo.getCreator();
                if (creator2 == null || (nickname = creator2.getNickname()) == null) {
                    nickname = "";
                }
                baseViewHolder.setText(i12, nickname);
            } else {
                baseViewHolder.setVisible(R$id.iv_res_post_type, true);
                baseViewHolder.setGone(R$id.iv_upload_user_icon, true);
                UGCVideoTypeKt.i((ImageView) baseViewHolder.getView(R$id.iv_res_post_type), uGCVideo, null, 4, null);
                List<UGCVideoHashTag> hashTags = uGCVideo.getHashTags();
                if (hashTags == null || (uGCVideoHashTag = (UGCVideoHashTag) CollectionsKt.l0(hashTags, 0)) == null || (title = uGCVideoHashTag.getTitle()) == null) {
                    title = "";
                }
                if (title.length() == 0) {
                    baseViewHolder.setVisible(R$id.separator, false);
                    baseViewHolder.setText(R$id.tv_type, "");
                } else {
                    baseViewHolder.setVisible(R$id.separator, true);
                    baseViewHolder.setText(R$id.tv_type, title);
                }
            }
            baseViewHolder.setText(R$id.tv_duration, uGCVideo.getTimeOrCount(k()));
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
        /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
        public void b(BaseViewHolder holder, UGCContent data) {
            Intrinsics.h(holder, "holder");
            Intrinsics.h(data, "data");
            String topicType = data.getTopicType();
            lg.a.C0828a c0828a = lg.a.f68839a;
            lg.a.C0828a.f(c0828a, e.N, "convert: position=" + holder.getLayoutPosition() + ", topicType=" + topicType, false, 4, null);
            if (Intrinsics.c(topicType, "UGC_VIDEO")) {
                UGCVideo video = data.getVideo();
                if (video != null) {
                    z(holder, video);
                } else {
                    lg.a.C0828a.z(c0828a, e.N, "convert: UGC_VIDEO but video is null at position=" + holder.getLayoutPosition(), false, 4, null);
                }
            } else {
                lg.a.C0828a.z(c0828a, e.N, "convert: unsupported topicType=" + topicType + " at position=" + holder.getLayoutPosition(), false, 4, null);
            }
            y(holder);
        }

        public final void B(boolean z10) {
            this.f44273g = z10;
        }

        @Override // com.chad.library.adapter.base.provider.BaseItemProvider
        public int l() {
            return 1;
        }

        @Override // com.chad.library.adapter.base.provider.BaseItemProvider
        public int m() {
            return R$layout.ugc_item_film_list;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(List<UGCContent> data, hl.b bVar, boolean z10, boolean z11) {
        super(data);
        Intrinsics.h(data, "data");
        this.exposureHelper = bVar;
        this.showNumberTh = z10;
        this.isEducationList = z11;
        c cVar = new c(bVar, z10, z11);
        this.filmItemProvider = cVar;
        b bVar2 = new b(bVar, z10, z11);
        this.eduFilmItemProvider = bVar2;
        F1(cVar);
        F1(bVar2);
    }

    public /* synthetic */ e(List list, hl.b bVar, boolean z10, boolean z11, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, bVar, (i11 & 4) != 0 ? false : z10, (i11 & 8) != 0 ? false : z11);
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter, com.chad.library.adapter.base.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: B0 */
    public void onViewAttachedToWindow(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.onViewAttachedToWindow(holder);
        int bindingAdapterPosition = holder.getBindingAdapterPosition();
        hl.b bVar = this.exposureHelper;
        if (bVar != null) {
            RecyclerView.m layoutManager = getRecyclerView().getLayoutManager();
            Intrinsics.f(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
            bVar.h((LinearLayoutManager) layoutManager, bindingAdapterPosition, true);
        }
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    protected int N1(List<? extends UGCContent> data, int position) {
        Intrinsics.h(data, "data");
        return o.f646a.i() ? 2 : 1;
    }

    /* JADX INFO: renamed from: Q1, reason: from getter */
    public final boolean getIsEducationList() {
        return this.isEducationList;
    }

    public final void R1(boolean z10) {
        this.isEducationList = z10;
        c cVar = this.filmItemProvider;
        if (cVar != null) {
            cVar.B(z10);
        }
        b bVar = this.eduFilmItemProvider;
        if (bVar != null) {
            bVar.C(z10);
        }
        notifyItemRangeChanged(0, getData().size());
    }

    @Override // r6.i
    public /* bridge */ /* synthetic */ r6.f b(BaseQuickAdapter baseQuickAdapter) {
        return h.a(this, baseQuickAdapter);
    }
}
