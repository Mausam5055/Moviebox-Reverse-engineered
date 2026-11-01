package g1;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public abstract class c extends a {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f63076i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f63077j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private LayoutInflater f63078k;

    public c(Context context, int i11, Cursor cursor, boolean z10) {
        super(context, cursor, z10);
        this.f63077j = i11;
        this.f63076i = i11;
        this.f63078k = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    @Override // g1.a
    public View g(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.f63078k.inflate(this.f63077j, viewGroup, false);
    }

    @Override // g1.a
    public View h(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.f63078k.inflate(this.f63076i, viewGroup, false);
    }
}
