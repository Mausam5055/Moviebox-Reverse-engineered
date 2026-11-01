package com.transsion.moviedetail.staff;

import android.graphics.Rect;
import android.os.SystemClock;
import android.util.SparseArray;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.appbar.AppBarLayout;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Pair;
import kotlin.collections.IntIterator;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes6.dex */
public final class v extends RecyclerView.r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final s f47337a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Function2 f47338b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private RecyclerView f47339c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f47340d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f47341e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f47342f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f47343g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f47344h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f47345i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private SparseArray f47346j;

    public v(s adapter, Function2 callback) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(callback, "callback");
        this.f47337a = adapter;
        this.f47338b = callback;
        this.f47340d = "MovieStaffScroll";
        this.f47343g = -1;
        this.f47344h = -1;
        this.f47345i = -1;
        this.f47346j = new SparseArray();
    }

    private final void h(int i11, int i12) {
        if (i11 > i12) {
            return;
        }
        try {
            int itemCount = this.f47337a.getItemCount();
            if (this.f47343g == i11 && i12 == this.f47344h && this.f47345i == itemCount) {
                return;
            }
            this.f47345i = itemCount;
            lg.a.C0828a.f(lg.a.f68839a, this.f47340d, "showChange firstPosition:" + i11 + "  lastPosition:" + i12, false, 4, null);
            if (this.f47343g >= 0 && this.f47344h >= 0) {
                ArrayList arrayList = new ArrayList();
                IntIterator intIteratorA = androidx.core.util.k.a(this.f47346j);
                while (intIteratorA.hasNext()) {
                    int iIntValue = intIteratorA.next().intValue();
                    if (i11 > iIntValue || iIntValue > i12) {
                        Function2 function2 = this.f47338b;
                        Integer numValueOf = Integer.valueOf(iIntValue);
                        Object obj = this.f47346j.get(iIntValue);
                        Intrinsics.g(obj, "get(...)");
                        function2.invoke(numValueOf, obj);
                        arrayList.add(Integer.valueOf(iIntValue));
                    } else if (iIntValue >= 0 && iIntValue < this.f47337a.getItemCount() && !Intrinsics.c(((Pair) this.f47346j.get(iIntValue)).getFirst(), this.f47337a.getItem(iIntValue))) {
                        Function2 function3 = this.f47338b;
                        Integer numValueOf2 = Integer.valueOf(iIntValue);
                        Object obj2 = this.f47346j.get(iIntValue);
                        Intrinsics.g(obj2, "get(...)");
                        function3.invoke(numValueOf2, obj2);
                        this.f47346j.put(iIntValue, new Pair(this.f47337a.getItem(iIntValue), Long.valueOf(SystemClock.elapsedRealtime())));
                    }
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    this.f47346j.remove(((Number) it.next()).intValue());
                }
                if (i11 <= i12) {
                    int i13 = i11;
                    while (true) {
                        Object item = this.f47337a.getItem(i13);
                        if (this.f47346j.get(i13) == null) {
                            this.f47346j.put(i13, new Pair(item, Long.valueOf(SystemClock.elapsedRealtime())));
                        }
                        if (i13 == i12) {
                            break;
                        } else {
                            i13++;
                        }
                    }
                }
            } else if (i11 <= i12) {
                int i14 = i11;
                while (true) {
                    this.f47346j.put(i14, new Pair(this.f47337a.getItem(i14), Long.valueOf(SystemClock.elapsedRealtime())));
                    if (i14 == i12) {
                        break;
                    } else {
                        i14++;
                    }
                }
            }
            this.f47343g = i11;
            this.f47344h = i12;
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public final void d(AppBarLayout appBarLayout, int i11) {
        Intrinsics.h(appBarLayout, "appBarLayout");
        lg.a.C0828a.f(lg.a.f68839a, this.f47340d, "appbarScroll  moveY:" + i11, false, 4, null);
        try {
            this.f47342f = i11;
            int iC = com.blankj.utilcode.util.y.c();
            int iA = com.blankj.utilcode.util.d.a();
            RecyclerView recyclerView = this.f47339c;
            int iF = 0;
            int top = (iC - iA) - (recyclerView != null ? recyclerView.getTop() : 0);
            RecyclerView recyclerView2 = this.f47339c;
            GridLayoutManager gridLayoutManager = (GridLayoutManager) (recyclerView2 != null ? recyclerView2.getLayoutManager() : null);
            if (gridLayoutManager == null) {
                return;
            }
            int iFindFirstVisibleItemPosition = gridLayoutManager.findFirstVisibleItemPosition();
            int iFindLastVisibleItemPosition = gridLayoutManager.findLastVisibleItemPosition();
            int i12 = -1;
            if (iFindFirstVisibleItemPosition <= iFindLastVisibleItemPosition) {
                int i13 = 0;
                int i14 = -1;
                while (true) {
                    View viewFindViewByPosition = gridLayoutManager.findViewByPosition(iFindFirstVisibleItemPosition);
                    if (viewFindViewByPosition != null) {
                        lg.a.C0828a c0828a = lg.a.f68839a;
                        lg.a.C0828a.f(c0828a, this.f47340d, "appbarScroll  *****  index:" + iFindFirstVisibleItemPosition + "  totalY:" + this.f47341e + "    top:" + viewFindViewByPosition.getTop(), false, 4, null);
                        if (viewFindViewByPosition.getTop() >= 0) {
                            if (viewFindViewByPosition.getBottom() >= viewFindViewByPosition.getHeight() * 0.7f) {
                                if (gridLayoutManager.Y().e(iFindFirstVisibleItemPosition, gridLayoutManager.U()) == 0) {
                                    if (i14 == -1) {
                                        i14 = iFindFirstVisibleItemPosition;
                                    }
                                    int height = viewFindViewByPosition.getHeight();
                                    int i15 = i13 + height;
                                    if (i15 >= top) {
                                        if (((top - i13) * 100) / height < 70) {
                                            iF = RangesKt.f(iFindFirstVisibleItemPosition - 1, 0);
                                            break;
                                        }
                                        int i16 = iFindFirstVisibleItemPosition + 1;
                                        if (i16 <= iFindLastVisibleItemPosition) {
                                            while (true) {
                                                int i17 = iFindFirstVisibleItemPosition;
                                                iFindFirstVisibleItemPosition = i16;
                                                if (gridLayoutManager.Y().e(iFindFirstVisibleItemPosition, gridLayoutManager.U()) != 0) {
                                                    if (iFindFirstVisibleItemPosition == iFindLastVisibleItemPosition) {
                                                        break;
                                                    } else {
                                                        i16 = iFindFirstVisibleItemPosition + 1;
                                                    }
                                                } else {
                                                    iFindFirstVisibleItemPosition = i17;
                                                    break;
                                                }
                                            }
                                        }
                                        iF = iFindFirstVisibleItemPosition;
                                        break;
                                    }
                                    i13 = i15;
                                }
                            } else {
                                lg.a.C0828a.f(c0828a, this.f47340d, "index:" + iFindFirstVisibleItemPosition + "  标题栏档住了，不计入", false, 4, null);
                            }
                        } else {
                            return;
                        }
                    }
                    if (iFindFirstVisibleItemPosition == iFindLastVisibleItemPosition) {
                        break;
                    } else {
                        iFindFirstVisibleItemPosition++;
                    }
                }
                i12 = i14;
            }
            lg.a.C0828a.f(lg.a.f68839a, this.f47340d, "firstVisiblePosition:" + i12 + "   realLastVisiblePosition:" + iF, false, 4, null);
            h(i12, iF);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public final void e(int i11, int i12) {
        while (i11 < i12) {
            try {
                Pair pair = (Pair) this.f47346j.get(i11);
                if (pair != null) {
                    this.f47338b.invoke(Integer.valueOf(i11), pair);
                    this.f47346j.remove(i11);
                }
                i11++;
            } catch (Exception e11) {
                e11.printStackTrace();
                return;
            }
        }
    }

    public final void f() {
        try {
            IntIterator intIteratorA = androidx.core.util.k.a(this.f47346j);
            while (intIteratorA.hasNext()) {
                int iIntValue = intIteratorA.next().intValue();
                Function2 function2 = this.f47338b;
                Integer numValueOf = Integer.valueOf(iIntValue);
                Object obj = this.f47346j.get(iIntValue);
                Intrinsics.g(obj, "get(...)");
                function2.invoke(numValueOf, obj);
            }
            this.f47346j.clear();
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public final void g() {
        try {
            int i11 = this.f47343g;
            if (i11 >= 0) {
                int i12 = this.f47344h;
                this.f47343g = -1;
                this.f47344h = -1;
                h(i11, i12);
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.r
    public void onScrolled(RecyclerView recyclerView, int i11, int i12) {
        Intrinsics.h(recyclerView, "recyclerView");
        super.onScrolled(recyclerView, i11, i12);
        this.f47341e += i12;
        this.f47339c = recyclerView;
        if (this.f47342f >= 0) {
            return;
        }
        RecyclerView.m layoutManager = recyclerView.getLayoutManager();
        Intrinsics.f(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.GridLayoutManager");
        GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
        int iFindFirstVisibleItemPosition = gridLayoutManager.findFirstVisibleItemPosition();
        int iFindLastVisibleItemPosition = gridLayoutManager.findLastVisibleItemPosition();
        for (int i13 = iFindFirstVisibleItemPosition; i13 < iFindLastVisibleItemPosition; i13++) {
            View viewFindViewByPosition = gridLayoutManager.findViewByPosition(i13);
            if (viewFindViewByPosition != null) {
                Rect rect = new Rect();
                viewFindViewByPosition.getLocalVisibleRect(rect);
                lg.a.C0828a c0828a = lg.a.f68839a;
                lg.a.C0828a.f(c0828a, this.f47340d, "index:" + i13 + "  totalY:" + this.f47341e + "    dy:" + i12 + " top:" + recyclerView.getTop(), false, 4, null);
                lg.a.C0828a.f(c0828a, this.f47340d, "index:" + i13 + "  firstView top:" + viewFindViewByPosition.getTop() + "    bottom:" + viewFindViewByPosition.getBottom(), false, 4, null);
                if (viewFindViewByPosition.getBottom() >= viewFindViewByPosition.getHeight() * 0.7f) {
                    if ((rect.height() * 100) / viewFindViewByPosition.getHeight() >= 70) {
                        iFindFirstVisibleItemPosition = i13;
                        break;
                    }
                } else {
                    lg.a.C0828a.f(c0828a, this.f47340d, "index:" + i13 + "  标题栏档住了，不计入", false, 4, null);
                }
            }
        }
        if (iFindFirstVisibleItemPosition <= iFindLastVisibleItemPosition) {
            int i14 = iFindLastVisibleItemPosition;
            while (true) {
                View viewFindViewByPosition2 = gridLayoutManager.findViewByPosition(i14);
                if (viewFindViewByPosition2 != null) {
                    Rect rect2 = new Rect();
                    viewFindViewByPosition2.getLocalVisibleRect(rect2);
                    if ((rect2.height() * 100) / viewFindViewByPosition2.getHeight() >= 70) {
                        iFindLastVisibleItemPosition = i14;
                        break;
                    }
                }
                if (i14 == iFindFirstVisibleItemPosition) {
                    break;
                } else {
                    i14--;
                }
            }
        }
        lg.a.C0828a.f(lg.a.f68839a, this.f47340d, "firstVisiblePosition:" + iFindFirstVisibleItemPosition + "   lastVisiblePosition:" + iFindLastVisibleItemPosition, false, 4, null);
        h(iFindFirstVisibleItemPosition, iFindLastVisibleItemPosition);
    }
}
