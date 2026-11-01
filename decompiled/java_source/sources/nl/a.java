package nl;

import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.widget.ImageView;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes6.dex */
public final class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final C0851a f70479c = new C0851a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f70480d = 8;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ImageView f70481a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final View f70482b;

    /* JADX INFO: renamed from: nl.a$a, reason: collision with other inner class name */
    public static final class C0851a {
        private C0851a() {
        }

        public /* synthetic */ C0851a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public a(ImageView imageView, View view) {
        this.f70481a = imageView;
        this.f70482b = view;
    }

    private final int b(int i11, float f11) {
        return (i11 & 16777215) | (((int) (RangesKt.l(f11, 0.0f, 1.0f) * 255)) << 24);
    }

    public final void a(Integer num) {
        View view = this.f70482b;
        if (view == null || num == null) {
            return;
        }
        view.setBackground(il.a.b(new int[]{num.intValue(), num.intValue(), b(num.intValue(), 0.3f)}, GradientDrawable.Orientation.LEFT_RIGHT));
    }
}
