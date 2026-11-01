package dl;

import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import com.blankj.utilcode.util.a0;
import com.blankj.utilcode.util.y;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.util.TimeUtilKt;
import com.transsion.baseui.util.j;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.hashtag.model.HashTagItem;
import com.transsion.home.hashtag.model.HashTagItemType;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.ugcvideodetail.api.UGCVideoTypeKt;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import ej.f;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class b extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.transsion.home.adapter.hashtag.a.InterfaceC0625a f61363e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f61364f;

    public b(com.transsion.home.adapter.hashtag.a.InterfaceC0625a callbacks) {
        Intrinsics.h(callbacks, "callbacks");
        this.f61363e = callbacks;
        this.f61364f = 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(b bVar, UGCVideo uGCVideo, BaseViewHolder baseViewHolder, View view) {
        bVar.f61363e.a(uGCVideo, baseViewHolder.getBindingAdapterPosition());
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return HashTagItemType.HASHTAG_CARD.ordinal();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.ugc_item_hashtag_subject;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public void b(final BaseViewHolder holder, HashTagItem item) {
        String url;
        String thumbnail;
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        final UGCVideo ugcVideo = item.getUgcVideo();
        if (ugcVideo == null) {
            return;
        }
        a0.a(107.0f);
        a0.a(149.0f);
        boolean z10 = true;
        int iA = a0.a(((this.f61364f - 1) * 8.0f) + 24.0f);
        int iE = y.e();
        int i11 = this.f61364f;
        int i12 = (iE - iA) / i11;
        int iA2 = a0.a(((i11 - 1) * 8.0f) + 24.0f);
        a0.a(109.0f);
        a0.a(109.0f);
        int i13 = iE - iA2;
        int i14 = i13 / this.f61364f;
        int iA3 = a0.a(164.0f);
        int iA4 = a0.a(92.0f);
        int i15 = i13 / this.f61364f;
        int i16 = (int) (i15 * ((iA4 * 1.0f) / iA3));
        ((FrameLayout) holder.getView(R$id.nativeView)).setVisibility(8);
        ((Group) holder.getView(R$id.group)).setVisibility(0);
        ShapeableImageView shapeableImageView = (ShapeableImageView) holder.getView(R$id.iv_cover);
        View view = holder.getView(R$id.cover_container);
        ugcVideo.getCategory();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
        ((ViewGroup.MarginLayoutParams) bVar).height = i16;
        ((ViewGroup.MarginLayoutParams) bVar).width = i15;
        view.setLayoutParams(bVar);
        f.b bVarM = f.f61882a.m(k());
        Cover cover = ugcVideo.getCover();
        if (cover == null || (url = cover.getUrl()) == null) {
            url = "";
        }
        f.b bVarG = bVarM.g(url);
        Cover cover2 = ugcVideo.getCover();
        if (cover2 == null || (thumbnail = cover2.getThumbnail()) == null) {
            thumbnail = "";
        }
        bVarG.l(thumbnail).i(R$color.cl37).m(i15).c(i16).d(shapeableImageView);
        int i17 = R$id.tv_title;
        String title = ugcVideo.getTitle();
        if (title == null) {
            title = "";
        }
        holder.setText(i17, title);
        holder.setText(R$id.tv_views, j.c(ugcVideo.getWatchNum(), k()));
        Long publishTime = ugcVideo.getPublishTime();
        long jLongValue = publishTime != null ? publishTime.longValue() : 0L;
        String strI = jLongValue > 0 ? TimeUtilKt.i(jLongValue) : "";
        if (strI.length() == 0) {
            holder.setText(R$id.tv_type, "");
            holder.setVisible(R$id.separator, false);
        } else {
            holder.setText(R$id.tv_type, strI);
            holder.setVisible(R$id.separator, true);
        }
        UGCVideoTypeKt.i((ImageView) holder.getView(R$id.iv_res_post_type), ugcVideo, null, 4, null);
        Long duration = ugcVideo.getDuration();
        holder.setText(R$id.tv_duration, TimeUtilKt.q(duration != null ? duration.longValue() : 0L));
        String corner = ugcVideo.getCorner();
        View view2 = holder.getView(R$id.tag_audio);
        TextView textView = (TextView) holder.getView(R$id.tv_audio_tag);
        if (corner != null && !StringsKt.q0(corner)) {
            z10 = false;
        }
        view2.setVisibility(z10 ? 8 : 0);
        String corner2 = ugcVideo.getCorner();
        textView.setText(corner2 != null ? corner2 : "");
        holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: dl.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                b.A(this.f61360a, ugcVideo, holder, view3);
            }
        });
    }
}
