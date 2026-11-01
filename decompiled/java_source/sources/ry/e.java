package ry;

import android.os.SystemClock;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.therouter.TheRouter;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.download.DownloadException;
import com.transsion.upload.bean.UploadTstTokenStorageType;
import com.transsion.upload.log.UploadLoggerManager;
import com.transsion.web.api.WebConstants;
import com.transsnet.loginapi.ILoginApi;
import com.transsnet.loginapi.bean.UserInfo;
import hj.i;
import java.net.InetAddress;
import java.net.URL;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes7.dex */
public final class e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f74755c = new a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Lazy f74756d = LazyKt.b(new Function0() { // from class: ry.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return e.h();
        }
    });

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HashMap f74757a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f74758b = LazyKt.b(new Function0() { // from class: ry.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return e.i();
        }
    });

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final e a() {
            return (e) e.f74756d.getValue();
        }
    }

    public static final class b implements cw.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Function1 f74759a;

        b(Function1 function1) {
            this.f74759a = function1;
        }

        @Override // cw.a
        public void a(String uploadKey, long j11, long j12) {
            Intrinsics.h(uploadKey, "uploadKey");
        }

        @Override // cw.a
        public void b(String uploadKey, String url, String bucket) {
            Intrinsics.h(uploadKey, "uploadKey");
            Intrinsics.h(url, "url");
            Intrinsics.h(bucket, "bucket");
            this.f74759a.invoke(url);
        }

        @Override // cw.a
        public void c(String str, String str2, String str3, UploadTstTokenStorageType uploadTstTokenStorageType) {
            this.f74759a.invoke(null);
        }
    }

    private final void e(g gVar, DownloadBean downloadBean, long j11, HashMap map) {
        long jC = j11 - gVar.c();
        if (gVar.c() > 0 && jC > 0 && jC < TimeUnit.MINUTES.toMillis(2L)) {
            downloadBean.setSessionTime(downloadBean.getSessionTime() + jC);
        }
        gVar.f(0L);
        map.put("full_time", String.valueOf(j11 - downloadBean.getCreateAt()));
        map.put("real_time", String.valueOf(downloadBean.getSessionTime()));
    }

    private final void f(g gVar, HashMap map) {
        map.put("fail_times", String.valueOf(gVar.a()));
        map.put("pause_times", String.valueOf(gVar.b()));
    }

    private final ILoginApi g() {
        return (ILoginApi) this.f74758b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final e h() {
        return new e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ILoginApi i() {
        return (ILoginApi) TheRouter.d(ILoginApi.class, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit l(e eVar, DownloadBean downloadBean, Function0 function0, String str) {
        eVar.m(downloadBean, str);
        function0.invoke();
        return Unit.f67061a;
    }

    private final void m(DownloadBean downloadBean, String str) {
        String username;
        String userId;
        HashMap map = new HashMap();
        ILoginApi iLoginApiG = g();
        UserInfo userInfoI = iLoginApiG != null ? iLoginApiG.i() : null;
        map.put("opt_type", "re_download");
        map.put("url", downloadBean.getUrl());
        String resourceId = downloadBean.getResourceId();
        if (resourceId == null) {
            resourceId = "";
        }
        map.put("resource_id", resourceId);
        String subjectId = downloadBean.getSubjectId();
        if (subjectId == null) {
            subjectId = "";
        }
        map.put("subject_id", subjectId);
        String postId = downloadBean.getPostId();
        if (postId == null) {
            postId = "";
        }
        map.put("post_id", postId);
        map.put("media_type", String.valueOf(downloadBean.getType()));
        map.put(NotificationCompat.CATEGORY_STATUS, downloadBean.toString());
        map.put("size", String.valueOf(downloadBean.getSize()));
        map.put(NotificationCompat.CATEGORY_PROGRESS, String.valueOf(downloadBean.getProgress()));
        String lastPageFrom = downloadBean.getLastPageFrom();
        if (lastPageFrom == null) {
            lastPageFrom = "";
        }
        map.put(WebConstants.PAGE_FROM, lastPageFrom);
        String taskId = downloadBean.getTaskId();
        if (taskId == null) {
            taskId = "";
        }
        map.put("task_id", taskId);
        map.put("url_create_at", String.valueOf(downloadBean.getUrlCreateAt() == 0 ? downloadBean.getCreateAt() : downloadBean.getUrlCreateAt()));
        String ops = downloadBean.getOps();
        if (ops == null) {
            ops = "";
        }
        map.put("ops", ops);
        String path = downloadBean.getPath();
        if (path == null) {
            path = "";
        }
        map.put("path", path);
        if (userInfoI == null || (username = userInfoI.getUsername()) == null) {
            username = "";
        }
        map.put("user_name", username);
        if (userInfoI == null || (userId = userInfoI.getUserId()) == null) {
            userId = "";
        }
        map.put("user_id", userId);
        if (str == null) {
            str = "";
        }
        map.put("log_url", str);
        i iVar = i.f64505a;
        String pageFrom = downloadBean.getPageFrom();
        if (pageFrom == null) {
            pageFrom = "download_link";
        }
        iVar.s(pageFrom, "app_perf", map);
    }

    private final void n(Function1 function1) throws Throwable {
        UploadLoggerManager.f56636a.k(new b(function1));
    }

    public final Object j(DownloadBean downloadBean, oy.c cVar, Continuation continuation) {
        boolean z10;
        boolean z11;
        String resourceId = downloadBean.getResourceId();
        int status = downloadBean.getStatus();
        String taskId = downloadBean.getTaskId();
        if (com.transsion.baseui.util.c.f43504a.a((taskId + status).hashCode(), 2000L)) {
            return Unit.f67061a;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        g gVar = (g) this.f74757a.get(taskId);
        if (gVar == null) {
            gVar = new g(downloadBean.getUrl(), taskId, status);
            this.f74757a.put(taskId, gVar);
        }
        g gVar2 = gVar;
        HashMap map = new HashMap();
        int i11 = 2;
        if (status == 1) {
            z10 = true;
            i11 = 2;
            if (downloadBean.getReportStatus() >= 1) {
                return Unit.f67061a;
            }
            downloadBean.setReportStatus(1);
        } else if (status == 2) {
            z10 = true;
            i11 = 2;
            long jC = jElapsedRealtime - gVar2.c();
            if (gVar2.c() > 0 && jC > 0 && jC < TimeUnit.MINUTES.toMillis(2L)) {
                downloadBean.setSessionTime(downloadBean.getSessionTime() + jC);
            }
            gVar2.f(jElapsedRealtime);
            if (downloadBean.getReportStatus() >= 2) {
                return Unit.f67061a;
            }
            downloadBean.setReportStatus(2);
        } else if (status == 4) {
            z10 = true;
            i11 = 2;
            downloadBean.setReportStatus(4);
            gVar2.e(gVar2.b() + 1);
            gVar2.f(0L);
            f(gVar2, map);
        } else if (status != 5) {
            if (status == 6) {
                z11 = true;
                gVar2.d(gVar2.a() + 1);
                gVar2.f(0L);
                downloadBean.setReportStatus(6);
                f(gVar2, map);
            } else if (status != 7) {
                z10 = true;
                i11 = 2;
            } else {
                if (downloadBean.getReportStatus() == 5) {
                    status = 57;
                }
                z11 = true;
                e(gVar2, downloadBean, jElapsedRealtime, map);
            }
            z10 = z11;
        } else {
            i11 = 2;
            z10 = true;
            e(gVar2, downloadBean, jElapsedRealtime, map);
            this.f74757a.remove(taskId);
        }
        map.put("url", downloadBean.getUrl());
        map.put("resource_id", resourceId);
        map.put("subject_id", downloadBean.getSubjectId());
        map.put("post_id", downloadBean.getPostId());
        map.put("media_type", String.valueOf(downloadBean.getType()));
        map.put(NotificationCompat.CATEGORY_STATUS, String.valueOf(status));
        map.put("size", String.valueOf(downloadBean.getSize()));
        map.put(NotificationCompat.CATEGORY_PROGRESS, String.valueOf(downloadBean.getProgress()));
        map.put(WebConstants.PAGE_FROM, downloadBean.getLastPageFrom());
        map.put("task_id", downloadBean.getTaskId());
        map.put("url_create_at", String.valueOf(downloadBean.getUrlCreateAt() == 0 ? downloadBean.getCreateAt() : downloadBean.getUrlCreateAt()));
        map.put("ops", downloadBean.getOps());
        map.put("path", downloadBean.getPath());
        if (downloadBean.getEp() > 0) {
            map.put("ep", String.valueOf(downloadBean.getEp()));
        }
        if (downloadBean.getSe() > 0) {
            map.put("se", String.valueOf(downloadBean.getSe()));
        }
        if (status == 7 || status == 57) {
            map.put("pre_status", String.valueOf(downloadBean.getPreStatus()));
        }
        String ugcVideoId = downloadBean.getUgcVideoId();
        if (ugcVideoId != null) {
            map.put("content_id", ugcVideoId);
            map.put("content_type", "ugc_video");
        }
        String ugcVideoCollectionId = downloadBean.getUgcVideoCollectionId();
        if (ugcVideoCollectionId != null) {
            map.put("belong_to_collection_id", ugcVideoCollectionId);
        }
        String ugcVideoType = downloadBean.getUgcVideoType();
        if (ugcVideoType != null) {
            map.put("category_type", ugcVideoType);
        }
        map.put("video_track_id", downloadBean.getUgcVideoTrackId());
        map.put("parent_video_video_id", downloadBean.getUgcVideoParentVideoId());
        map.put("parent_video_track_id", downloadBean.getUgcVideoParentTrackId());
        if (status == 6) {
            DownloadException exception = downloadBean.getException();
            map.put("error_code", String.valueOf(exception != null ? Boxing.d(exception.getCode()) : null));
            DownloadException exception2 = downloadBean.getException();
            map.put("error_response_code", String.valueOf(exception2 != null ? Boxing.d(exception2.getResponseCode()) : null));
            DownloadException exception3 = downloadBean.getException();
            map.put(OfflineConstantsKt.TRACK_KEY_PRE_ERROR_MSG, exception3 != null ? exception3.getMessage() : null);
            DownloadException exception4 = downloadBean.getException();
            map.put("error_format_msg", exception4 != null ? exception4.getFormatMessage() : null);
            DownloadException exception5 = downloadBean.getException();
            map.put("download_range", exception5 != null ? exception5.getRange() : null);
            try {
                Result.Companion companion = Result.INSTANCE;
                if (downloadBean.is4xxError() && downloadBean.getUrl() != null && StringsKt.W(downloadBean.getUrl(), "http", false, i11, null)) {
                    InetAddress[] allByName = InetAddress.getAllByName(new URL(downloadBean.getUrl()).getHost());
                    StringBuilder sb2 = new StringBuilder("");
                    Iterator itA = ArrayIteratorKt.a(allByName);
                    while (itA.hasNext()) {
                        InetAddress inetAddress = (InetAddress) itA.next();
                        if (sb2.length() > 0) {
                            sb2.append(",");
                        }
                        sb2.append(inetAddress);
                    }
                    map.put("download_ips", sb2.toString());
                }
                Result.m454constructorimpl(Unit.f67061a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m454constructorimpl(ResultKt.a(th2));
            }
        }
        i iVar = i.f64505a;
        String pageFrom = downloadBean.getPageFrom();
        if (pageFrom == null) {
            pageFrom = "download_link";
        }
        iVar.s(pageFrom, "download", map);
        if (5 <= status && status < 58) {
            lg.a.f68839a.c("download", iVar.o(map), z10);
        }
        return Unit.f67061a;
    }

    public final void k(final DownloadBean bean, final Function0 function0) {
        Intrinsics.h(bean, "bean");
        if (function0 != null) {
            n(new Function1() { // from class: ry.d
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return e.l(this.f74752a, bean, function0, (String) obj);
                }
            });
        } else {
            m(bean, null);
        }
    }
}
