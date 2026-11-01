package androidx.window.core;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
final class f extends SpecificationComputer {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f15302b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f15303c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final SpecificationComputer.VerificationMode f15304d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final e f15305e;

    public f(Object value, String tag, SpecificationComputer.VerificationMode verificationMode, e logger) {
        Intrinsics.h(value, "value");
        Intrinsics.h(tag, "tag");
        Intrinsics.h(verificationMode, "verificationMode");
        Intrinsics.h(logger, "logger");
        this.f15302b = value;
        this.f15303c = tag;
        this.f15304d = verificationMode;
        this.f15305e = logger;
    }

    @Override // androidx.window.core.SpecificationComputer
    public Object a() {
        return this.f15302b;
    }

    @Override // androidx.window.core.SpecificationComputer
    public SpecificationComputer c(String message, Function1 condition) {
        Intrinsics.h(message, "message");
        Intrinsics.h(condition, "condition");
        return ((Boolean) condition.invoke(this.f15302b)).booleanValue() ? this : new d(this.f15302b, this.f15303c, message, this.f15305e, this.f15304d);
    }
}
