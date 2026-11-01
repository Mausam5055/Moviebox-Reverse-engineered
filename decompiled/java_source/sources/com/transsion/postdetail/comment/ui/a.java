package com.transsion.postdetail.comment.ui;

import android.widget.ImageView;
import android.widget.TextView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.moviedetailapi.bean.CommentBean;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;
import com.transsion.postdetail.R$string;
import com.transsion.postdetail.util.n;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import ej.f;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import r6.h;
import r6.i;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\fB\u0007¢\u0006\u0004\b\u0004\u0010\u0005J%\u0010\n\u001a\u00020\b2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0014¢\u0006\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Lcom/transsion/postdetail/comment/ui/a;", "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;", "Lcom/transsion/moviedetailapi/bean/CommentBean;", "Lr6/i;", "<init>", "()V", "", "data", "", RequestParameters.POSITION, "N1", "(Ljava/util/List;I)I", "a", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class a extends BaseProviderMultiAdapter<CommentBean> implements i {

    /* JADX INFO: renamed from: com.transsion.postdetail.comment.ui.a$a, reason: collision with other inner class name */
    public static final class C0647a extends BaseItemProvider {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f48792e = a0.a(32.0f);

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final int f48793f = a0.a(51.0f);

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final int f48794g = a0.a(34.0f);

        @Override // com.chad.library.adapter.base.provider.BaseItemProvider
        public int l() {
            return 0;
        }

        @Override // com.chad.library.adapter.base.provider.BaseItemProvider
        public int m() {
            return R$layout.item_my_comment_list_layout;
        }

        @Override // com.chad.library.adapter.base.provider.BaseItemProvider
        /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
        public void b(BaseViewHolder helper, CommentBean item) {
            Cover cover;
            Intrinsics.h(helper, "helper");
            Intrinsics.h(item, "item");
            ImageView imageView = (ImageView) helper.getView(R$id.avatarIV);
            f.a aVar = f.f61882a;
            f.b bVarM = aVar.m(k());
            String avatarUrl = item.getAvatarUrl();
            if (avatarUrl == null) {
                avatarUrl = "";
            }
            bVarM.g(avatarUrl).m(this.f48792e).c(this.f48792e).d(imageView);
            ImageView imageView2 = (ImageView) helper.getView(R$id.contentIV);
            imageView2.setImageResource(0);
            List<Cover> imageList = item.getImageList();
            if (imageList != null && (cover = (Cover) CollectionsKt.k0(imageList)) != null) {
                f.b bVarM2 = aVar.m(k());
                String url = cover.getUrl();
                if (url == null) {
                    url = "";
                }
                f.b bVarC = bVarM2.g(url).m(this.f48793f).c(this.f48794g);
                String thumbnail = cover.getThumbnail();
                bVarC.l(thumbnail != null ? thumbnail : "").d(imageView2);
            }
            helper.setText(R$id.nameTV, item.getNickName());
            helper.setText(R$id.commentTV, item.getContent());
            TextView textView = (TextView) helper.getView(R$id.timeTV);
            Long createdAt = item.getCreatedAt();
            if (createdAt != null) {
                textView.setText(k().getString(R$string.comment_post_time, n.b(createdAt.longValue())));
            }
            textView.setVisibility(createdAt != null ? 0 : 8);
        }
    }

    public a() {
        super(null, 1, null);
        F1(new C0647a());
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    protected int N1(List<? extends CommentBean> data, int position) {
        Intrinsics.h(data, "data");
        return 0;
    }

    @Override // r6.i
    public /* bridge */ /* synthetic */ r6.f b(BaseQuickAdapter baseQuickAdapter) {
        return h.a(this, baseQuickAdapter);
    }
}
