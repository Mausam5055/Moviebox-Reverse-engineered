package com.transsion.play.detail.viewmodel;

import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import zg.c;

/* JADX INFO: loaded from: classes6.dex */
public final class PlayDetailViewModel extends t0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f47916a = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0() { // from class: com.transsion.play.detail.viewmodel.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return PlayDetailViewModel.h();
        }
    });

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b0 f47917b = new b0();

    /* JADX INFO: Access modifiers changed from: private */
    public final wn.a e() {
        return (wn.a) this.f47916a.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final wn.a h() {
        return (wn.a) c.f79414e.a().h(wn.a.class);
    }

    public final void f(String subjectId) {
        Intrinsics.h(subjectId, "subjectId");
        k.d(u0.a(this), null, null, new PlayDetailViewModel$getSubjectPostCount$1(this, subjectId, null), 3, null);
    }

    public final b0 g() {
        return this.f47917b;
    }
}
