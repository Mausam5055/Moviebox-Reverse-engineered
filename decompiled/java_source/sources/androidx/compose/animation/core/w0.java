package androidx.compose.animation.core;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class w0 {

    public static final class a implements q {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List f2512a;

        a(o oVar, float f11, float f12) {
            IntRange intRangeT = RangesKt.t(0, oVar.b());
            ArrayList arrayList = new ArrayList(CollectionsKt.v(intRangeT, 10));
            Iterator<Integer> it = intRangeT.iterator();
            while (it.hasNext()) {
                arrayList.add(new f0(f11, f12, oVar.a(((IntIterator) it).a())));
            }
            this.f2512a = arrayList;
        }

        @Override // androidx.compose.animation.core.q
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public f0 get(int i11) {
            return (f0) this.f2512a.get(i11);
        }
    }

    public static final class b implements q {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final f0 f2513a;

        b(float f11, float f12) {
            this.f2513a = new f0(f11, f12, 0.0f, 4, null);
        }

        @Override // androidx.compose.animation.core.q
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public f0 get(int i11) {
            return this.f2513a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final q b(o oVar, float f11, float f12) {
        return oVar != null ? new a(oVar, f11, f12) : new b(f11, f12);
    }
}
