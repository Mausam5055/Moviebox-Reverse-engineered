package tv;

import android.content.Context;
import android.os.Bundle;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.u;
import com.blankj.utilcode.util.Utils;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.ugcvideodetail.api.UGCPageStyle;
import com.transsion.ugcvideodetail.api.bean.UGCImmVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoBelongToCollection;
import com.transsion.ugcvideodetail.api.bean.UGCVideoDownload;
import com.transsion.ugcvideodetail.api.bean.UGCVideoDownloadResource;
import com.transsion.ugcvideodetail.api.bean.UGCVideoPlayInfo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoPlayStream;
import com.transsion.ugcvideodetail.fragment.UGCImmVideoDetailFragment;
import com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.DownloadManagerApi;
import com.transsnet.downloader.R$string;
import com.transsnet.downloader.manager.StartDownloadHelper;
import com.transsnet.downloader.manager.p;
import com.transsnet.downloader.ugc.viewmodel.UGCDownloadViewModel;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes7.dex */
public final class e {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f76374d = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f76375a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f76376b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c0 f76377c;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    public interface b {
        void a(boolean z10);

        UGCImmVideoDetailViewModel b();

        UGCImmVideoDetailFragment c();

        String d();

        String e();

        UGCDownloadViewModel f();

        String g();

        UGCImmVideo getData();
    }

