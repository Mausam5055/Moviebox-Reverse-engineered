package com.transsion.home.viewmodel;

import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import com.transsion.home.bean.RankAllData;
import com.transsion.moviedetailapi.bean.Subject;
import java.util.List;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
public final class RankAllViewModel extends t0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f45820a = new androidx.p009lifecycle.b0();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f45821b = new androidx.p009lifecycle.b0();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f45822c = 1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ol.d f45823d = (ol.d) zg.c.f79414e.a().h(ol.d.class);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f45824e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f45825f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f45826g;

    /* JADX INFO: Access modifiers changed from: private */
    public final void m(RankAllData rankAllData) {
        List<Subject> subjects;
        String ops = rankAllData != null ? rankAllData.getOps() : null;
        if (ops == null || ops.length() == 0 || rankAllData == null || (subjects = rankAllData.getSubjects()) == null) {
            return;
        }
        for (Subject subject : subjects) {
            String ops2 = subject.getOps();
            if (ops2 == null || ops2.length() == 0) {
                subject.setOps(ops);
            }
        }
    }

    private final void n(boolean z10) {
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new RankAllViewModel$startRequest$1(z10, this, null), 2, null);
    }

    public final androidx.p009lifecycle.b0 i() {
        return this.f45821b;
    }

    public final androidx.p009lifecycle.b0 j() {
        return this.f45820a;
    }

    public final void k(String str, int i11, String str2) {
        this.f45824e = str;
        this.f45825f = i11;
        this.f45826g = str2;
        this.f45822c = 1;
        n(false);
    }

    public final void l() {
        n(true);
    }
}
