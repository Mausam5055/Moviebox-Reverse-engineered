package pv;

import ak.k;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoBelongToCollection;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public abstract class b {
    public static final void a(UGCVideo uGCVideo, Function1 function1) {
        Navigator navigator;
        Intrinsics.h(uGCVideo, "<this>");
        Navigator navigatorK = TheRouter.c("/ugc_video/detail").K("id", uGCVideo.getUgcVideoId()).K("ugcCategory", uGCVideo.getCategory());
        UGCVideoBelongToCollection belongToCollection = uGCVideo.getBelongToCollection();
        Navigator navigatorK2 = navigatorK.K("collection_id", belongToCollection != null ? belongToCollection.getCollectionId() : null).K("videoStyle", uGCVideo.getVideoStyle()).K("ops", uGCVideo.getOps());
        if (function1 != null && (navigator = (Navigator) function1.invoke(navigatorK2)) != null) {
            navigatorK2 = navigator;
        }
        k.p(navigatorK2);
    }

    public static /* synthetic */ void b(UGCVideo uGCVideo, Function1 function1, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            function1 = null;
        }
        a(uGCVideo, function1);
    }
}
