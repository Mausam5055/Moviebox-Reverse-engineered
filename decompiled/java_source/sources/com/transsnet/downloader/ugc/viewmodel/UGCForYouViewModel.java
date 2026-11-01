package com.transsnet.downloader.ugc.viewmodel;

import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.k;

/* JADX INFO: loaded from: classes7.dex */
public final class UGCForYouViewModel extends t0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f59879c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f59877a = UGCForYouViewModel.class.getSimpleName();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f59878b = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.ugc.viewmodel.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return UGCForYouViewModel.j();
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b0 f59880d = new b0();

    /* JADX INFO: Access modifiers changed from: private */
    public final sy.a f() {
        return (sy.a) this.f59878b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final sy.a j() {
        return (sy.a) zg.c.f79414e.a().h(sy.a.class);
    }

    public final void g(boolean z10) {
        k.d(u0.a(this), null, null, new UGCForYouViewModel$getUGCDownloadForYouList$1(z10, this, null), 3, null);
    }

    public final b0 h() {
        return this.f59880d;
    }

    public final String i() {
        return this.f59879c;
    }

    public final void k(String str) {
        this.f59879c = str;
    }
}
