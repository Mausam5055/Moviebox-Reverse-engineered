package uo;

import android.app.Application;
import android.os.Handler;
import android.os.Looper;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import bp.a0;
import bp.n;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.therouter.router.RouteItem;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.RoomTabItem;
import com.transsion.player.mediasession.h;
import com.transsion.postdetail.helper.ImmVideoHelper;
import com.transsion.postdetail.shorttv.factory.i;
import com.transsion.postdetail.ui.fragment.CommentFragment;
import com.transsion.postdetail.ui.fragment.RoomPostExploreFragment;
import com.transsion.postdetail.ui.fragment.RoomPostNearbyFragment;
import com.transsion.postdetail.ui.fragment.RoomPostNewestFragment;
import com.transsion.postdetail.ui.fragment.RoomPostPopularFragment;
import com.transsion.postdetail.ui.fragment.RoomPostStaggeredFragment;
import com.transsion.postdetail.ui.fragment.RoomPostSubFragment;
import com.transsion.postdetail.ui.interceptor.LocalVideoDetailInterceptor;
import com.transsion.postdetailapi.IPostDetailApi;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class b implements IPostDetailApi {
    /* JADX INFO: Access modifiers changed from: private */
    public static final void q() {
        h.f48399a.p();
    }

    @Override // com.transsion.postdetailapi.IPostDetailApi
    public void a(RouteItem routeItem, bg.b callback) {
        Intrinsics.h(routeItem, "routeItem");
        Intrinsics.h(callback, "callback");
        LocalVideoDetailInterceptor.f49872a.a().i(routeItem, callback);
        com.transsion.postdetail.shorttv.c.f49200a.a().d(routeItem, callback);
    }

    @Override // com.transsion.postdetailapi.IPostDetailApi
    public Fragment b(String str, RoomTabItem item, int i11) {
        Intrinsics.h(item, "item");
        return RoomPostStaggeredFragment.INSTANCE.a(str, item, i11);
    }

    @Override // com.transsion.postdetailapi.IPostDetailApi
    public Fragment c(String str, RoomTabItem item, int i11) {
        Intrinsics.h(item, "item");
        return RoomPostSubFragment.INSTANCE.a(str, item, i11);
    }

    @Override // com.transsion.postdetailapi.IPostDetailApi
    public Fragment d(String str, String str2, String str3) {
        return RoomPostExploreFragment.INSTANCE.a(str, str2, str3);
    }

    @Override // com.transsion.postdetailapi.IPostDetailApi
    public Fragment e(String str) {
        return RoomPostNewestFragment.INSTANCE.a(str);
    }

    @Override // com.transsion.postdetailapi.IPostDetailApi
    public Fragment f(String str, String str2, long j11, boolean z10, boolean z11, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10) {
        return CommentFragment.INSTANCE.a(str, str2, j11, z10, z11, str3 == null ? "" : str3, str4, str5, str6, str7, str8, str9, str10);
    }

    @Override // com.transsion.postdetailapi.IPostDetailApi
    public void g(Fragment fragment, boolean z10) {
        if (fragment instanceof RoomPostExploreFragment) {
            ((RoomPostExploreFragment) fragment).loadMoreCacheData(z10);
        }
    }

    @Override // com.transsion.postdetailapi.IPostDetailApi
    public BaseItemProvider h(String str, String str2, RecyclerView.s pool) {
        Intrinsics.h(pool, "pool");
        return new a0(str, str2, pool);
    }

    @Override // com.transsion.postdetailapi.IPostDetailApi
    public void i(PostSubjectItem data) {
        Intrinsics.h(data, "data");
        ImmVideoHelper.f48840h.a().s(data);
    }

    @Override // com.transsion.postdetailapi.IPostDetailApi
    public void j(Application application) {
        Intrinsics.h(application, "application");
        lg.a.C0828a.f(lg.a.f68839a, "ShortTv", "---------------initShortTv--------------", false, 4, null);
        lr.c.f69031a.d(application, new i());
        ys.a.f79056a.c(application, new com.transsion.postdetail.shorttv.factory.a());
    }

    @Override // com.transsion.postdetailapi.IPostDetailApi
    public Fragment k(String str) {
        return RoomPostPopularFragment.INSTANCE.a(str);
    }

    @Override // com.transsion.postdetailapi.IPostDetailApi
    public Fragment l(String str) {
        return RoomPostNearbyFragment.INSTANCE.a(str);
    }

    @Override // com.transsion.postdetailapi.IPostDetailApi
    public void m(String tag) {
        Intrinsics.h(tag, "tag");
        ox.c cVar = ox.c.f72196a;
        if (cVar.b(tag)) {
            lg.a.C0828a.f(lg.a.f68839a, "VideoFloat", "资源被删除，移除pip,tag:" + tag, false, 4, null);
            cVar.a();
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: uo.a
                @Override // java.lang.Runnable
                public final void run() {
                    b.q();
                }
            }, 1500L);
        }
    }

    @Override // com.transsion.postdetailapi.IPostDetailApi
    public void n(Fragment fragment) {
        if (fragment instanceof RoomPostExploreFragment) {
            ((RoomPostExploreFragment) fragment).insertRoomCacheData();
        }
    }

    @Override // com.transsion.postdetailapi.IPostDetailApi
    public BaseItemProvider o(String str, String str2, RecyclerView.s pool) {
        Intrinsics.h(pool, "pool");
        return new n(str, str2, pool);
    }
}
