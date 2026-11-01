package androidx.compose.material.ripple;

import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.w1;
import androidx.core.view.ViewCompat;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
final class k extends RippleDrawable {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f3507e = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f3508a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private u1 f3509b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Integer f3510c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f3511d;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final b f3512a = new b();

        private b() {
        }

        public final void a(RippleDrawable rippleDrawable, int i11) {
            rippleDrawable.setRadius(i11);
        }
    }

    public k(boolean z10) {
        super(ColorStateList.valueOf(ViewCompat.MEASURED_STATE_MASK), null, z10 ? new ColorDrawable(-1) : null);
        this.f3508a = z10;
    }

    private final long a(long j11, float f11) {
        if (Build.VERSION.SDK_INT < 28) {
            f11 *= 2;
        }
        return u1.k(j11, RangesKt.h(f11, 1.0f), 0.0f, 0.0f, 0.0f, 14, null);
    }

    public final void b(long j11, float f11) {
        long jA = a(j11, f11);
        u1 u1Var = this.f3509b;
        if (u1Var == null ? false : u1.m(u1Var.u(), jA)) {
            return;
        }
        this.f3509b = u1.g(jA);
        setColor(ColorStateList.valueOf(w1.j(jA)));
    }

    public final void c(int i11) {
        Integer num = this.f3510c;
        if (num != null && num.intValue() == i11) {
            return;
        }
        this.f3510c = Integer.valueOf(i11);
        b.f3512a.a(this, i11);
    }

    @Override // android.graphics.drawable.RippleDrawable, android.graphics.drawable.Drawable
    public Rect getDirtyBounds() {
        if (!this.f3508a) {
            this.f3511d = true;
        }
        Rect dirtyBounds = super.getDirtyBounds();
        this.f3511d = false;
        return dirtyBounds;
    }

    @Override // android.graphics.drawable.RippleDrawable, android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
    public boolean isProjected() {
        return this.f3511d;
    }
}
