package com.transsion.home.preload;

import android.content.Context;
import com.transsion.home.bean.AppointSubject;
import com.transsion.home.bean.BannerData;
import com.transsion.home.bean.CustomData;
import com.transsion.home.bean.FilterItem;
import com.transsion.home.bean.OperateItem;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Image;
import com.transsion.moviedetailapi.bean.PostItemType;
import com.transsion.moviedetailapi.bean.Subject;
import java.util.Iterator;
import java.util.List;
import jn.d;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public abstract class c {
    public static final void a(Context context, List list) {
        Cover cover;
        String url;
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Subject feedsSubject = ((OperateItem) it.next()).getFeedsSubject();
                if (feedsSubject != null && (cover = feedsSubject.getCover()) != null && (url = cover.getUrl()) != null && context != null) {
                    d.b(url);
                }
            }
        }
    }

    public static final void b(List list) {
        CustomData customData;
        List<BannerData> items;
        String url;
        String url2;
        String url3;
        if (list != null) {
            int i11 = 0;
            for (Object obj : list) {
                int i12 = i11 + 1;
                if (i11 < 0) {
                    CollectionsKt.u();
                }
                OperateItem operateItem = (OperateItem) obj;
                if (i11 >= 2) {
                    String type = operateItem.getType();
                    if (Intrinsics.c(type, PostItemType.FILTER.getValue())) {
                        List<FilterItem> filters = operateItem.getFilters();
                        if (filters != null) {
                            int i13 = 0;
                            for (Object obj2 : filters) {
                                int i14 = i13 + 1;
                                if (i13 < 0) {
                                    CollectionsKt.u();
                                }
                                FilterItem filterItem = (FilterItem) obj2;
                                if (i13 < 3) {
                                    Cover image = filterItem.getImage();
                                    if (image == null || (url3 = image.getUrl()) == null) {
                                        url3 = "";
                                    }
                                    d.b(url3);
                                }
                                i13 = i14;
                            }
                        }
                    } else if (Intrinsics.c(type, PostItemType.OP_SUBJECTS_MOVIE.getValue())) {
                        List<AppointSubject> subjects = operateItem.getSubjects();
                        if (subjects != null) {
                            int i15 = 0;
                            for (Object obj3 : subjects) {
                                int i16 = i15 + 1;
                                if (i15 < 0) {
                                    CollectionsKt.u();
                                }
                                AppointSubject appointSubject = (AppointSubject) obj3;
                                if (i15 < 4) {
                                    Cover cover = appointSubject.getCover();
                                    if (cover == null || (url2 = cover.getUrl()) == null) {
                                        url2 = "";
                                    }
                                    d.b(url2);
                                }
                                i15 = i16;
                            }
                        }
                    } else if (Intrinsics.c(type, PostItemType.CUSTOM_DATA.getValue()) && (customData = operateItem.getCustomData()) != null && (items = customData.getItems()) != null) {
                        int i17 = 0;
                        for (Object obj4 : items) {
                            int i18 = i17 + 1;
                            if (i17 < 0) {
                                CollectionsKt.u();
                            }
                            BannerData bannerData = (BannerData) obj4;
                            CustomData customData2 = operateItem.getCustomData();
                            if (i17 < (customData2 != null ? customData2.getRowCount() : 0)) {
                                Image image2 = bannerData.getImage();
                                if (image2 == null || (url = image2.getUrl()) == null) {
                                    url = "";
                                }
                                d.b(url);
                            }
                            i17 = i18;
                        }
                    }
                }
                i11 = i12;
            }
        }
    }
}
