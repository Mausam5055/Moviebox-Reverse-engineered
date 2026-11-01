package com.transsion.search_pugc.fragment.hot.adapter;

import ak.h;
import android.app.Activity;
import android.content.Context;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.view.GravityCompat;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.KeyboardUtils;
import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.search.R$drawable;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;
import com.transsion.search.R$string;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoHashTag;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import r6.i;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0010\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u001f\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u001f\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u001f\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0016\u0010\u0017R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0014\u0010\u001e\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001d¨\u0006\u001f"}, d2 = {"Lcom/transsion/search_pugc/fragment/hot/adapter/g;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lr6/i;", "", "parentName", "", "parentIndex", "", "showRank", "<init>", "(Ljava/lang/String;IZ)V", "video", RequestParameters.POSITION, "", "F1", "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V", "E1", "()I", "holder", WebConstants.FIELD_ITEM, "C1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V", "F", "Ljava/lang/String;", "G", "I", "H", "Z", "mIsLowDevice", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class g extends BaseQuickAdapter implements i {

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private final String parentName;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private final int parentIndex;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private final boolean showRank;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private final boolean mIsLowDevice;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(String parentName, int i11, boolean z10) {
        super(R$layout.item_search_rank_item, null, 2, null);
        Intrinsics.h(parentName, "parentName");
        this.parentName = parentName;
        this.parentIndex = i11;
        this.showRank = z10;
        this.mIsLowDevice = h.f641a.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D1(g gVar, UGCVideo uGCVideo, int i11, View view) {
        gVar.F1(uGCVideo, i11);
    }

    private final int E1() {
        return TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1 ? GravityCompat.END : GravityCompat.START;
    }

    private final void F1(UGCVideo video, int position) {
        com.transsion.search_pugc.g.f52478h.a(getContext()).t(video, position, this.parentName, this.parentIndex);
        if (getContext() instanceof Activity) {
            Context context = getContext();
            Intrinsics.f(context, "null cannot be cast to non-null type android.app.Activity");
            if (KeyboardUtils.g((Activity) context)) {
                Context context2 = getContext();
                Intrinsics.f(context2, "null cannot be cast to non-null type android.app.Activity");
                KeyboardUtils.d((Activity) context2);
            }
        }
        com.transsion.search_pugc.constant.a.h(video, false, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: C1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, final UGCVideo item) {
        String url;
        String thumbnail;
        UGCVideoHashTag uGCVideoHashTag;
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        final int iG0 = g0(item);
        boolean z10 = true;
        if (this.showRank) {
            holder.setVisible(R$id.search_hot_rank_item_index_text, false);
        } else {
            int i11 = R$drawable.bg_hot_subject_no4;
            if (iG0 == 0) {
                i11 = R$drawable.bg_hot_subject_no1;
            } else if (iG0 == 1) {
                i11 = R$drawable.bg_hot_subject_no2;
            } else if (iG0 == 2) {
                i11 = R$drawable.bg_hot_subject_no3;
            }
            holder.setText(R$id.search_hot_rank_item_index_text, String.valueOf(iG0 + 1));
            holder.setBackgroundResource(R$id.search_hot_rank_item_index_text, i11);
        }
        if (this.mIsLowDevice) {
            holder.setGone(R$id.search_hot_rank_item_image_linear, true);
        } else {
            ej.f.b bVarM = ej.f.f61882a.m(getContext());
            Cover cover = item.getCover();
            if (cover == null || (url = cover.getUrl()) == null) {
                url = "";
            }
            ej.f.b bVarG = bVarM.g(url);
            Cover cover2 = item.getCover();
            if (cover2 == null || (thumbnail = cover2.getThumbnail()) == null) {
                thumbnail = "";
            }
            bVarG.l(thumbnail).m(a0.a(50.0f)).d((ImageView) holder.getView(R$id.search_hot_rank_item_image));
        }
        int i12 = R$id.search_hot_rank_item_title_text;
        String title = item.getTitle();
        if (title == null) {
            title = "";
        }
        holder.setText(i12, title);
        ((TextView) holder.getView(R$id.search_hot_rank_item_title_text)).setGravity(E1());
        ((TextView) holder.getView(R$id.search_hot_rank_item_subtitle_text)).setGravity(E1());
        holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.search_pugc.fragment.hot.adapter.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                g.D1(this.f52363a, item, iG0, view);
            }
        });
        int i13 = R$id.search_hot_rank_item_corner;
        String corner = item.getCorner();
        if (corner != null && corner.length() != 0) {
            z10 = false;
        }
        holder.setGone(i13, z10);
        int i14 = R$id.search_hot_rank_item_corner;
        String corner2 = item.getCorner();
        holder.setText(i14, corner2 != null ? corner2 : "");
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        String watchNum = item.getWatchNum();
        String strL = watchNum != null ? com.transsion.search_pugc.constant.a.l(watchNum) : null;
        spannableStringBuilder.append((CharSequence) (strL + " " + getContext().getString(R$string.views)));
        List<UGCVideoHashTag> hashTags = item.getHashTags();
        if (hashTags != null && (uGCVideoHashTag = (UGCVideoHashTag) CollectionsKt.l0(hashTags, 0)) != null) {
            spannableStringBuilder.append((CharSequence) "￼");
            spannableStringBuilder.append((CharSequence) uGCVideoHashTag.getTitle());
        }
        ((TextView) holder.getView(R$id.search_hot_rank_item_subtitle_text)).setText(spannableStringBuilder);
    }

    @Override // r6.i
    public /* bridge */ /* synthetic */ r6.f b(BaseQuickAdapter baseQuickAdapter) {
        return r6.h.a(this, baseQuickAdapter);
    }
}
