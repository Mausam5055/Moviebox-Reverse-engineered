package bp;

import androidx.fragment.app.Fragment;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;
import com.transsion.postdetail.ui.view.ImmVideoItemView;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class e extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Fragment f16676e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f16677f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f16678g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f16679h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final boolean f16680i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final String f16681j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final String f16682k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final boolean f16683l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final int f16684m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final int f16685n;

    public e(Fragment fragment, boolean z10, String str, String str2, boolean z11, String commentId, String pageFrom, boolean z12) {
        Intrinsics.h(fragment, "fragment");
        Intrinsics.h(commentId, "commentId");
        Intrinsics.h(pageFrom, "pageFrom");
        this.f16676e = fragment;
        this.f16677f = z10;
        this.f16678g = str;
        this.f16679h = str2;
        this.f16680i = z11;
        this.f16681j = commentId;
        this.f16682k = pageFrom;
        this.f16683l = z12;
        this.f16684m = 1;
        this.f16685n = R$layout.item_immersion_video;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return this.f16684m;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return this.f16685n;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder holder, PostSubjectItem item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        ((ImmVideoItemView) holder.getView(R$id.view_video_item)).setData(item, this.f16676e, Integer.valueOf(holder.getAdapterPosition()), this.f16677f, this.f16678g, this.f16679h, this.f16680i, this.f16681j, this.f16682k, this.f16683l);
    }
}
