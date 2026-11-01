package com.transsion.search_pugc.fragment.result.provider;

import android.content.Context;
import android.text.SpannableString;
import android.widget.ImageView;
import android.widget.TextView;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;
import com.transsion.search_pugc.constant.ResultCollectItemWrapper;
import com.transsion.ugcvideodetail.api.UGCVideoTypeKt;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class b extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f52427e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f52428f;

    public b() {
        this(false, 1, null);
    }

    public b(boolean z10) {
        this.f52427e = z10;
        this.f52428f = ResultCollectItemWrapper.Type.DATA.ordinal();
    }

    public /* synthetic */ b(boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? false : z10);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return this.f52428f;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.item_search_collection;
    }

    /* JADX WARN: Code duplicated, block: B:38:0x0099  */
    /* JADX WARN: Code duplicated, block: B:40:0x009f  */
    /* JADX WARN: Code duplicated, block: B:41:0x00a4  */
    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, ResultCollectItemWrapper item) {
        String title;
        String thumbnail;
        Cover cover;
        String url;
        Cover cover2;
        UGCVideo uGCVideoA;
        String title2;
        Long duration;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        int i11 = R$id.v_corner;
        UGCVideo uGCVideoA2 = item.a();
        SpannableString spannableStringD = null;
        String corner = uGCVideoA2 != null ? uGCVideoA2.getCorner() : null;
        helper.setVisible(i11, !(corner == null || corner.length() == 0));
        int i12 = R$id.tv_view_resource_corner;
        UGCVideo uGCVideoA3 = item.a();
        helper.setText(i12, uGCVideoA3 != null ? uGCVideoA3.getCorner() : null);
        int i13 = R$id.tv_view_resource_tag;
        UGCVideo uGCVideoA4 = item.a();
        helper.setText(i13, (uGCVideoA4 == null || (duration = uGCVideoA4.getDuration()) == null) ? null : com.transsion.search_pugc.constant.a.j(duration.longValue()));
        UGCVideo uGCVideoA5 = item.a();
        if (uGCVideoA5 != null) {
            UGCVideoTypeKt.i((ImageView) helper.getView(R$id.iv_view_resource_tag), uGCVideoA5, null, 4, null);
        } else {
            helper.setImageResource(R$id.iv_view_resource_tag, UGCVideoTypeKt.e(null));
        }
        TextView textView = (TextView) helper.getView(R$id.tv_title);
        if (this.f52427e) {
            textView.setLines(1);
            UGCVideo uGCVideoA6 = item.a();
            if (uGCVideoA6 == null || (title2 = uGCVideoA6.getEpTitle()) == null) {
                uGCVideoA = item.a();
                if (uGCVideoA != null) {
                    title2 = uGCVideoA.getTitle();
                } else {
                    title2 = null;
                }
            } else {
                if (StringsKt.q0(title2)) {
                    title2 = null;
                }
                if (title2 == null) {
                    uGCVideoA = item.a();
                    if (uGCVideoA != null) {
                        title2 = uGCVideoA.getTitle();
                    } else {
                        title2 = null;
                    }
                }
            }
            if (title2 != null) {
                Context context = textView.getContext();
                Intrinsics.g(context, "getContext(...)");
                spannableStringD = com.transsion.search_pugc.constant.a.d(title2, context, com.transsion.search_pugc.g.f52478h.a(textView.getContext()).e());
            }
        } else {
            textView.setLines(2);
            UGCVideo uGCVideoA7 = item.a();
            if (uGCVideoA7 != null && (title = uGCVideoA7.getTitle()) != null) {
                Context context2 = textView.getContext();
                Intrinsics.g(context2, "getContext(...)");
                spannableStringD = com.transsion.search_pugc.constant.a.d(title, context2, com.transsion.search_pugc.g.f52478h.a(textView.getContext()).e());
            }
        }
        textView.setText(spannableStringD);
        ej.f.b bVarM = ej.f.f61882a.m(k());
        UGCVideo uGCVideoA8 = item.a();
        String str = "";
        if (uGCVideoA8 == null || (cover2 = uGCVideoA8.getCover()) == null || (thumbnail = cover2.getThumbnail()) == null) {
            thumbnail = "";
        }
        ej.f.b bVarL = bVarM.l(thumbnail);
        UGCVideo uGCVideoA9 = item.a();
        if (uGCVideoA9 != null && (cover = uGCVideoA9.getCover()) != null && (url = cover.getUrl()) != null) {
            str = url;
        }
        bVarL.g(str).d((ImageView) helper.getView(R$id.iv_cover));
    }
}
