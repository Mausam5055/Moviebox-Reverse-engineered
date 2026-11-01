package bp;

import android.content.Context;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.p009lifecycle.LifecycleCoroutineScope;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.tn.lib.widget.R$drawable;
import com.transsion.moviedetailapi.bean.FirstFrame;
import com.transsion.moviedetailapi.bean.Image;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.MediaType;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.Stat;
import com.transsion.moviedetailapi.bean.User;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;
import com.transsion.postdetail.helper.NegativeFeedbackHelper;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class z extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f16701e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f16702f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final RecyclerView.s f16703g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Context f16704h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final LifecycleCoroutineScope f16705i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f16706j;

    public z(String str, String str2, RecyclerView.s pool, Context context, LifecycleCoroutineScope lifecycleCoroutineScope) {
        Intrinsics.h(pool, "pool");
        this.f16701e = str;
        this.f16702f = str2;
        this.f16703g = pool;
        this.f16704h = context;
        this.f16705i = lifecycleCoroutineScope;
        this.f16706j = (com.blankj.utilcode.util.y.e() - (com.blankj.utilcode.util.a0.a(6.0f) * 3)) / 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean C(final PostSubjectItem postSubjectItem, final z zVar, View view) {
        LifecycleCoroutineScope lifecycleCoroutineScope;
        String userId;
        String postId = postSubjectItem.getPostId();
        if (postId == null) {
            return false;
        }
        User user = postSubjectItem.getUser();
        String str = (user == null || (userId = user.getUserId()) == null) ? "" : userId;
        Context context = zVar.f16704h;
        if (context == null || (lifecycleCoroutineScope = zVar.f16705i) == null) {
            return false;
        }
        com.transsion.postdetail.helper.a aVar = com.transsion.postdetail.helper.a.f48866a;
        String str2 = zVar.f16701e;
        if (str2 == null) {
            str2 = "";
        }
        aVar.l(postSubjectItem, str2, zVar.f16702f);
        NegativeFeedbackHelper negativeFeedbackHelper = NegativeFeedbackHelper.f48849a;
        String str3 = zVar.f16701e;
        if (str3 == null) {
            str3 = "";
        }
        negativeFeedbackHelper.k(postId, str, context, lifecycleCoroutineScope, str3, new Function0() { // from class: bp.y
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return z.D(this.f16699a, postSubjectItem);
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit D(z zVar, PostSubjectItem postSubjectItem) {
        int iIndexOf;
        BaseProviderMultiAdapter baseProviderMultiAdapterG = zVar.g();
        if (baseProviderMultiAdapterG != null && (iIndexOf = baseProviderMultiAdapterG.getData().indexOf(postSubjectItem)) >= 0) {
            baseProviderMultiAdapterG.C0(iIndexOf);
        }
        return Unit.f67061a;
    }

    private final int E(int i11, int i12, int i13) {
        float f11 = i11 / i12;
        if (f11 < 0.75f) {
            return (i13 * 4) / 3;
        }
        return f11 > 1.3333334f ? (i13 * 3) / 4 : (int) (i13 / f11);
    }

    private final void G(BaseViewHolder baseViewHolder, PostSubjectItem postSubjectItem, boolean z10) {
        F((AppCompatTextView) baseViewHolder.getViewOrNull(R$id.tv_staggered_post_like), z10, postSubjectItem);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, final PostSubjectItem item) {
        String title;
        String url;
        String thumbnail;
        Integer height;
        Integer width;
        List<Image> image;
        List<Image> image2;
        String avatar;
        String url2;
        Integer height2;
        Integer width2;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        String content = item.getContent();
        String strA = "";
        if (content == null || content.length() == 0 ? (title = item.getTitle()) == null : (title = item.getContent()) == null) {
            title = "";
        }
        AppCompatTextView appCompatTextView = (AppCompatTextView) helper.getViewOrNull(R$id.tvPicNum);
        AppCompatImageView appCompatImageView = (AppCompatImageView) helper.getViewOrNull(R$id.ivPlaying);
        ShapeableImageView shapeableImageView = (ShapeableImageView) helper.getViewOrNull(R$id.iv_cover);
        Media media = item.getMedia();
        if (Intrinsics.c(media != null ? media.getMediaType() : null, MediaType.VIDEO.getValue())) {
            if (appCompatImageView != null) {
                jg.c.k(appCompatImageView);
            }
            if (appCompatTextView != null) {
                jg.c.g(appCompatTextView);
            }
            Media media2 = item.getMedia();
            FirstFrame firstFrame = media2 != null ? media2.getFirstFrame() : null;
            if (shapeableImageView != null) {
                shapeableImageView.getLayoutParams().height = E((firstFrame == null || (width2 = firstFrame.getWidth()) == null) ? 0 : width2.intValue(), (firstFrame == null || (height2 = firstFrame.getHeight()) == null) ? 0 : height2.intValue(), this.f16706j);
                ej.f.a aVar = ej.f.f61882a;
                Context context = shapeableImageView.getContext();
                Intrinsics.g(context, "getContext(...)");
                ej.f.b bVarM = aVar.m(context);
                if (firstFrame == null || (url2 = firstFrame.getUrl()) == null) {
                    url2 = "";
                }
                bVarM.g(url2).d(shapeableImageView);
            }
        } else {
            if (appCompatImageView != null) {
                jg.c.g(appCompatImageView);
            }
            Media media3 = item.getMedia();
            List<Image> image3 = media3 != null ? media3.getImage() : null;
            if (image3 != null && !image3.isEmpty()) {
                Media media4 = item.getMedia();
                Image image4 = (media4 == null || (image2 = media4.getImage()) == null) ? null : image2.get(0);
                Media media5 = item.getMedia();
                int size = (media5 == null || (image = media5.getImage()) == null) ? 0 : image.size();
                if (shapeableImageView != null) {
                    shapeableImageView.getLayoutParams().height = E((image4 == null || (width = image4.getWidth()) == null) ? 0 : width.intValue(), (image4 == null || (height = image4.getHeight()) == null) ? 0 : height.intValue(), this.f16706j);
                    ej.f.a aVar2 = ej.f.f61882a;
                    Context context2 = shapeableImageView.getContext();
                    Intrinsics.g(context2, "getContext(...)");
                    ej.f.b bVarM2 = aVar2.m(context2);
                    if (image4 == null || (url = image4.getUrl()) == null) {
                        url = "";
                    }
                    ej.f.b bVarG = bVarM2.g(url);
                    if (image4 == null || (thumbnail = image4.getThumbnail()) == null) {
                        thumbnail = "";
                    }
                    bVarG.l(thumbnail).d(shapeableImageView);
                }
                if (size > 1) {
                    if (appCompatTextView != null) {
                        jg.c.k(appCompatTextView);
                    }
                    if (appCompatTextView != null) {
                        appCompatTextView.setText(size + " pics");
                    }
                } else if (appCompatTextView != null) {
                    jg.c.g(appCompatTextView);
                }
            }
        }
        AppCompatTextView appCompatTextView2 = (AppCompatTextView) helper.getViewOrNull(R$id.tv_title);
        if (title.length() == 0) {
            if (appCompatTextView2 != null) {
                jg.c.g(appCompatTextView2);
            }
        } else if (appCompatTextView2 != null) {
            jg.c.k(appCompatTextView2);
        }
        if (appCompatTextView2 != null) {
            appCompatTextView2.setText(title);
        }
        ShapeableImageView shapeableImageView2 = (ShapeableImageView) helper.getViewOrNull(R$id.iv_user_avatar);
        if (shapeableImageView2 != null) {
            ej.f.a aVar3 = ej.f.f61882a;
            Context context3 = shapeableImageView2.getContext();
            Intrinsics.g(context3, "getContext(...)");
            ej.f.b bVarM3 = aVar3.m(context3);
            User user = item.getUser();
            if (user == null || (avatar = user.getAvatar()) == null) {
                avatar = "";
            }
            bVarM3.g(avatar).d(shapeableImageView2);
        }
        int i11 = R$id.tv_user_name;
        User user2 = item.getUser();
        helper.setText(i11, user2 != null ? user2.getNickname() : null);
        AppCompatTextView appCompatTextView3 = (AppCompatTextView) helper.getViewOrNull(R$id.tv_staggered_post_like);
        if (appCompatTextView3 != null) {
            Stat stat = item.getStat();
            Long likeCount = stat != null ? stat.getLikeCount() : null;
            if (likeCount != null && likeCount.longValue() != 0) {
                strA = com.transsion.baseui.util.j.a(likeCount.longValue());
            }
            appCompatTextView3.setText(strA);
            if (Intrinsics.c(item.getHasLike(), Boolean.TRUE)) {
                appCompatTextView3.setCompoundDrawablesWithIntrinsicBounds(R$drawable.room_staggered_like_icon, 0, 0, 0);
            } else {
                appCompatTextView3.setCompoundDrawablesWithIntrinsicBounds(R$drawable.room_staggered_unlike_icon, 0, 0, 0);
            }
        }
        helper.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: bp.x
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return z.C(item, this, view);
            }
        });
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
    public void f(BaseViewHolder helper, PostSubjectItem item, List payloads) {
        List<Object> data;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        Intrinsics.h(payloads, "payloads");
        super.f(helper, item, payloads);
        if (payloads.isEmpty()) {
            return;
        }
        Object objV0 = CollectionsKt.v0(payloads);
        if (objV0 instanceof Boolean) {
            try {
                Result.Companion companion = Result.INSTANCE;
                BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
                if (baseProviderMultiAdapterG != null && (data = baseProviderMultiAdapterG.getData()) != null) {
                    int adapterPosition = helper.getAdapterPosition();
                    BaseProviderMultiAdapter baseProviderMultiAdapterG2 = g();
                    PostSubjectItem postSubjectItem = (PostSubjectItem) data.get(adapterPosition + (baseProviderMultiAdapterG2 != null ? baseProviderMultiAdapterG2.a0() : 0));
                    if (postSubjectItem != null) {
                        G(helper, postSubjectItem, ((Boolean) objV0).booleanValue());
                    }
                }
                Result.m454constructorimpl(Unit.f67061a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m454constructorimpl(ResultKt.a(th2));
            }
        }
    }

    public final void F(AppCompatTextView appCompatTextView, boolean z10, PostSubjectItem item) {
        Intrinsics.h(item, "item");
        if (appCompatTextView != null) {
            Stat stat = item.getStat();
            Long likeCount = stat != null ? stat.getLikeCount() : null;
            appCompatTextView.setText((likeCount == null || likeCount.longValue() == 0) ? "" : com.transsion.baseui.util.j.a(likeCount.longValue()));
            if (z10) {
                appCompatTextView.setCompoundDrawablesWithIntrinsicBounds(R$drawable.room_staggered_like_icon, 0, 0, 0);
            } else {
                appCompatTextView.setCompoundDrawablesWithIntrinsicBounds(R$drawable.room_staggered_unlike_icon, 0, 0, 0);
            }
        }
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return MediaType.CONTENT_ALL.ordinal();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.item_provider_post_staggered_layout;
    }
}
