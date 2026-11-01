package f7;

import android.graphics.Color;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class f {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f62357d = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f62358a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f62359b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float f62360c;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final f a(String title) {
            Intrinsics.h(title, "title");
            return new f(title, Color.parseColor("#92969E"), 14.0f);
        }

        public final f b(String title) {
            Intrinsics.h(title, "title");
            return new f(title, Color.parseColor("#191F2B"), 16.0f);
        }
    }

    public f(String text, int i11, float f11) {
        Intrinsics.h(text, "text");
        this.f62358a = text;
        this.f62359b = i11;
        this.f62360c = f11;
    }

    public final int a() {
        return this.f62359b;
    }

    public final String b() {
        return this.f62358a;
    }

    public final float c() {
        return this.f62360c;
    }
}
