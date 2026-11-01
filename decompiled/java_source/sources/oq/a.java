package oq;

import android.content.Context;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;
import com.transsion.search.bean.SearchSubject;
import com.transsion.search.bean.VerticalRank;
import ej.f;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class a extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f71099e = a0.a(72.0f);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f71100f = a0.a(96.0f);

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return 1;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.item_associate_subject;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, SearchSubject item) {
        String url;
        Cover cover;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        ShapeableImageView shapeableImageView = (ShapeableImageView) helper.getViewOrNull(R$id.ivCover);
        if (shapeableImageView != null) {
            f.a aVar = f.f61882a;
            VerticalRank verticalRank = item.getVerticalRank();
            if (verticalRank == null || (cover = verticalRank.getCover()) == null || (url = cover.getUrl()) == null) {
                url = "";
            }
            String strE = f.a.e(aVar, url, this.f71099e, false, false, 12, null);
            Context context = shapeableImageView.getContext();
            Intrinsics.g(context, "getContext(...)");
            aVar.m(context).g(strE).d(shapeableImageView);
        }
        AppCompatTextView appCompatTextView = (AppCompatTextView) helper.getViewOrNull(R$id.tvTitle);
        if (appCompatTextView != null) {
            VerticalRank verticalRank2 = item.getVerticalRank();
            appCompatTextView.setText(verticalRank2 != null ? verticalRank2.getTitle() : null);
        }
        AppCompatTextView appCompatTextView2 = (AppCompatTextView) helper.getViewOrNull(R$id.tvDes);
        if (appCompatTextView2 != null) {
            VerticalRank verticalRank3 = item.getVerticalRank();
            appCompatTextView2.setText(verticalRank3 != null ? verticalRank3.getDescription() : null);
        }
        View viewOrNull = helper.getViewOrNull(R$id.divider);
        if (viewOrNull != null) {
            if (item.getShowDivider()) {
                jg.c.k(viewOrNull);
            } else {
                jg.c.g(viewOrNull);
            }
        }
    }
}
