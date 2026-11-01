package androidx.core.widget;

import android.widget.ListView;

/* JADX INFO: loaded from: classes.dex */
public class j extends AutoScrollHelper {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final ListView f8509s;

    public j(ListView listView) {
        super(listView);
        this.f8509s = listView;
    }

    @Override // androidx.core.widget.AutoScrollHelper
    public boolean a(int i11) {
        return false;
    }

    @Override // androidx.core.widget.AutoScrollHelper
    public boolean b(int i11) {
        ListView listView = this.f8509s;
        int count = listView.getCount();
        if (count == 0) {
            return false;
        }
        int childCount = listView.getChildCount();
        int firstVisiblePosition = listView.getFirstVisiblePosition();
        int i12 = firstVisiblePosition + childCount;
        if (i11 > 0) {
            if (i12 >= count && listView.getChildAt(childCount - 1).getBottom() <= listView.getHeight()) {
                return false;
            }
        } else {
            if (i11 >= 0) {
                return false;
            }
            if (firstVisiblePosition <= 0 && listView.getChildAt(0).getTop() >= 0) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.core.widget.AutoScrollHelper
    public void j(int i11, int i12) {
        this.f8509s.scrollListBy(i12);
    }
}
