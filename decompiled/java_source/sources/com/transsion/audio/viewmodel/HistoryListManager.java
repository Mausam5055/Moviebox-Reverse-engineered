package com.transsion.audio.viewmodel;

import android.app.Application;
import androidx.p009lifecycle.b0;
import com.blankj.utilcode.util.Utils;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.audio.AudioBean;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.j;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
public final class HistoryListManager {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f42961e = new a(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Lazy f42962f = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() { // from class: com.transsion.audio.viewmodel.e
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return HistoryListManager.x();
        }
    });

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f42963g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f42964a = LazyKt.b(new Function0() { // from class: com.transsion.audio.viewmodel.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return HistoryListManager.m();
        }
    });

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f42965b = LazyKt.b(new Function0() { // from class: com.transsion.audio.viewmodel.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return HistoryListManager.y();
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Lazy f42966c = LazyKt.b(new Function0() { // from class: com.transsion.audio.viewmodel.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return HistoryListManager.l();
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f42967d = LazyKt.b(new Function0() { // from class: com.transsion.audio.viewmodel.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return HistoryListManager.z();
        }
    });

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean a() {
            return HistoryListManager.f42963g;
        }

        public final HistoryListManager b() {
            return (HistoryListManager) HistoryListManager.f42962f.getValue();
        }

        public final void c(boolean z10) {
            HistoryListManager.f42963g = z10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 l() {
        return new b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final jj.a m() {
        Application applicationA = Utils.a();
        if (applicationA != null) {
            return AppDatabase.INSTANCE.b(applicationA).o1();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final jj.a q() {
        return (jj.a) this.f42964a.getValue();
    }

    public static /* synthetic */ void t(HistoryListManager historyListManager, String str, String str2, int i11, int i12, Object obj) {
        if ((i12 & 4) != 0) {
            i11 = 10;
        }
        historyListManager.s(str, str2, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final cj.a u() {
        return (cj.a) this.f42965b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final HistoryListManager x() {
        return new HistoryListManager();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final cj.a y() {
        return (cj.a) zg.c.f79414e.a().h(cj.a.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 z() {
        return new b0();
    }

    public final void k(AudioBean audioBean) {
        Intrinsics.h(audioBean, "audioBean");
        lg.a.C0828a.g(lg.a.f68839a, "audio insert name " + audioBean.getTitle(), false, 2, null);
        j.b(null, new HistoryListManager$addToList$1(audioBean, this, null), 1, null);
    }

    public final void n() {
        k.d(o0.a(y0.b()), null, null, new HistoryListManager$deleteAll$1(this, null), 3, null);
    }

    public final void o(AudioBean audioItem) {
        Intrinsics.h(audioItem, "audioItem");
        k.d(o0.a(y0.b()), null, null, new HistoryListManager$deleteItem$1(this, audioItem, null), 3, null);
    }

    public final b0 p() {
        return (b0) this.f42966c.getValue();
    }

    public final void r() {
        k.d(o0.a(y0.c()), null, null, new HistoryListManager$getAudioList$1(this, null), 3, null);
    }

    public final void s(String subjectId, String postId, int i11) {
        Intrinsics.h(subjectId, "subjectId");
        Intrinsics.h(postId, "postId");
        k.d(o0.a(y0.b()), null, null, new HistoryListManager$getResourcePosition$1(this, subjectId, postId, i11, null), 3, null);
    }

    public final b0 v() {
        return (b0) this.f42967d.getValue();
    }

    public final void w(AudioBean audioBean) {
        Intrinsics.h(audioBean, "audioBean");
        k.d(o0.a(y0.b()), null, null, new HistoryListManager$insert$1(audioBean, this, null), 3, null);
    }
}
