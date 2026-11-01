package com.transsion.moviedetail.preload;

import androidx.p009lifecycle.b0;
import com.transsion.moviedetailapi.bean.Subject;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Pair;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class b extends qm.b {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f47284f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Integer f47285g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f47286h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Lazy f47287i;

    public static final class a extends sg.a {
        a() {
        }

        @Override // sg.a
        public void a(String str, String str2) {
            b.this.c(new Pair(str, null));
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(Subject subject) {
            if (subject != null) {
                subject.setRefreshViewOnly(b.this.m());
            }
            b.this.d(new Pair("0", subject));
        }

        @Override // sg.a, io.reactivex.rxjava3.core.o
        public void onSubscribe(io.reactivex.rxjava3.disposables.c d11) {
            Intrinsics.h(d11, "d");
            super.onSubscribe(d11);
            b.this.i(d11);
        }
    }

    public b(String subjectId, Integer num, boolean z10) {
        Intrinsics.h(subjectId, "subjectId");
        this.f47284f = subjectId;
        this.f47285g = num;
        this.f47286h = z10;
        this.f47287i = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0() { // from class: com.transsion.moviedetail.preload.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.n();
            }
        });
    }

    public /* synthetic */ b(String str, Integer num, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i11 & 2) != 0 ? null : num, (i11 & 4) != 0 ? false : z10);
    }

    private final fn.a l() {
        return (fn.a) this.f47287i.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final fn.a n() {
        return (fn.a) zg.c.f79414e.a().h(fn.a.class);
    }

    @Override // qm.b
    public void h(b0 b0Var) {
        l().g(vg.a.f77324a.a(), this.f47284f, this.f47285g).f(sg.d.f75349a.c()).subscribe(new a());
    }

    public final boolean m() {
        return this.f47286h;
    }

    public final void o(boolean z10) {
        this.f47286h = z10;
    }

    public final void p(Integer num) {
        this.f47285g = num;
    }

    public final void q(String str) {
        Intrinsics.h(str, "<set-?>");
        this.f47284f = str;
    }
}
