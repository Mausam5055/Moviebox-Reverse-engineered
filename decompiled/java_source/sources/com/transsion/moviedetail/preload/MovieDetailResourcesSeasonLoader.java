package com.transsion.moviedetail.preload;

import androidx.p009lifecycle.b0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
public final class MovieDetailResourcesSeasonLoader extends qm.b {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f47281f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Lazy f47282g;

    public MovieDetailResourcesSeasonLoader(String subjectId) {
        Intrinsics.h(subjectId, "subjectId");
        this.f47281f = subjectId;
        this.f47282g = LazyKt.b(new Function0() { // from class: com.transsion.moviedetail.preload.e
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return MovieDetailResourcesSeasonLoader.o();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final qy.a m() {
        return (qy.a) this.f47282g.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final qy.a o() {
        return (qy.a) zg.c.f79414e.a().h(qy.a.class);
    }

    @Override // qm.b
    public void h(b0 b0Var) {
        j(k.d(o0.a(y0.b()), null, null, new MovieDetailResourcesSeasonLoader$loadDataFromService$1(this, null), 3, null));
    }

    public final String n() {
        return this.f47281f;
    }

    public final void p(String str) {
        Intrinsics.h(str, "<set-?>");
        this.f47281f = str;
    }
}
