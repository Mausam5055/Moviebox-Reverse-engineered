package com.transsion.videofloat;

import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.e;
import androidx.databinding.f;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class DataBinderMapperImpl extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final SparseIntArray f57892a = new SparseIntArray(0);

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final HashMap f57893a = new HashMap(0);
    }

    @Override // androidx.databinding.e
    public List a() {
        ArrayList arrayList = new ArrayList(17);
        arrayList.add(new androidx.databinding.library.baseAdapters.DataBinderMapperImpl());
        arrayList.add(new com.avery.subtitle.DataBinderMapperImpl());
        arrayList.add(new com.permissionx.guolindev.DataBinderMapperImpl());
        arrayList.add(new com.tn.lib.thread.DataBinderMapperImpl());
        arrayList.add(new com.tn.lib.widget.DataBinderMapperImpl());
        arrayList.add(new com.transsion.ad.DataBinderMapperImpl());
        arrayList.add(new com.transsion.base.dialog.DataBinderMapperImpl());
        arrayList.add(new com.transsion.base.image.DataBinderMapperImpl());
        arrayList.add(new com.transsion.base.report.DataBinderMapperImpl());
        arrayList.add(new com.transsion.baselib.DataBinderMapperImpl());
        arrayList.add(new com.transsion.baseui.DataBinderMapperImpl());
        arrayList.add(new com.transsion.baseui.utils.DataBinderMapperImpl());
        arrayList.add(new com.transsion.mb.config.DataBinderMapperImpl());
        arrayList.add(new com.transsion.mpush.DataBinderMapperImpl());
        arrayList.add(new com.transsion.player.DataBinderMapperImpl());
        arrayList.add(new com.transsion.subtitle.DataBinderMapperImpl());
        arrayList.add(new com.transsion.subtitle_download.DataBinderMapperImpl());
        return arrayList;
    }

    @Override // androidx.databinding.e
    public ViewDataBinding b(f fVar, View view, int i11) {
        if (f57892a.get(i11) <= 0 || view.getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }

    @Override // androidx.databinding.e
    public int c(String str) {
        Integer num;
        if (str == null || (num = (Integer) a.f57893a.get(str)) == null) {
            return 0;
        }
        return num.intValue();
    }
}
