package com.apm.insight.runtime;

import androidx.annotation.NonNull;
import com.apm.insight.CrashType;
import com.apm.insight.ICrashCallback;
import com.apm.insight.IOOMCallback;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<ICrashCallback> f19784a = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<ICrashCallback> f19785b = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<ICrashCallback> f19786c = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<ICrashCallback> f19787d = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<IOOMCallback> f19788e = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: com.apm.insight.runtime.c$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f19789a;

        static {
            int[] iArr = new int[CrashType.values().length];
            f19789a = iArr;
            try {
                iArr[CrashType.ALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19789a[CrashType.ANR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f19789a[CrashType.JAVA.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f19789a[CrashType.LAUNCH.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f19789a[CrashType.NATIVE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    @NonNull
    public final List<IOOMCallback> a() {
        return this.f19788e;
    }

    final void a(ICrashCallback iCrashCallback, CrashType crashType) {
        int i11 = AnonymousClass1.f19789a[crashType.ordinal()];
        if (i11 == 1) {
            this.f19784a.add(iCrashCallback);
            this.f19785b.add(iCrashCallback);
            this.f19786c.add(iCrashCallback);
            this.f19787d.add(iCrashCallback);
            return;
        }
        if (i11 == 2) {
            this.f19787d.add(iCrashCallback);
            return;
        }
        if (i11 == 3) {
            this.f19785b.add(iCrashCallback);
        } else if (i11 == 4) {
            this.f19784a.add(iCrashCallback);
        } else {
            if (i11 != 5) {
                return;
            }
            this.f19786c.add(iCrashCallback);
        }
    }

    final void a(IOOMCallback iOOMCallback) {
        this.f19788e.add(iOOMCallback);
    }

    @NonNull
    public final List<ICrashCallback> b() {
        return this.f19784a;
    }

    final void b(ICrashCallback iCrashCallback, CrashType crashType) {
        int i11 = AnonymousClass1.f19789a[crashType.ordinal()];
        if (i11 == 1) {
            this.f19784a.remove(iCrashCallback);
            this.f19785b.remove(iCrashCallback);
            this.f19786c.remove(iCrashCallback);
            this.f19787d.remove(iCrashCallback);
            return;
        }
        if (i11 == 2) {
            this.f19787d.remove(iCrashCallback);
            return;
        }
        if (i11 == 3) {
            this.f19785b.remove(iCrashCallback);
        } else if (i11 == 4) {
            this.f19784a.remove(iCrashCallback);
        } else {
            if (i11 != 5) {
                return;
            }
            this.f19786c.remove(iCrashCallback);
        }
    }

    final void b(IOOMCallback iOOMCallback) {
        this.f19788e.remove(iOOMCallback);
    }

    @NonNull
    public final List<ICrashCallback> c() {
        return this.f19785b;
    }

    @NonNull
    public final List<ICrashCallback> d() {
        return this.f19786c;
    }

    @NonNull
    public final List<ICrashCallback> e() {
        return this.f19787d;
    }
}
