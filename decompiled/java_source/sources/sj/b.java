package sj;

import ak.q;
import android.graphics.Rect;
import android.util.SparseArray;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.transsion.baselib.exposure.ExposureType;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class b extends RecyclerView.r {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final a f75362j = new a(null);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static String f75363k = "ExposureHelper";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f75364a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final sj.a f75365b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f75366c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f75367d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ExposureType f75368e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private q f75369f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f75370g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f75371h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final SparseArray f75372i;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a() {
            return b.f75363k;
        }
    }

    public b(float f11, sj.a callback, boolean z10) {
        Intrinsics.h(callback, "callback");
        this.f75364a = f11;
        this.f75365b = callback;
        this.f75366c = z10;
        this.f75368e = ExposureType.VERTICAL_FEED;
        this.f75372i = new SparseArray();
    }

    public /* synthetic */ b(float f11, sj.a aVar, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(f11, aVar, (i11 & 4) != 0 ? false : z10);
    }

    private final boolean e(View view) {
        if (view == null) {
            return false;
        }
        int width = view.getWidth();
        int height = view.getHeight();
        Rect rect = new Rect();
        if (!view.getGlobalVisibleRect(rect)) {
            return false;
        }
        int iWidth = rect.width();
        int iHeight = rect.height();
        int i11 = this.f75367d;
        if (i11 != 1) {
            if (i11 != 2) {
                double d11 = (((double) iWidth) * 1.0d) / ((double) width);
                float f11 = this.f75364a;
                if (d11 < f11 || (((double) iHeight) * 1.0d) / ((double) height) < f11) {
                    return false;
                }
            } else if ((((double) iHeight) * 1.0d) / ((double) height) < this.f75364a) {
                return false;
            }
        } else if ((((double) iWidth) * 1.0d) / ((double) width) < this.f75364a) {
            return false;
        }
        return true;
    }

    private final void h(int i11, int i12, int i13) {
        if (i12 < 0 || i13 >= i11 || i12 > i13 || i12 > i13) {
            return;
        }
        while (this.f75372i.get(i12) == null) {
            int i14 = i12 + 1;
            lg.a.C0828a.f(lg.a.f68839a, f75363k, "offer position  " + i12, false, 4, null);
            this.f75372i.put(i12, Long.valueOf(System.currentTimeMillis()));
            q qVar = this.f75369f;
            if (qVar != null) {
                qVar.a(i14);
            }
            if (i12 == i13) {
                return;
            } else {
                i12 = i14;
            }
        }
    }

    public static /* synthetic */ void j(b bVar, RecyclerView.m mVar, int i11, boolean z10, boolean z11, int i12, Object obj) {
        if ((i12 & 8) != 0) {
            z11 = false;
        }
        bVar.i(mVar, i11, z10, z11);
    }

    private final void l(int i11) {
        if (this.f75372i.get(i11) == null) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        Long l11 = (Long) this.f75372i.get(i11);
        long jLongValue = l11 != null ? l11.longValue() : jCurrentTimeMillis;
        this.f75372i.remove(i11);
        long j11 = jCurrentTimeMillis - jLongValue;
        lg.a.C0828a.f(lg.a.f68839a, f75363k, "out position " + i11 + " duration " + j11, false, 4, null);
        if (j11 <= 1000) {
            return;
        }
        this.f75365b.a(i11, j11, null);
    }

    private final void m(int i11, int i12, int i13) {
        if (i12 < 0 || i13 >= i11 || i12 > i13 || i12 > i13) {
            return;
        }
        while (true) {
            l(i13);
            if (i13 == i12) {
                return;
            } else {
                i13--;
            }
        }
    }

    public final void f() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        SparseArray sparseArray = this.f75372i;
        int size = sparseArray.size();
        for (int i11 = 0; i11 < size; i11++) {
            int iKeyAt = sparseArray.keyAt(i11);
            Long l11 = (Long) sparseArray.valueAt(i11);
            long jLongValue = jCurrentTimeMillis - (l11 != null ? l11.longValue() : jCurrentTimeMillis);
            lg.a.C0828a.f(lg.a.f68839a, f75363k, "clearCache out position " + iKeyAt + " duration " + jLongValue, false, 4, null);
            this.f75365b.a(iKeyAt, jLongValue, null);
        }
        this.f75372i.clear();
    }

    public final void g() {
        f();
        this.f75370g = 0;
        this.f75371h = 0;
    }

    public final void i(RecyclerView.m manager, int i11, boolean z10, boolean z11) {
        Intrinsics.h(manager, "manager");
        if (z10) {
            View viewFindViewByPosition = manager.findViewByPosition(i11);
            if (z11) {
                h(manager.getItemCount(), i11, i11);
                return;
            }
            boolean zE = e(viewFindViewByPosition);
            lg.a.C0828a.f(lg.a.f68839a, f75363k, "firstView " + viewFindViewByPosition + " export " + zE + " count " + manager.getItemCount(), false, 4, null);
            if (zE) {
                h(manager.getItemCount(), i11, i11);
            }
        }
    }

    public final void k(RecyclerView.m manager, boolean z10) {
        int iU;
        int iU2;
        Intrinsics.h(manager, "manager");
        boolean z11 = manager instanceof LinearLayoutManager;
        if (z11) {
            iU = ((LinearLayoutManager) manager).findFirstVisibleItemPosition();
        } else {
            if (!(manager instanceof StaggeredGridLayoutManager)) {
                return;
            }
            int[] iArrD = ((StaggeredGridLayoutManager) manager).D(null);
            Intrinsics.g(iArrD, "findFirstVisibleItemPositions(...)");
            iU = ArraysKt.U(iArrD);
        }
        if (z11) {
            iU2 = ((LinearLayoutManager) manager).findLastVisibleItemPosition();
        } else {
            if (!(manager instanceof StaggeredGridLayoutManager)) {
                return;
            }
            int[] iArrG = ((StaggeredGridLayoutManager) manager).G(null);
            Intrinsics.g(iArrG, "findLastVisibleItemPositions(...)");
            iU2 = ArraysKt.U(iArrG);
        }
        if (!e(manager.findViewByPosition(iU)) && this.f75368e != ExposureType.NEST_HORIZONTAL) {
            iU++;
        }
        if (!e(manager.findViewByPosition(iU2)) && this.f75368e != ExposureType.NEST_HORIZONTAL) {
            iU2--;
        }
        if (this.f75370g == 0 && this.f75371h == 0) {
            h(manager.getItemCount(), iU, iU2);
            this.f75370g = iU;
            this.f75371h = iU2;
            return;
        }
        if (z10) {
            m(manager.getItemCount(), this.f75370g, iU - 1);
            h(manager.getItemCount(), this.f75371h + 1, iU2);
        } else {
            m(manager.getItemCount(), iU2 + 1, this.f75371h);
            h(manager.getItemCount(), iU, this.f75370g - 1);
        }
        this.f75370g = iU;
        this.f75371h = iU2;
    }

    public final void n(int i11) {
        this.f75367d = i11;
    }

    public final void o(ExposureType exposureType) {
        Intrinsics.h(exposureType, "exposureType");
        this.f75368e = exposureType;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.r
    public void onScrollStateChanged(RecyclerView recyclerView, int i11) {
        Intrinsics.h(recyclerView, "recyclerView");
        lg.a.C0828a.f(lg.a.f68839a, f75363k, "newState " + i11, false, 4, null);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:15:0x002e  */
    /* JADX WARN: Code duplicated, block: B:16:0x0030 A[DONT_INVERT] */
    @Override // androidx.recyclerview.widget.RecyclerView.r
    public void onScrolled(RecyclerView recyclerView, int i11, int i12) {
        Intrinsics.h(recyclerView, "recyclerView");
        super.onScrolled(recyclerView, i11, i12);
        RecyclerView.m layoutManager = recyclerView.getLayoutManager();
        if (layoutManager == null) {
            return;
        }
        boolean z10 = false;
        if (layoutManager instanceof LinearLayoutManager) {
            if (((LinearLayoutManager) layoutManager).getOrientation() == 1) {
                if (i12 > 0) {
                    z10 = true;
                }
            } else if (i11 > 0) {
                z10 = true;
            }
        } else {
            if (!(layoutManager instanceof StaggeredGridLayoutManager)) {
                return;
            }
            if (((StaggeredGridLayoutManager) layoutManager).getOrientation() == 1) {
                if (i12 > 0) {
                    z10 = true;
                }
            } else if (i11 > 0) {
                z10 = true;
            }
        }
        k(layoutManager, z10);
    }

    public final void p(q qVar) {
        this.f75369f = qVar;
    }
}
