package com.transsion.home.adapter.operateUGC.provider;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tn.lib.view.FlowLayout;
import com.transsion.baseui.widget.GradientTextView;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.moviedetailapi.bean.PostItemType;
import com.transsion.ugcvideodetail.api.bean.UGCVideoHashTag;
import com.transsion.web.api.WebConstants;
import java.util.HashMap;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class l extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Integer f44378e;

    public l(Integer num) {
        this.f44378e = num;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(l lVar, UGCVideoHashTag uGCVideoHashTag, OperateItem operateItem, FlowLayout flowLayout, View view, View view2) {
        lVar.C(uGCVideoHashTag, operateItem, flowLayout.indexOfChild(view));
        String deepLink = uGCVideoHashTag.getDeepLink();
        if (deepLink != null) {
            ak.k.g(deepLink, "&tabId=" + lVar.f44378e);
        }
    }

    private final void B(UGCVideoHashTag uGCVideoHashTag, OperateItem operateItem, int i11) {
        String title;
        HashMap map = new HashMap();
        map.put("module_name", WebConstants.FIELD_ITEM);
        if (uGCVideoHashTag == null || (title = uGCVideoHashTag.getTitle()) == null) {
            title = "";
        }
        map.put(CampaignEx.JSON_KEY_TITLE, title);
        map.put(RequestParameters.POSITION, String.valueOf(i11));
        il.b.a(operateItem, map);
        hj.i iVar = hj.i.f64505a;
        SubTabFragment.Companion companion = SubTabFragment.INSTANCE;
        Integer num = this.f44378e;
        iVar.D(companion.a(num != null ? num.intValue() : 1), map);
    }

    private final void C(UGCVideoHashTag uGCVideoHashTag, OperateItem operateItem, int i11) {
        String title;
        HashMap map = new HashMap();
        map.put("module_name", WebConstants.FIELD_ITEM);
        if (uGCVideoHashTag == null || (title = uGCVideoHashTag.getTitle()) == null) {
            title = "";
        }
        map.put(CampaignEx.JSON_KEY_TITLE, title);
        map.put(RequestParameters.POSITION, String.valueOf(i11));
        il.b.a(operateItem, map);
        hj.i iVar = hj.i.f64505a;
        SubTabFragment.Companion companion = SubTabFragment.INSTANCE;
        Integer num = this.f44378e;
        iVar.p(companion.a(num != null ? num.intValue() : 1), map);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return PostItemType.HASH_TAG.ordinal();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.provider_ugc_op_hashtag;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, final OperateItem item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        int i11 = R$id.tv_op_ugc_hashtag_title;
        String title = item.getTitle();
        if (title == null) {
            title = "";
        }
        helper.setText(i11, title);
        final FlowLayout flowLayout = (FlowLayout) helper.getView(R$id.fl_op_ugc_hashtag_layout);
        flowLayout.removeAllViews();
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(k());
        List<UGCVideoHashTag> hashtagList = item.getHashtagList();
        if (hashtagList == null) {
            hashtagList = CollectionsKt.l();
        }
        for (final UGCVideoHashTag uGCVideoHashTag : hashtagList) {
            final View viewInflate = layoutInflaterFrom.inflate(R$layout.item_hashtag_chip, (ViewGroup) flowLayout, false);
            GradientTextView gradientTextView = (GradientTextView) viewInflate.findViewById(R$id.hashtag_chip_text);
            String title2 = uGCVideoHashTag.getTitle();
            if (title2 == null) {
                title2 = uGCVideoHashTag.getTag();
            }
            gradientTextView.setText(title2);
            viewInflate.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.adapter.operateUGC.provider.k
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    l.A(this.f44373a, uGCVideoHashTag, item, flowLayout, viewInflate, view);
                }
            });
            flowLayout.addView(viewInflate);
            B(uGCVideoHashTag, item, flowLayout.indexOfChild(viewInflate));
        }
    }
}
