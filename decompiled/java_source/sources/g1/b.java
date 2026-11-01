package g1;

import android.database.Cursor;
import android.widget.Filter;

/* JADX INFO: loaded from: classes2.dex */
class b extends Filter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    a f63075a;

    /* JADX INFO: loaded from: classes.dex */
    interface a {
        void a(Cursor cursor);

        CharSequence b(Cursor cursor);

        Cursor c(CharSequence charSequence);

        Cursor d();
    }

    b(a aVar) {
        this.f63075a = aVar;
    }

    @Override // android.widget.Filter
    public CharSequence convertResultToString(Object obj) {
        return this.f63075a.b((Cursor) obj);
    }

    @Override // android.widget.Filter
    protected Filter.FilterResults performFiltering(CharSequence charSequence) {
        Cursor cursorC = this.f63075a.c(charSequence);
        Filter.FilterResults filterResults = new Filter.FilterResults();
        if (cursorC != null) {
            filterResults.count = cursorC.getCount();
            filterResults.values = cursorC;
        } else {
            filterResults.count = 0;
            filterResults.values = null;
        }
        return filterResults;
    }

    @Override // android.widget.Filter
    protected void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
        Cursor cursorD = this.f63075a.d();
        Object obj = filterResults.values;
        if (obj == null || obj == cursorD) {
            return;
        }
        this.f63075a.a((Cursor) obj);
    }
}
