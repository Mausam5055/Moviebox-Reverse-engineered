package bn;

import android.view.View;
import android.widget.FrameLayout;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.therouter.TheRouter;
import com.transsion.moviedetail.R$id;
import com.transsion.moviedetail.R$layout;
import com.transsion.moviedetailapi.bean.MediaType;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.RoomItem;
import com.transsion.moviedetailapi.p006enum.ProfileSubSource;
import com.transsion.room.api.IRoomApi;
import com.transsion.room.api.RoomsViewType;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class d extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f16630e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f16631f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Lazy f16632g = LazyKt.b(new Function0() { // from class: bn.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return d.B(this.f16629a);
        }
    });

    public d(String str, String str2) {
        this.f16630e = str;
        this.f16631f = str2;
    }

    private final aq.c A() {
        return (aq.c) this.f16632g.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final aq.c B(d dVar) {
        IRoomApi iRoomApi = (IRoomApi) TheRouter.d(IRoomApi.class, new Object[0]);
        if (iRoomApi != null) {
            return iRoomApi.c(dVar.k(), RoomsViewType.TYPE_SUBJECT_DETAIL);
        }
        return null;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return MediaType.ROOM_LIST.ordinal();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.movie_detail_item_rooms;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, PostSubjectItem item) {
        View view;
        aq.c cVarA;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        FrameLayout frameLayout = (FrameLayout) helper.getView(R$id.fl_root);
        String str = this.f16630e;
        if (str != null) {
            String value = this.f16631f;
            if (value == null) {
                value = ProfileSubSource.COMMENTS.getValue();
            }
            aq.c cVarA2 = A();
            if (cVarA2 != null) {
                cVarA2.setReportName(str, value);
            }
        }
        List<RoomItem> roomList = item.getRoomList();
        if (roomList != null && (cVarA = A()) != null) {
            cVarA.setList(roomList);
        }
        aq.c cVarA3 = A();
        if (cVarA3 == null || (view = cVarA3.getView()) == null || frameLayout.indexOfChild(view) != -1) {
            return;
        }
        frameLayout.removeAllViews();
        frameLayout.addView(view);
    }
}
