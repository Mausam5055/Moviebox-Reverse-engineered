package com.transsion.postdetail.viewmodel;

import android.util.Log;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.moviedetailapi.bean.Subject;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
public final class LocalVideoDetailViewModel extends t0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f50200a = "LocalVideoViewModel";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f50201b = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.viewmodel.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return LocalVideoDetailViewModel.k();
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private b0 f50202c = new b0();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b0 f50203d = new b0();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private b0 f50204e = new b0();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final b0 f50205f = new b0();

    private final qy.a j() {
        return (qy.a) this.f50201b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final qy.a k() {
        return (qy.a) zg.c.f79414e.a().h(qy.a.class);
    }

    public final void d(String str) {
        if (str == null || str.length() == 0) {
            this.f50205f.n(null);
        } else if (nh.m.f70474a.e()) {
            j().h(vg.a.f77324a.a(), str).f(sg.d.f75349a.c()).subscribe(new sg.a() { // from class: com.transsion.postdetail.viewmodel.LocalVideoDetailViewModel$fetchMovieData$1
                @Override // sg.a
                public void a(String str2, String str3) {
                    this.f50206d.g().n(null);
                    Log.e(this.f50206d.f50200a, "message:" + str3);
                }

                @Override // sg.a
                /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
                public void c(Subject subject) {
                    kotlinx.coroutines.k.d(u0.a(this.f50206d), null, null, new LocalVideoDetailViewModel$fetchMovieData$1$onSuccess$1(this.f50206d, subject, null), 3, null);
                }

                @Override // sg.a, io.reactivex.rxjava3.core.o
                public void onSubscribe(io.reactivex.rxjava3.disposables.c d11) {
                    Intrinsics.h(d11, "d");
                    super.onSubscribe(d11);
                }
            });
        } else {
            this.f50205f.n(null);
        }
    }

    public final b0 e() {
        return this.f50203d;
    }

    public final b0 f() {
        return this.f50204e;
    }

    public final b0 g() {
        return this.f50205f;
    }

    public final void h(DownloadBean downloadBean) {
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new LocalVideoDetailViewModel$getSeriesFromLocal$1(downloadBean, this, null), 2, null);
    }

    public final b0 i() {
        return this.f50202c;
    }
}
