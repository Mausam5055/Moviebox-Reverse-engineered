package com.transsion.room.sub.adapter.subscription;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.view.CornerTextView;
import com.transsion.baseui.R$drawable;
import com.transsion.baseui.util.TimeUtilKt;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.room.R$id;
import com.transsion.room.R$layout;
import com.transsion.room.R$string;
import com.transsion.ugcvideodetail.api.UGCVideoTypeKt;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoCreator;
import com.transsion.ugcvideodetail.api.bean.UGCVideoInteractiveInfo;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\u0018\u0000 &2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0002'(B)\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u000f\u0010\u0010J%\u0010\u0014\u001a\u00020\u00122\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0012H\u0014¢\u0006\u0004\b\u0014\u0010\u0015J\u001f\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001d\u0010\u001eR\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u0018\u0010%\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$¨\u0006)"}, d2 = {"Lcom/transsion/room/sub/adapter/subscription/c;", "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "Lr6/i;", "", "data", "Lsj/b;", "listExposureHelper", "", "showNumberTh", "<init>", "(Ljava/util/List;Lsj/b;Z)V", "Lcom/transsion/room/sub/adapter/subscription/a;", "itemClickListener", "", "Q1", "(Lcom/transsion/room/sub/adapter/subscription/a;)V", "", "", RequestParameters.POSITION, "N1", "(Ljava/util/List;I)I", "Landroid/view/ViewGroup;", "parent", "viewType", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "z0", "(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "holder", "B0", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V", "G", "Lsj/b;", "H", "Z", "I", "Lcom/transsion/room/sub/adapter/subscription/a;", "clickListener", "J", "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class c extends BaseProviderMultiAdapter<UGCVideo> implements r6.i {
    private static final String K = "SubscriptionFeedAdapter";
    public static final int L = 1;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private final sj.b listExposureHelper;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private final boolean showNumberTh;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private a clickListener;

    public static final class b extends BaseItemProvider {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final sj.b f51647e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final boolean f51648f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private a f51649g;

        public b(sj.b bVar, boolean z10) {
            this.f51647e = bVar;
            this.f51648f = z10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void G(b bVar, UGCVideo uGCVideo, Ref.IntRef intRef, View view) {
            if (!nh.m.f70474a.e()) {
                uh.b.f76753a.d(R$string.base_net_err);
                return;
            }
            a aVar = bVar.f51649g;
            if (aVar != null) {
                aVar.a(uGCVideo);
            }
            bVar.N(WebConstants.FIELD_ITEM, uGCVideo, intRef.element);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r13v14, types: [T, java.lang.Integer] */
        public static final void H(Ref.BooleanRef booleanRef, Ref.ObjectRef objectRef, BaseViewHolder baseViewHolder, b bVar, Ref.ObjectRef objectRef2, UGCVideo uGCVideo, Ref.IntRef intRef, View view) {
            if (!nh.m.f70474a.e()) {
                uh.b.f76753a.d(com.tn.lib.widget.R$string.no_network_toast);
                return;
            }
            boolean z10 = !booleanRef.element;
            booleanRef.element = z10;
            if (z10) {
                Integer num = (Integer) objectRef.element;
                objectRef.element = num != null ? Integer.valueOf(num.intValue() + 1) : 0;
            } else {
                Integer num2 = (Integer) objectRef.element;
                objectRef.element = num2 != null ? Integer.valueOf(num2.intValue() - 1) : 0;
            }
            Integer num3 = (Integer) objectRef.element;
            if (num3 != null && num3.intValue() < 0) {
                objectRef.element = 0;
            }
            baseViewHolder.setText(R$id.likeText, String.valueOf(objectRef.element));
            bVar.P(booleanRef.element, (AppCompatTextView) objectRef2.element);
            lg.a.C0828a.f(lg.a.f68839a, c.K, "like 点击后状态 " + booleanRef.element, false, 4, null);
            a aVar = bVar.f51649g;
            if (aVar != null) {
                aVar.u(booleanRef.element, String.valueOf(uGCVideo.getUgcVideoId()));
            }
            bVar.N("like", uGCVideo, intRef.element);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void I(b bVar, UGCVideo uGCVideo, Ref.IntRef intRef, View view) {
            if (!nh.m.f70474a.e()) {
                uh.b.f76753a.d(com.tn.lib.widget.R$string.no_network_toast);
                return;
            }
            a aVar = bVar.f51649g;
            if (aVar != null) {
                aVar.r(uGCVideo);
            }
            bVar.N("comment", uGCVideo, intRef.element);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void J(b bVar, UGCVideo uGCVideo, View view) {
            a aVar;
            if (!nh.m.f70474a.e()) {
                uh.b.f76753a.d(com.tn.lib.widget.R$string.no_network_toast);
            } else {
                if (com.transsion.baseui.util.c.f43504a.a(view.getId(), 500L) || (aVar = bVar.f51649g) == null) {
                    return;
                }
                aVar.H(uGCVideo.getUgcVideoId(), uGCVideo.getTitle());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void K(b bVar, UGCVideo uGCVideo, View view) {
            if (!nh.m.f70474a.e()) {
                uh.b.f76753a.d(R$string.base_net_err);
                return;
            }
            a aVar = bVar.f51649g;
            if (aVar != null) {
                UGCVideoCreator creator = uGCVideo.getCreator();
                aVar.b(creator != null ? creator.getUid() : null);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void L(b bVar, UGCVideo uGCVideo, Ref.IntRef intRef, View view) {
            if (!nh.m.f70474a.e()) {
                uh.b.f76753a.d(R$string.base_net_err);
                return;
            }
            a aVar = bVar.f51649g;
            if (aVar != null) {
                aVar.a(uGCVideo);
            }
            bVar.N(WebConstants.FIELD_ITEM, uGCVideo, intRef.element);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void M(b bVar, UGCVideo uGCVideo, Ref.IntRef intRef, View view) {
            if (!nh.m.f70474a.e()) {
                uh.b.f76753a.d(R$string.base_net_err);
                return;
            }
            a aVar = bVar.f51649g;
            if (aVar != null) {
                aVar.a(uGCVideo);
            }
            bVar.N(WebConstants.FIELD_ITEM, uGCVideo, intRef.element);
        }

        private final void N(String str, UGCVideo uGCVideo, int i11) {
            HashMap map = new HashMap();
            map.put("module_name", str);
            map.put("ops", String.valueOf(uGCVideo.getOps()));
            map.put("content_id", String.valueOf(uGCVideo.getUgcVideoId()));
            map.put(RequestParameters.POSITION, String.valueOf(i11));
            map.put("refer_subject_id", String.valueOf(uGCVideo.getSubjectId()));
            map.put("content_type", "ugc_video");
            com.transsion.baselib.helper.a.f43262a.b("/subscription/subscription", map);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v29, types: [T, android.view.View] */
        /* JADX WARN: Type inference failed for: r0v35 */
        /* JADX WARN: Type inference failed for: r0v36, types: [T, java.lang.Number] */
        /* JADX WARN: Type inference failed for: r0v47, types: [T, java.lang.Integer] */
        /* JADX WARN: Type inference failed for: r0v58 */
        @Override // com.chad.library.adapter.base.provider.BaseItemProvider
        /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
        public void b(final BaseViewHolder holder, final UGCVideo feedItem) {
            List listQ;
            String thumbnail;
            String thumbnail2;
            Intrinsics.h(holder, "holder");
            Intrinsics.h(feedItem, "feedItem");
            final Ref.IntRef intRef = new Ref.IntRef();
            intRef.element = holder.getBindingAdapterPosition();
            ShapeableImageView shapeableImageView = (ShapeableImageView) holder.getViewOrNull(R$id.cover_image);
            String str = "";
            if (shapeableImageView != null) {
                ej.f.a aVar = ej.f.f61882a;
                Context context = shapeableImageView.getContext();
                Intrinsics.g(context, "getContext(...)");
                ej.f.b bVarM = aVar.m(context);
                Cover cover = feedItem.getCover();
                ej.f.b bVarG = bVarM.g(cover != null ? cover.getUrl() : null);
                Cover cover2 = feedItem.getCover();
                if (cover2 == null || (thumbnail2 = cover2.getThumbnail()) == null) {
                    thumbnail2 = "";
                }
                bVarG.l(thumbnail2).d(shapeableImageView);
                shapeableImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.room.sub.adapter.subscription.d
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        c.b.G(this.f51650a, feedItem, intRef, view);
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
            ShapeableImageView shapeableImageView2 = (ShapeableImageView) holder.getViewOrNull(R$id.publisherAvatar);
            if (shapeableImageView2 != null) {
                ej.f.a aVar2 = ej.f.f61882a;
                Context context2 = shapeableImageView2.getContext();
                Intrinsics.g(context2, "getContext(...)");
                ej.f.b bVarM2 = aVar2.m(context2);
                UGCVideoCreator creator = feedItem.getCreator();
                ej.f.b bVarG2 = bVarM2.g(creator != null ? creator.getAvatar() : null);
                Cover cover3 = feedItem.getCover();
                if (cover3 != null && (thumbnail = cover3.getThumbnail()) != null) {
                    str = thumbnail;
                }
                bVarG2.l(str).d(shapeableImageView2);
                shapeableImageView2.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.room.sub.adapter.subscription.e
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        c.b.K(this.f51653a, feedItem, view);
                    }
                });
            }
            ImageView imageView = (ImageView) holder.getViewOrNull(R$id.trending_grid_type_icon);
            if (imageView != null) {
                UGCVideoTypeKt.i(imageView, feedItem, null, 4, null);
            }
            int i11 = R$id.trending_grid_time_text;
            Long duration = feedItem.getDuration();
            holder.setText(i11, TimeUtilKt.a(duration != null ? Integer.valueOf((int) duration.longValue()) : null));
            holder.setText(R$id.videoTitle, feedItem.getTitle());
            TextView textView = (TextView) holder.getViewOrNull(R$id.videoTitle);
            if (textView != null) {
                textView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.room.sub.adapter.subscription.f
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        c.b.L(this.f51655a, feedItem, intRef, view);
                    }
                });
            }
            TextView textView2 = (TextView) holder.getViewOrNull(R$id.videoInfo);
            if (textView2 != null) {
                textView2.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.room.sub.adapter.subscription.g
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        c.b.M(this.f51658a, feedItem, intRef, view);
                    }
                });
            }
            if (feedItem.isVerticalImmStyle()) {
                listQ = CollectionsKt.q("special_#shorts_icon", Utils.a().getString(com.transsion.baseui.R$string.ugc_video_shorts), com.transsion.baseui.util.j.c(feedItem.getWatchNum(), k()));
            } else {
                String strC = com.transsion.baseui.util.j.c(feedItem.getWatchNum(), k());
                Long publishTime = feedItem.getPublishTime();
                Intrinsics.e(publishTime);
                listQ = CollectionsKt.q(strC, TimeUtilKt.k(publishTime.longValue()));
            }
            holder.setText(R$id.videoInfo, com.transsion.baseui.util.q.e(listQ, k()));
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            objectRef.element = holder.getView(R$id.likeText);
            LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) holder.getView(R$id.likeLayout);
            UGCVideoInteractiveInfo interactiveInfo = feedItem.getInteractiveInfo();
            String likeNum = interactiveInfo != null ? interactiveInfo.getLikeNum() : null;
            lg.a.C0828a c0828a = lg.a.f68839a;
            lg.a.C0828a.f(c0828a, c.K, "likeNumber的数量: " + likeNum, false, 4, null);
            UGCVideoInteractiveInfo interactiveInfo2 = feedItem.getInteractiveInfo();
            boolean zC = interactiveInfo2 != null ? Intrinsics.c(interactiveInfo2.getHasLike(), Boolean.TRUE) : false;
            P(zC, (AppCompatTextView) objectRef.element);
            final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
            booleanRef.element = zC;
            lg.a.C0828a.f(c0828a, c.K, "like 初始状态 " + zC, false, 4, null);
            final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            ?? ValueOf = likeNum != null ? Integer.valueOf(Integer.parseInt(likeNum)) : 0;
            objectRef2.element = ValueOf;
            if (ValueOf != 0 && ValueOf.intValue() < 0) {
                objectRef2.element = 0;
            }
            holder.setText(R$id.likeText, String.valueOf(objectRef2.element));
            linearLayoutCompat.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.room.sub.adapter.subscription.h
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    c.b.H(booleanRef, objectRef2, holder, this, objectRef, feedItem, intRef, view);
                }
            });
            int i12 = R$id.commentImg;
            UGCVideoInteractiveInfo interactiveInfo3 = feedItem.getInteractiveInfo();
            holder.setText(i12, interactiveInfo3 != null ? interactiveInfo3.getCommentNum() : null);
            ((LinearLayoutCompat) holder.getView(R$id.commentLayout)).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.room.sub.adapter.subscription.i
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    c.b.I(this.f51668a, feedItem, intRef, view);
                }
            });
            ((LinearLayoutCompat) holder.getView(R$id.shareLayout)).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.room.sub.adapter.subscription.j
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    c.b.J(this.f51671a, feedItem, view);
                }
            });
        }

        public final void O(a aVar) {
            this.f51649g = aVar;
        }

        public final void P(boolean z10, AppCompatTextView imageLikes) {
            Intrinsics.h(imageLikes, "imageLikes");
            imageLikes.setCompoundDrawablesWithIntrinsicBounds(androidx.core.content.b.getDrawable(k(), z10 ? R$drawable.base_ic_ugc_post_like_selected : R$drawable.base_ic_ugc_post_like), (Drawable) null, (Drawable) null, (Drawable) null);
        }

        @Override // com.chad.library.adapter.base.provider.BaseItemProvider
        public int l() {
            return 1;
        }

        @Override // com.chad.library.adapter.base.provider.BaseItemProvider
        public int m() {
            return R$layout.item_feed;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(List<UGCVideo> data, sj.b bVar, boolean z10) {
        super(data);
        Intrinsics.h(data, "data");
        this.listExposureHelper = bVar;
        this.showNumberTh = z10;
    }

    public /* synthetic */ c(List list, sj.b bVar, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, bVar, (i11 & 4) != 0 ? false : z10);
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter, com.chad.library.adapter.base.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: B0 */
    public void onViewAttachedToWindow(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.onViewAttachedToWindow(holder);
        int bindingAdapterPosition = holder.getBindingAdapterPosition();
        sj.b bVar = this.listExposureHelper;
        if (bVar != null) {
            RecyclerView.m layoutManager = getRecyclerView().getLayoutManager();
            Intrinsics.f(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
            sj.b.j(bVar, (LinearLayoutManager) layoutManager, bindingAdapterPosition, true, false, 8, null);
        }
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    protected int N1(List<? extends UGCVideo> data, int position) {
        Intrinsics.h(data, "data");
        return 1;
    }

    public final void Q1(a itemClickListener) {
        this.clickListener = itemClickListener;
        b bVar = new b(this.listExposureHelper, this.showNumberTh);
        bVar.O(this.clickListener);
        F1(bVar);
    }

    @Override // r6.i
    public /* bridge */ /* synthetic */ r6.f b(BaseQuickAdapter baseQuickAdapter) {
        return r6.h.a(this, baseQuickAdapter);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: z0 */
    public BaseViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.h(parent, "parent");
        return super.onCreateViewHolder(parent, viewType);
    }
}
