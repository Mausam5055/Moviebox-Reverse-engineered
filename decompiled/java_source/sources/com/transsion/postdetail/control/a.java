package com.transsion.postdetail.control;

import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.u;
import ao.e;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.ShortTVItem;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.moviedetailapi.bean.Video;
import com.transsion.player.orplayer.g;
import com.transsion.player.shorttv.preload.q;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.postdetail.ui.adapter.l;
import com.transsion.postdetail.ui.view.ShortTvImmVideoItemView;
import com.transsion.shorttv.base.pager.PagerLayoutManager;
import com.transsnet.downloader.manager.DownloadEsHelper;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class a extends SubjectVideoPagerChangeControl {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final C0648a f48838o = new C0648a(null);

    /* JADX INFO: renamed from: com.transsion.postdetail.control.a$a, reason: collision with other inner class name */
    public static final class C0648a {
        private C0648a() {
        }

        public /* synthetic */ C0648a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a(Subject subject) {
            String url;
            ShortTVItem shortTVFirstEp;
            Media video;
            Video videoAddress = (subject == null || (shortTVFirstEp = subject.getShortTVFirstEp()) == null || (video = shortTVFirstEp.getVideo()) == null) ? null : video.getVideoAddress();
            if (subject == null || !subject.getBuiltIn()) {
                if (videoAddress != null) {
                    return videoAddress.getUrl();
                }
                return null;
            }
            if (videoAddress == null || (url = videoAddress.getUrl()) == null) {
                return null;
            }
            if (!StringsKt.W(url, "main/", false, 2, null)) {
                return url;
            }
            String absolutePath = DownloadEsHelper.f59419m.a().g().getAbsolutePath();
            String title = subject.getTitle();
            if (title == null) {
                title = "";
            }
            String str = absolutePath + "/" + (title + ".mp4");
            videoAddress.setUrl(str);
            return str;
        }
    }

    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f48839a;

        static {
            int[] iArr = new int[Lifecycle.Event.values().length];
            try {
                iArr[Lifecycle.Event.ON_DESTROY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            f48839a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(Fragment fragment, l lVar, g gVar, ORPlayerView oRPlayerView, PagerLayoutManager pagerLayoutManager) {
        super(fragment, lVar, gVar, oRPlayerView, pagerLayoutManager);
        Intrinsics.h(fragment, "fragment");
    }

    @Override // com.transsion.postdetail.control.SubjectVideoPagerChangeControl, cs.a
    public void e(boolean z10, int i11, View view) {
        super.e(z10, i11, view);
        if (view instanceof ShortTvImmVideoItemView) {
            ((ShortTvImmVideoItemView) view).onPlayerReset();
        }
    }

    @Override // com.transsion.postdetail.control.SubjectVideoPagerChangeControl
    public void g(List datas) {
        g gVarK;
        g gVarK2;
        Media video;
        Intrinsics.h(datas, "datas");
        super.g(datas);
        Iterator it = datas.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            Subject subject = (Subject) it.next();
            ShortTVItem shortTVFirstEp = subject.getShortTVFirstEp();
            Video videoAddress = (shortTVFirstEp == null || (video = shortTVFirstEp.getVideo()) == null) ? null : video.getVideoAddress();
            lg.a.C0828a c0828a = lg.a.f68839a;
            String url = videoAddress != null ? videoAddress.getUrl() : null;
            Integer width = videoAddress != null ? videoAddress.getWidth() : null;
            Integer height = videoAddress != null ? videoAddress.getHeight() : null;
            Integer duration = videoAddress != null ? videoAddress.getDuration() : null;
            lg.a.C0828a.f(c0828a, "ShortTvImmVideoPlayer", "play url=" + url + "  width:" + width + ",height:" + height + ", duration: " + duration + ", builtIn = " + Boolean.valueOf(subject.getBuiltIn()), false, 4, null);
            String strA = f48838o.a(subject);
            if (strA != null && (gVarK2 = k()) != null) {
                ShortTVItem shortTVFirstEp2 = subject.getShortTVFirstEp();
                boolean zAddDataSource = gVarK2.addDataSource(new e(shortTVFirstEp2 != null ? shortTVFirstEp2.getId() : null, strA, 0, null, null, 28, null));
                if (!z10) {
                    z10 = zAddDataSource;
                }
            }
        }
        if (!z10 || (gVarK = k()) == null) {
            return;
        }
        gVarK.prepare();
    }

    @Override // com.transsion.postdetail.control.SubjectVideoPagerChangeControl
    public void n(int i11) {
    }

    @Override // com.transsion.postdetail.control.SubjectVideoPagerChangeControl, androidx.p009lifecycle.r
    public void onStateChanged(u source, Lifecycle.Event event) {
        Intrinsics.h(source, "source");
        Intrinsics.h(event, "event");
        if (b.f48839a[event.ordinal()] == 1) {
            com.transsion.baselib.report.l.f43359a.u(this);
            v(null);
            j().getLifecycle().d(this);
            g gVarK = k();
            if (gVarK != null) {
                gVarK.release();
            }
        }
    }

    @Override // com.transsion.postdetail.control.SubjectVideoPagerChangeControl
    protected void q(int i11, View view) {
        super.q(i11, view);
    }

    @Override // com.transsion.postdetail.control.SubjectVideoPagerChangeControl
    public void s(int i11) {
    }

    @Override // com.transsion.postdetail.control.SubjectVideoPagerChangeControl
    public void t(Subject item, Video video) {
        Intrinsics.h(item, "item");
        Intrinsics.h(video, "video");
    }

    @Override // com.transsion.postdetail.control.SubjectVideoPagerChangeControl
    protected void u() {
    }

    @Override // com.transsion.postdetail.control.SubjectVideoPagerChangeControl
    protected void w() {
        g gVarK = k();
        if (gVarK != null) {
            gVarK.pause();
        }
    }

    @Override // com.transsion.postdetail.control.SubjectVideoPagerChangeControl
    protected void x(ShortTvImmVideoItemView view, Subject subject) {
        ShortTVItem shortTVFirstEp;
        Media video;
        Intrinsics.h(view, "view");
        Video videoAddress = (subject == null || (shortTVFirstEp = subject.getShortTVFirstEp()) == null || (video = shortTVFirstEp.getVideo()) == null) ? null : video.getVideoAddress();
        lg.a.C0828a.f(lg.a.f68839a, "ShortTvImmVideoPlayer", "play url=" + (videoAddress != null ? videoAddress.getUrl() : null) + "  width:" + (videoAddress != null ? videoAddress.getWidth() : null) + ",height:" + (videoAddress != null ? videoAddress.getHeight() : null) + ", duration: " + (videoAddress != null ? videoAddress.getDuration() : null) + ", builtIn = " + (subject != null ? Boolean.valueOf(subject.getBuiltIn()) : null), false, 4, null);
        String strA = f48838o.a(subject);
        if (strA == null) {
            g gVarK = k();
            if (gVarK != null) {
                gVarK.pause();
                return;
            }
            return;
        }
        g gVarK2 = k();
        if (gVarK2 != null) {
            gVarK2.seekTo(q.f48539a.G(strA), 0L);
        }
        g gVarK3 = k();
        if (gVarK3 != null) {
            gVarK3.play();
        }
        view.setVideoUrl(strA);
    }
}
