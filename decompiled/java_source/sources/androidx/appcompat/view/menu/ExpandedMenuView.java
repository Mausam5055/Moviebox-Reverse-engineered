package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import androidx.appcompat.widget.j0;

/* JADX INFO: loaded from: classes.dex */
public final class ExpandedMenuView extends ListView implements f.b, m, AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int[] f1368c = {R.attr.background, R.attr.divider};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private f f1369a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f1370b;

    public ExpandedMenuView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.listViewStyle);
    }

    public ExpandedMenuView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet);
        setOnItemClickListener(this);
        j0 j0VarV = j0.v(context, attributeSet, f1368c, i11, 0);
        if (j0VarV.s(0)) {
            setBackgroundDrawable(j0VarV.g(0));
        }
        if (j0VarV.s(1)) {
            setDivider(j0VarV.g(1));
        }
        j0VarV.x();
    }

    public int getWindowAnimations() {
        return this.f1370b;
    }

    @Override // androidx.appcompat.view.menu.m
    public void initialize(f fVar) {
        this.f1369a = fVar;
    }

    @Override // androidx.appcompat.view.menu.f.b
    public boolean invokeItem(h hVar) {
        return this.f1369a.O(hVar, 0);
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setChildrenDrawingCacheEnabled(false);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i11, long j11) {
        invokeItem((h) getAdapter().getItem(i11));
    }
}
