package androidx.window.layout;

import android.app.Activity;
import android.graphics.Rect;
import androidx.window.extensions.layout.FoldingFeature;
import androidx.window.extensions.layout.WindowLayoutInfo;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final q f15350a = new q();

    private q() {
    }

    private final boolean c(Activity activity, androidx.window.core.b bVar) {
        Rect rectA = f0.f15338a.a(activity).a();
        if (bVar.e()) {
            return false;
        }
        if (bVar.d() != rectA.width() && bVar.a() != rectA.height()) {
            return false;
        }
        if (bVar.d() >= rectA.width() || bVar.a() >= rectA.height()) {
            return (bVar.d() == rectA.width() && bVar.a() == rectA.height()) ? false : true;
        }
        return false;
    }

    public final r a(Activity activity, FoldingFeature oemFeature) {
        HardwareFoldingFeature.Type typeA;
        r.c cVar;
        Intrinsics.h(activity, "activity");
        Intrinsics.h(oemFeature, "oemFeature");
        int type = oemFeature.getType();
        if (type == 1) {
            typeA = HardwareFoldingFeature.Type.INSTANCE.a();
        } else {
            if (type != 2) {
                return null;
            }
            typeA = HardwareFoldingFeature.Type.INSTANCE.b();
        }
        int state = oemFeature.getState();
        if (state == 1) {
            cVar = r.c.f15360c;
        } else {
            if (state != 2) {
                return null;
            }
            cVar = r.c.f15361d;
        }
        Rect bounds = oemFeature.getBounds();
        Intrinsics.g(bounds, "oemFeature.bounds");
        if (!c(activity, new androidx.window.core.b(bounds))) {
            return null;
        }
        Rect bounds2 = oemFeature.getBounds();
        Intrinsics.g(bounds2, "oemFeature.bounds");
        return new HardwareFoldingFeature(new androidx.window.core.b(bounds2), typeA, cVar);
    }

    public final a0 b(Activity activity, WindowLayoutInfo info) {
        r rVarA;
        Intrinsics.h(activity, "activity");
        Intrinsics.h(info, "info");
        List<FoldingFeature> displayFeatures = info.getDisplayFeatures();
        Intrinsics.g(displayFeatures, "info.displayFeatures");
        ArrayList arrayList = new ArrayList();
        for (FoldingFeature feature : displayFeatures) {
            if (feature instanceof FoldingFeature) {
                q qVar = f15350a;
                Intrinsics.g(feature, "feature");
                rVarA = qVar.a(activity, feature);
            } else {
                rVarA = null;
            }
            if (rVarA != null) {
                arrayList.add(rVarA);
            }
        }
        return new a0(arrayList);
    }
}
