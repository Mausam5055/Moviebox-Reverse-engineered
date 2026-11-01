package pn;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.ninegridview.R$id;
import com.transsion.ninegridview.video.NineGridVideoView;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class c extends RecyclerView.r {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final a f72481i = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private BaseQuickAdapter f72482a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private qn.a f72483b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private d f72484c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f72485d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f72486e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f72487f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f72488g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f72489h;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private final void d(RecyclerView recyclerView) {
        List<Object> data;
        int position;
        d dVar;
        RecyclerView.m layoutManager = recyclerView.getLayoutManager();
        if ((layoutManager instanceof LinearLayoutManager) && g()) {
            if (this.f72483b == null && (dVar = this.f72484c) != null) {
                dVar.a();
            }
            qn.a aVar = this.f72483b;
            int iB = aVar != null ? aVar.b() : -1;
            qn.a aVar2 = this.f72483b;
            int iF = aVar2 != null ? aVar2.f() : -1;
            qn.a aVar3 = this.f72483b;
            if (aVar3 != null && aVar3.n() && h((LinearLayoutManager) layoutManager, iB, iF)) {
                return;
            }
            qn.a aVar4 = this.f72483b;
            if (aVar4 != null) {
                aVar4.r();
            }
            BaseQuickAdapter baseQuickAdapter = this.f72482a;
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
            int iF2 = f(baseQuickAdapter != null ? baseQuickAdapter.getData() : null, linearLayoutManager);
            if (iF2 < 0) {
                return;
            }
            lg.a.C0828a.f(lg.a.f68839a, "ItemChangeListener", "curPos=" + iB + " next=" + iF2 + ", dy=" + this.f72489h + ", firstVisible=" + this.f72487f + " lastVisible=" + this.f72488g, false, 4, null);
            BaseQuickAdapter baseQuickAdapter2 = this.f72482a;
            if (baseQuickAdapter2 == null || (data = baseQuickAdapter2.getData()) == null) {
                return;
            }
            int childCount = linearLayoutManager.getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = linearLayoutManager.getChildAt(i11);
                if (childAt != null && (position = linearLayoutManager.getPosition(childAt)) == iF2 && position < data.size() && iB != iF2) {
                    PostSubjectItem postSubjectItem = (PostSubjectItem) data.get(iF2);
                    qn.a aVar5 = this.f72483b;
                    if (aVar5 != null) {
                        aVar5.s(postSubjectItem, childAt, iF2);
                    }
                    qn.a aVar6 = this.f72483b;
                    if (aVar6 != null && aVar6.e(postSubjectItem.getMedia()) == 1) {
                        i(iF2);
                    }
                }
            }
        }
    }

    private final int f(List list, LinearLayoutManager linearLayoutManager) {
        NineGridVideoView nineGridVideoView;
        int position;
        int i11 = -1;
        if (list == null) {
            return -1;
        }
        int childCount = linearLayoutManager.getChildCount();
        float f11 = 0.0f;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = linearLayoutManager.getChildAt(i12);
            if (childAt != null && (nineGridVideoView = (NineGridVideoView) childAt.findViewById(R$id.nine_grid)) != null && (position = linearLayoutManager.getPosition(childAt)) >= 0 && position < list.size()) {
                PostSubjectItem postSubjectItem = (PostSubjectItem) list.get(position);
                if (qn.b.a(postSubjectItem.getMedia())) {
                    qn.a aVar = this.f72483b;
                    float fH = aVar != null ? aVar.h(nineGridVideoView, postSubjectItem.getMedia()) : 0.0f;
                    if (f11 < fH) {
                        if (fH > 0.5f) {
                            i11 = position;
                        }
                        f11 = fH;
                    }
                }
            }
        }
        return i11;
    }

    private final boolean g() {
        List<Object> data;
        BaseQuickAdapter baseQuickAdapter = this.f72482a;
        if (baseQuickAdapter == null || (data = baseQuickAdapter.getData()) == null) {
            return false;
        }
        Iterator<T> it = data.iterator();
        while (it.hasNext()) {
            if (qn.b.a(((PostSubjectItem) it.next()).getMedia())) {
                return true;
            }
        }
        return false;
    }

    private final boolean h(LinearLayoutManager linearLayoutManager, int i11, int i12) {
        int childCount = linearLayoutManager.getChildCount();
        for (int i13 = 0; i13 < childCount; i13++) {
            View childAt = linearLayoutManager.getChildAt(i13);
            if (childAt != null) {
                NineGridVideoView nineGridVideoView = (NineGridVideoView) childAt.findViewById(R$id.nine_grid);
                int position = linearLayoutManager.getPosition(childAt);
                if (position == i11) {
                    Boolean boolValueOf = nineGridVideoView != null ? Boolean.valueOf(nineGridVideoView.currentGifVisible(i12)) : null;
                    if (Intrinsics.c(boolValueOf, Boolean.TRUE)) {
                        lg.a.C0828a.f(lg.a.f68839a, "ItemChangeListener", "childPos=" + position + " currentGifVisible=" + boolValueOf, false, 4, null);
                        return true;
                    }
                    boolean zHasGifVisible = nineGridVideoView != null ? nineGridVideoView.hasGifVisible() : false;
                    lg.a.C0828a.f(lg.a.f68839a, "ItemChangeListener", "childPos=" + position + " gifVisible=" + zHasGifVisible, false, 4, null);
                    qn.a aVar = this.f72483b;
                    if (aVar != null) {
                        aVar.q();
                    }
                    return zHasGifVisible;
                }
            }
        }
        return false;
    }

    private final void i(int i11) {
        List<Object> data;
        List<Object> data2;
        BaseQuickAdapter baseQuickAdapter = this.f72482a;
        int size = (baseQuickAdapter == null || (data2 = baseQuickAdapter.getData()) == null) ? 0 : data2.size();
        for (int i12 = i11; i12 < size; i12++) {
            if (i12 > i11) {
                BaseQuickAdapter baseQuickAdapter2 = this.f72482a;
                PostSubjectItem postSubjectItem = (baseQuickAdapter2 == null || (data = baseQuickAdapter2.getData()) == null) ? null : (PostSubjectItem) data.get(i12);
                if (qn.b.a(postSubjectItem != null ? postSubjectItem.getMedia() : null)) {
                    qn.a aVar = this.f72483b;
                    if (aVar != null) {
                        aVar.v(postSubjectItem != null ? postSubjectItem.getMedia() : null);
                        return;
                    }
                    return;
                }
            }
        }
    }

    public final void e() {
        this.f72482a = null;
        this.f72483b = null;
        this.f72486e = -1;
        this.f72485d = -1;
        this.f72487f = -1;
        this.f72488g = -1;
        this.f72489h = 0;
        this.f72484c = null;
    }

    public final void j(BaseQuickAdapter baseQuickAdapter) {
        this.f72482a = baseQuickAdapter;
    }

    public final void k(qn.a aVar) {
        this.f72483b = aVar;
    }

    public final void l(d dVar) {
        this.f72484c = dVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.r
    public void onScrollStateChanged(RecyclerView recyclerView, int i11) {
        Intrinsics.h(recyclerView, "recyclerView");
        if (recyclerView.getScrollState() == 0) {
            d(recyclerView);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.r
    public void onScrolled(RecyclerView recyclerView, int i11, int i12) {
        Intrinsics.h(recyclerView, "recyclerView");
        RecyclerView.m layoutManager = recyclerView.getLayoutManager();
        if (!(layoutManager instanceof LinearLayoutManager)) {
            throw new RuntimeException("Unsupported layoutManager.");
        }
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
        this.f72485d = linearLayoutManager.findLastCompletelyVisibleItemPosition();
        this.f72486e = linearLayoutManager.findFirstCompletelyVisibleItemPosition();
        this.f72487f = linearLayoutManager.findFirstVisibleItemPosition();
        this.f72488g = linearLayoutManager.findLastVisibleItemPosition();
        this.f72489h = i12;
        if (recyclerView.getScrollState() == 0) {
            d(recyclerView);
        }
    }
}
