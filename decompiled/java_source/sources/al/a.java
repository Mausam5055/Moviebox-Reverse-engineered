package al;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public abstract class a {

    /* JADX INFO: renamed from: al.a$a, reason: collision with other inner class name */
    public static final class C0010a extends ViewOutlineProvider {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ float f662a;

        C0010a(float f11) {
            this.f662a = f11;
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            Intrinsics.h(view, "view");
            Intrinsics.h(outline, "outline");
            outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), this.f662a);
        }
    }

    public static final void a(View view, float f11) {
        Intrinsics.h(view, "<this>");
        view.setOutlineProvider(new C0010a(f11));
        view.setClipToOutline(true);
    }
}
