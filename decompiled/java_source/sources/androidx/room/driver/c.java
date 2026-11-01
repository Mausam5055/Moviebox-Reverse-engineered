package androidx.room.driver;

import a4.e;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class c implements z3.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e f14662a;

    public c(e openHelper) {
        Intrinsics.h(openHelper, "openHelper");
        this.f14662a = openHelper;
    }

    public final e a() {
        return this.f14662a;
    }

    @Override // z3.c
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public a open(String fileName) {
        Intrinsics.h(fileName, "fileName");
        return new a(this.f14662a.getWritableDatabase());
    }
}
