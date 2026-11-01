package a;

import androidx.annotation.Keep;
import com.therouter.router.RouteItem;
import com.therouter.router.RouteMapKt;
import com.therouter.router.d;

/* JADX INFO: loaded from: classes.dex */
@Keep
public class RouterMap__TheRouter__601604161 implements d {
    public static final String COUNT = "1";
    public static final String ROUTERMAP0 = "[{\"path\":\"/playvideo/music_detail\",\"className\":\"com.transsion.videodetail.music.ui.MusicDetailActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}},{\"path\":\"/playvideo/detail\",\"className\":\"com.transsion.videodetail.StreamDetailActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}}]";
    public static final String TAG = "Created by kymjs, and APT Version is 1.3.0.";
    public static final String THEROUTER_APT_VERSION = "1.3.0";

    public static void addRoute() {
        RouteMapKt.c(new RouteItem("/playvideo/music_detail", "com.transsion.videodetail.music.ui.MusicDetailActivity", "", ""));
        RouteMapKt.c(new RouteItem("/playvideo/detail", "com.transsion.videodetail.StreamDetailActivity", "", ""));
    }

    @Override // com.therouter.router.d
    public void init() {
        addRoute();
    }
}
