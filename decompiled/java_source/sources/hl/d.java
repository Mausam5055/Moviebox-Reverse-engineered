package hl;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.transsion.home.bean.BannerData;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.moviedetailapi.bean.PostItemType;
import com.transsion.ugcvideodetail.api.bean.UGCContent;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.web.api.WebConstants;
import hj.i;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class d {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f64525c = new a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f64526d = 8;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private HashSet f64527a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f64528b;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void e(a aVar, int i11, int i12, OperateItem operateItem, UGCVideo uGCVideo, Map map, int i13, Object obj) {
            if ((i13 & 16) != 0) {
                map = null;
            }
            aVar.d(i11, i12, operateItem, uGCVideo, map);
        }

        public static /* synthetic */ void g(a aVar, int i11, int i12, OperateItem operateItem, UGCVideo uGCVideo, Map map, int i13, Object obj) {
            if ((i13 & 16) != 0) {
                map = null;
            }
            aVar.f(i11, i12, operateItem, uGCVideo, map);
        }

        public final void a(int i11, int i12, OperateItem operateItem, BannerData bannerData) {
            Intrinsics.h(operateItem, "operateItem");
            HashMap map = new HashMap();
            if (bannerData != null) {
                il.b.c(bannerData, map);
            }
            il.b.a(operateItem, map);
            map.put("module_name", WebConstants.FIELD_ITEM);
            map.put(RequestParameters.POSITION, String.valueOf(i12));
            map.put("tabId", String.valueOf(i11));
            i.f64505a.D(SubTabFragment.INSTANCE.a(i11), map);
        }

        public final void b(int i11, int i12, OperateItem operateItem, BannerData bannerData) {
            Intrinsics.h(operateItem, "operateItem");
            HashMap map = new HashMap();
            if (bannerData != null) {
                il.b.c(bannerData, map);
            }
            il.b.a(operateItem, map);
            map.put("module_name", WebConstants.FIELD_ITEM);
            map.put(RequestParameters.POSITION, String.valueOf(i12));
            map.put("tabId", String.valueOf(i11));
            i.f64505a.p(SubTabFragment.INSTANCE.a(i11), map);
        }

        public final void c(int i11, OperateItem operateItem, int i12) {
            Intrinsics.h(operateItem, "operateItem");
            HashMap map = new HashMap();
            UGCVideo feedsUGCVideo = operateItem.getFeedsUGCVideo();
            if (feedsUGCVideo != null) {
                il.b.f(feedsUGCVideo, map);
            }
            OperateItem originalOperateItem = operateItem.getOriginalOperateItem();
            if (originalOperateItem != null) {
                il.b.a(originalOperateItem, map);
            }
            map.put("module_name", WebConstants.FIELD_ITEM);
            map.put(RequestParameters.POSITION, String.valueOf(i11));
            map.put("card_type", Intrinsics.c(operateItem.getType(), PostItemType.TRENDING_FEES_GRID.getValue()) ? "grid" : "big");
            i.f64505a.p(SubTabFragment.INSTANCE.a(i12), map);
        }

        public final void d(int i11, int i12, OperateItem operateItem, UGCVideo uGCVideo, Map map) {
            OperateItem originalOperateItem;
            HashMap map2 = new HashMap();
            if (uGCVideo != null) {
                il.b.f(uGCVideo, map2);
            }
            if (operateItem != null) {
                il.b.a(operateItem, map2);
            }
            if (operateItem != null && (originalOperateItem = operateItem.getOriginalOperateItem()) != null) {
                il.b.a(originalOperateItem, map2);
            }
            if (map != null) {
                for (Map.Entry entry : map.entrySet()) {
                    map2.put((String) entry.getKey(), (String) entry.getValue());
                }
            }
            map2.put("module_name", WebConstants.FIELD_ITEM);
            map2.put(RequestParameters.POSITION, String.valueOf(i12));
            map2.put("tabId", String.valueOf(i11));
            i.f64505a.D(SubTabFragment.INSTANCE.a(i11), map2);
        }

        public final void f(int i11, int i12, OperateItem operateItem, UGCVideo uGCVideo, Map map) {
            HashMap map2 = new HashMap();
            if (uGCVideo != null) {
                il.b.f(uGCVideo, map2);
            }
            if (operateItem != null) {
                il.b.a(operateItem, map2);
            }
            if (map != null) {
                for (Map.Entry entry : map.entrySet()) {
                    map2.put((String) entry.getKey(), (String) entry.getValue());
                }
            }
            map2.put("module_name", WebConstants.FIELD_ITEM);
            map2.put(RequestParameters.POSITION, String.valueOf(i12));
            map2.put("tabId", String.valueOf(i11));
            i.f64505a.p(SubTabFragment.INSTANCE.a(i11), map2);
        }
    }

    public d(String page) {
        Intrinsics.h(page, "page");
        this.f64527a = new HashSet();
        this.f64528b = page;
    }

    /* JADX WARN: Code duplicated, block: B:75:0x015a  */
    public final void a(OperateItem operateItem, int i11, long j11) {
        String string;
        List<UGCContent> contentList;
        String ugcVideoId;
        if (operateItem == null) {
            return;
        }
        String type = operateItem.getType();
        PostItemType postItemType = PostItemType.TRENDING_FEES_GRID;
        if (Intrinsics.c(type, postItemType.getValue()) || Intrinsics.c(operateItem.getType(), PostItemType.TRENDING_FEES_BIG.getValue())) {
            HashSet hashSet = this.f64527a;
            UGCVideo feedsUGCVideo = operateItem.getFeedsUGCVideo();
            if (CollectionsKt.b0(hashSet, feedsUGCVideo != null ? feedsUGCVideo.getUgcVideoId() : null)) {
                lg.a.C0828a c0828a = lg.a.f68839a;
                UGCVideo feedsUGCVideo2 = operateItem.getFeedsUGCVideo();
                lg.a.C0828a.f(c0828a, "reportExposure", "trendFragment position:" + i11 + ",subjectId: + " + (feedsUGCVideo2 != null ? feedsUGCVideo2.getUgcVideoId() : null) + "}", false, 4, null);
                return;
            }
            UGCVideo feedsUGCVideo3 = operateItem.getFeedsUGCVideo();
            if (feedsUGCVideo3 != null && (ugcVideoId = feedsUGCVideo3.getUgcVideoId()) != null && ugcVideoId.length() > 0) {
                HashSet hashSet2 = this.f64527a;
                UGCVideo feedsUGCVideo4 = operateItem.getFeedsUGCVideo();
                String ugcVideoId2 = feedsUGCVideo4 != null ? feedsUGCVideo4.getUgcVideoId() : null;
                Intrinsics.e(ugcVideoId2);
                hashSet2.add(ugcVideoId2);
            }
            if (operateItem.getOriginalOperateItem() == null) {
                HashMap map = new HashMap();
                UGCVideo feedsUGCVideo5 = operateItem.getFeedsUGCVideo();
                if (feedsUGCVideo5 != null) {
                    il.b.f(feedsUGCVideo5, map);
                }
                map.put("module_name", WebConstants.FIELD_ITEM);
                if (j11 > 0) {
                    map.put("browse_duration", String.valueOf(j11));
                }
                map.put(RequestParameters.POSITION, String.valueOf(i11));
                map.put("card_type", Intrinsics.c(operateItem.getType(), postItemType.getValue()) ? "grid" : "big");
                i.f64505a.D(this.f64528b, map);
                return;
            }
            HashMap map2 = new HashMap();
            UGCVideo feedsUGCVideo6 = operateItem.getFeedsUGCVideo();
            if (feedsUGCVideo6 != null) {
                il.b.f(feedsUGCVideo6, map2);
            }
            OperateItem originalOperateItem = operateItem.getOriginalOperateItem();
            if (originalOperateItem != null) {
                il.b.a(originalOperateItem, map2);
            }
            map2.put("module_name", WebConstants.FIELD_ITEM);
            if (j11 > 0) {
                map2.put("browse_duration", String.valueOf(j11));
            }
            OperateItem originalOperateItem2 = operateItem.getOriginalOperateItem();
            if (originalOperateItem2 == null || (contentList = originalOperateItem2.getContentList()) == null) {
                string = "0";
            } else {
                Iterator<UGCContent> it = contentList.iterator();
                int i12 = 0;
                while (true) {
                    if (!it.hasNext()) {
                        i12 = -1;
                        break;
                    }
                    UGCVideo video = it.next().getVideo();
                    String ugcVideoId3 = video != null ? video.getUgcVideoId() : null;
                    UGCVideo feedsUGCVideo7 = operateItem.getFeedsUGCVideo();
                    if (Intrinsics.c(ugcVideoId3, feedsUGCVideo7 != null ? feedsUGCVideo7.getUgcVideoId() : null)) {
                        break;
                    } else {
                        i12++;
                    }
                }
                string = Integer.valueOf(i12).toString();
                if (string == null) {
                    string = "0";
                }
            }
            map2.put(RequestParameters.POSITION, string);
            map2.put("card_type", Intrinsics.c(operateItem.getType(), PostItemType.TRENDING_FEES_GRID.getValue()) ? "grid" : "big");
            i.f64505a.D(this.f64528b, map2);
        }
    }
}
