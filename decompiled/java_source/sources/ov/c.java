package ov;

import ak.k;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.ugcvideodetail.api.bean.UGCCollection;
import com.transsion.ugcvideodetail.api.bean.UGCContent;
import com.transsion.ugcvideodetail.api.bean.UGCVerticalRank;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public abstract class c {
    public static final void c(UGCCollection uGCCollection, final Integer num, final String str) {
        List<UGCVideo> videos;
        UGCVideo uGCVideo;
        if (uGCCollection == null || (videos = uGCCollection.getVideos()) == null || (uGCVideo = (UGCVideo) CollectionsKt.k0(videos)) == null) {
            return;
        }
        pv.b.a(uGCVideo, new Function1() { // from class: ov.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return c.d(str, num, (Navigator) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Navigator d(String str, Integer num, Navigator navigator) {
        Intrinsics.h(navigator, "navigator");
        return navigator.K("from_opt_id", str).K("tab_id", num != null ? num.toString() : null);
    }

    public static final void e(UGCContent uGCContent, Integer num, String str) {
        UGCVideo video;
        UGCCollection collection;
        UGCVerticalRank verticalRank;
        String topicType = uGCContent != null ? uGCContent.getTopicType() : null;
        if (topicType != null) {
            int iHashCode = topicType.hashCode();
            if (iHashCode == -1989652851) {
                if (topicType.equals("UGC_VIDEO") && (video = uGCContent.getVideo()) != null) {
                    h(video, num, str);
                    return;
                }
                return;
            }
            if (iHashCode == 511113132) {
                if (topicType.equals("UGC_COLLECTION") && (collection = uGCContent.getCollection()) != null) {
                    c(collection, num, str);
                    return;
                }
                return;
            }
            if (iHashCode == 2033770325 && topicType.equals("VERTICAL_RANK") && (verticalRank = uGCContent.getVerticalRank()) != null) {
                g(verticalRank);
            }
        }
    }

    public static /* synthetic */ void f(UGCContent uGCContent, Integer num, String str, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            num = null;
        }
        if ((i11 & 2) != 0) {
            str = null;
        }
        e(uGCContent, num, str);
    }

    public static final void g(UGCVerticalRank uGCVerticalRank) {
        List<UGCVideo> videos;
        UGCVideo uGCVideo;
        String deeplink;
        String deeplink2 = uGCVerticalRank != null ? uGCVerticalRank.getDeeplink() : null;
        if (deeplink2 == null || deeplink2.length() == 0) {
            k.p(TheRouter.c("/home/ugc_ranking").K("category", (uGCVerticalRank == null || (videos = uGCVerticalRank.getVideos()) == null || (uGCVideo = (UGCVideo) CollectionsKt.k0(videos)) == null) ? null : uGCVideo.getCategory()).K("tabId", uGCVerticalRank != null ? uGCVerticalRank.getId() : null));
        } else {
            if (uGCVerticalRank == null || (deeplink = uGCVerticalRank.getDeeplink()) == null) {
                return;
            }
            k.h(deeplink, null, 1, null);
        }
    }

    public static final void h(UGCVideo uGCVideo, final Integer num, final String str) {
        if (uGCVideo != null) {
            pv.b.a(uGCVideo, new Function1() { // from class: ov.b
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return c.j(str, num, (Navigator) obj);
                }
            });
        }
    }

    public static /* synthetic */ void i(UGCVideo uGCVideo, Integer num, String str, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            num = null;
        }
        if ((i11 & 2) != 0) {
            str = null;
        }
        h(uGCVideo, num, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Navigator j(String str, Integer num, Navigator navigator) {
        Intrinsics.h(navigator, "navigator");
        return navigator.K("from_opt_id", str).K("tab_id", num != null ? num.toString() : null);
    }
}
