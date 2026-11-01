package aq;

import ak.k;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.home.p004enum.BottomTabType;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.MediaType;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.postdetailapi.IPostDetailApi;
import com.transsion.web.api.WebConstants;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final h f16093a = new h();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f16094b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f16095c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f16096d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static String f16097e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static String f16098f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f16099g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static String f16100h;

    private h() {
    }

    public static /* synthetic */ void i(h hVar, String str, String str2, String str3, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = null;
        }
        if ((i11 & 2) != 0) {
            str2 = null;
        }
        if ((i11 & 4) != 0) {
            str3 = null;
        }
        if ((i11 & 8) != 0) {
            z10 = false;
        }
        hVar.h(str, str2, str3, z10);
    }

    public static /* synthetic */ void k(h hVar, PostSubjectItem postSubjectItem, String str, String str2, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            str = null;
        }
        if ((i11 & 4) != 0) {
            str2 = null;
        }
        if ((i11 & 8) != 0) {
            z10 = false;
        }
        hVar.j(postSubjectItem, str, str2, z10);
    }

    public final boolean a() {
        return f16094b;
    }

    public final boolean b() {
        return f16095c;
    }

    public final String c() {
        return f16100h;
    }

    public final String d() {
        return f16096d;
    }

    public final String e() {
        return f16097e;
    }

    public final boolean f() {
        return f16099g;
    }

    public final String g() {
        return f16098f;
    }

    public final void h(String str, String str2, String str3, boolean z10) {
        f16096d = str;
        f16097e = str2;
        f16098f = str3;
        if (!f16094b || z10) {
            k.p(TheRouter.c("/room/home"));
        } else {
            k.p(TheRouter.c("/main/tab").K("bottomTab", BottomTabType.TAB_CODE_COMMUNITY).K("topTab", "Community"));
        }
    }

    public final void j(PostSubjectItem item, String str, String str2, boolean z10) {
        Intrinsics.h(item, "item");
        f16097e = str;
        f16098f = str2;
        Media media = item.getMedia();
        String mediaType = media != null ? media.getMediaType() : null;
        MediaType mediaType2 = MediaType.VIDEO;
        if (Intrinsics.c(mediaType, mediaType2.getValue())) {
            IPostDetailApi iPostDetailApi = (IPostDetailApi) TheRouter.d(IPostDetailApi.class, new Object[0]);
            if (iPostDetailApi != null) {
                iPostDetailApi.i(item);
            }
            Media media2 = item.getMedia();
            Navigator navigatorK = TheRouter.c(Intrinsics.c(media2 != null ? media2.getMediaType() : null, mediaType2.getValue()) ? "/post/detailVideo" : "/post/detail").K(WebConstants.PAGE_FROM, str2).J("item_object", item).K("id", item.getPostId()).K("rec_ops", item.getOps()).K("item_type", item.getItemType());
            Media media3 = item.getMedia();
            k.p(navigatorK.K("media_type", media3 != null ? media3.getMediaType() : null).z("is_build_in", item.getBuiltIn()));
            return;
        }
        Media media4 = item.getMedia();
        if (!Intrinsics.c(media4 != null ? media4.getMediaType() : null, MediaType.IMAGE.getValue())) {
            h(item.getPostId(), str, str2, z10);
            return;
        }
        f16099g = true;
        f16100h = item.getPostId();
        if (!f16094b || z10) {
            k.p(TheRouter.c("/room/home"));
        } else {
            k.p(TheRouter.c("/main/tab").K("bottomTab", BottomTabType.TAB_CODE_COMMUNITY).K("topTab", "Community"));
        }
    }

    public final void l(boolean z10) {
        f16094b = z10;
    }

    public final void m(boolean z10) {
        f16095c = z10;
    }

    public final void n(String str) {
        f16100h = str;
    }

    public final void o(String str) {
        f16096d = str;
    }

    public final void p(String str) {
        f16097e = str;
    }

    public final void q(boolean z10) {
        f16099g = z10;
    }

    public final void r(String str) {
        f16098f = str;
    }
}
