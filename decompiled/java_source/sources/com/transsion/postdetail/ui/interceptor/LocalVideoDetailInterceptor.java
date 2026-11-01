package com.transsion.postdetail.ui.interceptor;

import ak.k;
import android.app.Activity;
import android.net.Uri;
import android.os.Bundle;
import com.blankj.utilcode.util.Utils;
import com.therouter.TheRouter;
import com.therouter.router.RouteItem;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.report.l;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.postdetail.shorttv.factory.i;
import com.transsnet.downloader.R$string;
import com.transsnet.downloader.manager.DownloadEsHelper;
import com.transsnet.downloader.util.LocalVideoNotExistUtil;
import java.io.File;
import java.io.Serializable;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import ox.e;

/* JADX INFO: loaded from: classes.dex */
public final class LocalVideoDetailInterceptor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f49872a = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f49873b = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.ui.interceptor.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return LocalVideoDetailInterceptor.g();
        }
    });

    /* JADX INFO: loaded from: classes6.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final LocalVideoDetailInterceptor a() {
            return (LocalVideoDetailInterceptor) LocalVideoDetailInterceptor.f49873b.getValue();
        }
    }

    private final boolean f(String str, String str2) {
        if (str == null) {
            File file = new File(str2);
            if (file.exists() && file.length() > 0) {
                return true;
            }
        } else {
            if (StringsKt.W(str2, "content", false, 2, null)) {
                k1.a aVarG = k1.a.g(Utils.a(), Uri.parse(str2));
                if (aVarG != null) {
                    return aVarG.e();
                }
                return true;
            }
            File file2 = new File(str2);
            if (file2.exists() && file2.length() > 0) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LocalVideoDetailInterceptor g() {
        return new LocalVideoDetailInterceptor();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h(RouteItem routeItem, bg.b bVar) {
        try {
            if (routeItem.getExtras().getInt("subject_type", -1) == SubjectType.SHORT_TV.getValue()) {
                k.p(k.b(TheRouter.c(ls.a.f69034a.b()), routeItem.getExtras()));
                xj.b.a(bVar);
            } else {
                lg.a.C0828a.l(lg.a.f68839a, "VideoFloat", LocalVideoDetailInterceptor.class.getSimpleName() + " open page ----2", false, 4, null);
                bVar.a(routeItem);
            }
        } catch (Throwable unused) {
            bVar.a(routeItem);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final rs.a j() {
        return new i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final tt.a k() {
        return new com.transsion.postdetail.shorttv.factory.a();
    }

    public final void i(RouteItem postcard, bg.b callback) {
        String path;
        Intrinsics.h(postcard, "postcard");
        Intrinsics.h(callback, "callback");
        if (Intrinsics.c(postcard.getPath(), "/ugc_video/detail") || Intrinsics.c(postcard.getPath(), "/ugc_video/local_detail") || Intrinsics.c(postcard.getPath(), "/ugc_shorts/detail")) {
            e.b.a(e.f72197a.b(), false, 1, null);
        }
        if (!Intrinsics.c(postcard.getPath(), "/video/detail")) {
            if (!Intrinsics.c(postcard.getPath(), ls.a.f69034a.b())) {
                callback.a(postcard);
                return;
            }
            lr.c.f69031a.a(new Function0() { // from class: com.transsion.postdetail.ui.interceptor.a
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return LocalVideoDetailInterceptor.j();
                }
            });
            ys.a.f79056a.a(new Function0() { // from class: com.transsion.postdetail.ui.interceptor.b
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return LocalVideoDetailInterceptor.k();
                }
            });
            e.b.a(e.f72197a.b(), false, 1, null);
            Bundle extras = postcard.getExtras();
            Serializable serializable = extras.getSerializable("item_object");
            Subject subject = serializable instanceof Subject ? (Subject) serializable : null;
            String string = subject == null ? extras.getString("id") : subject.getSubjectId();
            int i11 = extras.getInt("ep");
            int i12 = extras.getInt("extra_series_position", -1);
            if (string == null) {
                callback.a(postcard);
                return;
            }
            DownloadBean downloadBeanX = DownloadEsHelper.f59419m.a().x(string, i11);
            if ((downloadBeanX != null ? downloadBeanX.getPath() : null) == null || !downloadBeanX.isCompleted()) {
                callback.a(postcard);
                return;
            }
            String resourceId = downloadBeanX.getResourceId();
            String path2 = downloadBeanX.getPath();
            Intrinsics.e(path2);
            if (f(resourceId, path2)) {
                callback.a(postcard);
                return;
            }
            Activity activityO = l.f43359a.o();
            if (activityO == null || activityO.isDestroyed() || activityO.isFinishing()) {
                return;
            }
            LocalVideoNotExistUtil.f59904a.v(activityO, downloadBeanX, i12);
            return;
        }
        e.b.a(e.f72197a.b(), false, 1, null);
        Bundle extras2 = postcard.getExtras();
        String string2 = extras2.getString("extra_url");
        String string3 = extras2.getString("extra_subject_id");
        if (string3 == null) {
            string3 = "";
        }
        String string4 = extras2.getString("extra_local_path");
        String string5 = extras2.getString("extra_resource_id");
        boolean z10 = extras2.getBoolean("extra_is_series");
        int i13 = extras2.getInt("extra_series_position", -1);
        boolean z11 = extras2.getBoolean("extra_completed", true);
        if (extras2.getBoolean("extra_from_deeplink", false)) {
            callback.a(postcard);
            return;
        }
        if (string5 != null) {
            DownloadBean downloadBeanQ = DownloadEsHelper.f59419m.a().q(string5);
            if (downloadBeanQ != null && (path = downloadBeanQ.getPath()) != null) {
                string4 = path;
            }
            extras2.putString("extra_local_path", string4);
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        c0828a.c("Download_LocalVideoDetailInterceptor", "isDownloadCompleted  = " + z11 + "， path = " + string4, true);
        boolean z12 = (string2 == null || StringsKt.W(string2, "http", false, 2, null) || string3.length() != 0) ? false : true;
        if (string4 == null || string4.length() <= 0) {
            lg.a.C0828a.f(c0828a, "Download_LocalVideoDetailInterceptor", "file is error, show error dialog, ", false, 4, null);
            Activity activityO2 = l.f43359a.o();
            if (activityO2 == null || activityO2.isDestroyed() || activityO2.isFinishing()) {
                return;
            }
            LocalVideoNotExistUtil localVideoNotExistUtil = LocalVideoNotExistUtil.f59904a;
            Intrinsics.e(string5);
            localVideoNotExistUtil.w(activityO2, string5, string4, z10, i13);
            return;
        }
        boolean zF = f(string5, string4);
        if (!z11) {
            lg.a.C0828a.f(c0828a, "Download_LocalVideoDetailInterceptor", "downloading play, open page", false, 4, null);
            kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new LocalVideoDetailInterceptor$process$1(string5, this, postcard, callback, string3, null), 3, null);
            return;
        }
        if (zF) {
            lg.a.C0828a.f(c0828a, "Download_LocalVideoDetailInterceptor", "open page", false, 4, null);
            h(postcard, callback);
            return;
        }
        lg.a.C0828a.f(c0828a, "Download_LocalVideoDetailInterceptor", "file is error, show error dialog, c, isOutside = " + z12, false, 4, null);
        if (z12) {
            uh.b.f76753a.d(R$string.download_no_local_file_tips);
            return;
        }
        Activity activityO3 = l.f43359a.o();
        if (activityO3 == null || activityO3.isDestroyed() || activityO3.isFinishing()) {
            return;
        }
        LocalVideoNotExistUtil localVideoNotExistUtil2 = LocalVideoNotExistUtil.f59904a;
        Intrinsics.e(string5);
        localVideoNotExistUtil2.w(activityO3, string5, string4, z10, i13);
    }
}