    public e(b host) {
        Intrinsics.h(host, "host");
        this.f76375a = host;
        this.f76376b = LazyKt.b(new Function0() { // from class: tv.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return e.n();
            }
        });
        this.f76377c = new c0() { // from class: tv.c
            @Override // androidx.p009lifecycle.c0
            public final void onChanged(Object obj) {
                e.g(this.f76371a, (UGCVideoDownload) obj);
            }
        };
    }

    private final DownloadBean d(Context context, UGCVideoDownload uGCVideoDownload, UGCVideo uGCVideo, String str, String str2, String str3, String str4) {
        String resolutions;
        Integer numV;
        String url;
        String strI = hj.i.f64505a.i();
        UGCVideoDownloadResource resource = uGCVideoDownload.getResource();
        String str5 = (resource == null || (url = resource.getUrl()) == null) ? "" : url;
        UGCVideoDownloadResource resource2 = uGCVideoDownload.getResource();
        String id2 = resource2 != null ? resource2.getId() : null;
        String title = uGCVideo.getTitle();
        if (title == null) {
            title = uGCVideoDownload.getTitle();
        }
        String str6 = title;
        Cover cover = uGCVideoDownload.getCover();
        String url2 = cover != null ? cover.getUrl() : null;
        UGCVideoDownloadResource resource3 = uGCVideoDownload.getResource();
        Long size = resource3 != null ? resource3.getSize() : null;
        Cover cover2 = uGCVideoDownload.getCover();
        String thumbnail = cover2 != null ? cover2.getThumbnail() : null;
        UGCVideoDownloadResource resource4 = uGCVideoDownload.getResource();
        int iIntValue = (resource4 == null || (resolutions = resource4.getResolutions()) == null || (numV = StringsKt.v(resolutions)) == null) ? 0 : numV.intValue();
        UGCVideoDownloadResource resource5 = uGCVideoDownload.getResource();
        long duration = (resource5 != null ? resource5.getDuration() : 0L) * 1000;
        UGCVideoDownloadResource resource6 = uGCVideoDownload.getResource();
        String idType = resource6 != null ? resource6.getIdType() : null;
        String ugcVideoId = uGCVideoDownload.getUgcVideoId();
        int iVideoUGCPosition = uGCVideo.videoUGCPosition() > 0 ? uGCVideo.videoUGCPosition() : uGCVideoDownload.videoUGCPosition();
        UGCVideoBelongToCollection belongToCollection = uGCVideo.getBelongToCollection();
        String collectionId = belongToCollection != null ? belongToCollection.getCollectionId() : null;
        String title2 = uGCVideo.getTitle();
        if (title2 == null) {
            title2 = uGCVideoDownload.getTitle();
        }
        String str7 = title2;
        String category = uGCVideo.getCategory();
        if (category == null) {
            category = uGCVideoDownload.getCategory();
        }
        DownloadBean downloadBean = new DownloadBean(str5, id2, str6, url2, size, null, null, null, Long.valueOf(duration), null, 0L, 0, 0, 0, 0L, 0L, 0, 0, 0, 0, iIntValue, 0, 0, 0, 0, 0, 0, "", str, strI, null, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, thumbnail, null, false, false, 0, null, null, null, null, uGCVideo.getOps(), null, null, null, null, null, null, null, null, idType, collectionId, ugcVideoId, str7, "", Integer.valueOf(iVideoUGCPosition), category, null, null, null, null, str2, str3, str4, null, Intrinsics.c(uGCVideo.getVideoStyle(), UGCPageStyle.UGC_PAGE_STYLE_IMM_VERTICAL_VIDEO.getValue()), null, null, -940572960, 1071640573, 53728, null);
        downloadBean.setTaskId(UUID.randomUUID().toString());
        UGCVideoDownloadResource resource7 = uGCVideoDownload.getResource();
        downloadBean.setSubtitleIdType(resource7 != null ? resource7.getIdType() : null);
        String str8 = strI == null ? "" : strI;
        String ops = uGCVideo.getOps();
        String taskId = downloadBean.getTaskId();
        Intrinsics.e(taskId);
        h(context, str, str8, ops, taskId, downloadBean);
        lg.a.f68839a.p("download", new String[]{"UGC视频，开始下载:  resourceId = " + downloadBean.getResourceId() + ", name = " + downloadBean.getName()}, true);
        return downloadBean;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(e eVar, UGCVideoDownload uGCVideoDownload) {
        UGCVideo ugcVideo;
        Object objM454constructorimpl;
        Context contextRequireContext;
        UGCImmVideo data = eVar.f76375a.getData();
        if (data == null || (ugcVideo = data.getUgcVideo()) == null) {
            return;
        }
        if (Intrinsics.c(uGCVideoDownload != null ? uGCVideoDownload.getUgcVideoId() : null, ugcVideo.getUgcVideoId())) {
            lg.a.C0828a.r(lg.a.f68839a, "UGCImmVideoDownload", new String[]{"单视频直接下载，已获取数据执行下载， ugcVideoId:" + ugcVideo.getUgcVideoId() + ", category:" + (uGCVideoDownload != null ? uGCVideoDownload.getCategory() : null)}, false, 4, null);
            if (uGCVideoDownload == null) {
                uh.b.f76753a.d(R$string.notification_download_failed);
                return;
            }
            try {
                Result.Companion companion = Result.INSTANCE;
                UGCImmVideoDetailFragment uGCImmVideoDetailFragmentC = eVar.f76375a.c();
                if (uGCImmVideoDetailFragmentC != null && (contextRequireContext = uGCImmVideoDetailFragmentC.requireContext()) != null) {
                    eVar.e(contextRequireContext, uGCVideoDownload, ugcVideo, "/ugc_video/immersive_detail", eVar.f76375a.d(), eVar.f76375a.g(), eVar.f76375a.e());
                }
                objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
            }
            Result.m453boximpl(objM454constructorimpl);
        }
    }

    /* JADX WARN: Code duplicated, block: B:9:0x00a6  */
    private final void h(Context context, String str, String str2, String str3, String str4, DownloadBean downloadBean) {
        String str5;
        Map mapL = MapsKt.l(TuplesKt.a(WebConstants.PAGE_FROM, str2), TuplesKt.a("ops", str3), TuplesKt.a("resource_id", downloadBean.getResourceId()), TuplesKt.a("task_id", str4), TuplesKt.a("refer_subject_id", downloadBean.getSubjectId()), TuplesKt.a("content_id", downloadBean.getUgcVideoId()), TuplesKt.a("belong_to_collection_id", downloadBean.getUgcVideoCollectionId()), TuplesKt.a("category_type", downloadBean.getUgcVideoType()), TuplesKt.a("video_track_id", downloadBean.getUgcVideoTrackId()), TuplesKt.a("video_parent_content_id", downloadBean.getUgcVideoParentVideoId()), TuplesKt.a("video_parent_video_track_id", downloadBean.getUgcVideoParentTrackId()));
        hj.i iVar = hj.i.f64505a;
        if (str == null) {
            str5 = "download_click";
        } else {
            str5 = !StringsKt.q0(str) ? str : null;
            if (str5 == null) {
                str5 = "download_click";
            }
        }
        iVar.s(str5, "download_click", mapL);
        Bundle bundle = new Bundle();
        bundle.putString("resource_id", downloadBean.getResourceId());
        com.transsion.baselib.report.e.f43344a.l("download_click", bundle, context);
    }

    private final StartDownloadHelper i() {
        return (StartDownloadHelper) this.f76376b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit m(e eVar, UGCVideo uGCVideo, int i11, String formatSize, DownloadBean downloadBean, boolean z10) {
        Intrinsics.h(formatSize, "formatSize");
        Intrinsics.h(downloadBean, "downloadBean");
        UGCImmVideoDetailFragment uGCImmVideoDetailFragmentC = eVar.f76375a.c();
        if (uGCImmVideoDetailFragmentC != null) {
            uGCImmVideoDetailFragmentC.c1(uGCVideo.getUgcVideoId());
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final StartDownloadHelper n() {
        return new StartDownloadHelper();
    }

    public final void e(Context context, UGCVideoDownload data, UGCVideo ugcVideo, String pageFrom, String trackId, String str, String str2) {
        Intrinsics.h(context, "context");
        Intrinsics.h(data, "data");
        Intrinsics.h(ugcVideo, "ugcVideo");
        Intrinsics.h(pageFrom, "pageFrom");
        Intrinsics.h(trackId, "trackId");
        DownloadBean downloadBeanD = d(context, data, ugcVideo, pageFrom, trackId, str, str2);
        p.f59500a.a(Utils.a()).p(downloadBeanD);
        i().f(CollectionsKt.q(downloadBeanD));
        DownloadManagerApi.f58398j.a().T(downloadBeanD.getSubjectId(), downloadBeanD.getResourceId(), downloadBeanD.isSeries(), downloadBeanD.getTotalEpisode(), downloadBeanD.isMultiresolution(), downloadBeanD.isMultiresolution());
    }

    public final void f(UGCVideo video, i reportDelegate) {
        UGCVideoPlayInfo playInfo;
        List<UGCVideoPlayStream> resources;
        UGCVideoPlayStream uGCVideoPlayStream;
        Context contextRequireContext;
        UGCImmVideo data;
        Intrinsics.h(video, "video");
        Intrinsics.h(reportDelegate, "reportDelegate");
        UGCImmVideo data2 = this.f76375a.getData();
        if (data2 != null && (playInfo = data2.getPlayInfo()) != null && (resources = playInfo.getResources()) != null && (uGCVideoPlayStream = (UGCVideoPlayStream) CollectionsKt.k0(resources)) != null && (!uGCVideoPlayStream.isOnline() || ((data = this.f76375a.getData()) != null && data.getDownloadStatus() == 5))) {
            UGCImmVideoDetailFragment uGCImmVideoDetailFragmentC = this.f76375a.c();
            if (uGCImmVideoDetailFragmentC == null || (contextRequireContext = uGCImmVideoDetailFragmentC.requireContext()) == null) {
                return;
            }
            UGCImmVideoDetailViewModel uGCImmVideoDetailViewModelB = this.f76375a.b();
            reportDelegate.a("downloaded", video, (24 & 4) != 0 ? null : uGCImmVideoDetailViewModelB != null ? Boolean.valueOf(uGCImmVideoDetailViewModelB.Y0()) : null, (24 & 8) != 0 ? null : null, (24 & 16) != 0 ? null : null);
            Navigator.x(TheRouter.c("/download/ugc_my_downloads").F("main_tab_index", 1), contextRequireContext, null, 2, null);
            return;
        }
        if (!nh.m.f70474a.e()) {
            uh.b.f76753a.d(com.tn.lib.widget.R$string.no_network_toast);
            return;
        }
        UGCImmVideoDetailViewModel uGCImmVideoDetailViewModelB2 = this.f76375a.b();
        reportDelegate.a("download", video, (24 & 4) != 0 ? null : uGCImmVideoDetailViewModelB2 != null ? Boolean.valueOf(uGCImmVideoDetailViewModelB2.Y0()) : null, (24 & 8) != 0 ? null : null, (24 & 16) != 0 ? null : null);
        String ugcVideoId = video.getUgcVideoId();
        if (ugcVideoId != null) {
            this.f76375a.a(true);
            lg.a.C0828a.r(lg.a.f68839a, "UGCImmVideoDownload", new String[]{"单视频直接下载，点击去请求下载数据--， ugcVideoId:" + video.getUgcVideoId() + "}"}, false, 4, null);
            UGCDownloadViewModel uGCDownloadViewModelF = this.f76375a.f();
            if (uGCDownloadViewModelF != null) {
                uGCDownloadViewModelF.H(ugcVideoId);
            }
            UGCImmVideoDetailFragment uGCImmVideoDetailFragmentC2 = this.f76375a.c();
            if (uGCImmVideoDetailFragmentC2 != null) {
                uGCImmVideoDetailFragmentC2.c1(ugcVideoId);
            }
        }
    }

    public final void j(u owner) {
        LiveData liveDataZ;
        Intrinsics.h(owner, "owner");
        UGCDownloadViewModel uGCDownloadViewModelF = this.f76375a.f();
        if (uGCDownloadViewModelF == null || (liveDataZ = uGCDownloadViewModelF.z()) == null) {
            return;
        }
        liveDataZ.j(owner, this.f76377c);
    }

    public final void k(u owner) {
        LiveData liveDataZ;
        Intrinsics.h(owner, "owner");
        UGCDownloadViewModel uGCDownloadViewModelF = this.f76375a.f();
        if (uGCDownloadViewModelF == null || (liveDataZ = uGCDownloadViewModelF.z()) == null) {
            return;
        }
        liveDataZ.o(this.f76377c);
    }

    public final void l(FragmentActivity activity, final UGCVideo video, String trackId, String str, String str2) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(video, "video");
        Intrinsics.h(trackId, "trackId");
        DownloadManagerApi downloadManagerApiA = DownloadManagerApi.f58398j.a();
        UGCVideoBelongToCollection belongToCollection = video.getBelongToCollection();
        String collectionId = belongToCollection != null ? belongToCollection.getCollectionId() : null;
        String ugcVideoId = video.getUgcVideoId();
        UGCVideoBelongToCollection belongToCollection2 = video.getBelongToCollection();
        downloadManagerApiA.f0(activity, collectionId, ugcVideoId, belongToCollection2 != null ? belongToCollection2.getCollectionName() : null, video.getCategory(), "/ugc_video/immersive_detail", video.getOps(), video.getSubjectId(), trackId, str, str2, Intrinsics.c(video.getVideoStyle(), UGCPageStyle.UGC_PAGE_STYLE_IMM_VERTICAL_VIDEO.getValue()), new Function4() { // from class: tv.d
            @Override // kotlin.jvm.functions.Function4
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                return e.m(this.f76372a, video, ((Integer) obj).intValue(), (String) obj2, (DownloadBean) obj3, ((Boolean) obj4).booleanValue());
            }
        });
    }
}
