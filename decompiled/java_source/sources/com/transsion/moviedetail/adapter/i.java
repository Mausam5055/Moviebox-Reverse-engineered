package com.transsion.moviedetail.adapter;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.p009lifecycle.c0;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.cloud.tmc.integration.event.EventConstants;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.layoutmanager.NpaGridLayoutManager;
import com.transsion.moviedetail.R$id;
import com.transsion.moviedetail.R$layout;
import com.transsion.moviedetail.fragment.ForYouFragment;
import com.transsion.moviedetail.viewmodel.MovieDetailViewModel;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.FirstFrame;
import com.transsion.moviedetailapi.bean.Group;
import com.transsion.moviedetailapi.bean.Image;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.MediaType;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.RoomEntranceResponse;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.moviedetailapi.bean.User;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes5.dex */
final class i extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ForYouFragment f46954e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f46955f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final MovieDetailViewModel f46956g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final MovieDetailViewModel f46957h;

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000b\b\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\f\u0010\rJ\u001f\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0015\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u0016"}, d2 = {"Lcom/transsion/moviedetail/adapter/i$a;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "", "pageName", "<init>", "(Ljava/lang/String;)V", WebConstants.FIELD_ITEM, "", RequestParameters.POSITION, "", "G1", "(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;I)V", "holder", "D1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V", "F", "Ljava/lang/String;", "G", "I", "coverSize", "MovieDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @SourceDebugExtension
    public static final class a extends BaseQuickAdapter {

        /* JADX INFO: renamed from: F, reason: from kotlin metadata */
        private final String pageName;

        /* JADX INFO: renamed from: G, reason: from kotlin metadata */
        private final int coverSize;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String pageName) {
            super(R$layout.movie_detail_item_for_you_post_item, null, 2, null);
            Intrinsics.h(pageName, "pageName");
            this.pageName = pageName;
            this.coverSize = dk.a.b(112);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void E1(PostSubjectItem postSubjectItem, BaseViewHolder baseViewHolder, a aVar, View view) {
            String userId;
            String mediaType;
            String subjectId;
            String string;
            String groupId;
            Integer subjectType;
            Group group = postSubjectItem.getGroup();
            Navigator.x(TheRouter.c("/room/detail").K("id", group != null ? group.getGroupId() : null).z("need_start_room_home", false), baseViewHolder.itemView.getContext(), null, 2, null);
            Pair pairA = TuplesKt.a(EventConstants.KEY_SOURCE, "for_you");
            Pair pairA2 = TuplesKt.a("module_name", "group");
            User user = postSubjectItem.getUser();
            String str = "";
            if (user == null || (userId = user.getUserId()) == null) {
                userId = "";
            }
            Pair pairA3 = TuplesKt.a("user_id", userId);
            String postId = postSubjectItem.getPostId();
            if (postId == null) {
                postId = "";
            }
            Pair pairA4 = TuplesKt.a("post_id", postId);
            Media media = postSubjectItem.getMedia();
            if (media == null || (mediaType = media.getMediaType()) == null) {
                mediaType = "";
            }
            Pair pairA5 = TuplesKt.a("post_media_type", mediaType);
            Subject subject = postSubjectItem.getSubject();
            if (subject == null || (subjectId = subject.getSubjectId()) == null) {
                subjectId = "";
            }
            Pair pairA6 = TuplesKt.a("subject_id", subjectId);
            Subject subject2 = postSubjectItem.getSubject();
            if (subject2 == null || (subjectType = subject2.getSubjectType()) == null || (string = subjectType.toString()) == null) {
                string = "";
            }
            Pair pairA7 = TuplesKt.a("subject_type", string);
            Pair pairA8 = TuplesKt.a("is_cache_post", String.valueOf(postSubjectItem.isRoomCache()));
            Group group2 = postSubjectItem.getGroup();
            if (group2 != null && (groupId = group2.getGroupId()) != null) {
                str = groupId;
            }
            hj.i.f64505a.p(aVar.pageName, MapsKt.m(pairA, pairA2, pairA3, pairA4, pairA5, pairA6, pairA7, pairA8, TuplesKt.a("group_id", str), TuplesKt.a("ops", postSubjectItem.getOps())));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void F1(a aVar, PostSubjectItem postSubjectItem, BaseViewHolder baseViewHolder, View view) {
            aVar.G1(postSubjectItem, baseViewHolder.getBindingAdapterPosition());
        }

        private final void G1(PostSubjectItem item, int position) {
            String userId;
            String groupId;
            String subjectId;
            String value;
            Integer subjectType;
            String string;
            String postId = item.getPostId();
            if (postId == null) {
                return;
            }
            String postId2 = item.getPostId();
            String str = "";
            if (postId2 == null) {
                postId2 = "";
            }
            Pair pairA = TuplesKt.a("post_id", postId2);
            Pair pairA2 = TuplesKt.a(RequestParameters.POSITION, String.valueOf(position));
            Pair pairA3 = TuplesKt.a(EventConstants.KEY_SOURCE, "for_you");
            Pair pairA4 = TuplesKt.a("module_name", WebConstants.FIELD_ITEM);
            Pair pairA5 = TuplesKt.a("is_cache_post", String.valueOf(item.isRoomCache()));
            User user = item.getUser();
            if (user == null || (userId = user.getUserId()) == null) {
                userId = "";
            }
            Pair pairA6 = TuplesKt.a("user_id", userId);
            Group group = item.getGroup();
            if (group == null || (groupId = group.getGroupId()) == null) {
                groupId = "";
            }
            Pair pairA7 = TuplesKt.a("group_id", groupId);
            Subject subject = item.getSubject();
            if (subject == null || (subjectId = subject.getSubjectId()) == null) {
                subjectId = "";
            }
            Pair pairA8 = TuplesKt.a("subject_id", subjectId);
            Subject subject2 = item.getSubject();
            if (subject2 != null && (subjectType = subject2.getSubjectType()) != null && (string = subjectType.toString()) != null) {
                str = string;
            }
            Pair pairA9 = TuplesKt.a("subject_type", str);
            Media media = item.getMedia();
            if (media == null || (value = media.getMediaType()) == null) {
                value = MediaType.TEXT.getValue();
            }
            hj.i.f64505a.p(this.pageName, MapsKt.m(pairA, pairA2, pairA3, pairA4, pairA5, pairA6, pairA7, pairA8, pairA9, TuplesKt.a("post_media_type", value), TuplesKt.a("ops", item.getOps())));
            aq.h.f16093a.h(postId, item.getOps(), this.pageName, true);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.chad.library.adapter.base.BaseQuickAdapter
        /* JADX INFO: renamed from: D1, reason: merged with bridge method [inline-methods] */
        public void F(final BaseViewHolder holder, final PostSubjectItem item) {
            Pair pair;
            String url;
            FirstFrame firstFrame;
            String thumbnail;
            Cover cover;
            Cover cover2;
            String avatar;
            List<Image> image;
            Image image2;
            List<Image> image3;
            Image image4;
            Intrinsics.h(holder, "holder");
            Intrinsics.h(item, "item");
            Media media = item.getMedia();
            String mediaType = media != null ? media.getMediaType() : null;
            String str = "";
            if (Intrinsics.c(mediaType, MediaType.IMAGE.getValue())) {
                Media media2 = item.getMedia();
                String url2 = (media2 == null || (image3 = media2.getImage()) == null || (image4 = (Image) CollectionsKt.k0(image3)) == null) ? null : image4.getUrl();
                Media media3 = item.getMedia();
                pair = new Pair(url2, (media3 == null || (image = media3.getImage()) == null || (image2 = (Image) CollectionsKt.k0(image)) == null) ? null : image2.getThumbnail());
            } else if (Intrinsics.c(mediaType, MediaType.VIDEO.getValue())) {
                Media media4 = item.getMedia();
                if (media4 == null || (cover2 = media4.getCover()) == null || (url = cover2.getUrl()) == null) {
                    Media media5 = item.getMedia();
                    url = (media5 == null || (firstFrame = media5.getFirstFrame()) == null) ? null : firstFrame.getUrl();
                }
                Media media6 = item.getMedia();
                if (media6 == null || (cover = media6.getCover()) == null || (thumbnail = cover.getThumbnail()) == null) {
                    thumbnail = "";
                }
                pair = new Pair(url, thumbnail);
            } else {
                pair = null;
            }
            if (pair != null) {
                ej.f.b bVarM = ej.f.f61882a.m(getContext());
                String str2 = (String) pair.getFirst();
                if (str2 == null) {
                    str2 = "";
                }
                ej.f.b bVarC = bVarM.g(str2).m(this.coverSize).c(this.coverSize);
                String str3 = (String) pair.getSecond();
                if (str3 == null) {
                    str3 = "";
                }
                bVarC.l(str3).d((ImageView) holder.getView(R$id.ivCover));
            }
            View view = holder.getView(R$id.ivVideoPlay);
            Media media7 = item.getMedia();
            view.setVisibility(Intrinsics.c(media7 != null ? media7.getMediaType() : null, MediaType.VIDEO.getValue()) ? 0 : 8);
            TextView textView = (TextView) holder.getView(R$id.tvRoomTitle);
            Group group = item.getGroup();
            textView.setText(group != null ? group.getName() : null);
            ej.f.b bVarM2 = ej.f.f61882a.m(getContext());
            Group group2 = item.getGroup();
            if (group2 != null && (avatar = group2.getAvatar()) != null) {
                str = avatar;
            }
            bVarM2.g(str).m(dk.a.b(24)).c(dk.a.b(24)).d((ImageView) holder.getView(R$id.ivRoomCover));
            holder.getView(R$id.vRoomInfo).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.moviedetail.adapter.g
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    i.a.E1(item, holder, this, view2);
                }
            });
            holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.moviedetail.adapter.h
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    i.a.F1(this.f46951a, item, holder, view2);
                }
            });
        }
    }

    static final class b implements c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f46958a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f46958a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f46958a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override // androidx.p009lifecycle.c0
        public final /* synthetic */ void onChanged(Object obj) {
            this.f46958a.invoke(obj);
        }
    }

    public i(ForYouFragment fragment, String pageName, MovieDetailViewModel movieDetailViewModel) {
        Intrinsics.h(fragment, "fragment");
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(movieDetailViewModel, "movieDetailViewModel");
        this.f46954e = fragment;
        this.f46955f = pageName;
        this.f46956g = movieDetailViewModel;
        this.f46957h = movieDetailViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit B(BaseViewHolder baseViewHolder, a aVar, i iVar, RoomEntranceResponse roomEntranceResponse) {
        List<PostSubjectItem> posts;
        lg.a.C0828a.f(lg.a.f68839a, "MovieDetailViewModel", "ForYouFragment 推荐帖子-开始渲染", false, 4, null);
        baseViewHolder.setText(R$id.tvTitle, roomEntranceResponse != null ? roomEntranceResponse.getTitle() : null);
        List<PostSubjectItem> posts2 = roomEntranceResponse != null ? roomEntranceResponse.getPosts() : null;
        if (posts2 != null && !posts2.isEmpty()) {
            aVar.n1(roomEntranceResponse != null ? roomEntranceResponse.getPosts() : null);
            if (roomEntranceResponse != null && (posts = roomEntranceResponse.getPosts()) != null) {
                int i11 = 0;
                for (Object obj : posts) {
                    int i12 = i11 + 1;
                    if (i11 < 0) {
                        CollectionsKt.u();
                    }
                    PostSubjectItem postSubjectItem = (PostSubjectItem) obj;
                    Pair pairA = TuplesKt.a(EventConstants.KEY_SOURCE, "for_you");
                    String postId = postSubjectItem.getPostId();
                    if (postId == null) {
                        postId = "";
                    }
                    hj.i.f64505a.D(iVar.f46955f, MapsKt.m(pairA, TuplesKt.a("post_id", postId), TuplesKt.a(RequestParameters.POSITION, String.valueOf(i11)), TuplesKt.a("module_name", WebConstants.FIELD_ITEM), TuplesKt.a("ops", postSubjectItem.getOps())));
                    i11 = i12;
                }
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C(i iVar, View view) {
        hj.i.f64505a.p(iVar.f46955f, MapsKt.m(TuplesKt.a(EventConstants.KEY_SOURCE, "for_you"), TuplesKt.a("module_name", "explore")));
        aq.h.i(aq.h.f16093a, null, null, iVar.f46955f, true, 3, null);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public void b(final BaseViewHolder holder, Subject item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        lg.a.C0828a.f(lg.a.f68839a, "MovieDetailViewModel", "ForYouFragment 推荐帖子 item convert ", false, 4, null);
        ViewGroup.LayoutParams layoutParams = holder.itemView.getLayoutParams();
        if (layoutParams instanceof StaggeredGridLayoutManager.b) {
            ((StaggeredGridLayoutManager.b) layoutParams).c(true);
        }
        final a aVar = new a(this.f46955f);
        RecyclerView recyclerView = (RecyclerView) holder.getView(R$id.recyclerView);
        recyclerView.addItemDecoration(new ig.a(dk.a.b(6), 0, 0, 0));
        recyclerView.setLayoutManager(new NpaGridLayoutManager(recyclerView.getContext(), 3));
        recyclerView.setAdapter(aVar);
        this.f46957h.I().j(this.f46954e, new b(new Function1() { // from class: com.transsion.moviedetail.adapter.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return i.B(holder, aVar, this, (RoomEntranceResponse) obj);
            }
        }));
        ((TextView) holder.getView(R$id.tvMore)).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.moviedetail.adapter.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                i.C(this.f46947a, view);
            }
        });
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return c.I;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.movie_detail_item_for_you_recommend_posts;
    }
}
