package androidx.appcompat.view.menu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class e extends BaseAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    f f1433a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f1434b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f1435c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f1436d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final LayoutInflater f1437e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f1438f;

    public e(f fVar, LayoutInflater layoutInflater, boolean z10, int i11) {
        this.f1436d = z10;
        this.f1437e = layoutInflater;
        this.f1433a = fVar;
        this.f1438f = i11;
        a();
    }

    void a() {
        h hVarX = this.f1433a.x();
        if (hVarX != null) {
            ArrayList arrayListB = this.f1433a.B();
            int size = arrayListB.size();
            for (int i11 = 0; i11 < size; i11++) {
                if (((h) arrayListB.get(i11)) == hVarX) {
                    this.f1434b = i11;
                    return;
                }
            }
        }
        this.f1434b = -1;
    }

    public f b() {
        return this.f1433a;
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public h getItem(int i11) {
        ArrayList arrayListB = this.f1436d ? this.f1433a.B() : this.f1433a.G();
        int i12 = this.f1434b;
        if (i12 >= 0 && i11 >= i12) {
            i11++;
        }
        return (h) arrayListB.get(i11);
    }

    public void d(boolean z10) {
        this.f1435c = z10;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        ArrayList arrayListB = this.f1436d ? this.f1433a.B() : this.f1433a.G();
        return this.f1434b < 0 ? arrayListB.size() : arrayListB.size() - 1;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i11) {
        return i11;
    }

    @Override // android.widget.Adapter
    public View getView(int i11, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.f1437e.inflate(this.f1438f, viewGroup, false);
        }
        int groupId = getItem(i11).getGroupId();
        int i12 = i11 - 1;
        ListMenuItemView listMenuItemView = (ListMenuItemView) view;
        listMenuItemView.setGroupDividerEnabled(this.f1433a.I() && groupId != (i12 >= 0 ? getItem(i12).getGroupId() : groupId));
        m.a aVar = (m.a) view;
        if (this.f1435c) {
            listMenuItemView.setForceShowIcon(true);
        }
        aVar.initialize(getItem(i11), 0);
        return view;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        a();
        super.notifyDataSetChanged();
    }
}
