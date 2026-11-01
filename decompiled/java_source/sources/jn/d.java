package jn;

import android.content.Context;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Image;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public abstract class d {
    public static final void b(String url) {
        Intrinsics.h(url, "url");
        ej.f.a aVar = ej.f.f61882a;
        final String strE = ej.f.a.e(aVar, url, aVar.c(), false, true, 4, null);
        lg.a.C0828a.f(lg.a.f68839a, "ImageHelper", "preload url=" + strE, false, 4, null);
        final long jCurrentTimeMillis = System.currentTimeMillis();
        aVar.i(strE, url, aVar.c(), new Function1() { // from class: jn.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return d.c(jCurrentTimeMillis, strE, ((Boolean) obj).booleanValue());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit c(long j11, String str, boolean z10) {
        if (z10) {
            long jCurrentTimeMillis = System.currentTimeMillis() - j11;
            lg.a.C0828a.f(lg.a.f68839a, "ImageHelper", "预加载成功 duration=" + jCurrentTimeMillis + " url=" + str, false, 4, null);
        } else {
            lg.a.C0828a.f(lg.a.f68839a, "ImageHelper", str + " 预加载失败", false, 4, null);
        }
        return Unit.f67061a;
    }

    public static final void d(Context context, List list) {
        Cover cover;
        String url;
        List<Image> image;
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                PostSubjectItem postSubjectItem = (PostSubjectItem) it.next();
                Media media = postSubjectItem.getMedia();
                if (media != null && (image = media.getImage()) != null) {
                    Iterator<T> it2 = image.iterator();
                    while (it2.hasNext()) {
                        String url2 = ((Image) it2.next()).getUrl();
                        if (url2 != null && context != null) {
                            b(url2);
                        }
                    }
                }
                Media media2 = postSubjectItem.getMedia();
                if (media2 != null && (cover = media2.getCover()) != null && (url = cover.getUrl()) != null && context != null) {
                    b(url);
                }
            }
        }
    }
}
