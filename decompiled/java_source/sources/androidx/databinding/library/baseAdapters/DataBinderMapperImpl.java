package androidx.databinding.library.baseAdapters;

import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.e;
import androidx.databinding.f;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class DataBinderMapperImpl extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final SparseIntArray f8555a = new SparseIntArray(0);

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final HashMap f8556a = new HashMap(0);
    }

    @Override // androidx.databinding.e
    public List a() {
        return new ArrayList(0);
    }

    @Override // androidx.databinding.e
    public ViewDataBinding b(f fVar, View view, int i11) {
        if (f8555a.get(i11) <= 0 || view.getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }

    @Override // androidx.databinding.e
    public int c(String str) {
        Integer num;
        if (str == null || (num = (Integer) a.f8556a.get(str)) == null) {
            return 0;
        }
        return num.intValue();
    }
}
