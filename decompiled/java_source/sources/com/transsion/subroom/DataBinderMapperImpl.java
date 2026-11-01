package com.transsion.subroom;

import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.e;
import androidx.databinding.f;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class DataBinderMapperImpl extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final SparseIntArray f54546a = new SparseIntArray(0);

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final HashMap f54547a = new HashMap(0);
    }

    @Override // androidx.databinding.e
    public List a() {
        ArrayList arrayList = new ArrayList(49);
        arrayList.add(new androidx.databinding.library.baseAdapters.DataBinderMapperImpl());
        arrayList.add(new com.permissionx.guolindev.DataBinderMapperImpl());
        arrayList.add(new com.tn.lib.net.DataBinderMapperImpl());
        arrayList.add(new com.tn.lib.thread.DataBinderMapperImpl());
        arrayList.add(new com.tn.lib.widget.DataBinderMapperImpl());
        arrayList.add(new com.transsion.ad.DataBinderMapperImpl());
        arrayList.add(new com.transsion.audio.DataBinderMapperImpl());
        arrayList.add(new com.transsion.base.dialog.DataBinderMapperImpl());
        arrayList.add(new com.transsion.base.image.DataBinderMapperImpl());
        arrayList.add(new com.transsion.base.report.DataBinderMapperImpl());
        arrayList.add(new com.transsion.baselib.DataBinderMapperImpl());
        arrayList.add(new com.transsion.baseui.DataBinderMapperImpl());
        arrayList.add(new com.transsion.baseui.utils.DataBinderMapperImpl());
        arrayList.add(new com.transsion.commercialization.DataBinderMapperImpl());
        arrayList.add(new com.transsion.commercializationapi.DataBinderMapperImpl());
        arrayList.add(new com.transsion.downloadapi.DataBinderMapperImpl());
        arrayList.add(new com.transsion.fission.DataBinderMapperImpl());
        arrayList.add(new com.transsion.fissionapi.DataBinderMapperImpl());
        arrayList.add(new com.transsion.home.DataBinderMapperImpl());
        arrayList.add(new com.transsion.homeapi.DataBinderMapperImpl());
        arrayList.add(new com.transsion.lib_web.DataBinderMapperImpl());
        arrayList.add(new com.transsion.mb.config.DataBinderMapperImpl());
        arrayList.add(new com.transsion.mbwidget.DataBinderMapperImpl());
        arrayList.add(new com.transsion.member.DataBinderMapperImpl());
        arrayList.add(new com.transsion.memberapi.DataBinderMapperImpl());
        arrayList.add(new com.transsion.moviedetail.DataBinderMapperImpl());
        arrayList.add(new com.transsion.mpush.DataBinderMapperImpl());
        arrayList.add(new com.transsion.ninegridview.DataBinderMapperImpl());
        arrayList.add(new com.transsion.player.DataBinderMapperImpl());
        arrayList.add(new com.transsion.player.longvideo.DataBinderMapperImpl());
        arrayList.add(new com.transsion.postdetail.DataBinderMapperImpl());
        arrayList.add(new com.transsion.postdetailapi.DataBinderMapperImpl());
        arrayList.add(new com.transsion.publish.DataBinderMapperImpl());
        arrayList.add(new com.transsion.rewardscenter.DataBinderMapperImpl());
        arrayList.add(new com.transsion.rewardscenterapi.DataBinderMapperImpl());
        arrayList.add(new com.transsion.room.DataBinderMapperImpl());
        arrayList.add(new com.transsion.search.DataBinderMapperImpl());
        arrayList.add(new com.transsion.share.DataBinderMapperImpl());
        arrayList.add(new com.transsion.shorttv.DataBinderMapperImpl());
        arrayList.add(new com.transsion.subtitle.DataBinderMapperImpl());
        arrayList.add(new com.transsion.ugcvideodetail.DataBinderMapperImpl());
        arrayList.add(new com.transsion.usercenter.DataBinderMapperImpl());
        arrayList.add(new com.transsion.version.update.DataBinderMapperImpl());
        arrayList.add(new com.transsion.videodetail.DataBinderMapperImpl());
        arrayList.add(new com.transsion.videofloat.DataBinderMapperImpl());
        arrayList.add(new com.transsion.web.DataBinderMapperImpl());
        arrayList.add(new com.transsnet.downloader.DataBinderMapperImpl());
        arrayList.add(new com.transsnet.flow.event.DataBinderMapperImpl());
        arrayList.add(new com.transsnet.login.DataBinderMapperImpl());
        return arrayList;
    }

    @Override // androidx.databinding.e
    public ViewDataBinding b(f fVar, View view, int i11) {
        if (f54546a.get(i11) <= 0 || view.getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }

    @Override // androidx.databinding.e
    public int c(String str) {
        Integer num;
        if (str == null || (num = (Integer) a.f54547a.get(str)) == null) {
            return 0;
        }
        return num.intValue();
    }
}
