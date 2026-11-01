package g1;

import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;

/* JADX INFO: loaded from: classes.dex */
public abstract class a extends BaseAdapter implements Filterable, g1.b.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected boolean f63065a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected boolean f63066b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected Cursor f63067c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected Context f63068d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected int f63069e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected C0765a f63070f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected DataSetObserver f63071g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected g1.b f63072h;

    /* JADX INFO: renamed from: g1.a$a, reason: collision with other inner class name */
    /* JADX INFO: loaded from: classes2.dex */
    private class C0765a extends ContentObserver {
        C0765a() {
            super(new Handler());
        }

        @Override // android.database.ContentObserver
        public boolean deliverSelfNotifications() {
            return true;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z10) {
            a.this.i();
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private class b extends DataSetObserver {
        b() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            a aVar = a.this;
            aVar.f63065a = true;
            aVar.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            a aVar = a.this;
            aVar.f63065a = false;
            aVar.notifyDataSetInvalidated();
        }
    }

    public a(Context context, Cursor cursor, boolean z10) {
        f(context, cursor, z10 ? 1 : 2);
    }

    public void a(Cursor cursor) {
        Cursor cursorJ = j(cursor);
        if (cursorJ != null) {
            cursorJ.close();
        }
    }

    public abstract CharSequence b(Cursor cursor);

    @Override // g1.b.a
    public Cursor d() {
        return this.f63067c;
    }

    public abstract void e(View view, Context context, Cursor cursor);

    void f(Context context, Cursor cursor, int i11) {
        if ((i11 & 1) == 1) {
            i11 |= 2;
            this.f63066b = true;
        } else {
            this.f63066b = false;
        }
        boolean z10 = cursor != null;
        this.f63067c = cursor;
        this.f63065a = z10;
        this.f63068d = context;
        this.f63069e = z10 ? cursor.getColumnIndexOrThrow("_id") : -1;
        if ((i11 & 2) == 2) {
            this.f63070f = new C0765a();
            this.f63071g = new b();
        } else {
            this.f63070f = null;
            this.f63071g = null;
        }
        if (z10) {
            C0765a c0765a = this.f63070f;
            if (c0765a != null) {
                cursor.registerContentObserver(c0765a);
            }
            DataSetObserver dataSetObserver = this.f63071g;
            if (dataSetObserver != null) {
                cursor.registerDataSetObserver(dataSetObserver);
            }
        }
    }

    public abstract View g(Context context, Cursor cursor, ViewGroup viewGroup);

    @Override // android.widget.Adapter
    public int getCount() {
        Cursor cursor;
        if (!this.f63065a || (cursor = this.f63067c) == null) {
            return 0;
        }
        return cursor.getCount();
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i11, View view, ViewGroup viewGroup) {
        if (!this.f63065a) {
            return null;
        }
        this.f63067c.moveToPosition(i11);
        if (view == null) {
            view = g(this.f63068d, this.f63067c, viewGroup);
        }
        e(view, this.f63068d, this.f63067c);
        return view;
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        if (this.f63072h == null) {
            this.f63072h = new g1.b(this);
        }
        return this.f63072h;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i11) {
        Cursor cursor;
        if (!this.f63065a || (cursor = this.f63067c) == null) {
            return null;
        }
        cursor.moveToPosition(i11);
        return this.f63067c;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i11) {
        Cursor cursor;
        if (this.f63065a && (cursor = this.f63067c) != null && cursor.moveToPosition(i11)) {
            return this.f63067c.getLong(this.f63069e);
        }
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i11, View view, ViewGroup viewGroup) {
        if (!this.f63065a) {
            throw new IllegalStateException("this should only be called when the cursor is valid");
        }
        if (this.f63067c.moveToPosition(i11)) {
            if (view == null) {
                view = h(this.f63068d, this.f63067c, viewGroup);
            }
            e(view, this.f63068d, this.f63067c);
            return view;
        }
        throw new IllegalStateException("couldn't move cursor to position " + i11);
    }

    public abstract View h(Context context, Cursor cursor, ViewGroup viewGroup);

    protected void i() {
        Cursor cursor;
        if (!this.f63066b || (cursor = this.f63067c) == null || cursor.isClosed()) {
            return;
        }
        this.f63065a = this.f63067c.requery();
    }

    public Cursor j(Cursor cursor) {
        Cursor cursor2 = this.f63067c;
        if (cursor == cursor2) {
            return null;
        }
        if (cursor2 != null) {
            C0765a c0765a = this.f63070f;
            if (c0765a != null) {
                cursor2.unregisterContentObserver(c0765a);
            }
            DataSetObserver dataSetObserver = this.f63071g;
            if (dataSetObserver != null) {
                cursor2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.f63067c = cursor;
        if (cursor != null) {
            C0765a c0765a2 = this.f63070f;
            if (c0765a2 != null) {
                cursor.registerContentObserver(c0765a2);
            }
            DataSetObserver dataSetObserver2 = this.f63071g;
            if (dataSetObserver2 != null) {
                cursor.registerDataSetObserver(dataSetObserver2);
            }
            this.f63069e = cursor.getColumnIndexOrThrow("_id");
            this.f63065a = true;
            notifyDataSetChanged();
        } else {
            this.f63069e = -1;
            this.f63065a = false;
            notifyDataSetInvalidated();
        }
        return cursor2;
    }
}
