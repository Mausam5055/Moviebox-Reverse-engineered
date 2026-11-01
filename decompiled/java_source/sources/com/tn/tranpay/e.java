package com.tn.tranpay;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f41537c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static e f41538d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f41539a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f41540b;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(e theme) {
            Intrinsics.h(theme, "theme");
            e.f41538d = theme;
        }

        public final e b() {
            return e.f41538d;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        DefaultConstructorMarker defaultConstructorMarker = null;
        f41537c = new a(defaultConstructorMarker);
        f41538d = new e(false, 0 == true ? 1 : 0, 3, defaultConstructorMarker);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public e() {
        this(false, 0 == true ? 1 : 0, 3, null);
    }

    public e(boolean z10, int i11) {
        this.f41539a = z10;
        this.f41540b = i11;
    }

    public /* synthetic */ e(boolean z10, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? false : z10, (i12 & 2) != 0 ? -14696961 : i11);
    }

    public final boolean c() {
        return this.f41539a;
    }

    public final int d() {
        return this.f41540b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.f41539a == eVar.f41539a && this.f41540b == eVar.f41540b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    public int hashCode() {
        boolean z10 = this.f41539a;
        ?? r11 = z10;
        if (z10) {
            r11 = 1;
        }
        return (r11 * 31) + this.f41540b;
    }

    public String toString() {
        return "TranPayTheme(showLoadingWhenLaunched=" + this.f41539a + ", tintColor=" + this.f41540b + ")";
    }
}
