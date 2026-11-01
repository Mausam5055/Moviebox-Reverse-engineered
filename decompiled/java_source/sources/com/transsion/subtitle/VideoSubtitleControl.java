package com.transsion.subtitle;

import android.app.Application;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import com.amazonaws.services.s3.model.BucketVersioningConfiguration;
import com.avery.subtitle.widget.SimpleSubtitleView;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.y;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.video.VideoDetailPlayDao;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.moviedetailapi.bean.DubsInfo;
import com.transsion.subtitle.dialog.SubtitleMainDialog2;
import com.transsion.subtitle.helper.LocalVideoUiType;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
public final class VideoSubtitleControl {
    private final Lazy A;
    private Map B;
    private final b C;
    private final VideoSubtitleControl$downloadListener$1 D;
    private long E;
    private final Set F;
    private boolean G;
    private String H;
    private final c I;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FragmentActivity f54701a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f54702b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f54703c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List f54704d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Function1 f54705e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Function2 f54706f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Function3 f54707g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Function1 f54708h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Function1 f54709i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Function1 f54710j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Function2 f54711k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private List f54712l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f54713m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f54714n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f54715o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private DownloadBean f54716p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private com.transsion.subtitle.helper.f f54717q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private LocalVideoUiType f54718r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final n0 f54719s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Map f54720t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private ViewGroup f54721u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final Map f54722v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final Map f54723w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private Function1 f54724x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private Map f54725y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private Map f54726z;

    public static final class a implements i5.a {
        a() {
        }

        @Override // i5.a
        public long getCurrentPosition() {
            return VideoSubtitleControl.this.f54714n;
        }

        @Override // i5.a
        public Float getSpeed() {
            return Float.valueOf(VideoSubtitleControl.this.f54703c);
        }

        @Override // i5.a
        public boolean isPlaying() {
            return VideoSubtitleControl.this.L();
        }
    }

    public static final class b implements hu.c {
        b() {
        }

        @Override // hu.c
        public void J(boolean z10, DownloadBean bean) {
            Intrinsics.h(bean, "bean");
            String resourceId = bean.getResourceId();
            DownloadBean downloadBean = VideoSubtitleControl.this.f54716p;
            if (Intrinsics.c(resourceId, downloadBean != null ? downloadBean.getResourceId() : null) && z10 && VideoSubtitleControl.this.f54712l.isEmpty()) {
                com.transsion.subtitle.a.f54738a.a(VideoSubtitleControl.this.getClass().getSimpleName() + " --> -------- 检测到有字幕但是在下载中");
            }
        }

        @Override // hu.c
        public void g(eu.a aVar) {
            hu.c.a.b(this, aVar);
        }
    }

    public static final class c implements hu.b {
        c() {
        }

        @Override // hu.b
        public SimpleSubtitleView a() {
            return (SimpleSubtitleView) VideoSubtitleControl.this.f54720t.get(IntegrationConstants.TAB_BAR_POSITION_DEFAULT);
        }

        @Override // hu.b
        public void b(boolean z10) {
            VideoSubtitleControl.this.Q(z10);
            VideoSubtitleControl.this.X(null, z10);
        }

        @Override // hu.b
        public void c(String msg) {
            Intrinsics.h(msg, "msg");
            Function1 function1 = VideoSubtitleControl.this.f54710j;
            if (function1 != null) {
                function1.invoke(msg);
            }
        }

        @Override // hu.b
        public void d(eu.a aVar, long j11) {
            if (aVar != null) {
                VideoSubtitleControl.this.Y(aVar);
            }
            String strA = aVar != null ? aVar.a() : null;
            if (strA != null) {
                int iHashCode = strA.hashCode();
                if (iHashCode != 0) {
                    if (iHashCode != 50770) {
                        if (iHashCode == 51560 && strA.equals("2nd")) {
                            SimpleSubtitleView simpleSubtitleView = (SimpleSubtitleView) VideoSubtitleControl.this.f54720t.get(IntegrationConstants.TAB_BAR_POSITION_DEFAULT);
                            if (simpleSubtitleView != null) {
                                simpleSubtitleView.subtitleDelay(j11);
                                return;
                            }
                            return;
                        }
                    } else if (strA.equals("1st")) {
                        SimpleSubtitleView simpleSubtitleView2 = (SimpleSubtitleView) VideoSubtitleControl.this.f54720t.get(IntegrationConstants.TAB_BAR_POSITION_TOP);
                        if (simpleSubtitleView2 != null) {
                            simpleSubtitleView2.subtitleDelay(j11);
                            return;
                        }
                        return;
                    }
                } else if (strA.equals("")) {
                    SimpleSubtitleView simpleSubtitleView3 = (SimpleSubtitleView) VideoSubtitleControl.this.f54720t.get(IntegrationConstants.TAB_BAR_POSITION_TOP);
                    if (simpleSubtitleView3 != null) {
                        simpleSubtitleView3.subtitleDelay(j11);
                        return;
                    }
                    return;
                }
            }
            com.transsion.subtitle.a.f54738a.a(VideoSubtitleControl.this.getClass().getSimpleName() + " --> onSubtitleDelay() --> 异常");
        }

        @Override // hu.b
        public SimpleSubtitleView e() {
            return (SimpleSubtitleView) VideoSubtitleControl.this.f54720t.get(IntegrationConstants.TAB_BAR_POSITION_TOP);
        }

        @Override // hu.b
        public void f(boolean z10) {
            VideoSubtitleControl.this.G = z10;
            VideoSubtitleControl.this.V(z10);
        }

        @Override // hu.b
        public boolean g() {
            return VideoSubtitleControl.this.G;
        }

        @Override // hu.b
        public ViewGroup getSubtitleViewGroup() {
            return VideoSubtitleControl.this.f54721u;
        }

        @Override // hu.b
        public void h(DubsInfo info) {
            Intrinsics.h(info, "info");
            VideoSubtitleControl.this.f54708h.invoke(info);
        }

        @Override // hu.b
        public com.transsion.subtitle.helper.f i() {
            return VideoSubtitleControl.this.f54717q;
        }

        @Override // hu.b
        public List j() {
            return VideoSubtitleControl.this.f54712l;
        }

