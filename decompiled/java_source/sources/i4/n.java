package i4;

import android.content.Context;
import android.os.Build;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f64963a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final g f64964b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c f64965c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final g f64966d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final g f64967e;

    public n(Context context, j4.c taskExecutor, g batteryChargingTracker, c batteryNotLowTracker, g gVar, g storageNotLowTracker) {
        Intrinsics.h(context, "context");
        Intrinsics.h(taskExecutor, "taskExecutor");
        Intrinsics.h(batteryChargingTracker, "batteryChargingTracker");
        Intrinsics.h(batteryNotLowTracker, "batteryNotLowTracker");
        Intrinsics.h(storageNotLowTracker, "storageNotLowTracker");
        this.f64963a = context;
        this.f64964b = batteryChargingTracker;
        this.f64965c = batteryNotLowTracker;
        this.f64966d = gVar;
        this.f64967e = storageNotLowTracker;
    }

    public /* synthetic */ n(Context context, j4.c cVar, g gVar, c cVar2, g gVar2, g gVar3, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        g aVar;
        c cVar3;
        g gVar4;
        g lVar;
        g gVarA;
        if ((i11 & 4) != 0) {
            Context applicationContext = context.getApplicationContext();
            Intrinsics.g(applicationContext, "getApplicationContext(...)");
            aVar = new a(applicationContext, cVar);
        } else {
            aVar = gVar;
        }
        if ((i11 & 8) != 0) {
            Context applicationContext2 = context.getApplicationContext();
            Intrinsics.g(applicationContext2, "getApplicationContext(...)");
            cVar3 = new c(applicationContext2, cVar);
        } else {
            cVar3 = cVar2;
        }
        if ((i11 & 16) != 0) {
            if (Build.VERSION.SDK_INT < 28) {
                Context applicationContext3 = context.getApplicationContext();
                Intrinsics.g(applicationContext3, "getApplicationContext(...)");
                gVarA = i.a(applicationContext3, cVar);
            } else {
                gVarA = null;
            }
            gVar4 = gVarA;
        } else {
            gVar4 = gVar2;
        }
        if ((i11 & 32) != 0) {
            Context applicationContext4 = context.getApplicationContext();
            Intrinsics.g(applicationContext4, "getApplicationContext(...)");
            lVar = new l(applicationContext4, cVar);
        } else {
            lVar = gVar3;
        }
        this(context, cVar, aVar, cVar3, gVar4, lVar);
    }

    public final g a() {
        return this.f64964b;
    }

    public final c b() {
        return this.f64965c;
    }

    public final Context c() {
        return this.f64963a;
    }

    public final g d() {
        return this.f64966d;
    }

    public final g e() {
        return this.f64967e;
    }
}
