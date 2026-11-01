package androidx.recyclerview.widget;

import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
abstract class p {
    static int a(RecyclerView.y yVar, m mVar, View view, View view2, RecyclerView.m mVar2, boolean z10) {
        if (mVar2.getChildCount() == 0 || yVar.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z10) {
            return Math.abs(mVar2.getPosition(view) - mVar2.getPosition(view2)) + 1;
        }
        return Math.min(mVar.n(), mVar.d(view2) - mVar.g(view));
    }

    static int b(RecyclerView.y yVar, m mVar, View view, View view2, RecyclerView.m mVar2, boolean z10, boolean z11) {
        if (mVar2.getChildCount() == 0 || yVar.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        int iMax = z11 ? Math.max(0, (yVar.b() - Math.max(mVar2.getPosition(view), mVar2.getPosition(view2))) - 1) : Math.max(0, Math.min(mVar2.getPosition(view), mVar2.getPosition(view2)));
        if (z10) {
            return Math.round((iMax * (Math.abs(mVar.d(view2) - mVar.g(view)) / (Math.abs(mVar2.getPosition(view) - mVar2.getPosition(view2)) + 1))) + (mVar.m() - mVar.g(view)));
        }
        return iMax;
    }

    static int c(RecyclerView.y yVar, m mVar, View view, View view2, RecyclerView.m mVar2, boolean z10) {
        if (mVar2.getChildCount() == 0 || yVar.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z10) {
            return yVar.b();
        }
        return (int) (((mVar.d(view2) - mVar.g(view)) / (Math.abs(mVar2.getPosition(view) - mVar2.getPosition(view2)) + 1)) * yVar.b());
    }
}
