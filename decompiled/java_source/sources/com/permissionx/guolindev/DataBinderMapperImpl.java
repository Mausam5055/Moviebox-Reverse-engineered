package com.permissionx.guolindev;

import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.e;
import androidx.databinding.f;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class DataBinderMapperImpl extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final SparseIntArray f40062a = new SparseIntArray(0);

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final HashMap f40063a = new HashMap(0);
    }

    @Override // androidx.databinding.e
    public List a() {
        ArrayList arrayList = new ArrayList(6);
        arrayList.add(new androidx.databinding.library.baseAdapters.DataBinderMapperImpl());
        arrayList.add(new com.tn.lib.widget.DataBinderMapperImpl());
        arrayList.add(new com.transsion.base.dialog.DataBinderMapperImpl());
        arrayList.add(new com.transsion.base.report.DataBinderMapperImpl());
        arrayList.add(new com.transsion.baselib.DataBinderMapperImpl());
        arrayList.add(new com.transsion.baseui.DataBinderMapperImpl());
        return arrayList;
    }

    @Override // androidx.databinding.e
    public ViewDataBinding b(f fVar, View view, int i11) {
        if (f40062a.get(i11) <= 0 || view.getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }

    @Override // androidx.databinding.e
    public int c(String str) {
        Integer num;
        if (str == null || (num = (Integer) a.f40063a.get(str)) == null) {
            return 0;
        }
        return num.intValue();
    }
}
