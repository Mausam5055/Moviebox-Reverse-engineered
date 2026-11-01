package a;

import androidx.annotation.Keep;
import com.therouter.router.RouteItem;
import com.therouter.router.RouteMapKt;
import com.therouter.router.d;

/* JADX INFO: loaded from: classes.dex */
@Keep
public class RouterMap__TheRouter__1763260754 implements d {
    public static final String COUNT = "1";
    public static final String ROUTERMAP0 = "[{\"path\":\"/postdetail/favorite\",\"className\":\"com.transsion.postdetail.ui.activity.favorite.FavoriteActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/postdetail/feedback_input\",\"className\":\"com.transsion.postdetail.ui.activity.PostFeedbackInputActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/post/detailVideo\",\"className\":\"com.transsion.postdetail.ui.activity.PostDetailVideoActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/post/detail\",\"className\":\"com.transsion.postdetail.ui.activity.PostDetailActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/video/detail\",\"className\":\"com.transsion.postdetail.ui.activity.LocalVideoDetailActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/profile/my_activity\",\"className\":\"com.transsion.postdetail.myactivity.MyActivityActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/post/my_comment\",\"className\":\"com.transsion.postdetail.comment.ui.CommentListActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}}]";
    public static final String TAG = "Created by kymjs, and APT Version is 1.3.0.";
    public static final String THEROUTER_APT_VERSION = "1.3.0";

    public static void addRoute() {
        RouteMapKt.c(new RouteItem("/postdetail/favorite", "com.transsion.postdetail.ui.activity.favorite.FavoriteActivity", "", ""));
        RouteMapKt.c(new RouteItem("/postdetail/feedback_input", "com.transsion.postdetail.ui.activity.PostFeedbackInputActivity", "", ""));
        RouteMapKt.c(new RouteItem("/post/detailVideo", "com.transsion.postdetail.ui.activity.PostDetailVideoActivity", "", ""));
        RouteMapKt.c(new RouteItem("/post/detail", "com.transsion.postdetail.ui.activity.PostDetailActivity", "", ""));
        RouteMapKt.c(new RouteItem("/video/detail", "com.transsion.postdetail.ui.activity.LocalVideoDetailActivity", "", ""));
        RouteMapKt.c(new RouteItem("/profile/my_activity", "com.transsion.postdetail.myactivity.MyActivityActivity", "", ""));
        RouteMapKt.c(new RouteItem("/post/my_comment", "com.transsion.postdetail.comment.ui.CommentListActivity", "", ""));
    }

    @Override // com.therouter.router.d
    public void init() {
        addRoute();
    }
}
