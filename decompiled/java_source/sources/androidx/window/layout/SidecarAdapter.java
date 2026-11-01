package androidx.window.layout;

import android.graphics.Rect;
import androidx.window.core.SpecificationComputer;
import androidx.window.sidecar.SidecarDeviceState;
import androidx.window.sidecar.SidecarDisplayFeature;
import androidx.window.sidecar.SidecarWindowLayoutInfo;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class SidecarAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f15308b = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f15309c = SidecarAdapter.class.getSimpleName();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SpecificationComputer.VerificationMode f15310a;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a(SidecarDeviceState sidecarDeviceState) {
            Intrinsics.h(sidecarDeviceState, "sidecarDeviceState");
            try {
                try {
                    return sidecarDeviceState.posture;
                } catch (NoSuchFieldError unused) {
                    Object objInvoke = SidecarDeviceState.class.getMethod("getPosture", null).invoke(sidecarDeviceState, null);
                    if (objInvoke != null) {
                        return ((Integer) objInvoke).intValue();
                    }
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Int");
                }
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused2) {
                return 0;
            }
        }

        public final int b(SidecarDeviceState sidecarDeviceState) {
            Intrinsics.h(sidecarDeviceState, "sidecarDeviceState");
            int iA = a(sidecarDeviceState);
            if (iA < 0 || iA > 4) {
                return 0;
            }
            return iA;
        }

        public final List c(SidecarWindowLayoutInfo info) {
            Intrinsics.h(info, "info");
            try {
                try {
                    List list = info.displayFeatures;
                    return list == null ? CollectionsKt.l() : list;
                } catch (NoSuchFieldError unused) {
                    Object objInvoke = SidecarWindowLayoutInfo.class.getMethod("getDisplayFeatures", null).invoke(info, null);
                    if (objInvoke != null) {
                        return (List) objInvoke;
                    }
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.List<androidx.window.sidecar.SidecarDisplayFeature>");
                }
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused2) {
                return CollectionsKt.l();
            }
        }

        public final void d(SidecarDeviceState sidecarDeviceState, int i11) {
            Intrinsics.h(sidecarDeviceState, "sidecarDeviceState");
            try {
                try {
                    sidecarDeviceState.posture = i11;
                } catch (NoSuchFieldError unused) {
                    SidecarDeviceState.class.getMethod("setPosture", Integer.TYPE).invoke(sidecarDeviceState, Integer.valueOf(i11));
                }
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused2) {
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SidecarAdapter() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public SidecarAdapter(SpecificationComputer.VerificationMode verificationMode) {
        Intrinsics.h(verificationMode, "verificationMode");
        this.f15310a = verificationMode;
    }

    public /* synthetic */ SidecarAdapter(SpecificationComputer.VerificationMode verificationMode, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? SpecificationComputer.VerificationMode.QUIET : verificationMode);
    }

    private final boolean b(SidecarDisplayFeature sidecarDisplayFeature, SidecarDisplayFeature sidecarDisplayFeature2) {
        if (Intrinsics.c(sidecarDisplayFeature, sidecarDisplayFeature2)) {
            return true;
        }
        if (sidecarDisplayFeature == null || sidecarDisplayFeature2 == null || sidecarDisplayFeature.getType() != sidecarDisplayFeature2.getType()) {
            return false;
        }
        return Intrinsics.c(sidecarDisplayFeature.getRect(), sidecarDisplayFeature2.getRect());
    }

    private final boolean c(List list, List list2) {
        if (list == list2) {
            return true;
        }
        if (list == null || list2 == null || list.size() != list2.size()) {
            return false;
        }
        int size = list.size();
        int i11 = 0;
        while (i11 < size) {
            int i12 = i11 + 1;
            if (!b((SidecarDisplayFeature) list.get(i11), (SidecarDisplayFeature) list2.get(i11))) {
                return false;
            }
            i11 = i12;
        }
        return true;
    }

    public final boolean a(SidecarDeviceState sidecarDeviceState, SidecarDeviceState sidecarDeviceState2) {
        if (Intrinsics.c(sidecarDeviceState, sidecarDeviceState2)) {
            return true;
        }
        if (sidecarDeviceState == null || sidecarDeviceState2 == null) {
            return false;
        }
        a aVar = f15308b;
        return aVar.b(sidecarDeviceState) == aVar.b(sidecarDeviceState2);
    }

    public final boolean d(SidecarWindowLayoutInfo sidecarWindowLayoutInfo, SidecarWindowLayoutInfo sidecarWindowLayoutInfo2) {
        if (Intrinsics.c(sidecarWindowLayoutInfo, sidecarWindowLayoutInfo2)) {
            return true;
        }
        if (sidecarWindowLayoutInfo == null || sidecarWindowLayoutInfo2 == null) {
            return false;
        }
        a aVar = f15308b;
        return c(aVar.c(sidecarWindowLayoutInfo), aVar.c(sidecarWindowLayoutInfo2));
    }

    public final a0 e(SidecarWindowLayoutInfo sidecarWindowLayoutInfo, SidecarDeviceState state) {
        Intrinsics.h(state, "state");
        if (sidecarWindowLayoutInfo == null) {
            return new a0(CollectionsKt.l());
        }
        SidecarDeviceState sidecarDeviceState = new SidecarDeviceState();
        a aVar = f15308b;
        aVar.d(sidecarDeviceState, aVar.b(state));
        return new a0(f(aVar.c(sidecarWindowLayoutInfo), sidecarDeviceState));
    }

    public final List f(List sidecarDisplayFeatures, SidecarDeviceState deviceState) {
        Intrinsics.h(sidecarDisplayFeatures, "sidecarDisplayFeatures");
        Intrinsics.h(deviceState, "deviceState");
        ArrayList arrayList = new ArrayList();
        Iterator it = sidecarDisplayFeatures.iterator();
        while (it.hasNext()) {
            l lVarG = g((SidecarDisplayFeature) it.next(), deviceState);
            if (lVarG != null) {
                arrayList.add(lVarG);
            }
        }
        return arrayList;
    }

    public final l g(SidecarDisplayFeature feature, SidecarDeviceState deviceState) {
        HardwareFoldingFeature.Type typeA;
        r.c cVar;
        Intrinsics.h(feature, "feature");
        Intrinsics.h(deviceState, "deviceState");
        SpecificationComputer.a aVar = SpecificationComputer.f15277a;
        String TAG = f15309c;
        Intrinsics.g(TAG, "TAG");
        SidecarDisplayFeature sidecarDisplayFeature = (SidecarDisplayFeature) SpecificationComputer.a.b(aVar, feature, TAG, this.f15310a, null, 4, null).c("Type must be either TYPE_FOLD or TYPE_HINGE", new Function1<SidecarDisplayFeature, Boolean>() { // from class: androidx.window.layout.SidecarAdapter$translate$checkedFeature$1
            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(SidecarDisplayFeature require) {
                Intrinsics.h(require, "$this$require");
                boolean z10 = true;
                if (require.getType() != 1 && require.getType() != 2) {
                    z10 = false;
                }
                return Boolean.valueOf(z10);
            }
        }).c("Feature bounds must not be 0", new Function1<SidecarDisplayFeature, Boolean>() { // from class: androidx.window.layout.SidecarAdapter$translate$checkedFeature$2
            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(SidecarDisplayFeature require) {
                Intrinsics.h(require, "$this$require");
                return Boolean.valueOf((require.getRect().width() == 0 && require.getRect().height() == 0) ? false : true);
            }
        }).c("TYPE_FOLD must have 0 area", new Function1<SidecarDisplayFeature, Boolean>() { // from class: androidx.window.layout.SidecarAdapter$translate$checkedFeature$3
            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(SidecarDisplayFeature require) {
                Intrinsics.h(require, "$this$require");
                boolean z10 = true;
                if (require.getType() == 1 && require.getRect().width() != 0 && require.getRect().height() != 0) {
                    z10 = false;
                }
                return Boolean.valueOf(z10);
            }
        }).c("Feature be pinned to either left or top", new Function1<SidecarDisplayFeature, Boolean>() { // from class: androidx.window.layout.SidecarAdapter$translate$checkedFeature$4
            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(SidecarDisplayFeature require) {
                Intrinsics.h(require, "$this$require");
                return Boolean.valueOf(require.getRect().left == 0 || require.getRect().top == 0);
            }
        }).a();
        if (sidecarDisplayFeature == null) {
            return null;
        }
        int type = sidecarDisplayFeature.getType();
        if (type == 1) {
            typeA = HardwareFoldingFeature.Type.INSTANCE.a();
        } else {
            if (type != 2) {
                return null;
            }
            typeA = HardwareFoldingFeature.Type.INSTANCE.b();
        }
        int iB = f15308b.b(deviceState);
        if (iB == 0 || iB == 1) {
            return null;
        }
        if (iB == 2) {
            cVar = r.c.f15361d;
        } else {
            if (iB != 3 && iB == 4) {
                return null;
            }
            cVar = r.c.f15360c;
        }
        Rect rect = feature.getRect();
        Intrinsics.g(rect, "feature.rect");
        return new HardwareFoldingFeature(new androidx.window.core.b(rect), typeA, cVar);
    }
}
