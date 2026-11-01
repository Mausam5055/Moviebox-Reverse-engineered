package com.transsion.shorttv.viewmodel;

import android.app.Application;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import com.blankj.utilcode.util.Utils;
import com.transsion.shorttv.bean.ShortTVFavInfo;
import com.transsion.shorttv.bean.Subject;
import com.transsion.shorttv.db.ShortTvAdUnlockDao;
import com.transsion.shorttv.db.ShortTvDatabase;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
public final class ShortTvDownloadViewModel extends t0 {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final a f53663k = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f53664a = LazyKt.b(new Function0() { // from class: com.transsion.shorttv.viewmodel.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return ShortTvDownloadViewModel.u();
        }
    });

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f53665b = LazyKt.b(new Function0() { // from class: com.transsion.shorttv.viewmodel.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return ShortTvDownloadViewModel.f(this.f53712a);
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b0 f53666c = new b0();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b0 f53667d = new b0();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final b0 f53668e = new b0();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final b0 f53669f = new b0();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final b0 f53670g = new b0();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final b0 f53671h = new b0();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final b0 f53672i = new b0();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final b0 f53673j = new b0();

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ShortTvAdUnlockDao f(ShortTvDownloadViewModel shortTvDownloadViewModel) {
        Object objM454constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            ShortTvDatabase.Companion companion2 = ShortTvDatabase.INSTANCE;
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            objM454constructorimpl = Result.m454constructorimpl(companion2.b(applicationA).j0());
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            lg.a.C0828a.l(lg.a.f68839a, "ShortTvDownload", "adUnlockDao init failed: " + thM457exceptionOrNullimpl, false, 4, null);
        }
        if (Result.m460isFailureimpl(objM454constructorimpl)) {
            objM454constructorimpl = null;
        }
        return (ShortTvAdUnlockDao) objM454constructorimpl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ShortTvAdUnlockDao h() {
        return (ShortTvAdUnlockDao) this.f53665b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final os.a k() {
        return (os.a) this.f53664a.getValue();
    }

    public static /* synthetic */ void o(ShortTvDownloadViewModel shortTvDownloadViewModel, String str, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        shortTvDownloadViewModel.n(str, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final os.a u() {
        return (os.a) zg.c.f79414e.a().h(os.a.class);
    }

    public final void g(Subject subject) {
        ShortTVFavInfo shortTVFavInfo;
        if (subject == null || (shortTVFavInfo = subject.getShortTVFavInfo()) == null) {
            return;
        }
        kotlinx.coroutines.k.d(u0.a(this), null, null, new ShortTvDownloadViewModel$favorite$1(subject, shortTVFavInfo.getHasFavorite(), this, shortTVFavInfo, null), 3, null);
    }

    public final void i(String subjectId, int i11, int i12) {
        Intrinsics.h(subjectId, "subjectId");
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new ShortTvDownloadViewModel$getEpisodeList$1(this, subjectId, i11, i12, null), 2, null);
    }

    public final b0 j() {
        return this.f53673j;
    }

    public final b0 l() {
        return this.f53671h;
    }

    public final b0 m() {
        return this.f53670g;
    }

    public final void n(String subjectId, boolean z10) {
        Intrinsics.h(subjectId, "subjectId");
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new ShortTvDownloadViewModel$getShortTvInfo$1(subjectId, this, z10, null), 2, null);
    }

    public final b0 p() {
        return this.f53672i;
    }

    public final b0 q() {
        return this.f53666c;
    }

    public final b0 r() {
        return this.f53667d;
    }

    public final void s(int i11) {
        Subject subject = (Subject) this.f53672i.f();
        if (subject != null) {
            subject.setPaid(i11);
        }
        this.f53672i.n(subject);
    }

    public final void t(String subjectId) {
        Set adUnlockedEps;
        Intrinsics.h(subjectId, "subjectId");
        lg.a.C0828a c0828a = lg.a.f68839a;
        Subject subject = (Subject) this.f53672i.f();
        lg.a.C0828a.r(c0828a, "ShortTvDownload", new String[]{"will saveAdUnlockedEps, eps: " + (subject != null ? subject.getAdUnlockedEps() : null)}, false, 4, null);
        Subject subject2 = (Subject) this.f53672i.f();
        if (subject2 == null || (adUnlockedEps = subject2.getAdUnlockedEps()) == null || adUnlockedEps.isEmpty()) {
            return;
        }
        kotlinx.coroutines.k.d(u0.a(this), null, null, new ShortTvDownloadViewModel$saveAdUnlockedEps$1(subjectId, adUnlockedEps, this, null), 3, null);
    }

    public final void v(js.d item) {
        Intrinsics.h(item, "item");
        Map linkedHashMap = (Map) this.f53666c.f();
        if (linkedHashMap == null) {
            linkedHashMap = new LinkedHashMap();
        }
        if (item.d()) {
            linkedHashMap.remove(Integer.valueOf(item.b()));
        } else {
            linkedHashMap.put(Integer.valueOf(item.b()), item);
        }
        this.f53666c.q(linkedHashMap);
    }

    public final void w(String str, List list) {
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            return;
        }
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new ShortTvDownloadViewModel$startDownloadResource$1(list, this, str, null), 2, null);
    }
}
