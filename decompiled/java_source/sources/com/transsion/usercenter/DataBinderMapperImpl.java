package com.transsion.usercenter;

import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.ViewDataBinding;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class DataBinderMapperImpl extends androidx.databinding.e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final SparseIntArray f56640a = new SparseIntArray(0);

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final HashMap f56641a = new HashMap(0);
    }

    @Override // androidx.databinding.e
    public List a() {
        ArrayList arrayList = new ArrayList(30);
        arrayList.add(new androidx.databinding.library.baseAdapters.DataBinderMapperImpl());
        arrayList.add(new com.permissionx.guolindev.DataBinderMapperImpl());
        arrayList.add(new com.tn.lib.net.DataBinderMapperImpl());
        arrayList.add(new com.tn.lib.thread.DataBinderMapperImpl());
        arrayList.add(new com.tn.lib.widget.DataBinderMapperImpl());
        arrayList.add(new com.transsion.ad.DataBinderMapperImpl());
        arrayList.add(new com.transsion.base.dialog.DataBinderMapperImpl());
        arrayList.add(new com.transsion.base.image.DataBinderMapperImpl());
        arrayList.add(new com.transsion.base.report.DataBinderMapperImpl());
        arrayList.add(new com.transsion.baselib.DataBinderMapperImpl());
        arrayList.add(new com.transsion.baseui.DataBinderMapperImpl());
        arrayList.add(new com.transsion.baseui.utils.DataBinderMapperImpl());
        arrayList.add(new com.transsion.downloadapi.DataBinderMapperImpl());
        arrayList.add(new com.transsion.fissionapi.DataBinderMapperImpl());
        arrayList.add(new com.transsion.lib_web.DataBinderMapperImpl());
        arrayList.add(new com.transsion.mb.config.DataBinderMapperImpl());
        arrayList.add(new com.transsion.mbwidget.DataBinderMapperImpl());
        arrayList.add(new com.transsion.memberapi.DataBinderMapperImpl());
        arrayList.add(new com.transsion.mpush.DataBinderMapperImpl());
        arrayList.add(new com.transsion.postdetailapi.DataBinderMapperImpl());
        arrayList.add(new com.transsion.publish.DataBinderMapperImpl());
        arrayList.add(new com.transsion.rewardscenterapi.DataBinderMapperImpl());
        arrayList.add(new com.transsion.share.DataBinderMapperImpl());
        arrayList.add(new com.transsion.shorttv.DataBinderMapperImpl());
        arrayList.add(new com.transsion.transfer.DataBinderMapperImpl());
        arrayList.add(new com.transsion.upload.DataBinderMapperImpl());
        arrayList.add(new com.transsion.version.update.DataBinderMapperImpl());
        arrayList.add(new com.transsion.web.DataBinderMapperImpl());
        arrayList.add(new com.transsnet.downloader.DataBinderMapperImpl());
        arrayList.add(new com.transsnet.flow.event.DataBinderMapperImpl());
        return arrayList;
    }

    @Override // androidx.databinding.e
    public ViewDataBinding b(androidx.databinding.f fVar, View view, int i11) {
        if (f56640a.get(i11) <= 0 || view.getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }

    @Override // androidx.databinding.e
    public int c(String str) {
        Integer num;
        if (str == null || (num = (Integer) a.f56641a.get(str)) == null) {
            return 0;
        }
        return num.intValue();
    }
}
