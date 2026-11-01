package xr;

import android.graphics.Rect;
import android.util.SparseArray;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.shorttv.base.exposure.ExposureType;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class b extends RecyclerView.r {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final a f78416i = new a(null);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static String f78417j = "ExposureHelper";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f78418a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final xr.a f78419b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f78420c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f78421d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ExposureType f78422e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f78423f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f78424g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final SparseArray f78425h;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public b(float f11, xr.a callback, boolean z10) {
        Intrinsics.h(callback, "callback");
        this.f78418a = f11;
        this.f78419b = callback;
        this.f78420c = z10;
        this.f78422e = ExposureType.VERTICAL_FEED;
        this.f78425h = new SparseArray();
    }

    public /* synthetic */ b(float f11, xr.a aVar, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(f11, aVar, (i11 & 4) != 0 ? false : z10);
    }

    private final boolean d(View view) {
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
        int i11 = this.f78421d;
        if (i11 != 1) {
            if (i11 != 2) {
                double d11 = (((double) iWidth) * 1.0d) / ((double) width);
                float f11 = this.f78418a;
                if (d11 < f11 || (((double) iHeight) * 1.0d) / ((double) height) < f11) {
                    return false;
                }
            } else if ((((double) iHeight) * 1.0d) / ((double) height) < this.f78418a) {
                return false;
            }
        } else if ((((double) iWidth) * 1.0d) / ((double) width) < this.f78418a) {
            return false;
        }
        return true;
    }

    private final void f(int i11, int i12, int i13) {
        if (i12 < 0 || i13 >= i11 || i12 > i13 || i12 > i13) {
            return;
        }
        while (this.f78425h.get(i12) == null) {
            lg.a.C0828a.f(lg.a.f68839a, f78417j, "offer position  " + i12, false, 4, null);
            this.f78425h.put(i12, Long.valueOf(System.currentTimeMillis()));
            if (i12 == i13) {
                return;
            } else {
                i12++;
            }
        }
    }

    public static /* synthetic */ void h(b bVar, LinearLayoutManager linearLayoutManager, int i11, boolean z10, boolean z11, int i12, Object obj) {
        if ((i12 & 8) != 0) {
            z11 = false;
        }
        bVar.g(linearLayoutManager, i11, z10, z11);
    }

    private final void j(int i11) {
        if (this.f78425h.get(i11) == null) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        Long l11 = (Long) this.f78425h.get(i11);
        long jLongValue = l11 != null ? l11.longValue() : jCurrentTimeMillis;
        this.f78425h.remove(i11);
        long j11 = jCurrentTimeMillis - jLongValue;
        lg.a.C0828a.f(lg.a.f68839a, f78417j, "out position " + i11 + " duration " + j11, false, 4, null);
        if (j11 <= 1000) {
            return;
        }
        this.f78419b.a(i11, j11, null);
    }

    private final void k(int i11, int i12, int i13) {
        if (i12 < 0 || i13 >= i11 || i12 > i13 || i12 > i13) {
            return;
        }
        while (true) {
            j(i13);
            if (i13 == i12) {
                return;
            } else {
                i13--;
            }
        }
    }

    public final void e() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        SparseArray sparseArray = this.f78425h;
        int size = sparseArray.size();
        for (int i11 = 0; i11 < size; i11++) {
            int iKeyAt = sparseArray.keyAt(i11);
            Long l11 = (Long) sparseArray.valueAt(i11);
            long jLongValue = jCurrentTimeMillis - (l11 != null ? l11.longValue() : jCurrentTimeMillis);
            lg.a.C0828a.f(lg.a.f68839a, f78417j, "clearCache out position " + iKeyAt + " duration " + jLongValue, false, 4, null);
            this.f78419b.a(iKeyAt, jLongValue, null);
        }
        this.f78425h.clear();
    }

    public final void g(LinearLayoutManager manager, int i11, boolean z10, boolean z11) {
        Intrinsics.h(manager, "manager");
        if (z10) {
            View viewFindViewByPosition = manager.findViewByPosition(i11);
            if (z11) {
                f(manager.getItemCount(), i11, i11);
                return;
            }
            boolean zD = d(viewFindViewByPosition);
            lg.a.C0828a.f(lg.a.f68839a, f78417j, "firstView " + viewFindViewByPosition + " export " + zD + " count " + manager.getItemCount(), false, 4, null);
            if (zD) {
                f(manager.getItemCount(), i11, i11);
            }
        }
    }

    public final void i(LinearLayoutManager manager, boolean z10) {
        Intrinsics.h(manager, "manager");
        int iFindFirstVisibleItemPosition = manager.findFirstVisibleItemPosition();
        int iFindLastVisibleItemPosition = manager.findLastVisibleItemPosition();
        if (!d(manager.findViewByPosition(iFindFirstVisibleItemPosition)) && this.f78422e != ExposureType.NEST_HORIZONTAL) {
            iFindFirstVisibleItemPosition++;
        }
        if (!d(manager.findViewByPosition(iFindLastVisibleItemPosition)) && this.f78422e != ExposureType.NEST_HORIZONTAL) {
            iFindLastVisibleItemPosition--;
        }
        if (this.f78423f == 0 && this.f78424g == 0) {
            f(manager.getItemCount(), iFindFirstVisibleItemPosition, iFindLastVisibleItemPosition);
            this.f78423f = iFindFirstVisibleItemPosition;
            this.f78424g = iFindLastVisibleItemPosition;
            return;
        }
        if (z10) {
            k(manager.getItemCount(), this.f78423f, iFindFirstVisibleItemPosition - 1);
            f(manager.getItemCount(), this.f78424g + 1, iFindLastVisibleItemPosition);
        } else {
            k(manager.getItemCount(), iFindLastVisibleItemPosition + 1, this.f78424g);
            f(manager.getItemCount(), iFindFirstVisibleItemPosition, this.f78423f - 1);
        }
        this.f78423f = iFindFirstVisibleItemPosition;
        this.f78424g = iFindLastVisibleItemPosition;
    }

    public final void l(int i11) {
        this.f78421d = i11;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.r
    public void onScrollStateChanged(RecyclerView recyclerView, int i11) {
        Intrinsics.h(recyclerView, "recyclerView");
        lg.a.C0828a.f(lg.a.f68839a, f78417j, "newState " + i11, false, 4, null);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.r
    public void onScrolled(RecyclerView recyclerView, int i11, int i12) {
        Intrinsics.h(recyclerView, "recyclerView");
        super.onScrolled(recyclerView, i11, i12);
        if (recyclerView.getLayoutManager() instanceof LinearLayoutManager) {
            RecyclerView.m layoutManager = recyclerView.getLayoutManager();
            Intrinsics.f(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
            boolean z10 = false;
            if (linearLayoutManager.getOrientation() != 1 ? i11 > 0 : i12 > 0) {
                z10 = true;
            }
            i(linearLayoutManager, z10);
        }
    }
}
