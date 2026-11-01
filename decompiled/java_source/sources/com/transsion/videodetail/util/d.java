package com.transsion.videodetail.util;

import com.transsion.moviedetailapi.bean.ResourcesSeason;
import com.transsion.moviedetailapi.bean.ResourcesSeasonList;
import com.transsion.videodetail.VideoDetailViewModel;
import com.transsion.videodetail.bean.VideoDetailMediaSource;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f57880a = new d();

    private d() {
    }

    public final List a(VideoDetailViewModel viewModel, int i11) {
        List<ResourcesSeason> seasons;
        Intrinsics.h(viewModel, "viewModel");
        ResourcesSeasonList resourcesSeasonList = (ResourcesSeasonList) viewModel.z().f();
        int size = (resourcesSeasonList == null || (seasons = resourcesSeasonList.getSeasons()) == null) ? 1 : seasons.size();
        ArrayList arrayList = new ArrayList();
        List<VideoDetailMediaSource> list = (List) viewModel.s().f();
        if (list != null) {
            if (size <= 1) {
                arrayList.addAll(list);
            } else {
                for (VideoDetailMediaSource videoDetailMediaSource : list) {
                    if (videoDetailMediaSource.getSe() == i11) {
                        arrayList.add(videoDetailMediaSource);
                    }
                }
            }
        }
        return arrayList;
    }
}