        @Override // hu.b
        public void k(eu.a aVar, eu.a aVar2, boolean z10, eu.a aVar3) {
            String lanName;
            SubtitleDownloadTable subtitleDownloadTableB;
            SubtitleDownloadTable subtitleDownloadTableB2;
            SubtitleDownloadTable subtitleDownloadTableB3;
            SubtitleDownloadTable subtitleDownloadTableB4;
            String lan;
            SubtitleDownloadTable subtitleDownloadTableB5;
            SubtitleDownloadTable subtitleDownloadTableB6;
            SubtitleDownloadTable subtitleDownloadTableB7;
            SubtitleDownloadTable subtitleDownloadTableB8;
            VideoSubtitleControl.this.G = z10;
            String lan2 = null;
            com.transsion.subtitle.a.f54738a.a(VideoSubtitleControl.this.getClass().getSimpleName() + " --> onSubtitleSelect() --> isOpenBilingual = " + z10 + " --> top = " + ((aVar == null || (subtitleDownloadTableB8 = aVar.b()) == null) ? null : subtitleDownloadTableB8.getName()) + " --> bottom = " + ((aVar2 == null || (subtitleDownloadTableB7 = aVar2.b()) == null) ? null : subtitleDownloadTableB7.getName()) + " --> selected = " + ((aVar3 == null || (subtitleDownloadTableB6 = aVar3.b()) == null) ? null : subtitleDownloadTableB6.getName()));
            Function3 function3 = VideoSubtitleControl.this.f54707g;
            String str = "";
            if (aVar == null || (subtitleDownloadTableB5 = aVar.b()) == null || (lanName = subtitleDownloadTableB5.getLanName()) == null) {
                lanName = "";
            }
            if (aVar != null && (subtitleDownloadTableB4 = aVar.b()) != null && (lan = subtitleDownloadTableB4.getLan()) != null) {
                str = lan;
            }
            function3.invoke(lanName, str, Integer.valueOf((aVar == null || (subtitleDownloadTableB3 = aVar.b()) == null) ? 1 : subtitleDownloadTableB3.getType()));
            Function2 function2 = VideoSubtitleControl.this.f54711k;
            String lan3 = (aVar == null || (subtitleDownloadTableB2 = aVar.b()) == null) ? null : subtitleDownloadTableB2.getLan();
            if (aVar2 != null && (subtitleDownloadTableB = aVar2.b()) != null) {
                lan2 = subtitleDownloadTableB.getLan();
            }
            function2.invoke(lan3, lan2);
            VideoSubtitleControl videoSubtitleControl = VideoSubtitleControl.this;
            videoSubtitleControl.f0(aVar, (SimpleSubtitleView) videoSubtitleControl.f54720t.get(IntegrationConstants.TAB_BAR_POSITION_TOP), true);
            VideoSubtitleControl videoSubtitleControl2 = VideoSubtitleControl.this;
            videoSubtitleControl2.f0(aVar2, (SimpleSubtitleView) videoSubtitleControl2.f54720t.get(IntegrationConstants.TAB_BAR_POSITION_DEFAULT), false);
            VideoSubtitleControl.this.F.clear();
            if (aVar != null) {
                VideoSubtitleControl.this.F.add(aVar);
            }
            if (aVar2 != null) {
                VideoSubtitleControl.this.F.add(aVar2);
            }
            VideoSubtitleControl.this.W(aVar3);
        }

        @Override // hu.b
        public boolean l() {
            int i11 = com.transsion.baselib.report.launch.b.f43370a.b().getInt("subtitle_options_position", 10);
            com.transsion.subtitle.helper.f fVar = VideoSubtitleControl.this.f54717q;
            if (fVar != null) {
                fVar.j(VideoSubtitleControl.this.f54718r, VideoSubtitleControl.this.f54721u, i11);
            }
            return !Intrinsics.c(VideoSubtitleControl.this.H, BucketVersioningConfiguration.OFF);
        }
    }

