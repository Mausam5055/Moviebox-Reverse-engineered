package f7;

import android.graphics.Color;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class e {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f62352e = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f62353a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f62354b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float f62355c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Function0 f62356d;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final e a(String title, Function0 function0) {
            Intrinsics.h(title, "title");
            return new e(title, Color.parseColor("#FF007AFF"), 16.0f, function0);
        }
    }

    public e(String title, int i11, float f11, Function0 function0) {
        Intrinsics.h(title, "title");
        this.f62353a = title;
        this.f62354b = i11;
        this.f62355c = f11;
        this.f62356d = function0;
    }

    public final Function0 a() {
        return this.f62356d;
    }

    public final int b() {
        return this.f62354b;
    }

    public final float c() {
        return this.f62355c;
    }

    public final String d() {
        return this.f62353a;
    }

    public final void e(Function0 function0) {
        this.f62356d = function0;
    }
}
