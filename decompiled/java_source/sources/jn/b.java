package jn;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.y;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.moviedetailapi.bean.FirstFrame;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.MediaType;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.moviedetailapi.bean.Video;
import com.transsion.player.orplayer.ORPlayerPreloadManager;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import nh.m;

/* JADX INFO: loaded from: classes6.dex */
public final class b extends RecyclerView.r {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f66237e = new a(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Lazy f66238f = LazyKt.b(new Function0() { // from class: jn.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Integer.valueOf(b.j());
        }
    });

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f66239a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Function1 f66240b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f66241c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f66242d;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return ((Number) b.f66238f.getValue()).intValue();
        }
    }

    public b(float f11, Function1 getItemCallback) {
        String value;
        Boolean boolM1;
        Intrinsics.h(getItemCallback, "getItemCallback");
        this.f66239a = f11;
        this.f66240b = getItemCallback;
        this.f66241c = "ListVideoPreload";
        boolean zBooleanValue = false;
        ConfigBean configBeanC = sm.f.f75407c.a().c("feed_video_preload_switch", false);
        if (configBeanC != null && (value = configBeanC.getValue()) != null && (boolM1 = StringsKt.m1(value)) != null) {
            zBooleanValue = boolM1.booleanValue();
        }
        this.f66242d = zBooleanValue;
    }

    private final float f(View view) {
        if (view == null) {
            return 0.0f;
        }
        int height = view.getHeight();
        Rect rect = new Rect();
        if (view.getGlobalVisibleRect(rect)) {
            return (float) ((((double) rect.height()) * 1.0d) / ((double) height));
        }
        return 0.0f;
    }

    private final Video g(List list) {
        Object obj = null;
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Video video = (Video) it.next();
                Integer definition = video.getDefinition();
                if (definition != null && definition.intValue() == 3) {
                    obj = video;
                }
            }
        }
        if (obj == null && list != null && (!list.isEmpty())) {
            obj = list.get(0);
        }
        return (Video) obj;
    }

    private final void h(PostSubjectItem postSubjectItem) {
        FirstFrame firstFrame;
        String url;
        Media media = postSubjectItem.getMedia();
        if (media == null || (firstFrame = media.getFirstFrame()) == null || (url = firstFrame.getUrl()) == null) {
            return;
        }
        ej.f.a aVar = ej.f.f61882a;
        a aVar2 = f66237e;
        ej.f.a.j(aVar, ej.f.a.e(aVar, url, aVar2.a(), false, true, 4, null), url, aVar2.a(), null, 8, null);
    }

    private final void i(PostSubjectItem postSubjectItem) {
        String url;
        Media media = postSubjectItem.getMedia();
        Video videoG = g(media != null ? media.getVideo() : null);
        if (videoG == null || (url = videoG.getUrl()) == null) {
            return;
        }
        ORPlayerPreloadManager.f48409i.a().i(url);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int j() {
        return y.e();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.r
    public void onScrollStateChanged(RecyclerView recyclerView, int i11) {
        int iFindFirstVisibleItemPosition;
        int iFindLastVisibleItemPosition;
        Media media;
        Intrinsics.h(recyclerView, "recyclerView");
        super.onScrollStateChanged(recyclerView, i11);
        if (i11 != 0 || !this.f66242d || !m.f70474a.e()) {
            return;
        }
        RecyclerView.m layoutManager = recyclerView.getLayoutManager();
        LinearLayoutManager linearLayoutManager = layoutManager instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager : null;
        if (linearLayoutManager == null || (iFindFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition()) > (iFindLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition())) {
            return;
        }
        int i12 = iFindFirstVisibleItemPosition;
        while (true) {
            lg.a.C0828a c0828a = lg.a.f68839a;
            lg.a.C0828a.f(c0828a, this.f66241c, "on scroll idle, firstPosition = " + iFindFirstVisibleItemPosition + ", lastPosition = " + iFindLastVisibleItemPosition + ", position = " + i12, false, 4, null);
            try {
                PostSubjectItem postSubjectItem = (PostSubjectItem) this.f66240b.invoke(Integer.valueOf(i12));
                if (Intrinsics.c((postSubjectItem == null || (media = postSubjectItem.getMedia()) == null) ? null : media.getMediaType(), MediaType.VIDEO.getValue()) && !postSubjectItem.getBuiltIn()) {
                    View viewFindViewByPosition = linearLayoutManager.findViewByPosition(i12);
                    float f11 = f(viewFindViewByPosition);
                    float f12 = this.f66239a;
                    if (f12 > 0.6f) {
                        f12 = 0.6f;
                    }
                    if (f11 >= f12) {
                        String str = this.f66241c;
                        Subject subject = postSubjectItem.getSubject();
                        lg.a.C0828a.f(c0828a, str, "tryPreloadVideo, position = " + i12 + ", title = " + (subject != null ? subject.getTitle() : null), false, 4, null);
                        h(postSubjectItem);
                    }
                    if (f(viewFindViewByPosition) >= this.f66239a) {
                        String str2 = this.f66241c;
                        Subject subject2 = postSubjectItem.getSubject();
                        lg.a.C0828a.f(c0828a, str2, "tryPreloadVideo, position = " + i12 + ", title = " + (subject2 != null ? subject2.getTitle() : null), false, 4, null);
                        i(postSubjectItem);
                    }
                }
            } catch (Throwable unused) {
            }
            if (i12 == iFindLastVisibleItemPosition) {
                return;
            } else {
                i12++;
            }
        }
    }
}