    public VideoSubtitleControl(FragmentActivity activity, String str, float f11, List dubs, Function1 loadingCallback, Function2 controlCallback, Function3 subtitleSelected, Function1 audioSelected, Function1 setSublistData, Function1 function1, Function2 subtitleSelectedBilingual) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(dubs, "dubs");
        Intrinsics.h(loadingCallback, "loadingCallback");
        Intrinsics.h(controlCallback, "controlCallback");
        Intrinsics.h(subtitleSelected, "subtitleSelected");
        Intrinsics.h(audioSelected, "audioSelected");
        Intrinsics.h(setSublistData, "setSublistData");
        Intrinsics.h(subtitleSelectedBilingual, "subtitleSelectedBilingual");
        this.f54701a = activity;
        this.f54702b = str;
        this.f54703c = f11;
        this.f54704d = dubs;
        this.f54705e = loadingCallback;
        this.f54706f = controlCallback;
        this.f54707g = subtitleSelected;
        this.f54708h = audioSelected;
        this.f54709i = setSublistData;
        this.f54710j = function1;
        this.f54711k = subtitleSelectedBilingual;
        this.f54712l = new ArrayList();
        this.f54718r = LocalVideoUiType.MIDDLE;
        this.f54719s = o0.a(y0.c());
        this.f54720t = new LinkedHashMap();
        this.f54722v = new LinkedHashMap();
        this.f54723w = new LinkedHashMap();
        this.f54725y = new LinkedHashMap();
        this.f54726z = new LinkedHashMap();
        this.A = LazyKt.b(new Function0() { // from class: com.transsion.subtitle.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return VideoSubtitleControl.u0();
            }
        });
        this.B = new LinkedHashMap();
        b bVar = new b();
        this.C = bVar;
        VideoSubtitleControl$downloadListener$1 videoSubtitleControl$downloadListener$1 = new VideoSubtitleControl$downloadListener$1(this);
        this.D = videoSubtitleControl$downloadListener$1;
        this.f54717q = new com.transsion.subtitle.helper.f(activity);
        com.transsion.subtitle.a.f54738a.a(VideoSubtitleControl.class.getSimpleName() + " --> init{} --> VideoSubtitleControl --> 创建了");
        h.a aVar = h.f54887a;
        aVar.b().b(videoSubtitleControl$downloadListener$1);
        aVar.b().d(bVar);
        this.F = new LinkedHashSet();
        this.H = "";
        this.I = new c();
    }

    public /* synthetic */ VideoSubtitleControl(FragmentActivity fragmentActivity, String str, float f11, List list, Function1 function1, Function2 function2, Function3 function3, Function1 function4, Function1 function5, Function1 function6, Function2 function7, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(fragmentActivity, str, f11, (i11 & 8) != 0 ? CollectionsKt.l() : list, function1, function2, function3, function4, function5, (i11 & 512) != 0 ? null : function6, function7);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final VideoDetailPlayDao H() {
        return (VideoDetailPlayDao) this.A.getValue();
    }

    private final void I() {
        for (Map.Entry entry : this.f54720t.entrySet()) {
            SimpleSubtitleView simpleSubtitleView = (SimpleSubtitleView) entry.getValue();
            if (simpleSubtitleView != null) {
                simpleSubtitleView.turnOff(true);
            }
            SimpleSubtitleView simpleSubtitleView2 = (SimpleSubtitleView) entry.getValue();
            if (simpleSubtitleView2 != null) {
                simpleSubtitleView2.setVisibility(8);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:50:0x01ce  */
    private final void J() {
        String lanName;
        SubtitleDownloadTable subtitleDownloadTableB;
        Long delay;
        SubtitleDownloadTable subtitleDownloadTableB2;
        String path;
        SubtitleDownloadTable subtitleDownloadTableB3;
        SubtitleDownloadTable subtitleDownloadTableB4;
        String lan;
        SubtitleDownloadTable subtitleDownloadTableB5;
        Locale localeA = com.transsion.subtitle.helper.e.a();
        com.transsion.subtitle.a aVar = com.transsion.subtitle.a.f54738a;
        aVar.a(VideoSubtitleControl.class.getSimpleName() + " --> initDefaultSubtitle() --> cur language = " + localeA.getLanguage() + " -- country = " + localeA.getCountry());
        String str = "";
        String string = com.transsion.baselib.report.launch.b.f43370a.b().getString("k_subtitle_language", "");
        DownloadBean downloadBean = this.f54716p;
        eu.a aVar2 = null;
        String subtitleSelectId = downloadBean != null ? downloadBean.getSubtitleSelectId() : null;
        aVar.a(VideoSubtitleControl.class.getSimpleName() + " --> initDefaultSubtitle() --> savedDiffId = " + subtitleSelectId + " -- savedLan = " + string);
        String id2 = "";
        eu.a aVar3 = null;
        for (eu.a aVar4 : this.f54712l) {
            if (aVar4.d()) {
                if (Intrinsics.c(aVar4.b().getLan(), "en")) {
                    aVar2 = aVar4;
                }
                if ((subtitleSelectId == null || subtitleSelectId.length() == 0) && Intrinsics.c(aVar4.b().getLanAbbr(), localeA.getLanguage())) {
                    id2 = aVar4.b().getId();
                    com.transsion.subtitle.a.f54738a.a(VideoSubtitleControl.class.getSimpleName() + " --> initDefaultSubtitle() --> 没有自己选择的默认语言，使用手机语言 -- phone set def language = " + id2);
                } else if (Intrinsics.c(aVar4.b().getId(), subtitleSelectId)) {
                    id2 = aVar4.b().getId();
                    com.transsion.subtitle.a.f54738a.a(VideoSubtitleControl.class.getSimpleName() + " --> initDefaultSubtitle() --> 使用之前选择的字幕 saved flag = " + id2);
                } else if (subtitleSelectId == null || subtitleSelectId.length() == 0) {
                    if (Intrinsics.c(aVar4.b().getLanName(), string)) {
                        id2 = aVar4.b().getId();
                        com.transsion.subtitle.a.f54738a.a(VideoSubtitleControl.class.getSimpleName() + " --> initDefaultSubtitle() --> 使用之前选择的语言 local set savedLan = " + string);
                    }
                }
                aVar3 = aVar4;
            }
        }
        if (id2.length() != 0) {
            aVar2 = aVar3;
        } else if (aVar2 != null && aVar2.d()) {
            id2 = aVar2.b().getId();
            com.transsion.subtitle.a.f54738a.a(VideoSubtitleControl.class.getSimpleName() + " --> initDefaultSubtitle() --> 没有设置默认语言 --> english set def language = " + id2);
        } else if (this.f54712l.isEmpty()) {
            aVar2 = aVar3;
        } else {
            Iterator it = this.f54712l.iterator();
            while (true) {
                if (!it.hasNext()) {
                    aVar2 = aVar3;
                    break;
                }
                eu.a aVar5 = (eu.a) it.next();
                if (aVar5.d()) {
                    id2 = aVar5.b().getId();
                    aVar2 = aVar5;
                    break;
                }
            }
            if (id2.length() == 0) {
                com.transsion.subtitle.a.f54738a.a(VideoSubtitleControl.class.getSimpleName() + " --> initDefaultSubtitle() --> 可能外部只读取到了数据库前面没下载的字幕 --> 没有对应的语言，不设置，需要用户手动设置或当前下载后自动设置上");
                return;
            }
        }
        this.H = id2;
        Function3 function3 = this.f54707g;
        if (aVar2 == null || (subtitleDownloadTableB5 = aVar2.b()) == null || (lanName = subtitleDownloadTableB5.getLanName()) == null) {
            lanName = "";
        }
        if (aVar2 != null && (subtitleDownloadTableB4 = aVar2.b()) != null && (lan = subtitleDownloadTableB4.getLan()) != null) {
            str = lan;
        }
        function3.invoke(lanName, str, Integer.valueOf((aVar2 == null || (subtitleDownloadTableB3 = aVar2.b()) == null) ? 1 : subtitleDownloadTableB3.getType()));
        if (aVar2 != null && (subtitleDownloadTableB2 = aVar2.b()) != null && (path = subtitleDownloadTableB2.getPath()) != null) {
            Iterator it2 = this.f54720t.entrySet().iterator();
            while (it2.hasNext()) {
                SimpleSubtitleView simpleSubtitleView = (SimpleSubtitleView) ((Map.Entry) it2.next()).getValue();
                if (simpleSubtitleView != null) {
                    simpleSubtitleView.setDefaultSubtitle(path);
                }
            }
        }
        if (aVar2 != null) {
            aVar2.l(true);
        }
        if (aVar2 != null && (subtitleDownloadTableB = aVar2.b()) != null && (delay = subtitleDownloadTableB.getDelay()) != null) {
            long jLongValue = delay.longValue();
            lg.a.f68839a.c(com.transsion.baselib.report.a.f43340a.a(), "default delayDuration = " + jLongValue, true);
            Iterator it3 = this.f54720t.entrySet().iterator();
            while (it3.hasNext()) {
                SimpleSubtitleView simpleSubtitleView2 = (SimpleSubtitleView) ((Map.Entry) it3.next()).getValue();
                if (simpleSubtitleView2 != null) {
                    simpleSubtitleView2.subtitleDelay(jLongValue);
                }
            }
        }
        if (aVar2 != null) {
            this.F.add(aVar2);
        }
        f0(aVar2, (SimpleSubtitleView) this.f54720t.get(IntegrationConstants.TAB_BAR_POSITION_TOP), true);
    }

    private final void K(SimpleSubtitleView simpleSubtitleView) {
        if (simpleSubtitleView != null) {
            simpleSubtitleView.initSubtitle(new a(), false);
            return;
        }
        com.transsion.subtitle.a.f54738a.a(VideoSubtitleControl.class.getSimpleName() + " --> vdSubtitle --> initSubtitle() --> null");
    }

    private final boolean M() {
        Iterator it = this.f54712l.iterator();
        int i11 = 0;
        while (it.hasNext()) {
            if (!((eu.a) it.next()).b().isInner()) {
                i11++;
            }
        }
        return i11 > 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Q(boolean z10) {
        com.transsion.subtitle.a.f54738a.a(VideoSubtitleControl.class.getSimpleName() + " --> onSubtitleSwitchClick() --> turnOn = " + z10 + " --> 字幕开关状态变化");
        if (z10) {
            this.H = "";
            n0();
        } else {
            this.H = BucketVersioningConfiguration.OFF;
            I();
        }
        if (!z10) {
            this.f54707g.invoke(BucketVersioningConfiguration.OFF, BucketVersioningConfiguration.OFF, 0);
        } else if (!this.F.isEmpty()) {
            eu.a aVar = (eu.a) CollectionsKt.h0(this.F);
            Function3 function3 = this.f54707g;
            String lanName = aVar.b().getLanName();
            if (lanName == null) {
                lanName = "";
            }
            String lan = aVar.b().getLan();
            function3.invoke(lanName, lan != null ? lan : "", Integer.valueOf(aVar.b().getType()));
        }
        if (z10 && M()) {
            o0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void V(boolean z10) {
        String str = this.f54702b;
        if (str == null || str.length() == 0) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("bilingual", String.valueOf(z10));
        hj.i.f64505a.p(this.f54702b, linkedHashMap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void W(eu.a aVar) {
        String subjectId;
        String resourceId;
        String str = this.f54702b;
        if (str == null || str.length() == 0 || aVar == null) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        DownloadBean downloadBean = this.f54716p;
        if (downloadBean == null || (subjectId = downloadBean.getSubjectId()) == null) {
            subjectId = "";
        }
        linkedHashMap.put("subject_id", subjectId);
        DownloadBean downloadBean2 = this.f54716p;
        if (downloadBean2 == null || (resourceId = downloadBean2.getResourceId()) == null) {
            resourceId = "";
        }
        linkedHashMap.put("resource_id", resourceId);
        if (aVar.b().getEp() > 0) {
            linkedHashMap.put("ep", String.valueOf(aVar.b().getEp()));
        }
        if (aVar.b().getSe() > 0) {
            linkedHashMap.put("se", String.valueOf(aVar.b().getSe()));
        }
        String lan = aVar.b().getLan();
        if (lan == null) {
            lan = "";
        }
        linkedHashMap.put("lan", lan);
        String lanName = aVar.b().getLanName();
        linkedHashMap.put("lan_name", lanName != null ? lanName : "");
        linkedHashMap.put("id", aVar.b().getId());
        linkedHashMap.put(NativeComponentConstants.KEY_COMPONENT_TYPE, String.valueOf(aVar.b().getType()));
        linkedHashMap.put("switch_type", "subtitle_select");
        hj.i.f64505a.s(this.f54702b, "subtitle_switch", linkedHashMap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void X(eu.a aVar, boolean z10) {
        String subjectId;
        String resourceId;
        String lan;
        String lanName;
        SubtitleDownloadTable subtitleDownloadTableB;
        SubtitleDownloadTable subtitleDownloadTableB2;
        String id2;
        SubtitleDownloadTable subtitleDownloadTableB3;
        SubtitleDownloadTable subtitleDownloadTableB4;
        SubtitleDownloadTable subtitleDownloadTableB5;
        SubtitleDownloadTable subtitleDownloadTableB6;
        SubtitleDownloadTable subtitleDownloadTableB7;
        SubtitleDownloadTable subtitleDownloadTableB8;
        String str = this.f54702b;
        if (str == null || str.length() == 0) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        DownloadBean downloadBean = this.f54716p;
        String str2 = "";
        if (downloadBean == null || (subjectId = downloadBean.getSubjectId()) == null) {
            subjectId = "";
        }
        linkedHashMap.put("subject_id", subjectId);
        DownloadBean downloadBean2 = this.f54716p;
        if (downloadBean2 == null || (resourceId = downloadBean2.getResourceId()) == null) {
            resourceId = "";
        }
        linkedHashMap.put("resource_id", resourceId);
        int se2 = 0;
        Integer numValueOf = null;
        if (((aVar == null || (subtitleDownloadTableB8 = aVar.b()) == null) ? 0 : subtitleDownloadTableB8.getEp()) > 0) {
            linkedHashMap.put("ep", String.valueOf((aVar == null || (subtitleDownloadTableB7 = aVar.b()) == null) ? null : Integer.valueOf(subtitleDownloadTableB7.getEp())));
        }
        if (aVar != null && (subtitleDownloadTableB6 = aVar.b()) != null) {
            se2 = subtitleDownloadTableB6.getSe();
        }
        if (se2 > 0) {
            linkedHashMap.put("se", String.valueOf((aVar == null || (subtitleDownloadTableB5 = aVar.b()) == null) ? null : Integer.valueOf(subtitleDownloadTableB5.getSe())));
        }
        if (aVar == null || (subtitleDownloadTableB4 = aVar.b()) == null || (lan = subtitleDownloadTableB4.getLan()) == null) {
            lan = "";
        }
        linkedHashMap.put("lan", lan);
        if (aVar == null || (subtitleDownloadTableB3 = aVar.b()) == null || (lanName = subtitleDownloadTableB3.getLanName()) == null) {
            lanName = "";
        }
        linkedHashMap.put("lan_name", lanName);
        if (aVar != null && (subtitleDownloadTableB2 = aVar.b()) != null && (id2 = subtitleDownloadTableB2.getId()) != null) {
            str2 = id2;
        }
        linkedHashMap.put("id", str2);
        if (aVar != null && (subtitleDownloadTableB = aVar.b()) != null) {
            numValueOf = Integer.valueOf(subtitleDownloadTableB.getType());
        }
        linkedHashMap.put(NativeComponentConstants.KEY_COMPONENT_TYPE, String.valueOf(numValueOf));
        linkedHashMap.put("result", z10 ? "1" : "0");
        hj.i.f64505a.s(this.f54702b, "subtitle_switch", linkedHashMap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Y(eu.a aVar) {
        String str;
        String subjectId;
        String resourceId;
        if (this.B.containsKey(aVar.b().getId()) || (str = this.f54702b) == null || str.length() == 0) {
            return;
        }
        this.B.put(aVar.b().getId(), "");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        DownloadBean downloadBean = this.f54716p;
        if (downloadBean == null || (subjectId = downloadBean.getSubjectId()) == null) {
            subjectId = "";
        }
        linkedHashMap.put("subject_id", subjectId);
        DownloadBean downloadBean2 = this.f54716p;
        if (downloadBean2 == null || (resourceId = downloadBean2.getResourceId()) == null) {
            resourceId = "";
        }
        linkedHashMap.put("resource_id", resourceId);
        if (aVar.b().getEp() > 0) {
            linkedHashMap.put("ep", String.valueOf(aVar.b().getEp()));
        }
        if (aVar.b().getSe() > 0) {
            linkedHashMap.put("se", String.valueOf(aVar.b().getSe()));
        }
        String lan = aVar.b().getLan();
        if (lan == null) {
            lan = "";
        }
        linkedHashMap.put("lan", lan);
        String lanName = aVar.b().getLanName();
        linkedHashMap.put("lan_name", lanName != null ? lanName : "");
        linkedHashMap.put("id", aVar.b().getId());
        linkedHashMap.put(NativeComponentConstants.KEY_COMPONENT_TYPE, String.valueOf(aVar.b().getType()));
        hj.i.f64505a.s(this.f54702b, "subtitle_sync", linkedHashMap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a0(eu.a aVar) {
        SubtitleDownloadTable subtitleDownloadTableB;
        SubtitleDownloadTable subtitleDownloadTableB2;
        SubtitleDownloadTable subtitleDownloadTableB3;
        SubtitleDownloadTable subtitleDownloadTableB4;
        if (aVar != null && (subtitleDownloadTableB4 = aVar.b()) != null && subtitleDownloadTableB4.isInner()) {
            com.transsion.baselib.report.launch.b.f43370a.b().putString("k_subtitle_language", aVar.b().getLanName());
        }
        com.transsion.subtitle.a aVar2 = com.transsion.subtitle.a.f54738a;
        String simpleName = VideoSubtitleControl.class.getSimpleName();
        DownloadBean downloadBean = this.f54716p;
        aVar2.a(simpleName + " --> saveSelectedFlag() --> saveSelectId = " + (downloadBean != null ? downloadBean.getSubjectId() : null) + " -- id = " + ((aVar == null || (subtitleDownloadTableB3 = aVar.b()) == null) ? null : subtitleDownloadTableB3.getId()));
        DownloadBean downloadBean2 = this.f54716p;
        if (downloadBean2 != null) {
            downloadBean2.setSubtitleSelectId((aVar == null || (subtitleDownloadTableB2 = aVar.b()) == null) ? null : subtitleDownloadTableB2.getId());
        }
        Function1 function1 = this.f54724x;
        if (function1 != null) {
            function1.invoke((aVar == null || (subtitleDownloadTableB = aVar.b()) == null) ? null : subtitleDownloadTableB.getId());
        }
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new VideoSubtitleControl$saveSelectedFlag$1(this, aVar, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c0(VideoSubtitleControl videoSubtitleControl, View view) {
        Iterator it = videoSubtitleControl.f54726z.entrySet().iterator();
        while (it.hasNext()) {
            Function1 function1 = (Function1) ((Map.Entry) it.next()).getValue();
            Intrinsics.e(view);
            function1.invoke(view);
        }
        videoSubtitleControl.o0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f0(final eu.a aVar, final SimpleSubtitleView simpleSubtitleView, final boolean z10) {
        String id2;
        SubtitleDownloadTable subtitleDownloadTableB;
        if (aVar == null || (subtitleDownloadTableB = aVar.b()) == null || (id2 = subtitleDownloadTableB.getId()) == null) {
            id2 = "";
        }
        this.H = id2;
        if (aVar == null) {
            if (simpleSubtitleView != null) {
                simpleSubtitleView.turnOff(true);
                simpleSubtitleView.setVisibility(8);
            }
            com.transsion.subtitle.a.f54738a.a(VideoSubtitleControl.class.getSimpleName() + " --> setSubtitle() --> " + (z10 ? "topBean" : "bottomBean") + " == null --> isTop = " + z10 + " --> view.hashCode = " + (simpleSubtitleView != null ? simpleSubtitleView.hashCode() : 0));
            return;
        }
        if (simpleSubtitleView == null) {
            com.transsion.subtitle.a.f54738a.b(VideoSubtitleControl.class.getSimpleName() + " --> setSubtitle() --> subtitleView ==null --> isTop = " + z10);
            return;
        }
        simpleSubtitleView.setVisibility(0);
        String path = aVar.b().getPath();
        if (path == null) {
            path = "";
        }
        simpleSubtitleView.setSubtitlePath(path, com.transsion.subtitle.helper.e.b(aVar));
        String path2 = aVar.b().getPath();
        simpleSubtitleView.selectSubtitle(path2 != null ? path2 : "", com.transsion.subtitle.helper.e.b(aVar), new i5.b() { // from class: com.transsion.subtitle.e
            @Override // i5.b
            public final void a(boolean z11) {
                VideoSubtitleControl.g0(this.f54767a, simpleSubtitleView, aVar, z10, simpleSubtitleView, z11);
            }
        });
        Function1 function1 = this.f54724x;
        if (function1 != null) {
            function1.invoke(aVar.b().getId());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g0(VideoSubtitleControl videoSubtitleControl, SimpleSubtitleView simpleSubtitleView, eu.a aVar, boolean z10, SimpleSubtitleView simpleSubtitleView2, boolean z11) {
        videoSubtitleControl.f54705e.invoke(Boolean.FALSE);
        simpleSubtitleView.turnOff(false);
        simpleSubtitleView.refreshImmediately();
        h.f54887a.b().g(aVar);
        Long delay = aVar.b().getDelay();
        if (delay != null) {
            simpleSubtitleView.subtitleDelay(delay.longValue());
        }
        com.transsion.subtitle.a.f54738a.a(VideoSubtitleControl.class.getSimpleName() + " --> setSubtitle() --> refreshImmediately() --> 展示字幕 --> bean.dbBean.name = " + aVar.b().getName() + " --> isTop = " + z10 + "  --> view.hashCode = " + simpleSubtitleView2.hashCode() + " -- path = " + aVar.b().getPath());
    }

    public static /* synthetic */ void m0(VideoSubtitleControl videoSubtitleControl, boolean z10, boolean z11, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z11 = false;
        }
        videoSubtitleControl.l0(z10, z11);
    }

    private final void n0() {
        int i11 = 0;
        for (Object obj : this.F) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt.u();
            }
            eu.a aVar = (eu.a) obj;
            if (i11 == 0) {
                f0(aVar, (SimpleSubtitleView) this.f54720t.get(IntegrationConstants.TAB_BAR_POSITION_TOP), true);
            } else if (i11 == 1) {
                f0(aVar, (SimpleSubtitleView) this.f54720t.get(IntegrationConstants.TAB_BAR_POSITION_DEFAULT), false);
            }
            i11 = i12;
        }
    }

    private final void o0() {
        if (this.f54712l.isEmpty()) {
            l0(false, true);
            return;
        }
        FragmentActivity fragmentActivity = this.f54701a;
        SubtitleMainDialog2.Companion aVar = SubtitleMainDialog2.INSTANCE;
        boolean z10 = this.f54718r == LocalVideoUiType.LAND;
        boolean zC = Intrinsics.c(this.H, BucketVersioningConfiguration.OFF);
        List list = this.f54712l;
        List list2 = this.f54704d;
        DownloadBean downloadBean = this.f54716p;
        LocalVideoUiType localVideoUiType = this.f54718r;
        com.transsion.subtitle.helper.f fVar = this.f54717q;
        SubtitleMainDialog2 subtitleMainDialog2B = aVar.b(z10, zC, list, list2, downloadBean, localVideoUiType, Integer.valueOf(fVar != null ? fVar.h(localVideoUiType) : y.c()), this.f54702b);
        subtitleMainDialog2B.F0(this.I);
        subtitleMainDialog2B.J0(new Function1() { // from class: com.transsion.subtitle.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return VideoSubtitleControl.p0(this.f54743a, (eu.a) obj);
            }
        });
        subtitleMainDialog2B.k0(fragmentActivity, "fragment_subtitle_main_dialog");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit p0(VideoSubtitleControl videoSubtitleControl, eu.a bean) {
        Intrinsics.h(bean, "bean");
        videoSubtitleControl.q0(bean);
        return Unit.f67061a;
    }

    private final void q0(eu.a aVar) {
        String string;
        com.transsion.subtitle.a.f54738a.a(VideoSubtitleControl.class.getSimpleName() + " --> subtitleSelectFromSearch() --> 搜索字幕选中 --> 直接设置使用 --> isOpenBilingual = " + this.G);
        String str = "";
        if (this.G) {
            for (eu.a aVar2 : this.f54712l) {
                if (aVar2.f() && TextUtils.equals(aVar2.a(), "1st")) {
                    aVar2.l(false);
                    aVar2.g("");
                    com.transsion.subtitle.a.f54738a.a(VideoSubtitleControl.class.getSimpleName() + " --> subtitleSelectFromSearch() --> 这里默认替换 1st --> it.isSelect = false");
                }
            }
            for (eu.a aVar3 : this.f54712l) {
                if (Intrinsics.c(aVar3.b().getId(), aVar.b().getId())) {
                    aVar3.l(true);
                    aVar3.g("1st");
                    com.transsion.subtitle.a.f54738a.a(VideoSubtitleControl.class.getSimpleName() + " --> subtitleSelectFromSearch() --> 这里默认替换 1st --> it.isSelect = true");
                }
            }
        } else {
            for (eu.a aVar4 : this.f54712l) {
                if (aVar4.f()) {
                    aVar4.l(false);
                }
            }
            com.transsion.subtitle.a.f54738a.a(VideoSubtitleControl.class.getSimpleName() + " --> subtitleSelectFromSearch() --> 能从搜索选中回调，一定在字幕列表里面了");
            for (eu.a aVar5 : this.f54712l) {
                if (Intrinsics.c(aVar.b().getId(), aVar5.b().getId())) {
                    aVar5.l(true);
                }
            }
            com.transsion.subtitle.a.f54738a.a(VideoSubtitleControl.class.getSimpleName() + " --> subtitleSelectFromSearch() --> 找到ID相同的哪个设置 选中");
        }
        f0(aVar, (SimpleSubtitleView) this.f54720t.get(IntegrationConstants.TAB_BAR_POSITION_TOP), true);
        com.transsion.subtitle.a.f54738a.a(VideoSubtitleControl.class.getSimpleName() + " --> subtitleSelectFromSearch() --> 设置字幕 --> bean.id = " + aVar.b().getId());
        Function1 function1 = this.f54710j;
        if (function1 != null) {
            Application applicationA = Utils.a();
            if (applicationA != null && (string = applicationA.getString(R$string.subtitle_switch_toast)) != null) {
                str = string;
            }
            function1.invoke(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final VideoDetailPlayDao u0() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).D1();
    }

    public final void F(LocalVideoUiType uitType, Function2 switchCallback, Function1 settingCallback) {
        Intrinsics.h(uitType, "uitType");
        Intrinsics.h(switchCallback, "switchCallback");
        Intrinsics.h(settingCallback, "settingCallback");
        this.f54725y.put(uitType, switchCallback);
        this.f54726z.put(uitType, settingCallback);
    }

    public final Map G() {
        return new LinkedHashMap();
    }

    public final boolean L() {
        return this.f54715o;
    }

    public final void N() {
        com.transsion.subtitle.a.f54738a.a(VideoSubtitleControl.class.getSimpleName() + " --> onDestroy()");
        for (Map.Entry entry : this.f54720t.entrySet()) {
            SimpleSubtitleView simpleSubtitleView = (SimpleSubtitleView) entry.getValue();
            if (simpleSubtitleView != null) {
                simpleSubtitleView.stop();
            }
            SimpleSubtitleView simpleSubtitleView2 = (SimpleSubtitleView) entry.getValue();
            if (simpleSubtitleView2 != null) {
                simpleSubtitleView2.destroy();
            }
        }
        if (this.f54713m) {
            try {
                Result.Companion companion = Result.INSTANCE;
                Iterator it = this.f54722v.entrySet().iterator();
                while (it.hasNext()) {
                    Iterator it2 = ((Map) ((Map.Entry) it.next()).getValue()).entrySet().iterator();
                    while (it2.hasNext()) {
                        SimpleSubtitleView simpleSubtitleView3 = (SimpleSubtitleView) ((Map.Entry) it2.next()).getValue();
                        if (simpleSubtitleView3 != null) {
                            simpleSubtitleView3.destroy();
                        }
                    }
                }
                Result.m454constructorimpl(Unit.f67061a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m454constructorimpl(ResultKt.a(th2));
            }
        }
        this.f54720t.clear();
        this.f54725y.clear();
        this.f54726z.clear();
        h.a aVar = h.f54887a;
        aVar.b().c(this.D);
        aVar.b().f(this.C);
        aVar.b().reset();
    }

    public final void O(eu.a bean) {
        Intrinsics.h(bean, "bean");
        com.transsion.subtitle.a aVar = com.transsion.subtitle.a.f54738a;
        aVar.a(VideoSubtitleControl.class.getSimpleName() + " --> onDetailPageSubtitleSelect--> " + bean.b().getLan() + ", " + bean.b().getLanName() + ", " + bean.d());
        if (bean.d()) {
            this.I.k(bean, null, false, bean);
            return;
        }
        if (!nh.m.f70474a.e()) {
            com.tn.lib.widget.toast.core.h.f41479a.k(com.transsion.baseui.R$string.base_network_fail);
            return;
        }
        bean.b().setStatus(2);
        bean.b().setSetImmediately(true);
        String simpleName = VideoSubtitleControl.class.getSimpleName();
        DownloadBean downloadBean = this.f54716p;
        String totalTitleName = downloadBean != null ? downloadBean.getTotalTitleName() : null;
        aVar.a(simpleName + " --> DetailPage downloadSubtitle() --> 内置字幕列表，下载字幕，name = " + totalTitleName + ", subtype = " + bean.b().getType() + ",\"  download subtitleName = " + bean.b().getSubtitleName() + ", subResourceId = " + bean.b().getResourceId() + "~");
        h.f54887a.b().h(bean);
    }

    public final void P(LocalVideoUiType type) {
        SimpleSubtitleView simpleSubtitleView;
        Intrinsics.h(type, "type");
        this.f54718r = type;
        if (this.f54713m) {
            Map linkedHashMap = (Map) this.f54722v.get(type);
            if (linkedHashMap == null) {
                linkedHashMap = new LinkedHashMap();
            }
            this.f54720t = linkedHashMap;
            this.f54721u = (ViewGroup) this.f54723w.get(this.f54718r);
            com.transsion.subtitle.a.f54738a.a(VideoSubtitleControl.class.getSimpleName() + " --> onLocalUiChanged() --> currentUiType = " + this.f54718r + " --> subtitleSelectList.size = " + this.F.size());
            for (eu.a aVar : this.F) {
                boolean z10 = true;
                if (this.G) {
                    String strA = aVar.a();
                    int iHashCode = strA.hashCode();
                    if (iHashCode != 0) {
                        if (iHashCode != 50770) {
                            simpleSubtitleView = (iHashCode == 51560 && strA.equals("2nd")) ? (SimpleSubtitleView) this.f54720t.get(IntegrationConstants.TAB_BAR_POSITION_DEFAULT) : null;
                            z10 = false;
                        } else if (strA.equals("1st")) {
                            simpleSubtitleView = (SimpleSubtitleView) this.f54720t.get(IntegrationConstants.TAB_BAR_POSITION_TOP);
                        }
                        z10 = false;
                    } else if (strA.equals("")) {
                        simpleSubtitleView = (SimpleSubtitleView) this.f54720t.get(IntegrationConstants.TAB_BAR_POSITION_TOP);
                    } else {
                        z10 = false;
                    }
                    f0(aVar, simpleSubtitleView, z10);
                } else {
                    f0(aVar, (SimpleSubtitleView) this.f54720t.get(IntegrationConstants.TAB_BAR_POSITION_TOP), true);
                }
            }
        }
        com.transsion.subtitle.helper.f fVar = this.f54717q;
        if (fVar != null) {
            fVar.i((SimpleSubtitleView) this.f54720t.get(IntegrationConstants.TAB_BAR_POSITION_TOP), (SimpleSubtitleView) this.f54720t.get(IntegrationConstants.TAB_BAR_POSITION_DEFAULT), type, this.f54721u);
        }
        com.transsion.subtitle.a.f54738a.a(VideoSubtitleControl.class.getSimpleName() + " --> onLocalUiChanged() --> 页面切换刷新字幕位置信息");
    }

    public final void R() {
        Iterator it = this.f54720t.entrySet().iterator();
        while (it.hasNext()) {
            SimpleSubtitleView simpleSubtitleView = (SimpleSubtitleView) ((Map.Entry) it.next()).getValue();
            if (simpleSubtitleView != null) {
                simpleSubtitleView.pause();
            }
        }
    }

    public final void S(long j11) {
        this.E = j11;
    }

    public final void T() {
        Iterator it = this.f54720t.entrySet().iterator();
        while (it.hasNext()) {
            SimpleSubtitleView simpleSubtitleView = (SimpleSubtitleView) ((Map.Entry) it.next()).getValue();
            if (simpleSubtitleView != null) {
                simpleSubtitleView.resume();
            }
        }
    }

    public final void U() {
    }

    public final void Z() {
        this.H = "";
        this.f54712l.clear();
        for (Map.Entry entry : this.f54720t.entrySet()) {
            SimpleSubtitleView simpleSubtitleView = (SimpleSubtitleView) entry.getValue();
            if (simpleSubtitleView != null) {
                simpleSubtitleView.reset();
            }
            SimpleSubtitleView simpleSubtitleView2 = (SimpleSubtitleView) entry.getValue();
            if (simpleSubtitleView2 != null) {
                jg.c.g(simpleSubtitleView2);
            }
        }
        com.transsion.subtitle.a.f54738a.a(VideoSubtitleControl.class.getSimpleName() + " --> reset() --> 重置资源");
        h.f54887a.b().reset();
    }

    public final void b0(LocalVideoUiType uiType, TextView textView, SimpleSubtitleView simpleSubtitleView, SimpleSubtitleView simpleSubtitleView2, ViewGroup viewGroup, boolean z10) {
        Intrinsics.h(uiType, "uiType");
        this.f54713m = z10;
        this.f54721u = viewGroup;
        this.f54720t.put(IntegrationConstants.TAB_BAR_POSITION_TOP, simpleSubtitleView);
        this.f54720t.put(IntegrationConstants.TAB_BAR_POSITION_DEFAULT, simpleSubtitleView2);
        if (z10) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put(IntegrationConstants.TAB_BAR_POSITION_TOP, simpleSubtitleView);
            linkedHashMap.put(IntegrationConstants.TAB_BAR_POSITION_DEFAULT, simpleSubtitleView2);
            this.f54722v.put(uiType, linkedHashMap);
            this.f54723w.put(uiType, this.f54721u);
        }
        h.f54887a.b().reset();
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.subtitle.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    VideoSubtitleControl.c0(this.f54742a, view);
                }
            });
        }
        if (simpleSubtitleView != null) {
            K(simpleSubtitleView);
        }
        if (simpleSubtitleView2 != null) {
            K(simpleSubtitleView2);
        }
        com.transsion.subtitle.helper.f fVar = this.f54717q;
        if (fVar != null) {
            fVar.i(simpleSubtitleView, simpleSubtitleView2, uiType, viewGroup);
        }
        com.transsion.subtitle.a.f54738a.a(VideoSubtitleControl.class.getSimpleName() + " --> setData() --> uiType = " + uiType + " --> END");
    }

    public final void d0(boolean z10) {
        this.f54715o = z10;
    }

    public final void e0(Function1 function1) {
        this.f54724x = function1;
    }

    public final void h0(List list) {
        Z();
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            if (this.f54712l.isEmpty()) {
                com.transsion.subtitle.a aVar = com.transsion.subtitle.a.f54738a;
                String simpleName = VideoSubtitleControl.class.getSimpleName();
                DownloadBean downloadBean = this.f54716p;
                aVar.a(simpleName + " --> setSubtitleDataList() --> 无字幕 --> subtitleResId:" + (downloadBean != null ? downloadBean.getSubtitleResId() : null));
                return;
            }
            return;
        }
        com.transsion.subtitle.a.f54738a.a(VideoSubtitleControl.class.getSimpleName() + " --> setSubtitleDataList() --> 当前可用字幕数量 -- size = " + list.size());
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        ListIterator listIterator = list.listIterator();
        while (listIterator.hasNext()) {
            eu.a aVar2 = (eu.a) listIterator.next();
            aVar2.l(false);
            if (linkedHashMap.containsKey(aVar2.b().getId()) && linkedHashMap.containsValue(aVar2.b().getName())) {
                com.transsion.subtitle.a.f54738a.a(VideoSubtitleControl.class.getSimpleName() + " --> setSubtitleDataList() --> Repeated，remove~  name = " + aVar2.b().getName());
                listIterator.remove();
            } else {
                linkedHashMap.put(aVar2.b().getId(), aVar2.b().getName());
            }
        }
        if (list.size() > 1) {
            CollectionsKt.A(list, new Comparator() { // from class: com.transsion.subtitle.VideoSubtitleControl$setSubtitleDataList$$inlined$sortBy$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t11, T t12) {
                    return ComparisonsKt.d(Integer.valueOf(((eu.a) t11).b().getType()), Integer.valueOf(((eu.a) t12).b().getType()));
                }
            });
        }
        this.f54712l.clear();
        this.f54712l.addAll(list);
        this.f54709i.invoke(this.f54712l);
        J();
    }

    public final void i0(hu.a callback) {
        Intrinsics.h(callback, "callback");
    }

    public final void j0(DownloadBean downloadBean) {
        this.f54716p = downloadBean;
    }

    public final void k0(Function1 callback) {
        Intrinsics.h(callback, "callback");
    }

    public final void l0(boolean z10, boolean z11) {
        String value;
        Boolean boolM1;
        ConfigBean configBeanC = sm.f.f75407c.a().c("sa_show_no_subtitle_tips", true);
        if ((!((configBeanC == null || (value = configBeanC.getValue()) == null || (boolM1 = StringsKt.m1(value)) == null) ? false : boolM1.booleanValue()) && !z11) || this.f54701a.isDestroyed() || this.f54701a.isFinishing()) {
            return;
        }
        FragmentActivity fragmentActivity = this.f54701a;
        SubtitleMainDialog2 subtitleMainDialog2A = SubtitleMainDialog2.INSTANCE.a(this.f54718r == LocalVideoUiType.LAND, z10, this.f54704d, this.f54716p, this.f54702b);
        subtitleMainDialog2A.k0(fragmentActivity, "fragment_subtitle_main_dialog");
        subtitleMainDialog2A.F0(this.I);
    }

    public final void r0(List dubs) {
        Intrinsics.h(dubs, "dubs");
        this.f54704d = dubs;
    }

    public final void s0(long j11) {
        this.f54714n = j11;
    }

    public final void t0(float f11) {
        this.f54703c = f11;
    }
}
