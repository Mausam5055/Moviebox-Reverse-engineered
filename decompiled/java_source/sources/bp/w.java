package bp;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.moviedetailapi.bean.MediaType;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.RoomItem;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;
import com.transsion.postdetail.R$string;
import java.util.List;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class w extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final aq.c f16696e;

    public w(aq.c roomsView) {
        Intrinsics.h(roomsView, "roomsView");
        this.f16696e = roomsView;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return MediaType.ROOM_LIST.ordinal();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.item_provider_room_post_nearby_rs_layout;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, PostSubjectItem item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        FrameLayout frameLayout = (FrameLayout) helper.getView(R$id.fl_container);
        if (frameLayout.getChildCount() == 0) {
            View view = this.f16696e.getView();
            if (view.getParent() != null) {
                ViewParent parent = view.getParent();
                Intrinsics.f(parent, "null cannot be cast to non-null type android.view.ViewGroup");
                ((ViewGroup) parent).removeView(view);
            }
            frameLayout.addView(view, new FrameLayout.LayoutParams(-1, -2));
        }
        List<RoomItem> roomList = item.getRoomList();
        if (roomList != null) {
            aq.c cVar = this.f16696e;
            String string = Utils.a().getString(R$string.Nearby_Communities);
            Intrinsics.g(string, "getString(...)");
            cVar.updateTitle(string);
            this.f16696e.setList(roomList);
            hj.i.f64505a.D("room_home", MapsKt.m(TuplesKt.a("module_name", "room_nearby_recommend")));
            this.f16696e.setReportName("room_home", "room_nearby_recommend");
        }
    }
}
