package com.transsion.shorttv.subtitle;

import android.widget.FrameLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v;
import androidx.p009lifecycle.v0;
import com.avery.subtitle.widget.SimpleSubtitleView;
import com.blankj.utilcode.util.Utils;
import com.transsion.shorttv.R$color;
import com.transsion.shorttv.R$string;
import com.transsion.shorttv.bean.ShortTVItem;
import com.transsion.shorttv.utils.h;
import com.transsion.shorttv.viewmodel.ShortTvViewModel;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import hj.i;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import js.e;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import ms.k0;

/* JADX INFO: loaded from: classes6.dex */
public final class ShortTVSubtitleControlImp implements com.transsion.shorttv.subtitle.a, vs.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final FragmentActivity f53059b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final k0 f53060c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ShortTvViewModel f53061d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final e f53062e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f53063f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f53064g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final ws.a f53065h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Function1 f53066i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Function1 f53067j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f53068k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f53069l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f53070m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final ShortTVSubtitleControlImp$downloadListener$1 f53071n;

    public static final class a implements i5.a {
        a() {
        }

        @Override // i5.a
        public long getCurrentPosition() {
            return ShortTVSubtitleControlImp.this.f53069l;
        }

        @Override // i5.a
        public Float getSpeed() {
            return Float.valueOf(ShortTVSubtitleControlImp.this.f53070m);
        }

        @Override // i5.a
        public boolean isPlaying() {
            return ShortTVSubtitleControlImp.this.f53068k;
        }
    }

    static final class b implements c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f53073a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f53073a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f53073a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override // androidx.p009lifecycle.c0
        public final /* synthetic */ void onChanged(Object obj) {
            this.f53073a.invoke(obj);
        }
    }

    public ShortTVSubtitleControlImp(FragmentActivity activity, k0 viewBinding, ShortTvViewModel shortTvViewModel, e epItem, String str) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(viewBinding, "viewBinding");
        Intrinsics.h(epItem, "epItem");
        this.f53059b = activity;
        this.f53060c = viewBinding;
        this.f53061d = shortTvViewModel;
        this.f53062e = epItem;
        this.f53063f = str;
        this.f53064g = "ShortTVSubtitleCtr";
        ws.a aVar = (ws.a) new v0(activity).a(ws.a.class);
        this.f53065h = aVar;
        this.f53068k = true;
        this.f53070m = 1.0f;
        ShortTVSubtitleControlImp$downloadListener$1 shortTVSubtitleControlImp$downloadListener$1 = new ShortTVSubtitleControlImp$downloadListener$1(this);
        this.f53071n = shortTVSubtitleControlImp$downloadListener$1;
        aVar.b();
        aVar.e().j(activity, new b(new Function1() { // from class: com.transsion.shorttv.subtitle.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ShortTVSubtitleControlImp.k(this.f53077a, (ts.b) obj);
            }
        }));
        com.transsion.shorttv.subtitle.manager.b.a aVar2 = com.transsion.shorttv.subtitle.manager.b.f53090a;
        aVar2.b().b(shortTVSubtitleControlImp$downloadListener$1);
        aVar2.b().e(this);
        z(viewBinding.K);
    }

    private final void A(boolean z10) {
        lg.a.C0828a.g(lg.a.f68839a, this.f53064g + " --> onSubtitleSwitchClick() --> turnOn = " + z10 + " --> 字幕开关状态变化", false, 2, null);
        if (z10) {
            E();
        } else {
            x();
        }
        this.f53065h.f().q(Boolean.valueOf(!z10));
    }

    private final void B(ts.b bVar) {
        String id2;
        String videoId;
        HashMap map = new HashMap();
        map.put("subject_id", this.f53062e.e());
        ShortTVItem shortTVItemD = this.f53062e.d();
        if (shortTVItemD == null || (id2 = shortTVItemD.getId()) == null) {
            id2 = "";
        }
        map.put("mini_id", id2);
        ShortTVItem shortTVItemD2 = this.f53062e.d();
        map.put("se", String.valueOf(shortTVItemD2 != null ? Integer.valueOf(shortTVItemD2.getSe()) : null));
        map.put("ep", String.valueOf(this.f53062e.c()));
        ShortTVItem shortTVItemD3 = this.f53062e.d();
        if (shortTVItemD3 == null || (videoId = shortTVItemD3.getVideoId()) == null) {
            videoId = "";
        }
        map.put("video_id", videoId);
        map.put("opt_type", "subtitle_select");
        String ops = bVar.a().getOps();
        if (ops != null) {
            map.put("ops", ops);
        }
        map.put("name", bVar.a().getName());
        String lan = bVar.a().getLan();
        if (lan == null) {
            lan = "";
        }
        map.put("lan", lan);
        String lanName = bVar.a().getLanName();
        map.put("lan_name", lanName != null ? lanName : "");
        i.f64505a.p("minitv_play", map);
    }

    private final void C() {
        this.f53065h.d().q(null);
        this.f53065h.e().q(null);
        this.f53060c.K.reset();
        lg.a.C0828a.g(lg.a.f68839a, this.f53064g + " --> reset() --> 重置资源", false, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(boolean z10) {
    }

    private final void E() {
        this.f53060c.K.turnOff(false);
        FrameLayout flSubtitle = this.f53060c.f69841f;
        Intrinsics.g(flSubtitle, "flSubtitle");
        yr.b.e(flSubtitle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit k(ShortTVSubtitleControlImp shortTVSubtitleControlImp, ts.b bVar) {
        if (bVar == null) {
            return Unit.f67061a;
        }
        if (bVar.c()) {
            fs.b.f62459a.d(R$string.short_tv_subtitle_turn_off_toast);
        }
        shortTVSubtitleControlImp.A(!bVar.c());
        if (!bVar.c()) {
            shortTVSubtitleControlImp.h(bVar);
        }
        return Unit.f67061a;
    }

    private final void x() {
        this.f53060c.K.turnOff(true);
        FrameLayout flSubtitle = this.f53060c.f69841f;
        Intrinsics.g(flSubtitle, "flSubtitle");
        yr.b.b(flSubtitle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:40:0x018c  */
    /* JADX WARN: Code duplicated, block: B:60:0x020d  */
    public final void y(List list, String str) {
        Object next;
        Locale localeA = us.a.a();
        lg.a.C0828a c0828a = lg.a.f68839a;
        Object obj = null;
        lg.a.C0828a.g(c0828a, this.f53064g + " --> initDefaultSubtitle() --> cur language = " + localeA.getLanguage() + " -- country = " + localeA.getCountry(), false, 2, null);
        String id2 = "";
        String string = h.f53653a.d().getString("k_subtitle_language", "");
        com.transsion.subtitle_download.utils.d.f55045a.b().getString("k_subtitle_select_lan", "");
        if (Intrinsics.c(string, "off")) {
            Function1 function1 = this.f53066i;
            if (function1 != null) {
                function1.invoke(Boolean.TRUE);
            }
            this.f53065h.f().q(Boolean.TRUE);
            this.f53065h.g("OFF");
            return;
        }
        lg.a.C0828a.g(c0828a, this.f53064g + " --> initDefaultSubtitle() --> savedDiffId = " + str + " -- savedLan = " + string + ", subListSize:" + list.size(), false, 2, null);
        Iterator it = list.iterator();
        ts.b bVar = null;
        ts.b bVar2 = null;
        ts.b bVar3 = null;
        ts.b bVar4 = null;
        while (it.hasNext()) {
            ts.b bVar5 = (ts.b) it.next();
            if (bVar == null && string != null && string.length() != 0 && Intrinsics.c(bVar5.a().getLanName(), string)) {
                bVar = bVar5;
            }
            if (bVar2 == null && Intrinsics.c(bVar5.a().getLanAbbr(), localeA.getLanguage())) {
                bVar2 = bVar5;
            }
            if (bVar5.b()) {
                if (Intrinsics.c(bVar5.a().getLan(), "en")) {
                    bVar3 = bVar5;
                }
                if (Intrinsics.c(bVar5.a().getId(), str)) {
                    id2 = bVar5.a().getId();
                    lg.a.C0828a.g(lg.a.f68839a, this.f53064g + " --> initDefaultSubtitle() --> 使用之前选择的字幕 saved flag = " + id2, false, 2, null);
                    bVar4 = bVar5;
                }
            }
        }
        if (id2.length() != 0) {
            bVar = bVar4;
        } else if (bVar != null) {
            id2 = bVar.a().getId();
            lg.a.C0828a.g(lg.a.f68839a, this.f53064g + " --> initDefaultSubtitle() --> 使用之前选择的语言 local set savedLan = " + string, false, 2, null);
        } else if (bVar2 != null) {
            id2 = bVar2.a().getId();
            lg.a.C0828a.g(lg.a.f68839a, this.f53064g + " --> initDefaultSubtitle() --> 没有自己选择的默认语言，使用手机语言 -- phone set def language = " + id2, false, 2, null);
            bVar = bVar2;
        } else {
            bVar = bVar4;
        }
        if (id2.length() != 0) {
            bVar3 = bVar;
        } else if (bVar3 != null && bVar3.b()) {
            String id3 = bVar3.a().getId();
            lg.a.C0828a.g(lg.a.f68839a, this.f53064g + " --> initDefaultSubtitle() --> 没有设置默认语言 --> english set def language = " + id3, false, 2, null);
        } else if (list.isEmpty()) {
            bVar3 = bVar;
        } else {
            Iterator it2 = list.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    bVar3 = bVar;
                    break;
                }
                ts.b bVar6 = (ts.b) it2.next();
                if (bVar6.b()) {
                    id2 = bVar6.a().getId();
                    bVar3 = bVar6;
                    break;
                }
            }
            if (id2.length() == 0) {
                lg.a.C0828a.g(lg.a.f68839a, this.f53064g + " --> initDefaultSubtitle() --> 可能外部只读取到了数据库前面没下载的字幕 --> 没有对应的语言，不设置，需要用户手动设置或当前下载后自动设置上", false, 2, null);
                return;
            }
        }
        List<ts.b> list2 = list;
        for (ts.b bVar7 : list2) {
            this.f53060c.K.setSubtitlePath(bVar7.a().getPath(), us.a.b(bVar7));
        }
        if (bVar3 == null || bVar3.b()) {
            h(bVar3);
            if (bVar3 != null) {
                bVar3.f(true);
            }
            this.f53065h.f().q(Boolean.FALSE);
            if (bVar3 != null) {
                this.f53065h.g(bVar3.a().getId());
                return;
            } else {
                this.f53065h.g("OFF");
                return;
            }
        }
        bVar3.a().setAutoDownload(false);
        bVar3.a().setSetImmediately(true);
        com.transsion.shorttv.subtitle.manager.b.f53090a.b().d(bVar3);
        Iterator it3 = list2.iterator();
        while (true) {
            if (!it3.hasNext()) {
                next = null;
                break;
            }
            next = it3.next();
            ts.b bVar8 = (ts.b) next;
            if (bVar8.b() && Intrinsics.c(bVar8.a().getLan(), "en")) {
                break;
            }
        }
        ts.b bVar9 = (ts.b) next;
        if (bVar9 == null) {
            for (Object obj2 : list2) {
                if (((ts.b) obj2).b()) {
                    obj = obj2;
                    break;
                }
            }
            bVar9 = (ts.b) obj;
        }
        if (bVar9 != null) {
            h(bVar9);
            bVar9.f(true);
            this.f53065h.f().q(Boolean.FALSE);
            if (bVar9.a().getId().length() > 0) {
                this.f53065h.g(bVar9.a().getId());
            }
        }
    }

    private final void z(SimpleSubtitleView simpleSubtitleView) {
        if (simpleSubtitleView != null) {
            simpleSubtitleView.setBgColor(Utils.a().getResources().getColor(R$color.short_tv_black_80));
        }
        if (simpleSubtitleView != null) {
            simpleSubtitleView.setBgdRadius(yr.a.a(8));
        }
        if (simpleSubtitleView != null) {
            simpleSubtitleView.initSubtitle(new a(), false);
            return;
        }
        lg.a.C0828a.g(lg.a.f68839a, this.f53064g + " --> vdSubtitle --> initSubtitle() --> null", false, 2, null);
    }

    @Override // com.transsion.shorttv.subtitle.a
    public void a(Function1 function1) {
        this.f53066i = function1;
    }

    @Override // com.transsion.shorttv.subtitle.a
    public void b(Function1 function1) {
        this.f53067j = function1;
    }

    @Override // com.transsion.shorttv.subtitle.a
    public void c(boolean z10) {
        this.f53068k = z10;
        if (z10) {
            this.f53060c.K.resume();
        } else {
            this.f53060c.K.pause();
        }
    }

    @Override // com.transsion.shorttv.subtitle.a
    public void d(long j11) {
        this.f53069l = j11;
    }

    @Override // com.transsion.shorttv.subtitle.a
    public void e() {
        k.d(v.a(this.f53059b), null, null, new ShortTVSubtitleControlImp$checkSubtitle$1(this, null), 3, null);
    }

    @Override // com.transsion.shorttv.subtitle.a
    public void f() {
        x();
        List list = (List) this.f53065h.d().f();
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((ts.b) it.next()).f(false);
            }
        }
        this.f53065h.f().q(Boolean.TRUE);
        h.f53653a.d().putString("k_subtitle_language", "off");
        com.transsion.subtitle_download.utils.d.f55045a.b().putString("k_subtitle_select_lan", "off");
        if (lr.a.f69020a.c()) {
            return;
        }
        fs.b.f62459a.e(Utils.a().getString(R$string.short_tv_subtitles_off));
    }

    @Override // vs.a
    public void g(boolean z10) {
        lg.a.C0828a.g(lg.a.f68839a, this.f53064g + " --> checkResult --> " + z10, false, 2, null);
        Function1 function1 = this.f53066i;
        if (function1 != null) {
            function1.invoke(Boolean.valueOf(z10));
        }
    }

    @Override // com.transsion.shorttv.subtitle.a
    public void h(ts.b bVar) {
        SubtitleDownloadTable subtitleDownloadTableA;
        SubtitleDownloadTable subtitleDownloadTableA2;
        Long delay;
        SubtitleDownloadTable subtitleDownloadTableA3;
        SubtitleDownloadTable subtitleDownloadTableA4;
        SubtitleDownloadTable subtitleDownloadTableA5;
        SubtitleDownloadTable subtitleDownloadTableA6;
        String path;
        SubtitleDownloadTable subtitleDownloadTableA7;
        List<ts.b> list = (List) this.f53065h.d().f();
        if (list != null) {
            for (ts.b bVar2 : list) {
                bVar2.f(Intrinsics.c(bVar2.a().getId(), (bVar == null || (subtitleDownloadTableA7 = bVar.a()) == null) ? null : subtitleDownloadTableA7.getId()));
            }
        }
        Function1 function1 = this.f53067j;
        if (function1 != null) {
            function1.invoke(bVar);
        }
        if (bVar != null && (subtitleDownloadTableA6 = bVar.a()) != null && (path = subtitleDownloadTableA6.getPath()) != null) {
            E();
            this.f53060c.K.selectSubtitle(path, us.a.b(bVar), new i5.b() { // from class: com.transsion.shorttv.subtitle.c
                @Override // i5.b
                public final void a(boolean z10) {
                    ShortTVSubtitleControlImp.D(z10);
                }
            });
        }
        lg.a.f68839a.c("short_tv_subtitle", "selectSubtitle delayDuration:" + ((bVar == null || (subtitleDownloadTableA5 = bVar.a()) == null) ? null : subtitleDownloadTableA5.getDelay()) + ", name:" + ((bVar == null || (subtitleDownloadTableA4 = bVar.a()) == null) ? null : subtitleDownloadTableA4.getLanName()) + ", isAutoDownload:" + ((bVar == null || (subtitleDownloadTableA3 = bVar.a()) == null) ? null : Boolean.valueOf(subtitleDownloadTableA3.getIsAutoDownload())), true);
        if (bVar != null && (subtitleDownloadTableA2 = bVar.a()) != null && (delay = subtitleDownloadTableA2.getDelay()) != null) {
            this.f53060c.K.subtitleDelay(delay.longValue());
        }
        if (bVar != null && (subtitleDownloadTableA = bVar.a()) != null) {
            if (!subtitleDownloadTableA.getIsAutoDownload()) {
                h.f53653a.d().putString("k_subtitle_language", subtitleDownloadTableA.getLanName());
                com.transsion.subtitle_download.utils.d.f55045a.b().putString("k_subtitle_select_lan", subtitleDownloadTableA.getLan());
            }
            if (!lr.a.f69020a.c()) {
                fs.b.f62459a.e(Utils.a().getString(R$string.short_tv_subtitle_enable_toast, subtitleDownloadTableA.getName()));
            }
        }
        if (bVar != null) {
            B(bVar);
        }
        k.d(v.a(this.f53059b), null, null, new ShortTVSubtitleControlImp$selectSubtitle$6(bVar, this, null), 3, null);
    }

    @Override // com.transsion.shorttv.subtitle.a
    public void onDestroy() {
        C();
        FrameLayout flSubtitle = this.f53060c.f69841f;
        Intrinsics.g(flSubtitle, "flSubtitle");
        yr.b.b(flSubtitle);
        this.f53060c.K.stop();
        this.f53060c.K.destroy();
        com.transsion.shorttv.subtitle.manager.b.a aVar = com.transsion.shorttv.subtitle.manager.b.f53090a;
        aVar.b().f(this);
        aVar.b().c(this.f53071n);
        lg.a.C0828a.g(lg.a.f68839a, this.f53064g + " --> onDestroy()", false, 2, null);
    }
}
