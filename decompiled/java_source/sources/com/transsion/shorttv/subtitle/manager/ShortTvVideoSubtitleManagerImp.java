package com.transsion.shorttv.subtitle.manager;

import com.transsion.shorttv.utils.h;
import com.transsion.subtitle_download.SubtitleDownloadManager;
import com.transsion.subtitle_download.bean.SubtitleAppType;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import nh.m;

/* JADX INFO: loaded from: classes6.dex */
public final class ShortTvVideoSubtitleManagerImp implements b {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f53083g = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Set f53084b = new CopyOnWriteArraySet();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f53085c = ShortTvVideoSubtitleManagerImp.class.getSimpleName();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final n0 f53086d = o0.a(y0.c());

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Lazy f53087e = LazyKt.b(new Function0() { // from class: com.transsion.shorttv.subtitle.manager.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return ShortTvVideoSubtitleManagerImp.r();
        }
    });

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ShortTvVideoSubtitleManagerImp$resDownloadListener$1 f53088f = new ShortTvVideoSubtitleManagerImp$resDownloadListener$1(this);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private final void m(ts.a aVar, final Function1 function1) {
        String strD = aVar.d();
        if (strD == null || strD.length() == 0) {
            lg.a.C0828a.f(lg.a.f68839a, "short_tv_subtitle", this.f53085c + " checkDownloadSubtitle fail， has no shorTvId", false, 4, null);
            if (function1 != null) {
                function1.invoke(Boolean.FALSE);
                return;
            }
            return;
        }
        if (StringsKt.x(aVar.d()) == null) {
            lg.a.C0828a.z(lg.a.f68839a, "short_tv_subtitle", this.f53085c + " checkDownloadSubtitle ,shorTvId is abnormal", false, 4, null);
            if (function1 != null) {
                function1.invoke(Boolean.FALSE);
                return;
            }
            return;
        }
        if (!m.f70474a.e()) {
            lg.a.f68839a.x("short_tv_subtitle", this.f53085c + " checkDownloadSubtitle ,无网络不做检测", true);
            return;
        }
        lg.a.f68839a.c("short_tv_subtitle", this.f53085c + " checkDownloadSubtitle, name = " + aVar.h() + " subjectId:" + aVar.e() + " subtitleResId:" + aVar.g(), true);
        SubtitleDownloadManager.f54998a.e(aVar.e(), aVar.g(), null, aVar.d(), aVar.f(), 3, 0, aVar.a(), aVar.c(), aVar.b(), new Function1() { // from class: com.transsion.shorttv.subtitle.manager.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ShortTvVideoSubtitleManagerImp.o(this.f53093a, function1, ((Boolean) obj).booleanValue());
            }
        });
    }

    static /* synthetic */ void n(ShortTvVideoSubtitleManagerImp shortTvVideoSubtitleManagerImp, ts.a aVar, Function1 function1, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            function1 = null;
        }
        shortTvVideoSubtitleManagerImp.m(aVar, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit o(ShortTvVideoSubtitleManagerImp shortTvVideoSubtitleManagerImp, Function1 function1, boolean z10) {
        k.d(shortTvVideoSubtitleManagerImp.f53086d, null, null, new ShortTvVideoSubtitleManagerImp$checkDownloadSubtitle$1$1(function1, z10, shortTvVideoSubtitleManagerImp, null), 3, null);
        return Unit.f67061a;
    }

    private final qs.d p() {
        return (qs.d) this.f53087e.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String q() {
        return h.f53653a.e().getString("k_language_short_name", null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final qs.d r() {
        rs.a aVarC = lr.c.f69031a.c();
        if (aVarC != null) {
            return aVarC.b();
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.transsion.shorttv.subtitle.manager.b
    public Object a(String str, Continuation continuation) throws Throwable {
        ShortTvVideoSubtitleManagerImp$getSubtitleList$1 shortTvVideoSubtitleManagerImp$getSubtitleList$1;
        List list;
        if (continuation instanceof ShortTvVideoSubtitleManagerImp$getSubtitleList$1) {
            shortTvVideoSubtitleManagerImp$getSubtitleList$1 = (ShortTvVideoSubtitleManagerImp$getSubtitleList$1) continuation;
            int i11 = shortTvVideoSubtitleManagerImp$getSubtitleList$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                shortTvVideoSubtitleManagerImp$getSubtitleList$1.label = i11 - Integer.MIN_VALUE;
            } else {
                shortTvVideoSubtitleManagerImp$getSubtitleList$1 = new ShortTvVideoSubtitleManagerImp$getSubtitleList$1(this, continuation);
            }
        } else {
            shortTvVideoSubtitleManagerImp$getSubtitleList$1 = new ShortTvVideoSubtitleManagerImp$getSubtitleList$1(this, continuation);
        }
        Object obj = shortTvVideoSubtitleManagerImp$getSubtitleList$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = shortTvVideoSubtitleManagerImp$getSubtitleList$1.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            ArrayList arrayList = new ArrayList();
            SubtitleDownloadManager subtitleDownloadManager = SubtitleDownloadManager.f54998a;
            shortTvVideoSubtitleManagerImp$getSubtitleList$1.L$0 = arrayList;
            shortTvVideoSubtitleManagerImp$getSubtitleList$1.label = 1;
            Object objJ = subtitleDownloadManager.j(str, shortTvVideoSubtitleManagerImp$getSubtitleList$1);
            if (objJ == objF) {
                return objF;
            }
            obj = objJ;
            list = arrayList;
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            list = (List) shortTvVideoSubtitleManagerImp$getSubtitleList$1.L$0;
            ResultKt.b(obj);
        }
        List list2 = (List) obj;
        if (list2 != null) {
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                list.add(new ts.b((SubtitleDownloadTable) it.next()));
            }
        }
        return list;
    }

    @Override // com.transsion.shorttv.subtitle.manager.b
    public void b(com.transsion.subtitle_download.a listener) {
        Intrinsics.h(listener, "listener");
        SubtitleDownloadManager.f54998a.b(listener);
    }

    @Override // com.transsion.shorttv.subtitle.manager.b
    public void c(com.transsion.subtitle_download.a listener) {
        Intrinsics.h(listener, "listener");
        SubtitleDownloadManager.f54998a.s(listener);
    }

    @Override // com.transsion.shorttv.subtitle.manager.b
    public void d(ts.b bean) {
        Intrinsics.h(bean, "bean");
        SubtitleDownloadManager.f54998a.d(bean.a());
    }

    @Override // com.transsion.shorttv.subtitle.manager.b
    public void e(vs.a listener) {
        Intrinsics.h(listener, "listener");
        this.f53084b.add(listener);
    }

    @Override // com.transsion.shorttv.subtitle.manager.b
    public void f(vs.a listener) {
        Intrinsics.h(listener, "listener");
        this.f53084b.remove(listener);
    }

    @Override // com.transsion.shorttv.subtitle.manager.b
    public void g(ts.a bean, Function1 function1) {
        Intrinsics.h(bean, "bean");
        m(bean, function1);
    }

    @Override // com.transsion.shorttv.subtitle.manager.b
    public void init() {
        SubtitleAppType subtitleAppType = SubtitleAppType.NOVEL;
        if (!Intrinsics.c("mb", subtitleAppType.getValue())) {
            subtitleAppType = SubtitleAppType.MB;
        }
        SubtitleDownloadManager subtitleDownloadManager = SubtitleDownloadManager.f54998a;
        subtitleDownloadManager.k(subtitleAppType);
        subtitleDownloadManager.l(new Function0() { // from class: com.transsion.shorttv.subtitle.manager.d
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ShortTvVideoSubtitleManagerImp.q();
            }
        });
        qs.d dVarP = p();
        if (dVarP != null) {
            dVarP.j(this.f53088f);
        }
    }
}
