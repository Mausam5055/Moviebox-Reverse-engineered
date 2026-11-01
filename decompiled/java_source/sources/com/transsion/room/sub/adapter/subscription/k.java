package com.transsion.room.sub.adapter.subscription;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
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
import com.tn.lib.widget.R$string;
import com.transsion.baseui.R$drawable;
import com.transsion.baseui.util.TimeUtilKt;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.room.R$id;
import com.transsion.room.R$layout;
import com.transsion.room.sub.bean.subscription.ItemTrending;
import com.transsion.ugcvideodetail.api.UGCVideoTypeKt;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoCreator;
import com.transsion.ugcvideodetail.api.bean.UGCVideoInteractiveInfo;
import com.transsion.web.api.WebConstants;
import com.transsion.wrapperad.R$color;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u0000 *2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0002+,B)\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u000f\u0010\u0010J%\u0010\u0014\u001a\u00020\u00122\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0012H\u0014¢\u0006\u0004\b\u0014\u0010\u0015J\u001f\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001d\u0010\u001eR\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u0018\u0010&\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0018\u0010)\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(¨\u0006-"}, d2 = {"Lcom/transsion/room/sub/adapter/subscription/k;", "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;", "Lcom/transsion/room/sub/bean/subscription/ItemTrending;", "Lr6/i;", "", "data", "Lsj/b;", "listExposureHelper", "", "showNumberTh", "<init>", "(Ljava/util/List;Lsj/b;Z)V", "Lcom/transsion/room/sub/adapter/subscription/a;", "itemClickListener", "", "Q1", "(Lcom/transsion/room/sub/adapter/subscription/a;)V", "", "", RequestParameters.POSITION, "N1", "(Ljava/util/List;I)I", "Landroid/view/ViewGroup;", "parent", "viewType", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "z0", "(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "holder", "B0", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V", "G", "Lsj/b;", "H", "Z", "Landroid/widget/ImageView;", "I", "Landroid/widget/ImageView;", "mLikeImg", "J", "Lcom/transsion/room/sub/adapter/subscription/a;", "clickListener", "K", "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class k extends BaseProviderMultiAdapter<ItemTrending> implements r6.i {
    private static final String L = "SubscriptionFeedAdapter";
    public static final int M = 1;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private final sj.b listExposureHelper;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private final boolean showNumberTh;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private ImageView mLikeImg;

    /* JADX INFO: renamed from: J, reason: from kotlin metadata */
    private a clickListener;

    public static final class b extends BaseItemProvider {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final sj.b f51673e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final boolean f51674f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final String f51675g = "/subscription/subscription";

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private a f51676h;

        public b(sj.b bVar, boolean z10) {
            this.f51673e = bVar;
            this.f51674f = z10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void G(b bVar, ItemTrending itemTrending, Ref.IntRef intRef, View view) {
            if (!nh.m.f70474a.e()) {
                uh.b.f76753a.d(R$string.no_network_toast);
                return;
            }
            a aVar = bVar.f51676h;
            if (aVar != null) {
                aVar.D(itemTrending.getContent().getVideo());
            }
            bVar.N(WebConstants.FIELD_ITEM, itemTrending, intRef.element);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r15v17, types: [T, java.lang.Integer] */
        public static final void H(Ref.BooleanRef booleanRef, Ref.ObjectRef objectRef, BaseViewHolder baseViewHolder, b bVar, Ref.ObjectRef objectRef2, ItemTrending itemTrending, Ref.IntRef intRef, View view) {
            if (!nh.m.f70474a.e()) {
                uh.b.f76753a.d(R$string.no_network_toast);
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
            lg.a.C0828a.f(lg.a.f68839a, k.L, "like 点击后状态 " + booleanRef.element, false, 4, null);
            a aVar = bVar.f51676h;
            if (aVar != null) {
                boolean z11 = booleanRef.element;
                UGCVideo video = itemTrending.getContent().getVideo();
                aVar.u(z11, String.valueOf(video != null ? video.getUgcVideoId() : null));
            }
            bVar.N("like", itemTrending, intRef.element);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void I(b bVar, ItemTrending itemTrending, Ref.IntRef intRef, View view) {
            if (!nh.m.f70474a.e()) {
                uh.b.f76753a.d(R$string.no_network_toast);
                return;
            }
            a aVar = bVar.f51676h;
            if (aVar != null) {
                aVar.r(itemTrending.getContent().getVideo());
            }
            bVar.N("comment", itemTrending, intRef.element);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void J(b bVar, ItemTrending itemTrending, View view) {
            if (!nh.m.f70474a.e()) {
                uh.b.f76753a.d(R$string.no_network_toast);
                return;
            }
            a aVar = bVar.f51676h;
            if (aVar != null) {
                UGCVideo video = itemTrending.getContent().getVideo();
                String ugcVideoId = video != null ? video.getUgcVideoId() : null;
                UGCVideo video2 = itemTrending.getContent().getVideo();
                aVar.H(ugcVideoId, video2 != null ? video2.getTitle() : null);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void K(b bVar, ItemTrending itemTrending, View view) {
            UGCVideoCreator creator;
            if (!nh.m.f70474a.e()) {
                uh.b.f76753a.d(R$string.no_network_toast);
                return;
            }
            a aVar = bVar.f51676h;
            if (aVar != null) {
                UGCVideo video = itemTrending.getContent().getVideo();
                aVar.b((video == null || (creator = video.getCreator()) == null) ? null : creator.getUid());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void L(b bVar, ItemTrending itemTrending, Ref.IntRef intRef, View view) {
            if (!nh.m.f70474a.e()) {
                uh.b.f76753a.d(R$string.no_network_toast);
                return;
            }
            a aVar = bVar.f51676h;
            if (aVar != null) {
                aVar.D(itemTrending.getContent().getVideo());
            }
            bVar.N(WebConstants.FIELD_ITEM, itemTrending, intRef.element);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void M(b bVar, ItemTrending itemTrending, Ref.IntRef intRef, View view) {
            if (!nh.m.f70474a.e()) {
                uh.b.f76753a.d(R$string.no_network_toast);
                return;
            }
            a aVar = bVar.f51676h;
            if (aVar != null) {
                aVar.D(itemTrending.getContent().getVideo());
            }
            bVar.N(WebConstants.FIELD_ITEM, itemTrending, intRef.element);
        }

        private final void N(String str, ItemTrending itemTrending, int i11) {
            HashMap map = new HashMap();
            map.put("module_name", str);
            UGCVideo video = itemTrending.getContent().getVideo();
            map.put("ops", String.valueOf(video != null ? video.getOps() : null));
            UGCVideo video2 = itemTrending.getContent().getVideo();
            map.put("content_id", String.valueOf(video2 != null ? video2.getUgcVideoId() : null));
            map.put(RequestParameters.POSITION, String.valueOf(i11));
            UGCVideo video3 = itemTrending.getContent().getVideo();
            map.put("refer_subject_id", String.valueOf(video3 != null ? video3.getSubjectId() : null));
            map.put("content_type", "ugc_video");
            com.transsion.baselib.helper.a.f43262a.b(this.f51675g, map);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v38, types: [T, android.view.View] */
        /* JADX WARN: Type inference failed for: r0v43 */
        /* JADX WARN: Type inference failed for: r0v44, types: [T, java.lang.Number] */
        /* JADX WARN: Type inference failed for: r0v56, types: [T, java.lang.Integer] */
        /* JADX WARN: Type inference failed for: r0v70 */
        @Override // com.chad.library.adapter.base.provider.BaseItemProvider
        /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
        public void b(final BaseViewHolder holder, final ItemTrending feedItem) {
            List listQ;
            UGCVideoInteractiveInfo interactiveInfo;
            UGCVideoInteractiveInfo interactiveInfo2;
            UGCVideoInteractiveInfo interactiveInfo3;
            Long duration;
            UGCVideoCreator creator;
            String thumbnail;
            Cover cover;
            Cover cover2;
            Intrinsics.h(holder, "holder");
            Intrinsics.h(feedItem, "feedItem");
            final Ref.IntRef intRef = new Ref.IntRef();
            intRef.element = holder.getBindingAdapterPosition();
            ShapeableImageView shapeableImageView = (ShapeableImageView) holder.getViewOrNull(R$id.cover_image);
            String commentNum = null;
            if (shapeableImageView != null) {
                ej.f.a aVar = ej.f.f61882a;
                Context context = shapeableImageView.getContext();
                Intrinsics.g(context, "getContext(...)");
                ej.f.b bVarM = aVar.m(context);
                UGCVideo video = feedItem.getContent().getVideo();
                ej.f.b bVarG = bVarM.g((video == null || (cover2 = video.getCover()) == null) ? null : cover2.getUrl());
                UGCVideo video2 = feedItem.getContent().getVideo();
                if (video2 == null || (cover = video2.getCover()) == null || (thumbnail = cover.getThumbnail()) == null) {
                    thumbnail = "";
                }
                bVarG.l(thumbnail).d(shapeableImageView);
                shapeableImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.room.sub.adapter.subscription.l
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        k.b.G(this.f51677a, feedItem, intRef, view);
                    }
                });
            }
            UGCVideo video3 = feedItem.getContent().getVideo();
            String corner = video3 != null ? video3.getCorner() : null;
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
                UGCVideo video4 = feedItem.getContent().getVideo();
                bVarM2.g((video4 == null || (creator = video4.getCreator()) == null) ? null : creator.getAvatar()).i(R$color.white_20).d(shapeableImageView2);
                shapeableImageView2.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.room.sub.adapter.subscription.m
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        k.b.K(this.f51680a, feedItem, view);
                    }
                });
            }
            UGCVideo video5 = feedItem.getContent().getVideo();
            ImageView imageView = (ImageView) holder.getViewOrNull(R$id.trending_grid_type_icon);
            if (imageView != null && video5 != null) {
                UGCVideoTypeKt.i(imageView, video5, null, 4, null);
            }
            int i11 = R$id.trending_grid_time_text;
            UGCVideo video6 = feedItem.getContent().getVideo();
            holder.setText(i11, TimeUtilKt.a((video6 == null || (duration = video6.getDuration()) == null) ? null : Integer.valueOf((int) duration.longValue())));
            int i12 = R$id.videoTitle;
            UGCVideo video7 = feedItem.getContent().getVideo();
            holder.setText(i12, video7 != null ? video7.getTitle() : null);
            TextView textView = (TextView) holder.getViewOrNull(R$id.videoTitle);
            if (textView != null) {
                textView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.room.sub.adapter.subscription.n
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        k.b.L(this.f51682a, feedItem, intRef, view);
                    }
                });
            }
            TextView textView2 = (TextView) holder.getViewOrNull(R$id.videoInfo);
            if (textView2 != null) {
                textView2.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.room.sub.adapter.subscription.o
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        k.b.M(this.f51685a, feedItem, intRef, view);
                    }
                });
            }
            UGCVideo video8 = feedItem.getContent().getVideo();
            if (video8 != null ? video8.isVerticalImmStyle() : false) {
                String string = Utils.a().getString(com.transsion.baseui.R$string.ugc_video_shorts);
                UGCVideo video9 = feedItem.getContent().getVideo();
                listQ = CollectionsKt.q("special_#shorts_icon", string, com.transsion.baseui.util.j.c(video9 != null ? video9.getWatchNum() : null, k()));
            } else {
                UGCVideo video10 = feedItem.getContent().getVideo();
                String strC = com.transsion.baseui.util.j.c(video10 != null ? video10.getWatchNum() : null, k());
                UGCVideo video11 = feedItem.getContent().getVideo();
                Long publishTime = video11 != null ? video11.getPublishTime() : null;
                Intrinsics.e(publishTime);
                listQ = CollectionsKt.q(strC, TimeUtilKt.k(publishTime.longValue()));
            }
            holder.setText(R$id.videoInfo, com.transsion.baseui.util.q.e(listQ, k()));
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            objectRef.element = holder.getView(R$id.likeText);
            UGCVideo video12 = feedItem.getContent().getVideo();
            String likeNum = (video12 == null || (interactiveInfo3 = video12.getInteractiveInfo()) == null) ? null : interactiveInfo3.getLikeNum();
            lg.a.C0828a c0828a = lg.a.f68839a;
            lg.a.C0828a.f(c0828a, k.L, "likeNumber的数量: " + likeNum, false, 4, null);
            UGCVideo video13 = feedItem.getContent().getVideo();
            boolean zC = (video13 == null || (interactiveInfo2 = video13.getInteractiveInfo()) == null) ? false : Intrinsics.c(interactiveInfo2.getHasLike(), Boolean.TRUE);
            P(zC, (AppCompatTextView) objectRef.element);
            final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
            booleanRef.element = zC;
            lg.a.C0828a.f(c0828a, k.L, "like 初始状态 " + zC, false, 4, null);
            final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            ?? ValueOf = likeNum != null ? Integer.valueOf(Integer.parseInt(likeNum)) : 0;
            objectRef2.element = ValueOf;
            if (ValueOf != 0 && ValueOf.intValue() < 0) {
                objectRef2.element = 0;
            }
            holder.setText(R$id.likeText, String.valueOf(objectRef2.element));
            ((AppCompatTextView) objectRef.element).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.room.sub.adapter.subscription.p
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    k.b.H(booleanRef, objectRef2, holder, this, objectRef, feedItem, intRef, view);
                }
            });
            int i13 = R$id.commentImg;
            UGCVideo video14 = feedItem.getContent().getVideo();
            if (video14 != null && (interactiveInfo = video14.getInteractiveInfo()) != null) {
                commentNum = interactiveInfo.getCommentNum();
            }
            holder.setText(i13, commentNum);
            ((AppCompatTextView) holder.getView(R$id.commentImg)).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.room.sub.adapter.subscription.q
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    k.b.I(this.f51695a, feedItem, intRef, view);
                }
            });
            ((AppCompatTextView) holder.getView(R$id.shareImg)).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.room.sub.adapter.subscription.r
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    k.b.J(this.f51698a, feedItem, view);
                }
            });
        }

        public final void O(a aVar) {
            this.f51676h = aVar;
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
    public k(List<ItemTrending> data, sj.b bVar, boolean z10) {
        super(data);
        Intrinsics.h(data, "data");
        this.listExposureHelper = bVar;
        this.showNumberTh = z10;
    }

    public /* synthetic */ k(List list, sj.b bVar, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
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
    protected int N1(List<? extends ItemTrending> data, int position) {
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
