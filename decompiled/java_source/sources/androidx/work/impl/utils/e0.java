package androidx.work.impl.utils;

import android.content.Context;
import androidx.work.ListenableFutureKt;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.foreground.SystemForegroundDispatcher;
import androidx.work.impl.model.j0;
import androidx.work.impl.model.k0;
import androidx.work.impl.model.s1;
import java.util.UUID;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
public class e0 implements androidx.work.j {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f15956d = androidx.work.t.i("WMFgUpdater");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j4.c f15957a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final androidx.work.impl.foreground.a f15958b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final k0 f15959c;

    public e0(WorkDatabase workDatabase, androidx.work.impl.foreground.a aVar, j4.c cVar) {
        this.f15958b = aVar;
        this.f15957a = cVar;
        this.f15959c = workDatabase.l0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Void c(UUID uuid, androidx.work.i iVar, Context context) {
        String string = uuid.toString();
        j0 j0VarJ = this.f15959c.j(string);
        if (j0VarJ == null || j0VarJ.f15765b.isFinished()) {
            throw new IllegalStateException("Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result.");
        }
        this.f15958b.a(string, iVar);
        context.startService(SystemForegroundDispatcher.d(context, s1.a(j0VarJ), iVar));
        return null;
    }

    @Override // androidx.work.j
    public com.google.common.util.concurrent.r a(final Context context, final UUID uuid, final androidx.work.i iVar) {
        return ListenableFutureKt.f(this.f15957a.c(), "setForegroundAsync", new Function0() { // from class: androidx.work.impl.utils.d0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f15952a.c(uuid, iVar, context);
            }
        });
    }
}
