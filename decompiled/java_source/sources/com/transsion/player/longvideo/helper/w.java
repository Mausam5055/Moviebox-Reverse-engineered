package com.transsion.player.longvideo.helper;

import com.transsion.player.longvideo.ui.LongVodPlayerView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class w {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f48031b = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f48032a = "";

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private final boolean b(go.c cVar, String str) {
        Integer numV = StringsKt.v(str);
        int iIntValue = numV != null ? numV.intValue() : 0;
        Integer numV2 = StringsKt.v(cVar.e());
        int iIntValue2 = numV2 != null ? numV2.intValue() : 0;
        return iIntValue2 > 0 && iIntValue > 0 && iIntValue2 > iIntValue;
    }

    private final Object c(go.a aVar, Continuation continuation) {
        Object objU0;
        Object next;
        go.c cVar;
        List listJ = aVar.j();
        if (listJ.isEmpty()) {
            return null;
        }
        String string = this.f48032a;
        if (string.length() == 0) {
            string = com.transsion.baselib.report.launch.b.f43370a.b().getString("key_stream_resolution", "");
            if (string == null) {
                string = "";
            }
            this.f48032a = string;
        }
        lg.a.C0828a.f(lg.a.f68839a, LongVodPlayerView.TAG, "getMp4DefaultPlayBean, savedResolution： " + this.f48032a, false, 4, null);
        List<go.c> list = listJ;
        go.c cVar2 = null;
        for (go.c cVar3 : list) {
            if (!cVar3.j()) {
                cVar2 = cVar3;
            }
        }
        if (cVar2 != null) {
            return cVar2;
        }
        if (string.length() == 0) {
            Iterator it = list.iterator();
            if (it.hasNext()) {
                objU0 = it.next();
                if (it.hasNext()) {
                    Integer numV = StringsKt.v(((go.c) objU0).e());
                    int iIntValue = numV != null ? numV.intValue() : 0;
                    do {
                        Object next2 = it.next();
                        Integer numV2 = StringsKt.v(((go.c) next2).e());
                        int iIntValue2 = numV2 != null ? numV2.intValue() : 0;
                        if (iIntValue < iIntValue2) {
                            objU0 = next2;
                            iIntValue = iIntValue2;
                        }
                    } while (it.hasNext());
                }
            } else {
                objU0 = null;
            }
        } else {
            for (go.c cVar4 : list) {
                if (Intrinsics.c(cVar4.e(), string)) {
                    cVar2 = cVar4;
                }
            }
            if (cVar2 == null) {
                Iterator it2 = list.iterator();
                do {
                    if (!it2.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it2.next();
                } while (!b((go.c) next, string));
                objU0 = (go.c) next;
            } else {
                objU0 = cVar2;
            }
        }
        if (objU0 == null) {
            objU0 = CollectionsKt.u0(listJ);
        }
        if (this.f48032a.length() == 0 && (cVar = (go.c) objU0) != null) {
            f(cVar.e());
        }
        go.c cVar5 = (go.c) objU0;
        lg.a.C0828a.f(lg.a.f68839a, LongVodPlayerView.TAG, "getMp4DefaultPlayBean, bean.resolutions： " + (cVar5 != null ? cVar5.e() : null), false, 4, null);
        return objU0;
    }

    public final Object a(go.a aVar, Continuation continuation) {
        if (aVar.j().isEmpty()) {
            return null;
        }
        go.c cVar = (go.c) CollectionsKt.i0(aVar.j());
        com.transsion.player.longvideo.member.k.f48225a.a("LongVodResolutionHelper --> getDefaultPlayStream() --> 是MP4格式 = " + aVar.w());
        return aVar.w() ? c(aVar, continuation) : cVar;
    }

    public final go.c d(go.a bean, go.b config) {
        Intrinsics.h(bean, "bean");
        Intrinsics.h(config, "config");
        for (go.c cVar : bean.j()) {
            if (StringsKt.c0(config.d(), cVar.e(), false, 2, null)) {
                return cVar;
            }
        }
        return null;
    }

    public final List e(go.c playStream, List mp4Streams) {
        Intrinsics.h(playStream, "playStream");
        Intrinsics.h(mp4Streams, "mp4Streams");
        ArrayList arrayList = new ArrayList();
        Iterator it = mp4Streams.iterator();
        while (it.hasNext()) {
            go.c cVar = (go.c) it.next();
            arrayList.add(new go.b(Intrinsics.c(cVar.e(), playStream.e()), cVar.e() + "P", null, 4, null));
        }
        return arrayList;
    }

    public final void f(String resolution) {
        Intrinsics.h(resolution, "resolution");
        lg.a.C0828a.f(lg.a.f68839a, LongVodPlayerView.TAG, "save, resolution： " + resolution, false, 4, null);
        this.f48032a = resolution;
        com.transsion.baselib.report.launch.b.f43370a.b().putString("key_stream_resolution", resolution);
    }
}
