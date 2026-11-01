package pv;

import com.transsion.ugcvideodetail.api.bean.UGCVideoPlayInfo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoPlayStream;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f72500a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f72501b = "";

    private a() {
    }

    private final boolean b(UGCVideoPlayStream uGCVideoPlayStream, String str) {
        Integer numV = StringsKt.v(str);
        int iIntValue = numV != null ? numV.intValue() : 0;
        Integer numV2 = StringsKt.v(uGCVideoPlayStream.getResolutions());
        int iIntValue2 = numV2 != null ? numV2.intValue() : 0;
        return iIntValue2 > 0 && iIntValue > 0 && iIntValue2 > iIntValue;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r4v10, types: [com.transsion.ugcvideodetail.api.bean.UGCVideoPlayStream] */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [com.transsion.ugcvideodetail.api.bean.UGCVideoPlayStream] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v8, types: [java.lang.Object] */
    private final UGCVideoPlayStream c(List list) {
        UGCVideoPlayStream uGCVideoPlayStream;
        Object next;
        if (list.isEmpty()) {
            return null;
        }
        String strD = d();
        lg.a.C0828a.f(lg.a.f68839a, "UGCResolutionHelper", "getMp4DefaultPlayBean, savedResolution： " + f72501b, false, 4, null);
        List<UGCVideoPlayStream> list2 = list;
        ?? U0 = 0;
        for (UGCVideoPlayStream uGCVideoPlayStream2 : list2) {
            if (!uGCVideoPlayStream2.isOnline()) {
                U0 = uGCVideoPlayStream2;
            }
        }
        if (U0 != 0) {
            return U0;
        }
        for (UGCVideoPlayStream uGCVideoPlayStream3 : list2) {
            if (Intrinsics.c(uGCVideoPlayStream3.getResolutions(), strD)) {
                U0 = uGCVideoPlayStream3;
            }
        }
        if (U0 == 0) {
            Iterator it = list2.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!f72500a.b((UGCVideoPlayStream) next, strD));
            U0 = (UGCVideoPlayStream) next;
        }
        if (U0 == 0) {
            U0 = CollectionsKt.u0(list);
        }
        if (f72501b.length() == 0 && (uGCVideoPlayStream = (UGCVideoPlayStream) U0) != null) {
            f72500a.e(uGCVideoPlayStream.getResolutions());
        }
        UGCVideoPlayStream uGCVideoPlayStream4 = (UGCVideoPlayStream) U0;
        lg.a.C0828a.f(lg.a.f68839a, "UGCResolutionHelper", "getMp4DefaultPlayBean, bean.resolutions： " + (uGCVideoPlayStream4 != null ? uGCVideoPlayStream4.getResolutions() : null), false, 4, null);
        return uGCVideoPlayStream4;
    }

    public final UGCVideoPlayStream a(UGCVideoPlayInfo uGCVideoPlayInfo) {
        List<UGCVideoPlayStream> resources = uGCVideoPlayInfo != null ? uGCVideoPlayInfo.getResources() : null;
        if (resources == null || resources.isEmpty()) {
            return null;
        }
        return uGCVideoPlayInfo.getResources().size() == 1 ? (UGCVideoPlayStream) CollectionsKt.i0(uGCVideoPlayInfo.getResources()) : c(uGCVideoPlayInfo.getResources());
    }

    public final String d() {
        String string = f72501b;
        if (string.length() == 0) {
            string = com.transsion.baselib.report.launch.b.f43370a.b().getString("key_stream_resolution", "480");
            if (string == null) {
                string = "480";
            }
            f72501b = string;
        }
        return string;
    }

    public final void e(String resolution) {
        Intrinsics.h(resolution, "resolution");
        lg.a.C0828a.f(lg.a.f68839a, "UGCResolutionHelper", "save, resolution： " + resolution, false, 4, null);
        f72501b = resolution;
        com.transsion.baselib.report.launch.b.f43370a.b().putString("key_stream_resolution", resolution);
    }
}
