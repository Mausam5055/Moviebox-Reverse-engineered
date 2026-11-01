package hl;

import android.graphics.Rect;
import android.util.SparseArray;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.home.R$id;
import com.transsion.home.view.OpRankingView;
import java.util.SortedSet;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class b extends RecyclerView.r {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final a f64512i = new a(null);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f64513j = 8;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static String f64514k = "ExposureHelper";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f64515a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final hl.a f64516b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f64517c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f64518d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f64519e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f64520f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final SparseArray f64521g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private SortedSet f64522h;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public b(float f11, hl.a callback, boolean z10) {
        Intrinsics.h(callback, "callback");
        this.f64515a = f11;
        this.f64516b = callback;
        this.f64517c = z10;
        this.f64521g = new SparseArray();
    }

    public /* synthetic */ b(float f11, hl.a aVar, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
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
        if (f(view)) {
            return true;
        }
        int iWidth = rect.width();
        int iHeight = rect.height();
        int i11 = this.f64518d;
        if (i11 != 1) {
            if (i11 != 2) {
                double d11 = (((double) iWidth) * 1.0d) / ((double) width);
                float f11 = this.f64515a;
                if (d11 < f11 || (((double) iHeight) * 1.0d) / ((double) height) < f11) {
                    return false;
                }
            } else if ((((double) iHeight) * 1.0d) / ((double) height) < this.f64515a) {
                return false;
            }
        } else if ((((double) iWidth) * 1.0d) / ((double) width) < this.f64515a) {
            return false;
        }
        return true;
    }

    private final boolean f(View view) {
        OpRankingView opRankingView;
        if (view == null || (opRankingView = (OpRankingView) view.findViewById(R$id.ranking_view)) == null) {
            opRankingView = null;
        } else {
            RecyclerView.m layoutManager = ((RecyclerView) opRankingView.findViewById(R$id.recycler_view)).getLayoutManager();
            Intrinsics.f(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.GridLayoutManager");
            this.f64522h = opRankingView.calcExposureLines((GridLayoutManager) layoutManager);
        }
        return opRankingView != null;
    }

    private final void g(int i11, int i12, int i13) {
        if (i12 < 0 || i13 >= i11 || i12 > i13 || i12 > i13) {
            return;
        }
        while (true) {
            if (this.f64521g.get(i12) == null) {
                lg.a.C0828a.f(lg.a.f68839a, f64514k, "offer position  " + i12, false, 4, null);
                this.f64521g.put(i12, Long.valueOf(System.currentTimeMillis()));
            }
            if (i12 == i13) {
                return;
            } else {
                i12++;
            }
        }
    }

    private final void j(int i11) {
        if (this.f64521g.get(i11) == null) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        Long l11 = (Long) this.f64521g.get(i11);
        long jLongValue = l11 != null ? l11.longValue() : jCurrentTimeMillis;
        this.f64521g.remove(i11);
        long j11 = jCurrentTimeMillis - jLongValue;
        lg.a.C0828a.f(lg.a.f68839a, f64514k, "out position " + i11 + " duration " + j11, false, 4, null);
        if (j11 <= 1000) {
            return;
        }
        this.f64516b.a(i11, j11, null);
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
        SparseArray sparseArray = this.f64521g;
        int size = sparseArray.size();
        for (int i11 = 0; i11 < size; i11++) {
            int iKeyAt = sparseArray.keyAt(i11);
            Long l11 = (Long) sparseArray.valueAt(i11);
            long jLongValue = jCurrentTimeMillis - (l11 != null ? l11.longValue() : jCurrentTimeMillis);
            lg.a.C0828a.f(lg.a.f68839a, f64514k, "clearCache out position " + iKeyAt + " duration " + jLongValue, false, 4, null);
            if (jLongValue <= 1000) {
                return;
            }
            this.f64516b.a(iKeyAt, jLongValue, null);
        }
        this.f64521g.clear();
    }

    public final void h(LinearLayoutManager manager, int i11, boolean z10) {
        Intrinsics.h(manager, "manager");
        if (z10) {
            g(manager.getItemCount(), i11, i11);
        }
    }

    public final void i(LinearLayoutManager manager, boolean z10) {
        Intrinsics.h(manager, "manager");
        int iFindFirstVisibleItemPosition = manager.findFirstVisibleItemPosition();
        int iFindLastVisibleItemPosition = manager.findLastVisibleItemPosition();
        if (!d(manager.findViewByPosition(iFindFirstVisibleItemPosition))) {
            iFindFirstVisibleItemPosition++;
        }
        if (!d(manager.findViewByPosition(iFindLastVisibleItemPosition))) {
            iFindLastVisibleItemPosition--;
        }
        if (this.f64519e == 0 && this.f64520f == 0) {
            g(manager.getItemCount(), iFindFirstVisibleItemPosition, iFindLastVisibleItemPosition);
            this.f64519e = iFindFirstVisibleItemPosition;
            this.f64520f = iFindLastVisibleItemPosition;
            return;
        }
        if (z10) {
            k(manager.getItemCount(), this.f64519e, iFindFirstVisibleItemPosition - 1);
            g(manager.getItemCount(), this.f64520f + 1, iFindLastVisibleItemPosition);
        } else {
            k(manager.getItemCount(), iFindLastVisibleItemPosition + 1, this.f64520f);
            g(manager.getItemCount(), iFindFirstVisibleItemPosition, this.f64519e - 1);
        }
        this.f64519e = iFindFirstVisibleItemPosition;
        this.f64520f = iFindLastVisibleItemPosition;
    }

    public final void l(int i11) {
        this.f64518d = i11;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.r
    public void onScrollStateChanged(RecyclerView recyclerView, int i11) {
        Intrinsics.h(recyclerView, "recyclerView");
        lg.a.C0828a.f(lg.a.f68839a, f64514k, "newState " + i11, false, 4, null);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.r
    public void onScrolled(RecyclerView recyclerView, int i11, int i12) {
        Intrinsics.h(recyclerView, "recyclerView");
        super.onScrolled(recyclerView, i11, i12);
        RecyclerView.m layoutManager = recyclerView.getLayoutManager();
        Intrinsics.f(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
        i((LinearLayoutManager) layoutManager, i12 >= 0);
    }
}
