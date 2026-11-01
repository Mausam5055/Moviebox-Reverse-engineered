package dl;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.tn.lib.view.FlowLayout;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.widget.GradientTextView;
import com.transsion.home.R$drawable;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.hashtag.model.HashTagItem;
import com.transsion.home.hashtag.model.HashTagItemType;
import com.transsion.ugcvideodetail.api.bean.UGCVideoHashTag;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class d extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.transsion.home.adapter.hashtag.a.InterfaceC0625a f61367e;

    public d(com.transsion.home.adapter.hashtag.a.InterfaceC0625a callbacks) {
        Intrinsics.h(callbacks, "callbacks");
        this.f61367e = callbacks;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(d dVar, UGCVideoHashTag uGCVideoHashTag, View view) {
        dVar.f61367e.b(uGCVideoHashTag);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return HashTagItemType.TAGS.ordinal();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.item_hashtag_tags;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, HashTagItem item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        FlowLayout flowLayout = (FlowLayout) helper.getView(R$id.hashtag_tags_flow);
        flowLayout.removeAllViews();
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(k());
        List<UGCVideoHashTag> tags = item.getTags();
        if (tags == null) {
            tags = CollectionsKt.l();
        }
        for (final UGCVideoHashTag uGCVideoHashTag : tags) {
            boolean z10 = false;
            View viewInflate = layoutInflaterFrom.inflate(R$layout.item_hashtag_chip, (ViewGroup) flowLayout, false);
            GradientTextView gradientTextView = (GradientTextView) viewInflate.findViewById(R$id.hashtag_chip_text);
            String title = uGCVideoHashTag.getTitle();
            if (title == null) {
                title = uGCVideoHashTag.getTag();
            }
            gradientTextView.setText(title);
            List<UGCVideoHashTag> selectedTags = item.getSelectedTags();
            if (selectedTags != null) {
                List<UGCVideoHashTag> list = selectedTags;
                if (!(list instanceof Collection) || !list.isEmpty()) {
                    Iterator<T> it = list.iterator();
                    while (it.hasNext()) {
                        if (Intrinsics.c(((UGCVideoHashTag) it.next()).getTag(), uGCVideoHashTag.getTag())) {
                            z10 = true;
                            break;
                        }
                    }
                }
            }
            viewInflate.setSelected(z10);
            if (z10) {
                viewInflate.setBackgroundResource(R$drawable.bg_hashtag_item_seleted);
                gradientTextView.setGradientColors(androidx.core.content.b.getColor(helper.itemView.getContext(), R$color.brand_new_gradient_start), androidx.core.content.b.getColor(helper.itemView.getContext(), R$color.brand_new_gradient_center), androidx.core.content.b.getColor(helper.itemView.getContext(), R$color.brand_new_gradient_end));
            } else {
                viewInflate.setBackgroundResource(R$drawable.bg_hashtag_item_unseleted);
                gradientTextView.setGradientColors(androidx.core.content.b.getColor(helper.itemView.getContext(), R$color.white_80), androidx.core.content.b.getColor(helper.itemView.getContext(), R$color.white_80), androidx.core.content.b.getColor(helper.itemView.getContext(), R$color.white_80));
            }
            viewInflate.setOnClickListener(new View.OnClickListener() { // from class: dl.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    d.A(this.f61365a, uGCVideoHashTag, view);
                }
            });
            flowLayout.addView(viewInflate);
        }
    }
}
