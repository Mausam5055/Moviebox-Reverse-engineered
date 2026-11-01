package com.transsion.shorttv_pugc.viewmodel;

import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import com.transsion.shorttv_pugc.bean.ShortTVFavInfo;
import com.transsion.shorttv_pugc.bean.Subject;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;

/* JADX INFO: loaded from: classes6.dex */
public final class ShortTvDownloadViewModel extends t0 {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final a f54455k = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f54456a = LazyKt.b(new Function0() { // from class: com.transsion.shorttv_pugc.viewmodel.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return ShortTvDownloadViewModel.p();
        }
    });

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b0 f54457b = new b0();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b0 f54458c = new b0();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b0 f54459d = new b0();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final b0 f54460e = new b0();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final b0 f54461f = new b0();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final b0 f54462g = new b0();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final b0 f54463h = new b0();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final b0 f54464i = new b0();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final b0 f54465j = new b0();

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final rt.a f() {
        return (rt.a) this.f54456a.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final rt.a p() {
        return (rt.a) zg.c.f79414e.a().h(rt.a.class);
    }

    public final void d(Subject subject) {
        ShortTVFavInfo shortTVFavInfo;
        if (subject == null || (shortTVFavInfo = subject.getShortTVFavInfo()) == null) {
            return;
        }
        k.d(u0.a(this), null, null, new ShortTvDownloadViewModel$favorite$1(subject, shortTVFavInfo.getHasFavorite(), this, shortTVFavInfo, null), 3, null);
    }

    public final b0 e() {
        return this.f54457b;
    }

    public final void g(String subjectId, int i11, int i12) {
        Intrinsics.h(subjectId, "subjectId");
    }

    public final b0 h() {
        return this.f54461f;
    }

    public final b0 i() {
        return this.f54464i;
    }

    public final b0 j() {
        return this.f54463h;
    }

    public final b0 k() {
        return this.f54465j;
    }

    public final b0 l() {
        return this.f54458c;
    }

    public final b0 m() {
        return this.f54459d;
    }

    public final b0 n() {
        return this.f54462g;
    }

    public final b0 o() {
        return this.f54460e;
    }

    public final void q(ot.c item) {
        Intrinsics.h(item, "item");
        Map linkedHashMap = (Map) this.f54458c.f();
        if (linkedHashMap == null) {
            linkedHashMap = new LinkedHashMap();
        }
        if (item.d()) {
            linkedHashMap.remove(Integer.valueOf(item.a()));
        } else {
            linkedHashMap.put(Integer.valueOf(item.a()), item);
        }
        this.f54458c.q(linkedHashMap);
    }
}
