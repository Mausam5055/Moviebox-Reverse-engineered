package fo;

import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.avery.subtitle.widget.SimpleSubtitleView;
import com.transsion.player.longvideo.constants.LongVodContentType;
import com.transsion.player.longvideo.constants.LongVodPageType;
import com.transsion.player.longvideo.intercept.PlaybackInterceptionManager;
import com.transsion.player.longvideo.ui.LongVodUiType;
import com.transsion.player.orplayer.g;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.videofloat.bean.FloatActionType;
import go.c;
import java.util.List;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes6.dex */
public interface a {

    /* JADX INFO: renamed from: fo.a$a, reason: collision with other inner class name */
    public static final class C0760a {
        public static /* synthetic */ void a(a aVar, String str, LongVodPageType longVodPageType, String str2, FrameLayout frameLayout, ViewGroup viewGroup, List list, LongVodContentType longVodContentType, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: init");
            }
            aVar.init(str, longVodPageType, str2, frameLayout, viewGroup, (i11 & 32) != 0 ? CollectionsKt.l() : list, (i11 & 64) != 0 ? LongVodContentType.SUBJECT : longVodContentType);
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public interface b {

        /* JADX INFO: renamed from: fo.a$b$a, reason: collision with other inner class name */
        /* JADX INFO: loaded from: classes6.dex */
        public static final class C0761a {
            public static void a(b bVar, String str) {
            }
        }

        void a();

        boolean b();

        boolean c(FloatActionType floatActionType);

        void d(LongVodUiType longVodUiType);

        View e();

        void f(go.a aVar);

        void g(boolean z10);

        void h(String str);

        void onCompletion();
    }

    long currentPosition();

    void exitFullScreen();

    PlaybackInterceptionManager getPlaybackInterceptionManager();

    g getPlayer();

    ORPlayerView getPlayerView();

    c getPlayingStream();

    SimpleSubtitleView getSubtitleView();

    ViewGroup getSubtitleViewGroup();

    void hasNextEpisode(boolean z10);

    void hideBottomController(boolean z10);

    void init(String str, LongVodPageType longVodPageType, String str2, FrameLayout frameLayout, ViewGroup viewGroup, List list, LongVodContentType longVodContentType);

    boolean onBackPressed();

    void onHandlePause();

    void onHandlePlay();

    void onPageDestroy();

    void onPipModeChanged(boolean z10);

    void onSaveHistory();

    void onViewPause();

    void onViewResume();

    void release();

    void removeNoNetError();

    void replay();

    void reset();

    void setCallback(b bVar);

    void setDataSource(go.a aVar);

    void setFloatIsShow(boolean z10);

    void showNoNetError();

    void showReplay();

    void ugcAutoPause2PlayVideo();

    void updateReportId(String str, String str2, String str3);
}
