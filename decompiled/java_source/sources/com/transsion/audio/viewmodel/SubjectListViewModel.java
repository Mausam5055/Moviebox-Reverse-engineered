package com.transsion.audio.viewmodel;

import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;

/* JADX INFO: loaded from: classes5.dex */
public final class SubjectListViewModel extends t0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f42971c = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f42972a = LazyKt.b(new Function0() { // from class: com.transsion.audio.viewmodel.f
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return SubjectListViewModel.j();
        }
    });

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f42973b = LazyKt.b(new Function0() { // from class: com.transsion.audio.viewmodel.g
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return SubjectListViewModel.e();
        }
    });

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 e() {
        return new b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final qy.a i() {
        return (qy.a) this.f42972a.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final qy.a j() {
        return (qy.a) zg.c.f79414e.a().h(qy.a.class);
    }

    public final b0 f() {
        return (b0) this.f42973b.getValue();
    }

    public final void g(boolean z10, String str, String nextPage, int i11, int i12, int i13, int i14) {
        Intrinsics.h(nextPage, "nextPage");
        k.d(u0.a(this), null, null, new SubjectListViewModel$getDownloadList$1(this, str, nextPage, i11, i12, i13, i14, z10, null), 3, null);
    }
}
