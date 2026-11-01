package y8;

import android.content.Context;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
import z8.u;

/* JADX INFO: loaded from: classes4.dex */
public final class i implements u8.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final uz.a f78944a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final uz.a f78945b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final uz.a f78946c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final uz.a f78947d;

    public i(uz.a aVar, uz.a aVar2, uz.a aVar3, uz.a aVar4) {
        this.f78944a = aVar;
        this.f78945b = aVar2;
        this.f78946c = aVar3;
        this.f78947d = aVar4;
    }

    public static i a(uz.a aVar, uz.a aVar2, uz.a aVar3, uz.a aVar4) {
        return new i(aVar, aVar2, aVar3, aVar4);
    }

    public static u c(Context context, a9.d dVar, SchedulerConfig schedulerConfig, c9.a aVar) {
        return (u) u8.d.d(h.a(context, dVar, schedulerConfig, aVar));
    }

    @Override // uz.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public u get() {
        return c((Context) this.f78944a.get(), (a9.d) this.f78945b.get(), (SchedulerConfig) this.f78946c.get(), (c9.a) this.f78947d.get());
    }
}
