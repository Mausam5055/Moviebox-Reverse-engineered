package androidx.window.core;

import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
final class d extends SpecificationComputer {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f15295b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f15296c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f15297d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final e f15298e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final SpecificationComputer.VerificationMode f15299f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final WindowStrictModeException f15300g;

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f15301a;

        static {
            int[] iArr = new int[SpecificationComputer.VerificationMode.values().length];
            iArr[SpecificationComputer.VerificationMode.STRICT.ordinal()] = 1;
            iArr[SpecificationComputer.VerificationMode.LOG.ordinal()] = 2;
            iArr[SpecificationComputer.VerificationMode.QUIET.ordinal()] = 3;
            f15301a = iArr;
        }
    }

    public d(Object value, String tag, String message, e logger, SpecificationComputer.VerificationMode verificationMode) {
        Intrinsics.h(value, "value");
        Intrinsics.h(tag, "tag");
        Intrinsics.h(message, "message");
        Intrinsics.h(logger, "logger");
        Intrinsics.h(verificationMode, "verificationMode");
        this.f15295b = value;
        this.f15296c = tag;
        this.f15297d = message;
        this.f15298e = logger;
        this.f15299f = verificationMode;
        WindowStrictModeException windowStrictModeException = new WindowStrictModeException(b(value, message));
        StackTraceElement[] stackTrace = windowStrictModeException.getStackTrace();
        Intrinsics.g(stackTrace, "stackTrace");
        Object[] array = ArraysKt.R(stackTrace, 2).toArray(new StackTraceElement[0]);
        if (array == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        }
        windowStrictModeException.setStackTrace((StackTraceElement[]) array);
        this.f15300g = windowStrictModeException;
    }

    @Override // androidx.window.core.SpecificationComputer
    public Object a() throws WindowStrictModeException {
        int i11 = a.f15301a[this.f15299f.ordinal()];
        if (i11 == 1) {
            throw this.f15300g;
        }
        if (i11 == 2) {
            this.f15298e.debug(this.f15296c, b(this.f15295b, this.f15297d));
            return null;
        }
        if (i11 == 3) {
            return null;
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override // androidx.window.core.SpecificationComputer
    public SpecificationComputer c(String message, Function1 condition) {
        Intrinsics.h(message, "message");
        Intrinsics.h(condition, "condition");
        return this;
    }
}
