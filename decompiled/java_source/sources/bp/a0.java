package bp;

import androidx.recyclerview.widget.RecyclerView;
import com.transsion.postdetail.R$layout;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class a0 extends q {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a0(String str, String str2, RecyclerView.s pool) {
        super(str, str2, pool);
        Intrinsics.h(pool, "pool");
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.item_provider_room_post_subject_detail;
    }
}
