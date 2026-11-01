package yf;

import java.util.HashSet;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes5.dex */
public abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f79002a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f79003b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Runnable f79004c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile int f79005d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final HashSet f79006e;

    public d(boolean z10, String taskName, String dependsOn, Runnable runnable) {
        Intrinsics.h(taskName, "taskName");
        Intrinsics.h(dependsOn, "dependsOn");
        this.f79002a = z10;
        this.f79003b = taskName;
        this.f79004c = runnable;
        this.f79006e = new HashSet();
        for (String str : StringsKt.S0(dependsOn, new String[]{","}, false, 0, 6, null)) {
            if (!StringsKt.q0(str)) {
                this.f79006e.add(StringsKt.n1(str).toString());
            }
        }
        if (this.f79006e.contains(this.f79003b)) {
            throw new IllegalArgumentException("TheRouter::Task::The task cannot depend on himself : " + this.f79003b);
        }
        if (!this.f79006e.isEmpty() || Intrinsics.c(this.f79003b, "TheRouter_Initialization") || Intrinsics.c(this.f79003b, "TheRouter_Before_Initialization")) {
            return;
        }
        this.f79006e.add("TheRouter_Initialization");
    }

    public final boolean a() {
        return this.f79002a;
    }

    public final HashSet b() {
        return this.f79006e;
    }

    protected final int c() {
        return this.f79005d;
    }

    public final String d() {
        return this.f79003b;
    }

    public final boolean e() {
        return this.f79005d == 2;
    }

    public final boolean f() {
        return this.f79005d == 0;
    }

    public abstract void g();

    protected final void h(int i11) {
        this.f79005d = i11;
    }
}
