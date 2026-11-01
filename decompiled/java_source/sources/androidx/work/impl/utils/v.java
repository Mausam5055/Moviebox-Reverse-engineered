package androidx.work.impl.utils;

import android.net.NetworkRequest;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class v {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f15995b = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f15996c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f15997a;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a() {
            return v.f15996c;
        }
    }

    static {
        String strI = androidx.work.t.i("NetworkRequestCompat");
        Intrinsics.g(strI, "tagWithPrefix(...)");
        f15996c = strI;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public v() {
        DefaultConstructorMarker defaultConstructorMarker = null;
        this(defaultConstructorMarker, 1, defaultConstructorMarker);
    }

    public v(Object obj) {
        this.f15997a = obj;
    }

    public /* synthetic */ v(Object obj, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : obj);
    }

    public final NetworkRequest b() {
        return (NetworkRequest) this.f15997a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof v) && Intrinsics.c(this.f15997a, ((v) obj).f15997a);
    }

    public int hashCode() {
        Object obj = this.f15997a;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public String toString() {
        return "NetworkRequestCompat(wrapped=" + this.f15997a + ')';
    }
}
