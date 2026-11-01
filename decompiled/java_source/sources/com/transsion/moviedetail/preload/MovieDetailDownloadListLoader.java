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
public final class MovieDetailDownloadListLoader extends qm.b {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f47278f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Lazy f47279g;

    public MovieDetailDownloadListLoader(String subjectId) {
        Intrinsics.h(subjectId, "subjectId");
        this.f47278f = subjectId;
        this.f47279g = LazyKt.b(new Function0() { // from class: com.transsion.moviedetail.preload.c
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return MovieDetailDownloadListLoader.o();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final qy.a m() {
        return (qy.a) this.f47279g.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final qy.a o() {
        return (qy.a) zg.c.f79414e.a().h(qy.a.class);
    }

    @Override // qm.b
    public void h(b0 b0Var) {
        j(k.d(o0.a(y0.b()), null, null, new MovieDetailDownloadListLoader$loadDataFromService$1(this, null), 3, null));
    }

    public final String n() {
        return this.f47278f;
    }

    public final void p(String str) {
        Intrinsics.h(str, "<set-?>");
        this.f47278f = str;
    }
}
