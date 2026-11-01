package com.transsion.search_pugc.fragment.result.provider;

import android.widget.TextView;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;
import com.transsion.search_pugc.bean.SearchResultItem;
import com.transsion.search_pugc.constant.SearchType;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoHashTag;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class d extends BaseItemProvider implements t {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final /* synthetic */ t f52430e;

    public d(t reportable) {
        Intrinsics.h(reportable, "reportable");
        this.f52430e = reportable;
    }

    @Override // com.transsion.search_pugc.fragment.result.provider.t
    public void a(UGCVideo ugcVideo, int i11) {
        Intrinsics.h(ugcVideo, "ugcVideo");
        this.f52430e.a(ugcVideo, i11);
    }

    @Override // com.transsion.search_pugc.fragment.result.provider.t
    public void c(UGCVideo ugcVideo, int i11) {
        Intrinsics.h(ugcVideo, "ugcVideo");
        this.f52430e.c(ugcVideo, i11);
    }

    @Override // com.transsion.search_pugc.fragment.result.provider.t
    public void d(SearchResultItem item, int i11) {
        Intrinsics.h(item, "item");
        this.f52430e.d(item, i11);
    }

    @Override // com.transsion.search_pugc.fragment.result.provider.t
    public void e(UGCVideo ugcVideo, int i11) {
        Intrinsics.h(ugcVideo, "ugcVideo");
        this.f52430e.e(ugcVideo, i11);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return SearchType.HASH_TAG.ordinal();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.provider_result_hashtag;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, SearchResultItem item) {
        String title;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        TextView textView = (TextView) helper.getView(R$id.f51940tv);
        UGCVideoHashTag hashTag = item.getHashTag();
        textView.setText(String.valueOf((hashTag == null || (title = hashTag.getTitle()) == null) ? null : com.transsion.search_pugc.constant.a.d(title, k(), com.transsion.search_pugc.g.f52478h.a(k()).e())));
    }
}
