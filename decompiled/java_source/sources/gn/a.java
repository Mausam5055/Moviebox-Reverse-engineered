package gn;

import android.content.Context;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import com.therouter.router.RouteItem;
import com.transsion.moviedetail.activity.MovieDetailActivity;
import com.transsion.moviedetail.activity.SubjectListActivity;
import com.transsion.moviedetail.fragment.SubjectListFragment;
import com.transsion.moviedetail.preload.g;
import com.transsion.moviedetailapi.IMovieDetailService;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes.dex */
public class a implements IMovieDetailService {
    @Override // com.transsion.moviedetailapi.IMovieDetailService
    public void a(RouteItem routeItem, bg.b callback) {
        Intrinsics.h(routeItem, "routeItem");
        Intrinsics.h(callback, "callback");
        g.f47289a.a().a(routeItem, callback);
    }

    @Override // com.transsion.moviedetailapi.IMovieDetailService
    public void b(Context context, Bundle params, Class type, String str) {
        Intrinsics.h(context, "context");
        Intrinsics.h(params, "params");
        Intrinsics.h(type, "type");
        SubjectListActivity.INSTANCE.a(context, params, type, str);
    }

    @Override // com.transsion.moviedetailapi.IMovieDetailService
    public void c(Fragment fragment) {
        Intrinsics.h(fragment, "fragment");
        if (fragment instanceof SubjectListFragment) {
            ((SubjectListFragment) fragment).refresh();
        }
    }

    @Override // com.transsion.moviedetailapi.IMovieDetailService
    public String d() {
        return String.valueOf(Reflection.b(MovieDetailActivity.class).g());
    }

    @Override // com.transsion.moviedetailapi.IMovieDetailService
    public Fragment e(Bundle params, Class type) {
        Intrinsics.h(params, "params");
        Intrinsics.h(type, "type");
        return SubjectListFragment.INSTANCE.a(params, type);
    }
}
