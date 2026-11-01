package cl;

import ak.o;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.util.TimeUtilKt;
import com.transsion.baseui.util.j;
import com.transsion.home.R$drawable;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.bean.LayoutStyle;
import com.transsion.home.bean.UGCFilterVideoItem;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.ugcvideodetail.api.UGCVideoTypeKt;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoCreator;
import ej.f;
import jg.c;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import rl.k;
import rl.l;

/* JADX INFO: loaded from: classes5.dex */
public final class b extends BaseItemProvider {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final a f17270k = new a(null);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int f17271l = 8;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final hl.b f17272e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private LayoutStyle f17273f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f17274g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f17275h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f17276i = 1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f17277j = R$layout.ugc_item_filter_source;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public b(hl.b bVar, LayoutStyle layoutStyle, int i11, boolean z10) {
        this.f17272e = bVar;
        this.f17273f = layoutStyle;
        this.f17274g = i11;
        this.f17275h = z10;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return this.f17276i;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return this.f17277j;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public void v(BaseViewHolder viewHolder, int i11) {
        Intrinsics.h(viewHolder, "viewHolder");
        super.v(viewHolder, i11);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder holder, UGCFilterVideoItem item) {
        String url;
        String thumbnail;
        String avatar;
        String nickname;
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        ((FrameLayout) holder.getView(R$id.nativeView)).setVisibility(8);
        ((Group) holder.getView(R$id.group)).setVisibility(0);
        UGCVideo video = item.getContent().getVideo();
        if (video == null) {
            return;
        }
        String category = video.getCategory();
        ShapeableImageView shapeableImageView = (ShapeableImageView) holder.getView(R$id.iv_cover);
        View view = holder.getView(R$id.cover_container);
        k kVarA = l.f74565a.a(this.f17274g, this.f17273f, category);
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
        ((ViewGroup.MarginLayoutParams) bVar).height = kVarA.a();
        view.setLayoutParams(bVar);
        f.a aVar = f.f61882a;
        f.b bVarM = aVar.m(k());
        Cover cover = video.getCover();
        if (cover == null || (url = cover.getUrl()) == null) {
            url = "";
        }
        f.b bVarC = bVarM.g(url).i(R$color.cl37).m(kVarA.b()).c(kVarA.a());
        Cover cover2 = video.getCover();
        if (cover2 == null || (thumbnail = cover2.getThumbnail()) == null) {
            thumbnail = "";
        }
        bVarC.l(thumbnail).d(shapeableImageView);
        int i11 = R$id.tv_title;
        String title = video.getTitle();
        if (title == null) {
            title = "";
        }
        holder.setText(i11, title);
        holder.setText(R$id.tv_views, j.c(video.getWatchNum(), k()));
        boolean z10 = true;
        if (!this.f17275h || o.f646a.i()) {
            Long publishTime = video.getPublishTime();
            long jLongValue = publishTime != null ? publishTime.longValue() : 0L;
            String strI = jLongValue > 0 ? TimeUtilKt.i(jLongValue) : "";
            if (strI.length() == 0) {
                holder.setVisible(R$id.separator, false);
                holder.setText(R$id.tv_type, "");
            } else {
                holder.setVisible(R$id.separator, true);
                holder.setText(R$id.tv_type, strI);
            }
            c.k(holder.getView(R$id.iv_res_post_type));
            UGCVideoTypeKt.i((ImageView) holder.getView(R$id.iv_res_post_type), video, null, 4, null);
            holder.setGone(R$id.iv_upload_user_icon, true);
        } else {
            holder.setGone(R$id.iv_res_post_type, true);
            holder.setVisible(R$id.iv_upload_user_icon, true);
            f.b bVarM2 = aVar.m(k());
            UGCVideoCreator creator = video.getCreator();
            if (creator == null || (avatar = creator.getAvatar()) == null) {
                avatar = "";
            }
            bVarM2.g(avatar).i(R$drawable.icon_ugc_user_upload).d((ImageView) holder.getView(R$id.iv_upload_user_icon));
            int i12 = R$id.tv_type;
            UGCVideoCreator creator2 = video.getCreator();
            if (creator2 == null || (nickname = creator2.getNickname()) == null) {
                nickname = "";
            }
            holder.setText(i12, nickname);
            holder.setVisible(R$id.separator, true);
        }
        holder.setText(R$id.tv_duration, video.getTimeOrCount(k()));
        String corner = video.getCorner();
        View view2 = holder.getView(R$id.tag_audio);
        TextView textView = (TextView) holder.getView(R$id.tv_audio_tag);
        if (corner != null && !StringsKt.q0(corner)) {
            z10 = false;
        }
        view2.setVisibility(z10 ? 8 : 0);
        String corner2 = video.getCorner();
        textView.setText(corner2 != null ? corner2 : "");
    }

    public final void z(boolean z10) {
        this.f17275h = z10;
    }
}
