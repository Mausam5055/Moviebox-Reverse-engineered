package com.transsion.ugcvideodetail.hepler.subtitle;

import android.view.ViewGroup;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.v;
import com.avery.subtitle.widget.SimpleSubtitleView;
import com.blankj.utilcode.util.Utils;
import com.tn.lib.widget.R$color;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.subtitle.helper.e;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import com.transsion.ugcvideodetail.R$string;
import com.transsion.ugcvideodetail.api.bean.UGCImmVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoPlayStream;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;

/* JADX INFO: loaded from: classes6.dex */
public final class UGCImmVideoSubtitleControlImp implements b, hu.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FragmentActivity f56371a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f56372b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ViewGroup f56373c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final SimpleSubtitleView f56374d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.transsion.ugcvideodetail.hepler.subtitle.a f56375e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final UGCImmVideo f56376f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final UGCVideoPlayStream f56377g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f56378h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Function1 f56379i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Function1 f56380j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f56381k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f56382l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f56383m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final String f56384n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final UGCImmVideoSubtitleControlImp$downloadListener$1 f56385o;

    public static final class a implements i5.a {
        a() {
        }

        @Override // i5.a
        public long getCurrentPosition() {
            return UGCImmVideoSubtitleControlImp.this.f56382l;
        }

        @Override // i5.a
        public Float getSpeed() {
            return Float.valueOf(UGCImmVideoSubtitleControlImp.this.f56383m);
        }

        @Override // i5.a
        public boolean isPlaying() {
            return UGCImmVideoSubtitleControlImp.this.f56381k;
        }
    }

    public UGCImmVideoSubtitleControlImp(FragmentActivity activity, String pageName, ViewGroup subtitleLayout, SimpleSubtitleView subtitleView, com.transsion.ugcvideodetail.hepler.subtitle.a aVar, UGCImmVideo uGCImmVideo, UGCVideoPlayStream uGCVideoPlayStream) {
        UGCVideo ugcVideo;
        Intrinsics.h(activity, "activity");
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(subtitleLayout, "subtitleLayout");
        Intrinsics.h(subtitleView, "subtitleView");
        this.f56371a = activity;
        this.f56372b = pageName;
        this.f56373c = subtitleLayout;
        this.f56374d = subtitleView;
        this.f56375e = aVar;
        this.f56376f = uGCImmVideo;
        this.f56377g = uGCVideoPlayStream;
        this.f56378h = "UGCVideoSubtitleCtr";
        this.f56381k = true;
        this.f56383m = 1.0f;
        this.f56384n = ((uGCImmVideo == null || (ugcVideo = uGCImmVideo.getUgcVideo()) == null) ? null : ugcVideo.getUgcVideoId()) + "_" + (uGCVideoPlayStream != null ? uGCVideoPlayStream.getIdType() : null);
        UGCImmVideoSubtitleControlImp$downloadListener$1 uGCImmVideoSubtitleControlImp$downloadListener$1 = new UGCImmVideoSubtitleControlImp$downloadListener$1(this);
        this.f56385o = uGCImmVideoSubtitleControlImp$downloadListener$1;
        if (aVar != null) {
            aVar.b();
        }
        com.transsion.ugcvideodetail.hepler.subtitle.manager.b.a aVar2 = com.transsion.ugcvideodetail.hepler.subtitle.manager.b.f56402a;
        aVar2.b().b(uGCImmVideoSubtitleControlImp$downloadListener$1);
        aVar2.b().d(this);
        w(subtitleView);
    }

    private final void A() {
        this.f56374d.turnOff(false);
        jg.c.k(this.f56373c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:46:0x01b9  */
    public final void v(List list, String str) {
        b0 b0VarF;
        Locale localeA = e.a();
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, this.f56378h, " initDefaultSubtitle() --> cur language = " + localeA.getLanguage() + " -- country = " + localeA.getCountry(), false, 4, null);
        String id2 = "";
        String string = com.transsion.baselib.report.launch.b.f43370a.b().getString("k_subtitle_language", "");
        lg.a.C0828a.f(c0828a, this.f56378h, " initDefaultSubtitle() --> savedDiffId = " + str + " -- savedLan = " + string + ", subListSize:" + list.size(), false, 4, null);
        Iterator it = list.iterator();
        eu.a aVar = null;
        eu.a aVar2 = null;
        while (it.hasNext()) {
            eu.a aVar3 = (eu.a) it.next();
            if (aVar3.d()) {
                if (Intrinsics.c(aVar3.b().getLan(), "en")) {
                    aVar = aVar3;
                }
                if ((str == null || str.length() == 0) && Intrinsics.c(aVar3.b().getLanName(), string)) {
                    id2 = aVar3.b().getId();
                    lg.a.C0828a.f(lg.a.f68839a, this.f56378h, " initDefaultSubtitle() --> 使用之前选择的语言 local set savedLan = " + string, false, 4, null);
                } else if ((str == null || str.length() == 0) && Intrinsics.c(aVar3.b().getLanAbbr(), localeA.getLanguage())) {
                    id2 = aVar3.b().getId();
                    lg.a.C0828a.f(lg.a.f68839a, this.f56378h, " initDefaultSubtitle() --> 没有自己选择的默认语言，使用手机语言 -- phone set def language = " + id2, false, 4, null);
                } else if (Intrinsics.c(aVar3.b().getId(), str)) {
                    id2 = aVar3.b().getId();
                    lg.a.C0828a.f(lg.a.f68839a, this.f56378h, " initDefaultSubtitle() --> 使用之前选择的字幕 saved flag = " + id2, false, 4, null);
                }
                aVar2 = aVar3;
            }
        }
        if (id2.length() != 0) {
            aVar = aVar2;
        } else if (aVar != null && aVar.d()) {
            String id3 = aVar.b().getId();
            lg.a.C0828a.f(lg.a.f68839a, this.f56378h, " initDefaultSubtitle() --> 没有设置默认语言 --> english set def language = " + id3, false, 4, null);
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
                lg.a.C0828a.f(lg.a.f68839a, this.f56378h, " initDefaultSubtitle() --> 可能外部只读取到了数据库前面没下载的字幕 --> 没有对应的语言，不设置，需要用户手动设置或当前下载后自动设置上", false, 4, null);
                return;
            }
        }
        Iterator it3 = list.iterator();
        while (it3.hasNext()) {
            eu.a aVar5 = (eu.a) it3.next();
            this.f56374d.setSubtitlePath(aVar5.b().getPath(), e.b(aVar5));
        }
        f(aVar);
        if (aVar != null) {
            aVar.l(true);
        }
        com.transsion.ugcvideodetail.hepler.subtitle.a aVar6 = this.f56375e;
        if (aVar6 == null || (b0VarF = aVar6.f()) == null) {
            return;
        }
        b0VarF.q(Boolean.FALSE);
    }

    private final void w(SimpleSubtitleView simpleSubtitleView) {
        if (simpleSubtitleView != null) {
            simpleSubtitleView.setBgColor(Utils.a().getResources().getColor(R$color.black_80));
        }
        if (simpleSubtitleView != null) {
            simpleSubtitleView.setBgdRadius(dk.a.b(8));
        }
        if (simpleSubtitleView != null) {
            simpleSubtitleView.initSubtitle(new a(), false);
        } else {
            lg.a.C0828a.f(lg.a.f68839a, this.f56378h, " vdSubtitle --> initSubtitle() --> null", false, 4, null);
        }
    }

    private final void x(eu.a aVar) {
    }

    private final void y() {
        b0 b0VarE;
        b0 b0VarD;
        com.transsion.ugcvideodetail.hepler.subtitle.a aVar = this.f56375e;
        if (aVar != null && (b0VarD = aVar.d()) != null) {
            b0VarD.q(null);
        }
        com.transsion.ugcvideodetail.hepler.subtitle.a aVar2 = this.f56375e;
        if (aVar2 != null && (b0VarE = aVar2.e()) != null) {
            b0VarE.q(null);
        }
        this.f56374d.reset();
        lg.a.C0828a.f(lg.a.f68839a, this.f56378h, " reset() --> 重置资源", false, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(boolean z10) {
    }

    @Override // hu.c
    public void J(boolean z10, DownloadBean bean) {
        Intrinsics.h(bean, "bean");
        lg.a.C0828a.f(lg.a.f68839a, this.f56378h, " checkResult --> " + z10, false, 4, null);
        Function1 function1 = this.f56379i;
        if (function1 != null) {
            function1.invoke(Boolean.valueOf(z10));
        }
    }

    @Override // com.transsion.ugcvideodetail.hepler.subtitle.b
    public void a(Function1 function1) {
        this.f56379i = function1;
    }

    @Override // com.transsion.ugcvideodetail.hepler.subtitle.b
    public void b(Function1 function1) {
        this.f56380j = function1;
    }

    @Override // com.transsion.ugcvideodetail.hepler.subtitle.b
    public void c(boolean z10) {
        this.f56381k = z10;
        if (z10) {
            this.f56374d.resume();
        } else {
            this.f56374d.pause();
        }
    }

    @Override // com.transsion.ugcvideodetail.hepler.subtitle.b
    public void d(long j11) {
        this.f56382l = j11;
    }

    @Override // com.transsion.ugcvideodetail.hepler.subtitle.b
    public void e() {
        k.d(v.a(this.f56371a), null, null, new UGCImmVideoSubtitleControlImp$checkSubtitle$1(this, null), 3, null);
    }

    @Override // com.transsion.ugcvideodetail.hepler.subtitle.b
    public void f(eu.a aVar) {
        SubtitleDownloadTable subtitleDownloadTableB;
        SubtitleDownloadTable subtitleDownloadTableB2;
        Long delay;
        SubtitleDownloadTable subtitleDownloadTableB3;
        SubtitleDownloadTable subtitleDownloadTableB4;
        SubtitleDownloadTable subtitleDownloadTableB5;
        SubtitleDownloadTable subtitleDownloadTableB6;
        String path;
        b0 b0VarC;
        b0 b0VarD;
        List<eu.a> list;
        SubtitleDownloadTable subtitleDownloadTableB7;
        com.transsion.ugcvideodetail.hepler.subtitle.a aVar2 = this.f56375e;
        if (aVar2 != null && (b0VarD = aVar2.d()) != null && (list = (List) b0VarD.f()) != null) {
            for (eu.a aVar3 : list) {
                aVar3.l(Intrinsics.c(aVar3.b().getId(), (aVar == null || (subtitleDownloadTableB7 = aVar.b()) == null) ? null : subtitleDownloadTableB7.getId()));
            }
        }
        Function1 function1 = this.f56380j;
        if (function1 != null) {
            function1.invoke(aVar);
        }
        com.transsion.ugcvideodetail.hepler.subtitle.a aVar4 = this.f56375e;
        if (aVar4 != null && (b0VarC = aVar4.c()) != null) {
            b0VarC.q(aVar);
        }
        if (aVar != null && (subtitleDownloadTableB6 = aVar.b()) != null && (path = subtitleDownloadTableB6.getPath()) != null) {
            A();
            this.f56374d.selectSubtitle(path, e.b(aVar), new i5.b() { // from class: com.transsion.ugcvideodetail.hepler.subtitle.c
                @Override // i5.b
                public final void a(boolean z10) {
                    UGCImmVideoSubtitleControlImp.z(z10);
                }
            });
        }
        lg.a.f68839a.c(this.f56378h, "selectSubtitle delayDuration:" + ((aVar == null || (subtitleDownloadTableB5 = aVar.b()) == null) ? null : subtitleDownloadTableB5.getDelay()) + ", name:" + ((aVar == null || (subtitleDownloadTableB4 = aVar.b()) == null) ? null : subtitleDownloadTableB4.getLanName()) + ", isAutoDownload:" + ((aVar == null || (subtitleDownloadTableB3 = aVar.b()) == null) ? null : Boolean.valueOf(subtitleDownloadTableB3.getIsAutoDownload())), true);
        if (aVar != null && (subtitleDownloadTableB2 = aVar.b()) != null && (delay = subtitleDownloadTableB2.getDelay()) != null) {
            this.f56374d.subtitleDelay(delay.longValue());
        }
        if (aVar != null && (subtitleDownloadTableB = aVar.b()) != null) {
            if (!subtitleDownloadTableB.getIsAutoDownload()) {
                com.transsion.baselib.report.launch.b.f43370a.b().putString("k_subtitle_language", subtitleDownloadTableB.getLanName());
                com.transsion.subtitle_download.utils.d.f55045a.b().putString("k_subtitle_select_lan", subtitleDownloadTableB.getLan());
            }
            uh.b.f76753a.e(Utils.a().getString(R$string.ugc_imm_video_enable_toast, subtitleDownloadTableB.getName()));
        }
        if (aVar != null) {
            x(aVar);
        }
        k.d(v.a(this.f56371a), null, null, new UGCImmVideoSubtitleControlImp$selectSubtitle$6(aVar, this, null), 3, null);
    }

    @Override // hu.c
    public void g(eu.a aVar) {
        hu.c.a.b(this, aVar);
    }

    @Override // com.transsion.ugcvideodetail.hepler.subtitle.b
    public void onDestroy() {
        y();
        jg.c.g(this.f56373c);
        this.f56374d.stop();
        this.f56374d.destroy();
        com.transsion.ugcvideodetail.hepler.subtitle.manager.b.a aVar = com.transsion.ugcvideodetail.hepler.subtitle.manager.b.f56402a;
        aVar.b().f(this);
        aVar.b().c(this.f56385o);
        lg.a.C0828a.f(lg.a.f68839a, this.f56378h, " onDestroy()", false, 4, null);
    }

    public final String u() {
        return this.f56384n;
    }
}
