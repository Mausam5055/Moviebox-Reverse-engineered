package com.transsion.search.viewmodel;

import android.app.Application;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import com.blankj.utilcode.util.Utils;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.video.VideoDetailPlayDao;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
public final class SearchWorkViewModel extends t0 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f52254e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f52250a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b0 f52251b = new b0();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List f52252c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f52253d = LazyKt.b(new Function0() { // from class: com.transsion.search.viewmodel.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return SearchWorkViewModel.n();
        }
    });

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f52255f = 50;

    /* JADX INFO: Access modifiers changed from: private */
    public final VideoDetailPlayDao j() {
        return (VideoDetailPlayDao) this.f52253d.getValue();
    }

    public static /* synthetic */ void l(SearchWorkViewModel searchWorkViewModel, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = false;
        }
        searchWorkViewModel.k(z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final VideoDetailPlayDao n() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).D1();
    }

    public final boolean g() {
        return this.f52250a;
    }

    public final b0 h() {
        return this.f52251b;
    }

    public final int i() {
        return this.f52254e;
    }

    public final void k(boolean z10) {
        k.d(u0.a(this), y0.b(), null, new SearchWorkViewModel$getVideoHistoryList$1(z10, this, null), 2, null);
    }

    public final void m(int i11) {
        this.f52254e = i11;
    }
}
