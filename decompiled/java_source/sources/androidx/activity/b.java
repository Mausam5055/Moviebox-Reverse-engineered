package androidx.activity;

import android.window.BackEvent;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f869e = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f870a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f871b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float f872c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f873d;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public b(float f11, float f12, float f13, int i11) {
        this.f870a = f11;
        this.f871b = f12;
        this.f872c = f13;
        this.f873d = i11;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public b(BackEvent backEvent) {
        Intrinsics.h(backEvent, "backEvent");
        androidx.activity.a aVar = androidx.activity.a.f868a;
        this(aVar.c(backEvent), aVar.d(backEvent), aVar.a(backEvent), aVar.b(backEvent));
    }

    public final float a() {
        return this.f872c;
    }

    public final int b() {
        return this.f873d;
    }

    public final float c() {
        return this.f871b;
    }

    public String toString() {
        return "BackEventCompat{touchX=" + this.f870a + ", touchY=" + this.f871b + ", progress=" + this.f872c + ", swipeEdge=" + this.f873d + '}';
    }
}
