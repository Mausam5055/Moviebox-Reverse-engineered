package com.transsion.videofloat.manager;

import android.app.Application;
import com.avery.subtitle.widget.SimpleSubtitleView;
import com.blankj.utilcode.util.Utils;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.video.VideoDetailPlayDao;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes7.dex */
public final class VideoFloatSubtitleControl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SimpleSubtitleView f57898a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final px.a f57899b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f57900c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f57901d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f57902e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f57903f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Lazy f57904g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Lazy f57905h;

    public static final class a implements i5.a {
        a() {
        }

        @Override // i5.a
        public long getCurrentPosition() {
            return VideoFloatSubtitleControl.this.k();
        }

        @Override // i5.a
        public Float getSpeed() {
            return Float.valueOf(VideoFloatSubtitleControl.this.m());
        }

        @Override // i5.a
        public boolean isPlaying() {
            return VideoFloatSubtitleControl.this.p();
        }
    }

    public VideoFloatSubtitleControl(SimpleSubtitleView subtitleView, px.a floatBean) {
        Intrinsics.h(subtitleView, "subtitleView");
        Intrinsics.h(floatBean, "floatBean");
        this.f57898a = subtitleView;
        this.f57899b = floatBean;
        this.f57900c = "VideoFloatSubtitle";
        this.f57901d = true;
        this.f57903f = 1.0f;
        this.f57904g = LazyKt.b(new Function0() { // from class: com.transsion.videofloat.manager.j
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return VideoFloatSubtitleControl.x();
            }
        });
        this.f57905h = LazyKt.b(new Function0() { // from class: com.transsion.videofloat.manager.k
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return VideoFloatSubtitleControl.i();
            }
        });
        o();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final lj.c i() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).p1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final lj.c j() {
        return (lj.c) this.f57905h.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final VideoDetailPlayDao l() {
        return (VideoDetailPlayDao) this.f57904g.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:46:0x0192  */
    public final void n(String str, List list) {
        SubtitleDownloadTable subtitleDownloadTableB;
        SubtitleDownloadTable subtitleDownloadTableB2;
        SubtitleDownloadTable subtitleDownloadTableB3;
        Long delay;
        SubtitleDownloadTable subtitleDownloadTableB4;
        String path;
        Locale localeA = com.transsion.subtitle.helper.e.a();
        lg.a.C0828a c0828a = lg.a.f68839a;
        c0828a.u(this.f57900c, "------------------cur  language = " + localeA.getLanguage() + "， country = " + localeA.getCountry(), true);
        String id2 = "";
        String string = com.transsion.baselib.report.launch.b.f43370a.b().getString("k_subtitle_language", "");
        lg.a.C0828a.f(c0828a, this.f57900c, "initDefaultSubtitle savedDiffId = " + str + "， savedLan = " + string, false, 4, null);
        Iterator it = list.iterator();
        String path2 = null;
        eu.a aVar = null;
        eu.a aVar2 = null;
        while (it.hasNext()) {
            eu.a aVar3 = (eu.a) it.next();
            if (aVar3.d()) {
                if (Intrinsics.c(aVar3.b().getLan(), "en")) {
                    aVar = aVar3;
                }
                if ((str == null || str.length() == 0) && Intrinsics.c(aVar3.b().getLanAbbr(), localeA.getLanguage())) {
                    id2 = aVar3.b().getId();
                    lg.a.f68839a.c(this.f57900c, "111 phone set def language = " + id2, true);
                } else if (Intrinsics.c(aVar3.b().getId(), str)) {
                    id2 = aVar3.b().getId();
                    lg.a.f68839a.c(this.f57900c, "222 saved flag = " + id2, true);
                } else if (str == null || str.length() == 0) {
                    if (Intrinsics.c(aVar3.b().getLanName(), string)) {
                        id2 = aVar3.b().getId();
                        lg.a.f68839a.c(this.f57900c, "555 local set savedLan = " + string, true);
                    }
                }
                aVar2 = aVar3;
            }
        }
        if (id2.length() != 0) {
            aVar = aVar2;
        } else if (aVar != null && aVar.d()) {
            id2 = aVar.b().getId();
            lg.a.f68839a.c(this.f57900c, "333 english set def language = " + id2, true);
        } else if (list.isEmpty()) {
            aVar = aVar2;
        } else {
            Iterator it2 = list.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    aVar = aVar2;
                    break;
                }
                eu.a aVar4 = (eu.a) it2.next();
                if (aVar4.d()) {
                    id2 = aVar4.b().getId();
                    aVar = aVar4;
                    break;
                }
            }
            if (id2.length() == 0) {
                lg.a.f68839a.c(this.f57900c, "没有对应的语言，不设置，需要用户手动设置或当前下载后自动设置上", true);
                return;
            }
        }
        if (aVar != null && (subtitleDownloadTableB4 = aVar.b()) != null && (path = subtitleDownloadTableB4.getPath()) != null) {
            this.f57898a.setDefaultSubtitle(path);
        }
        if (aVar != null && (subtitleDownloadTableB3 = aVar.b()) != null && (delay = subtitleDownloadTableB3.getDelay()) != null) {
            long jLongValue = delay.longValue();
            lg.a.f68839a.c(this.f57900c, "default delayDuration = " + jLongValue, true);
            this.f57898a.subtitleDelay(jLongValue);
        }
        lg.a.C0828a c0828a2 = lg.a.f68839a;
        String str2 = this.f57900c;
        String name = (aVar == null || (subtitleDownloadTableB2 = aVar.b()) == null) ? null : subtitleDownloadTableB2.getName();
        if (aVar != null && (subtitleDownloadTableB = aVar.b()) != null) {
            path2 = subtitleDownloadTableB.getPath();
        }
        c0828a2.c(str2, "default select subtitle defDiffId = " + id2 + ", name= " + name + "，path:" + path2, true);
    }

    private final void o() {
        if (this.f57899b.x()) {
            this.f57898a.initSubtitle(new a(), false);
            kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new VideoFloatSubtitleControl$initSubtitle$2(this, null), 3, null);
            return;
        }
        lg.a.f68839a.c(this.f57900c, "float subtitle----intercept， " + this.f57899b.i(), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void t(List list) {
        String path;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            eu.a aVar = (eu.a) it.next();
            if (aVar.d() && (path = aVar.b().getPath()) != null) {
                this.f57898a.setSubtitlePath(path, com.transsion.subtitle.helper.e.b(aVar));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final VideoDetailPlayDao x() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).D1();
    }

    public final long k() {
        return this.f57902e;
    }

    public final float m() {
        return this.f57903f;
    }

    public final boolean p() {
        return this.f57901d;
    }

    public final void q() {
        if (this.f57899b.x()) {
            this.f57898a.pause();
        }
    }

    public final void r() {
        if (this.f57899b.x()) {
            this.f57898a.stop();
            this.f57898a.destroy();
        }
    }

    public final void s() {
        if (this.f57899b.x()) {
            this.f57898a.resume();
        }
    }

    public final void u(long j11) {
        this.f57902e = j11;
    }

    public final void v(boolean z10) {
        this.f57901d = z10;
    }

    public final void w(float f11) {
        this.f57903f = f11;
    }
}
