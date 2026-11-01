package com.transsnet.downloader.util;

import android.app.Application;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import androidx.fragment.app.Fragment;
import com.blankj.utilcode.util.PermissionUtils;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.download.DownloadException;
import com.transsion.baselib.db.download.DownloadRange;
import com.transsion.baseui.R$mipmap;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.moviedetailapi.DownloadItem;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.MediaType;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.ResolutionItem;
import com.transsion.moviedetailapi.bean.ResourceDetectors;
import com.transsion.moviedetailapi.bean.ResourcesSeason;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.moviedetailapi.bean.User;
import com.transsion.moviedetailapi.bean.Video;
import com.transsnet.downloader.bean.DownloadListBean;
import com.transsnet.downloader.bean.DownloadUrlBean;
import com.transsnet.downloader.manager.DownloadEsHelper;
import java.io.File;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import lj.n0;
import okhttp3.internal.http2.Settings;

/* JADX INFO: loaded from: classes.dex */
public final class DownloadUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DownloadUtil f59900a = new DownloadUtil();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f59901b = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.util.m
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return DownloadUtil.m();
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Lazy f59902c = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.util.n
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return DownloadUtil.n();
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String[] f59903d = {"android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE"};

    private DownloadUtil() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit L(Function2 function2, long j11, long j12) {
        if (function2 != null) {
            function2.invoke(Long.valueOf(j11), Long.valueOf(j12));
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit M(Ref.ObjectRef objectRef, String newPath) {
        Intrinsics.h(newPath, "newPath");
        objectRef.element = newPath;
        lg.a.f68839a.u("resource_save", "转存到相册 newPath = " + newPath, true);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit N(Function2 function2, long j11, long j12) {
        if (function2 != null) {
            function2.invoke(Long.valueOf(j11), Long.valueOf(j12));
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit O(Ref.ObjectRef objectRef, String newPath) {
        Intrinsics.h(newPath, "newPath");
        objectRef.element = newPath;
        lg.a.f68839a.u("resource_save", "转存到sdcard newPath = " + newPath, true);
        return Unit.f67061a;
    }

    private final Object P(DownloadBean downloadBean, boolean z10, Continuation continuation) throws Throwable {
        if (!z10) {
            return Unit.f67061a;
        }
        downloadBean.setTransferFailed(true);
        Object objB0 = DownloadEsHelper.f59419m.a().b0(downloadBean, continuation);
        return objB0 == IntrinsicsKt.f() ? objB0 : Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:8:0x001e  */
    public final Object Q(DownloadBean downloadBean, String str, String str2, int i11, String str3, int i12, String str4, boolean z10, Continuation continuation) throws Throwable {
        DownloadUtil$transferFileSuccessNext$1 downloadUtil$transferFileSuccessNext$1;
        DownloadBean downloadBean2;
        if (continuation instanceof DownloadUtil$transferFileSuccessNext$1) {
            downloadUtil$transferFileSuccessNext$1 = (DownloadUtil$transferFileSuccessNext$1) continuation;
            int i13 = downloadUtil$transferFileSuccessNext$1.label;
            if ((i13 & Integer.MIN_VALUE) != 0) {
                downloadUtil$transferFileSuccessNext$1.label = i13 - Integer.MIN_VALUE;
            } else {
                downloadUtil$transferFileSuccessNext$1 = new DownloadUtil$transferFileSuccessNext$1(this, continuation);
            }
        } else {
            downloadUtil$transferFileSuccessNext$1 = new DownloadUtil$transferFileSuccessNext$1(this, continuation);
        }
        DownloadUtil$transferFileSuccessNext$1 downloadUtil$transferFileSuccessNext$2 = downloadUtil$transferFileSuccessNext$1;
        Object obj = downloadUtil$transferFileSuccessNext$2.result;
        Object objF = IntrinsicsKt.f();
        int i14 = downloadUtil$transferFileSuccessNext$2.label;
        if (i14 == 0) {
            ResultKt.b(obj);
            if (z10) {
                if (StringsKt.W(str, "content", false, 2, null)) {
                    try {
                        k1.a aVarG = k1.a.g(Utils.a(), Uri.parse(str));
                        Boolean boolA = aVarG != null ? Boxing.a(aVarG.d()) : null;
                        lg.a.f68839a.u("resource_save", "DocumentFile ,删除结果 = " + boolA, true);
                    } catch (Throwable th2) {
                        th2.printStackTrace();
                    }
                } else {
                    File file = new File(str);
                    if (file.exists()) {
                        if (i11 != 2) {
                            if (i11 == 3 && Build.VERSION.SDK_INT >= 29) {
                                com.transsnet.downloader.y yVar = com.transsnet.downloader.y.f60245a;
                                Application applicationA = Utils.a();
                                Intrinsics.g(applicationA, "getApp(...)");
                                yVar.d(applicationA, str);
                            }
                        } else if (Build.VERSION.SDK_INT >= 29) {
                            com.transsnet.downloader.y yVar2 = com.transsnet.downloader.y.f60245a;
                            Application applicationA2 = Utils.a();
                            Intrinsics.g(applicationA2, "getApp(...)");
                            yVar2.e(applicationA2, str);
                        }
                        try {
                            boolean zDelete = file.delete();
                            lg.a.f68839a.u("resource_save", "转存到成功 ,删除结果 = " + zDelete + ", videoPath = " + str, true);
                        } catch (Throwable th3) {
                            th3.printStackTrace();
                        }
                    } else {
                        lg.a.f68839a.x("resource_save", "转存到成功 ,源文件不存在，无法删除", true);
                    }
                }
                downloadBean.setPath(str4.length() == 0 ? StringsKt.Q(str, str2, str3, false, 4, null) : str4);
                downloadBean.setTransferFailed(false);
                downloadBean.setRootPathType(i12);
                downloadBean.setRootPath(str3);
                lg.a.f68839a.u("resource_save", "转存到成功, resourceId:" + downloadBean.getResourceId() + " old path = " + str + "， new path = " + downloadBean.getPath(), true);
                DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f59419m.a();
                downloadUtil$transferFileSuccessNext$2.L$0 = downloadBean;
                downloadUtil$transferFileSuccessNext$2.label = 1;
                if (downloadEsHelperA.b0(downloadBean, downloadUtil$transferFileSuccessNext$2) == objF) {
                    return objF;
                }
                downloadBean2 = downloadBean;
            } else {
                lg.a.f68839a.u("resource_save", "save to成功, resourceId:" + downloadBean.getResourceId() + " old path = " + str + "， new path = " + downloadBean.getPath(), true);
            }
            return Unit.f67061a;
        }
        if (i14 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        downloadBean2 = (DownloadBean) downloadUtil$transferFileSuccessNext$2.L$0;
        ResultKt.b(obj);
        if (downloadBean2.getIsDownloadingPlay()) {
            p().q();
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.transsnet.downloader.manager.g m() {
        return com.transsnet.downloader.manager.p.f59500a.a(Utils.a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final n0 n() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).q1();
    }

    private final com.transsnet.downloader.manager.g p() {
        return (com.transsnet.downloader.manager.g) f59901b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final n0 q() {
        return (n0) f59902c.getValue();
    }

    private final File u(String str) {
        try {
            File file = new File(str);
            File parentFile = file.getParentFile();
            int i11 = 1;
            if ((parentFile == null || !parentFile.exists()) && parentFile != null) {
                parentFile.mkdirs();
            }
            String strX = FilesKt.x(file);
            String strW = FilesKt.w(file);
            File file2 = new File(parentFile, file.getName());
            while (file2.exists()) {
                file2 = new File(parentFile, strX + "_" + i11 + "." + strW);
                i11++;
            }
            return file2;
        } catch (Throwable unused) {
            return new File(str);
        }
    }

    private final DownloadBean z(DownloadListBean downloadListBean, Subject subject, DownloadItem downloadItem, String str, String str2, String str3, String str4, String str5) {
        String genre;
        String thumbnail;
        String releaseDate;
        String countryName;
        Cover cover;
        String url;
        String url2 = downloadItem.getUrl();
        String str6 = url2 == null ? "" : url2;
        String resourceId = downloadItem.getResourceId();
        String str7 = resourceId == null ? "" : resourceId;
        String name = downloadItem.getName();
        String str8 = name == null ? "" : name;
        Cover cover2 = downloadListBean.getCover();
        DownloadBean downloadBean = new DownloadBean(str6, str7, str8, (cover2 == null || (url = cover2.getUrl()) == null) ? "" : url, downloadItem.getSize(), null, null, null, null, null, 0L, 0, 0, 0, 0L, 0L, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -32, -1, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
        if (subject == null || (genre = subject.getGenre()) == null) {
            genre = downloadListBean.getGenre();
        }
        downloadBean.setGenre(genre);
        downloadBean.setCreateAt(System.currentTimeMillis());
        if (subject == null || (cover = subject.getCover()) == null || (thumbnail = cover.getThumbnail()) == null) {
            Cover cover3 = downloadListBean.getCover();
            thumbnail = cover3 != null ? cover3.getThumbnail() : null;
            if (thumbnail == null) {
                thumbnail = "";
            }
        }
        downloadBean.setThumbnail(thumbnail);
        if (subject == null || (releaseDate = subject.getGenre()) == null) {
            releaseDate = downloadListBean.getReleaseDate();
        }
        downloadBean.setReleaseDate(releaseDate);
        if (subject == null || (countryName = subject.getCountryName()) == null) {
            countryName = downloadListBean.getCountryName();
        }
        downloadBean.setCountryName(countryName);
        downloadBean.setRestrictLevel(subject != null ? subject.getRestrictLevel() : null);
        downloadBean.setImdbRate(subject != null ? subject.getImdbRate() : null);
        downloadBean.setSeNum(subject != null ? subject.getSeNum() : null);
        downloadBean.setSubtitles(subject != null ? subject.getSubtitles() : null);
        downloadBean.setDuration(downloadItem.getDuration());
        Cover cover4 = downloadListBean.getCover();
        downloadBean.setAverageHueLight(cover4 != null ? cover4.getAverageHueLight() : null);
        String uploadBy = downloadItem.getUploadBy();
        if (uploadBy == null) {
            uploadBy = "";
        }
        downloadBean.setUploadBy(uploadBy);
        downloadBean.setPostId(downloadItem.getPostId());
        Integer epse = downloadItem.getEpse();
        downloadBean.setEpse(epse != null ? epse.intValue() : 0);
        downloadBean.setEp(downloadItem.getEp());
        downloadBean.setSe(downloadItem.getSe());
        Integer resolution = downloadItem.getResolution();
        downloadBean.setResolution(resolution != null ? resolution.intValue() : 0);
        downloadBean.setSubjectId(downloadListBean.getSubjectId());
        downloadBean.setGroupId(str == null ? downloadListBean.getGroupId() : str);
        downloadBean.setSubjectName((str5 == null || str5.length() == 0) ? downloadListBean.getTitle() : str5);
        downloadBean.setPageFrom(str2);
        downloadBean.setLastPageFrom(str3);
        downloadBean.setOps(str4);
        String sourceUrl = downloadItem.getSourceUrl();
        if (sourceUrl == null) {
            sourceUrl = "";
        }
        downloadBean.setSourceUrl(sourceUrl);
        downloadBean.setRequireMemberType(downloadItem.getRequireMemberType());
        downloadBean.setType(DownloadBean.INSTANCE.c(Integer.valueOf(downloadListBean.getSubjectType())));
        downloadBean.setSubjectType(downloadListBean.getSubjectType());
        downloadBean.setSubjectDurationSeconds(downloadListBean.getDurationSeconds());
        Integer totalEpisode = downloadListBean.getTotalEpisode();
        downloadBean.setTotalEpisode(totalEpisode != null ? totalEpisode.intValue() : 1);
        List<DownloadItem> items = downloadListBean.getItems();
        Integer numValueOf = items != null ? Integer.valueOf(items.size()) : null;
        Intrinsics.e(numValueOf);
        if (numValueOf.intValue() > downloadBean.getTotalEpisode()) {
            downloadBean.setMultiresolution(1);
        }
        return downloadBean;
    }

    public final Pair A(List seasons, int i11, int i12) {
        int epNum;
        Intrinsics.h(seasons, "seasons");
        List<ResourcesSeason> list = seasons;
        CollectionsKt.I0(list, new Comparator() { // from class: com.transsnet.downloader.util.DownloadUtil$initGetPositions$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t11, T t12) {
                return ComparisonsKt.d(Integer.valueOf(((ResourcesSeason) t11).getSe()), Integer.valueOf(((ResourcesSeason) t12).getSe()));
            }
        });
        int epNum2 = 0;
        int i13 = 0;
        for (ResourcesSeason resourcesSeason : list) {
            Object next = null;
            if (i12 == 0) {
                List<ResolutionItem> resolutions = resourcesSeason.getResolutions();
                if (resolutions != null) {
                    Iterator<T> it = resolutions.iterator();
                    if (it.hasNext()) {
                        next = it.next();
                        if (it.hasNext()) {
                            int epNum3 = ((ResolutionItem) next).getEpNum();
                            do {
                                Object next2 = it.next();
                                int epNum4 = ((ResolutionItem) next2).getEpNum();
                                if (epNum3 < epNum4) {
                                    next = next2;
                                    epNum3 = epNum4;
                                }
                            } while (it.hasNext());
                        }
                    }
                    ResolutionItem resolutionItem = (ResolutionItem) next;
                    if (resolutionItem != null) {
                        lg.a.f68839a.c("DownloadRes", "initGetPositions,分辨率0  it.epNum:" + resolutionItem.getEpNum() + " ", true);
                        if (resourcesSeason.getSe() < i11) {
                            epNum2 += resolutionItem.getEpNum();
                        }
                        if (resourcesSeason.getSe() <= i11) {
                            epNum = resolutionItem.getEpNum();
                            i13 += epNum;
                        }
                    }
                }
            } else {
                List<ResolutionItem> resolutions2 = resourcesSeason.getResolutions();
                if (resolutions2 != null) {
                    for (Object obj : resolutions2) {
                        if (((ResolutionItem) obj).getResolution() == i12) {
                            next = obj;
                            break;
                        }
                    }
                    ResolutionItem resolutionItem2 = (ResolutionItem) next;
                    if (resolutionItem2 != null) {
                        lg.a.f68839a.c("DownloadRes", "initGetPositions,分辨率0  resolution:" + i12 + " ", true);
                        if (resourcesSeason.getSe() < i11) {
                            epNum2 += resolutionItem2.getEpNum();
                        }
                        if (resourcesSeason.getSe() <= i11) {
                            epNum = resolutionItem2.getEpNum();
                            i13 += epNum;
                        }
                    }
                }
            }
        }
        int i14 = epNum2 + 1;
        if (i13 < i14) {
            i13 = i14;
        }
        return new Pair(Integer.valueOf(i13), Integer.valueOf(i14));
    }

    public final void B(DownloadBean bean) {
        Intrinsics.h(bean, "bean");
        if (bean.getDownloadRanges().isEmpty()) {
            kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new DownloadUtil$initSetDownloadInfoAndRanges$1(bean, null), 3, null);
        }
    }

    public final boolean C(DownloadBean data) {
        Intrinsics.h(data, "data");
        boolean z10 = true;
        if (!data.isSeriesCollection()) {
            return true;
        }
        Iterator<T> it = data.getSeriesList().iterator();
        while (it.hasNext()) {
            if (!((DownloadBean) it.next()).getIsCheck()) {
                z10 = false;
            }
        }
        return z10;
    }

    public final boolean D() {
        if (Build.VERSION.SDK_INT > 29) {
            return true;
        }
        try {
            return PermissionUtils.s("android.permission.WRITE_EXTERNAL_STORAGE");
        } catch (Throwable unused) {
            return false;
        }
    }

    public final boolean E(DownloadBean bean) {
        String subjectId;
        String resourceId;
        Object value;
        Intrinsics.h(bean, "bean");
        if (bean.isVideo() && (subjectId = bean.getSubjectId()) != null && subjectId.length() != 0 && (resourceId = bean.getResourceId()) != null && resourceId.length() != 0) {
            ConfigBean configBeanC = sm.f.f75407c.a().c("download_error_opt_off", false);
            if (configBeanC == null || (value = configBeanC.getValue()) == null) {
                value = 0;
            }
            DownloadException exception = bean.getException();
            if (exception != null && exception.getCode() == bean.getPreErrorCode() && Intrinsics.c(value, 0)) {
                return false;
            }
            if ((bean.isCNDError() || bean.is4xxError()) && bean.getRequestNewSourceCount() < 5) {
                return true;
            }
        }
        return false;
    }

    public final boolean F(Fragment fragment) {
        Intrinsics.h(fragment, "fragment");
        boolean z10 = false;
        for (String str : f59903d) {
            if (!fragment.shouldShowRequestPermissionRationale(str)) {
                z10 = true;
            }
        }
        return z10;
    }

    public final DownloadBean G(PostSubjectItem item) {
        String content;
        Integer height;
        Integer height2;
        Integer width;
        Integer duration;
        Integer size;
        List<Video> video;
        Intrinsics.h(item, "item");
        Media media = item.getMedia();
        DownloadBean downloadBean = null;
        downloadBean = null;
        if (!Intrinsics.c(media != null ? media.getMediaType() : null, MediaType.VIDEO.getValue())) {
            Media media2 = item.getMedia();
            if (!Intrinsics.c(media2 != null ? media2.getMediaType() : null, "VIDEO")) {
                return null;
            }
        }
        Media media3 = item.getMedia();
        Video video2 = (media3 == null || (video = media3.getVideo()) == null) ? null : (Video) CollectionsKt.k0(video);
        String url = video2 != null ? video2.getUrl() : null;
        if (url != null && url.length() != 0) {
            String title = item.getTitle();
            if (title == null || title.length() == 0) {
                String content2 = item.getContent();
                content = (content2 == null || content2.length() == 0) ? "" : item.getContent();
            } else {
                content = item.getTitle();
            }
            String str = content;
            String postId = item.getPostId();
            if (postId == null) {
                postId = String.valueOf(url.hashCode());
            }
            String str2 = postId;
            String coverUrl = item.getCoverUrl(false);
            long jIntValue = 0;
            long jIntValue2 = (video2 == null || (size = video2.getSize()) == null) ? 0L : size.intValue();
            String postId2 = item.getPostId();
            if (video2 != null && (duration = video2.getDuration()) != null) {
                jIntValue = duration.intValue();
            }
            long j11 = 1000 * jIntValue;
            Subject subject = item.getSubject();
            String subjectId = subject != null ? subject.getSubjectId() : null;
            Subject subject2 = item.getSubject();
            String title2 = subject2 != null ? subject2.getTitle() : null;
            User user = item.getUser();
            String nickname = user != null ? user.getNickname() : null;
            int iIntValue = (video2 == null || (width = video2.getWidth()) == null) ? 0 : width.intValue();
            int iIntValue2 = (video2 == null || (height2 = video2.getHeight()) == null) ? 0 : height2.intValue();
            int iIntValue3 = (video2 == null || (height = video2.getHeight()) == null) ? 0 : height.intValue();
            String ops = item.getOps();
            String coverUrl2 = item.getCoverUrl(true);
            long jCurrentTimeMillis = System.currentTimeMillis();
            long jCurrentTimeMillis2 = System.currentTimeMillis();
            String string = UUID.randomUUID().toString();
            Long lValueOf = Long.valueOf(jIntValue2);
            Long lValueOf2 = Long.valueOf(j11);
            Long lValueOf3 = Long.valueOf(jCurrentTimeMillis2);
            downloadBean = downloadBean;
            DownloadBean downloadBean2 = new DownloadBean(url, str2, str, coverUrl, lValueOf, postId2, null, "", lValueOf2, lValueOf3, 0L, 0, 0, 9, 0L, jCurrentTimeMillis, 0, 0, 0, 0, iIntValue3, 0, 0, iIntValue, iIntValue2, 0, 0, subjectId, null, null, title2, 0L, 1, 0, nickname, null, 0L, null, string, 0L, 0, 0L, null, 0, coverUrl2, null, false, false, 1, null, null, null, null, ops, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -1234219968, -2166854, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
            try {
                downloadBean.setOriginData(com.blankj.utilcode.util.o.j(item));
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
        return downloadBean;
    }

    public final void H(DownloadBean bean) {
        Intrinsics.h(bean, "bean");
        bean.setProgress(0L);
        Iterator<T> it = bean.getDownloadRanges().iterator();
        while (it.hasNext()) {
            ((DownloadRange) it.next()).setProgress(0L);
        }
    }

    public final void I(boolean z10, DownloadBean data) {
        Intrinsics.h(data, "data");
        if (data.isSeriesCollection()) {
            data.setSeriesAllCheck(z10);
            Iterator<T> it = data.getSeriesList().iterator();
            while (it.hasNext()) {
                ((DownloadBean) it.next()).setCheck(z10);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:44:0x014a  */
    /* JADX WARN: Code duplicated, block: B:51:0x0174  */
    /* JADX WARN: Code duplicated, block: B:59:0x022a  */
    /* JADX WARN: Code duplicated, block: B:64:0x0253  */
    /* JADX WARN: Code duplicated, block: B:8:0x0028  */
    /* JADX WARN: Multi-variable type inference failed */
    public final Object J(Context context, boolean z10, DownloadBean downloadBean, String str, int i11, String str2, int i12, final Function2 function2, Function1 function1, boolean z11, Continuation continuation) throws Throwable {
        DownloadUtil$transferFile$1 downloadUtil$transferFile$1;
        String str3;
        Function1 function3;
        String str4;
        Function1 function4;
        String str5;
        Function1 function5;
        String str6;
        Function1 function6;
        DownloadUtil downloadUtil = this;
        if (continuation instanceof DownloadUtil$transferFile$1) {
            downloadUtil$transferFile$1 = (DownloadUtil$transferFile$1) continuation;
            int i13 = downloadUtil$transferFile$1.label;
            if ((i13 & Integer.MIN_VALUE) != 0) {
                downloadUtil$transferFile$1.label = i13 - Integer.MIN_VALUE;
            } else {
                downloadUtil$transferFile$1 = new DownloadUtil$transferFile$1(downloadUtil, continuation);
            }
        } else {
            downloadUtil$transferFile$1 = new DownloadUtil$transferFile$1(downloadUtil, continuation);
        }
        DownloadUtil$transferFile$1 downloadUtil$transferFile$2 = downloadUtil$transferFile$1;
        Object obj = downloadUtil$transferFile$2.result;
        Object objF = IntrinsicsKt.f();
        int i14 = downloadUtil$transferFile$2.label;
        if (i14 == 0) {
            ResultKt.b(obj);
            if (downloadBean.getPath() == null || downloadBean.getRootPath() == null) {
                return Unit.f67061a;
            }
            String path = downloadBean.getPath();
            Intrinsics.e(path);
            String str7 = z10 ? "下载完成" : "下载目录转存";
            if (i12 == 2) {
                final Ref.ObjectRef objectRef = new Ref.ObjectRef();
                objectRef.element = "";
                com.transsnet.downloader.y yVar = com.transsnet.downloader.y.f60245a;
                Function2 function7 = new Function2() { // from class: com.transsnet.downloader.util.q
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) {
                        return DownloadUtil.N(function2, ((Long) obj2).longValue(), ((Long) obj3).longValue());
                    }
                };
                Function1 function8 = new Function1() { // from class: com.transsnet.downloader.util.r
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        return DownloadUtil.O(objectRef, (String) obj2);
                    }
                };
                str3 = str7;
                if (yVar.m(context, path, str, str2, function7, function8)) {
                    lg.a.f68839a.p("resource_save", new String[]{str3 + " ，转存到相册 成功 beforeRootPathType:" + i11 + ", beforeRootPath = " + str + " targetRootPathType:" + i12 + ", targetRootPath = " + str2}, true);
                    String str8 = (String) objectRef.element;
                    function4 = function1;
                    downloadUtil$transferFile$2.L$0 = function4;
                    downloadUtil$transferFile$2.label = 3;
                    if (Q(downloadBean, path, str, i11, str2, i12, str8, z11, downloadUtil$transferFile$2) == objF) {
                        return objF;
                    }
                    if (function4 != null) {
                        function4.invoke(Boxing.a(true));
                    }
                } else {
                    function3 = function1;
                    str4 = "resource_save";
                    downloadUtil$transferFile$2.L$0 = function3;
                    downloadUtil$transferFile$2.L$1 = str3;
                    downloadUtil$transferFile$2.label = 4;
                    if (P(downloadBean, z10, downloadUtil$transferFile$2) == objF) {
                        return objF;
                    }
                    if (function3 != null) {
                        function3.invoke(Boxing.a(false));
                    }
                    lg.a.f68839a.x(str4, str3 + " ，转存到sdcard，转存失败", true);
                }
            } else if (i12 == 3) {
                final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
                objectRef2.element = "";
                str5 = "resource_save";
                if (com.transsnet.downloader.y.f60245a.i(context, path, str, new Function2() { // from class: com.transsnet.downloader.util.o
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) {
                        return DownloadUtil.L(function2, ((Long) obj2).longValue(), ((Long) obj3).longValue());
                    }
                }, new Function1() { // from class: com.transsnet.downloader.util.p
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        return DownloadUtil.M(objectRef2, (String) obj2);
                    }
                })) {
                    lg.a.f68839a.p(str5, new String[]{str7 + " ，转存到相册 成功 beforeRootPathType:" + i11 + ", beforeRootPath = " + str + " targetRootPathType:" + i12 + ", targetRootPath = " + str2}, true);
                    String str9 = (String) objectRef2.element;
                    function6 = function1;
                    downloadUtil$transferFile$2.L$0 = function6;
                    downloadUtil$transferFile$2.label = 1;
                    if (Q(downloadBean, path, str, i11, str2, i12, str9, z11, downloadUtil$transferFile$2) == objF) {
                        return objF;
                    }
                    if (function6 != null) {
                        function6.invoke(Boxing.a(true));
                    }
                } else {
                    function5 = function1;
                    downloadUtil$transferFile$2.L$0 = function5;
                    downloadUtil$transferFile$2.L$1 = str7;
                    downloadUtil$transferFile$2.label = 2;
                    downloadUtil = this;
                    if (downloadUtil.P(downloadBean, z10, downloadUtil$transferFile$2) == objF) {
                        return objF;
                    }
                    str6 = str7;
                    if (function5 != null) {
                        function5.invoke(Boxing.a(false));
                    }
                    lg.a.f68839a.x(str5, str6 + " ，转存到相册 失败", true);
                }
            }
        } else if (i14 == 1) {
            Function1 function9 = (Function1) downloadUtil$transferFile$2.L$0;
            ResultKt.b(obj);
            function6 = function9;
            if (function6 != null) {
                function6.invoke(Boxing.a(true));
            }
        } else if (i14 == 2) {
            str6 = (String) downloadUtil$transferFile$2.L$1;
            Function1 function10 = (Function1) downloadUtil$transferFile$2.L$0;
            ResultKt.b(obj);
            function5 = function10;
            str5 = "resource_save";
            if (function5 != null) {
                function5.invoke(Boxing.a(false));
            }
            lg.a.f68839a.x(str5, str6 + " ，转存到相册 失败", true);
        } else if (i14 == 3) {
            Function1 function11 = (Function1) downloadUtil$transferFile$2.L$0;
            ResultKt.b(obj);
            function4 = function11;
            if (function4 != null) {
                function4.invoke(Boxing.a(true));
            }
        } else {
            if (i14 != 4) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            String str10 = (String) downloadUtil$transferFile$2.L$1;
            Function1 function12 = (Function1) downloadUtil$transferFile$2.L$0;
            ResultKt.b(obj);
            str3 = str10;
            function3 = function12;
            str4 = "resource_save";
            if (function3 != null) {
                function3.invoke(Boxing.a(false));
            }
            lg.a.f68839a.x(str4, str3 + " ，转存到sdcard，转存失败", true);
        }
        return Unit.f67061a;
    }

    public final boolean i(DownloadBean bean) {
        String path;
        Intrinsics.h(bean, "bean");
        if (bean.getProgress() != 0) {
            Long size = bean.getSize();
            if ((size != null ? size.longValue() : 0L) > 31457280 && (path = bean.getPath()) != null) {
                File file = new File(path);
                long length = file.length();
                if (!file.exists() || length <= 0) {
                    lg.a.f68839a.i("download", "文件不存在，重新下载，fileLength = " + length + ",progress = " + bean.getProgress() + "，path = " + path, true);
                    return true;
                }
                long progress = bean.getProgress() - length;
                if (progress > 5120) {
                    lg.a.f68839a.x("download", "文件已经开始出现异常 name：" + bean.getTitleName(), true);
                }
                if (progress > 10485760) {
                    lg.a.f68839a.i("download", "重新下载，fileLength = " + length + ",progress = " + bean.getProgress() + ",extra = " + progress + "，path = " + path, true);
                    return true;
                }
            }
        }
        return false;
    }

    public final DownloadBean j(Subject subject, String str, String str2, String str3, String str4, String str5) {
        String downloadUrl;
        ResourceDetectors resourceDetector;
        String uploadBy;
        ResourceDetectors resourceDetector2;
        String resourceLink;
        ResourceDetectors resourceDetector3;
        Integer subjectType;
        ResourceDetectors resourceDetector4;
        Integer resolution;
        ResourceDetectors resourceDetector5;
        Cover cover;
        ResourceDetectors resourceDetector6;
        Cover cover2;
        String title;
        ResourceDetectors resourceDetector7;
        String resourceId;
        ResourceDetectors resourceDetector8;
        String downloadUrl2;
        ResourceDetectors resourceDetector9;
        DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f59419m.a();
        String str6 = "";
        if (subject == null || (resourceDetector9 = subject.getResourceDetector()) == null || (downloadUrl = resourceDetector9.getResourceId()) == null) {
            downloadUrl = (subject == null || (resourceDetector = subject.getResourceDetector()) == null) ? null : resourceDetector.getDownloadUrl();
            if (downloadUrl == null) {
                downloadUrl = "";
            }
        }
        DownloadBean downloadBeanQ = downloadEsHelperA.q(downloadUrl);
        if (downloadBeanQ != null) {
            lg.a.C0828a.f(lg.a.f68839a, "downloadAna", "single， get download bean from database", false, 4, null);
        } else {
            downloadBeanQ = new DownloadBean((subject == null || (resourceDetector8 = subject.getResourceDetector()) == null || (downloadUrl2 = resourceDetector8.getDownloadUrl()) == null) ? "" : downloadUrl2, (subject == null || (resourceDetector7 = subject.getResourceDetector()) == null || (resourceId = resourceDetector7.getResourceId()) == null) ? "" : resourceId, (subject == null || (title = subject.getTitle()) == null) ? "" : title, (subject == null || (cover2 = subject.getCover()) == null) ? null : cover2.getUrl(), (subject == null || (resourceDetector6 = subject.getResourceDetector()) == null) ? null : resourceDetector6.getTotalSize(), null, null, null, null, null, 0L, 0, 0, 0, 0L, 0L, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, subject != null ? subject.getGenre() : null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -32, -131073, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
            downloadBeanQ.setGenre(subject != null ? subject.getGenre() : null);
            downloadBeanQ.setRestrictLevel(subject != null ? subject.getRestrictLevel() : null);
            downloadBeanQ.setReleaseDate(subject != null ? subject.getReleaseDate() : null);
            downloadBeanQ.setImdbRate(subject != null ? subject.getImdbRate() : null);
            downloadBeanQ.setCountryName(subject != null ? subject.getCountryName() : null);
            downloadBeanQ.setSeNum(subject != null ? subject.getSeNum() : null);
            downloadBeanQ.setSubtitles(subject != null ? subject.getSubtitles() : null);
            downloadBeanQ.setThumbnail((subject == null || (cover = subject.getCover()) == null) ? null : cover.getThumbnail());
            downloadBeanQ.setPostId((subject == null || (resourceDetector5 = subject.getResourceDetector()) == null) ? null : resourceDetector5.getPostId());
            downloadBeanQ.setSubjectId(subject != null ? subject.getSubjectId() : null);
            downloadBeanQ.setGroupId(str4);
            downloadBeanQ.setSubjectName(subject != null ? subject.getTitle() : null);
            downloadBeanQ.setResolution((subject == null || (resourceDetector4 = subject.getResourceDetector()) == null || (resolution = resourceDetector4.getResolution()) == null) ? 0 : resolution.intValue());
            downloadBeanQ.setType(DownloadBean.INSTANCE.c(subject != null ? subject.getSubjectType() : null));
            downloadBeanQ.setSubjectType((subject == null || (subjectType = subject.getSubjectType()) == null) ? SubjectType.MOVIE.getValue() : subjectType.intValue());
            if (subject == null || (resourceDetector3 = subject.getResourceDetector()) == null || (uploadBy = resourceDetector3.getUploadBy()) == null) {
                uploadBy = str5 == null ? "" : str5;
            }
            downloadBeanQ.setUploadBy(uploadBy);
            if (subject != null && (resourceDetector2 = subject.getResourceDetector()) != null && (resourceLink = resourceDetector2.getResourceLink()) != null) {
                str6 = resourceLink;
            }
            downloadBeanQ.setSourceUrl(str6);
        }
        lg.a.C0828a.f(lg.a.f68839a, "downloadAna", "single， add download task， " + downloadBeanQ, false, 4, null);
        downloadBeanQ.setCreateAt(System.currentTimeMillis());
        downloadBeanQ.setUpdateTimeStamp(Long.valueOf(System.currentTimeMillis()));
        downloadBeanQ.setPageFrom(str);
        downloadBeanQ.setLastPageFrom(str2);
        downloadBeanQ.setOps(str3);
        String string = UUID.randomUUID().toString();
        Intrinsics.g(string, "toString(...)");
        downloadBeanQ.setTaskId(string);
        downloadBeanQ.setDuration(subject != null ? Long.valueOf(subject.getResourceAboutDuration()) : null);
        return downloadBeanQ;
    }

    public final DownloadBean k(DownloadUrlBean urlBean, Subject subject, String str, String str2, String str3) {
        String uploadBy;
        String sourceUrl;
        String name;
        Integer subjectType;
        Integer resolution;
        Integer epse;
        Cover cover;
        Cover cover2;
        Cover cover3;
        String name2;
        String resourceId;
        String url;
        Intrinsics.h(urlBean, "urlBean");
        DownloadItem resource = urlBean.getResource();
        int totalEpisode = urlBean.getTotalEpisode();
        DownloadBean downloadBean = new DownloadBean((resource == null || (url = resource.getUrl()) == null) ? "" : url, (resource == null || (resourceId = resource.getResourceId()) == null) ? "" : resourceId, (resource == null || (name2 = resource.getName()) == null) ? "" : name2, (subject == null || (cover3 = subject.getCover()) == null) ? null : cover3.getUrl(), resource != null ? resource.getSize() : null, null, null, null, null, null, 0L, 0, 0, 0, 0L, 0L, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, subject != null ? subject.getGenre() : null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -32, -131073, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
        downloadBean.setThumbnail((subject == null || (cover2 = subject.getCover()) == null) ? null : cover2.getThumbnail());
        downloadBean.setGenre(subject != null ? subject.getGenre() : null);
        downloadBean.setRestrictLevel(subject != null ? subject.getRestrictLevel() : null);
        downloadBean.setReleaseDate(subject != null ? subject.getReleaseDate() : null);
        downloadBean.setImdbRate(subject != null ? subject.getImdbRate() : null);
        downloadBean.setCountryName(subject != null ? subject.getCountryName() : null);
        downloadBean.setSeNum(subject != null ? subject.getSeNum() : null);
        downloadBean.setSubtitles(subject != null ? subject.getSubtitles() : null);
        downloadBean.setAverageHueLight((subject == null || (cover = subject.getCover()) == null) ? null : cover.getAverageHueLight());
        downloadBean.setSubjectDurationSeconds(subject != null ? subject.getDurationSeconds() : null);
        if (resource == null || (uploadBy = resource.getUploadBy()) == null) {
            uploadBy = "";
        }
        downloadBean.setUploadBy(uploadBy);
        if (resource == null || (sourceUrl = resource.getSourceUrl()) == null) {
            sourceUrl = "";
        }
        downloadBean.setSourceUrl(sourceUrl);
        downloadBean.setPostId(resource != null ? resource.getPostId() : null);
        int iIntValue = 0;
        downloadBean.setEpse((resource == null || (epse = resource.getEpse()) == null) ? 0 : epse.intValue());
        downloadBean.setEp(resource != null ? resource.getEp() : 0);
        downloadBean.setSe(resource != null ? resource.getSe() : 0);
        if (resource != null && (resolution = resource.getResolution()) != null) {
            iIntValue = resolution.intValue();
        }
        downloadBean.setResolution(iIntValue);
        downloadBean.setSubjectId(subject != null ? subject.getSubjectId() : null);
        downloadBean.setType(DownloadBean.INSTANCE.c(subject != null ? subject.getSubjectType() : null));
        downloadBean.setSubjectType((subject == null || (subjectType = subject.getSubjectType()) == null) ? SubjectType.MOVIE.getValue() : subjectType.intValue());
        downloadBean.setTotalEpisode(totalEpisode);
        downloadBean.setCreateAt(System.currentTimeMillis());
        downloadBean.setUpdateTimeStamp(Long.valueOf(System.currentTimeMillis()));
        String title = subject != null ? subject.getTitle() : null;
        if (title == null || title.length() == 0) {
            name = urlBean.getName();
        } else {
            name = subject != null ? subject.getTitle() : null;
        }
        downloadBean.setSubjectName(name);
        downloadBean.setPageFrom(str);
        downloadBean.setLastPageFrom(str2);
        downloadBean.setOps(str3);
        String string = UUID.randomUUID().toString();
        Intrinsics.g(string, "toString(...)");
        downloadBean.setTaskId(string);
        downloadBean.setDuration(subject != null ? Long.valueOf(subject.getResourceAboutDuration()) : null);
        return downloadBean;
    }

    public final PostSubjectItem l(DownloadBean bean) {
        List<Video> video;
        Intrinsics.h(bean, "bean");
        String originData = bean.getOriginData();
        if (originData != null && originData.length() != 0) {
            try {
                PostSubjectItem postSubjectItem = (PostSubjectItem) com.blankj.utilcode.util.o.d(bean.getOriginData(), PostSubjectItem.class);
                if (postSubjectItem != null) {
                    Media media = postSubjectItem.getMedia();
                    Video video2 = (media == null || (video = media.getVideo()) == null) ? null : (Video) CollectionsKt.k0(video);
                    if (video2 != null) {
                        video2.setUrl(bean.getPath());
                    }
                    return postSubjectItem;
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
        String path = bean.getPath();
        int videoWidth = bean.getVideoWidth();
        int videoHeight = bean.getVideoHeight();
        Long duration = bean.getDuration();
        Media media2 = new Media(null, new Cover(null, null, null, bean.getCover(), null, bean.getThumbnail(), null, null, null, 471, null), null, null, MediaType.VIDEO.getValue(), CollectionsKt.e(new Video(0, 0, duration != null ? Integer.valueOf((int) duration.longValue()) : null, 0, Integer.valueOf(videoHeight), 0, path, Integer.valueOf(videoWidth))), null);
        String subjectId = bean.getSubjectId();
        String subjectName = bean.getSubjectName();
        int subjectType = bean.getSubjectType();
        String releaseDate = bean.getReleaseDate();
        if (releaseDate == null) {
            releaseDate = com.blankj.utilcode.util.c0.i(bean.getCreateAt(), "yyyy-MM-dd");
        }
        return new PostSubjectItem(null, String.valueOf(bean.getCreateAt()), null, null, null, null, media2, bean.getPostId(), null, null, new Subject(subjectId, Integer.valueOf(subjectType), subjectName, null, null, releaseDate, null, null, null, bean.getGenre(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, false, null, null, null, null, null, false, false, null, null, 0, false, false, 0L, null, null, 0L, null, 0, false, null, 0, null, null, null, null, null, 0, null, null, null, null, null, null, -552, 134217727, null), null, bean.getTitleName(), null, null, null, null, null, null, false, null, null, null, null, false, null, false, null, true, false, false, false, null, -268440771, 1, null);
    }

    public final long o(DownloadBean bean) {
        Long duration;
        Intrinsics.h(bean, "bean");
        if (bean.getDuration() == null || ((duration = bean.getDuration()) != null && duration.longValue() == 0)) {
            return bean.getType() != 2 ? 5242880L : 7864320L;
        }
        Long duration2 = bean.getDuration();
        Intrinsics.e(duration2);
        long jLongValue = duration2.longValue() - 3600000;
        if (jLongValue > 0) {
            long j11 = ((((long) 46080) * jLongValue) / 60000) + 5242880;
            if (j11 > 9437184) {
                return 9437184L;
            }
            return j11;
        }
        long jAbs = 5242880 - ((((long) 87040) * Math.abs(jLongValue)) / 60000);
        if (jAbs < 3145728) {
            return 3145728L;
        }
        return jAbs;
    }

    public final int r(DownloadBean downloadBean) {
        Integer numValueOf = downloadBean != null ? Integer.valueOf(downloadBean.getType()) : null;
        if (numValueOf != null && numValueOf.intValue() == 1) {
            return R$mipmap.home_ic_audio_white;
        }
        if (numValueOf != null && numValueOf.intValue() == 3) {
            return downloadBean.isShotTV() ? R$mipmap.home_ic_short_tv_white : R$mipmap.home_ic_tv_white;
        }
        return R$mipmap.home_ic_movie_white;
    }

    public final String s(DownloadBean bean) {
        File parentFile;
        Intrinsics.h(bean, "bean");
        String strReplace = new Regex("[\\\\/:#*?\"<>|&,]").replace(bean.getFileName(), "");
        String strF1 = StringsKt.f1(StringsKt.h1(bean.getUrl(), UrlUtils.QUESTION_MARK, null, 2, null), ".", null, 2, null);
        if (strF1.length() == 0) {
            strF1 = "mp4";
        }
        DownloadEsHelper.a aVar = DownloadEsHelper.f59419m;
        String absolutePath = u((aVar.a().h().getAbsolutePath() + File.separatorChar + strReplace) + "." + strF1).getAbsolutePath();
        bean.setRootPath(aVar.a().t());
        bean.setRootPathType(aVar.a().u());
        File file = new File(absolutePath);
        if (!file.exists()) {
            try {
                Result.Companion companion = Result.INSTANCE;
                File parentFile2 = file.getParentFile();
                if (parentFile2 != null && (!parentFile2.exists()) && (parentFile = file.getParentFile()) != null) {
                    parentFile.mkdirs();
                }
                Result.m454constructorimpl(Boolean.valueOf(file.createNewFile()));
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m454constructorimpl(ResultKt.a(th2));
            }
        }
        Intrinsics.e(absolutePath);
        return absolutePath;
    }

    public final int t(List seasons, int i11) {
        Object next;
        Object next2;
        List<ResolutionItem> resolutions;
        Intrinsics.h(seasons, "seasons");
        Iterator it = seasons.iterator();
        do {
            next = null;
            if (!it.hasNext()) {
                next2 = null;
                break;
            }
            next2 = it.next();
        } while (((ResourcesSeason) next2).getSe() != i11);
        ResourcesSeason resourcesSeason = (ResourcesSeason) next2;
        if (resourcesSeason == null || (resolutions = resourcesSeason.getResolutions()) == null) {
            return 0;
        }
        Iterator<T> it2 = resolutions.iterator();
        if (it2.hasNext()) {
            next = it2.next();
            if (it2.hasNext()) {
                int epNum = ((ResolutionItem) next).getEpNum();
                do {
                    Object next3 = it2.next();
                    int epNum2 = ((ResolutionItem) next3).getEpNum();
                    if (epNum < epNum2) {
                        next = next3;
                        epNum = epNum2;
                    }
                } while (it2.hasNext());
            }
        }
        ResolutionItem resolutionItem = (ResolutionItem) next;
        if (resolutionItem != null) {
            return resolutionItem.getResolution();
        }
        return 0;
    }

    public final String[] v() {
        return f59903d;
    }

    public final int w(List list) {
        int size;
        if (list == null) {
            return 0;
        }
        Iterator it = list.iterator();
        int i11 = 0;
        while (it.hasNext()) {
            DownloadBean downloadBean = (DownloadBean) it.next();
            if (downloadBean.getStatus() != 10) {
                size = 1;
            } else if (downloadBean.getIsSeriesAllCheck()) {
                size = downloadBean.getSeriesList().size();
            } else {
                Iterator<T> it2 = downloadBean.getSeriesList().iterator();
                int i12 = 0;
                while (it2.hasNext()) {
                    if (((DownloadBean) it2.next()).getIsCheck()) {
                        i12++;
                    }
                }
                size = i12;
            }
            i11 += size;
        }
        return i11;
    }

    public final List x(DownloadListBean downloadListBean, Subject subject, String str, String str2, String str3, String str4, String str5, List list) {
        List<DownloadItem> items;
        DownloadBean downloadBeanZ;
        Object next;
        ArrayList arrayList = new ArrayList();
        if (downloadListBean != null && (items = downloadListBean.getItems()) != null) {
            for (DownloadItem downloadItem : items) {
                if (list == null || !(!list.isEmpty())) {
                    downloadBeanZ = f59900a.z(downloadListBean, subject, downloadItem, str, str2, str3, str4, str5);
                } else {
                    Iterator it = list.iterator();
                    do {
                        if (!it.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it.next();
                    } while (!Intrinsics.c(((DownloadBean) next).getResourceId(), downloadItem.getResourceId()));
                    downloadBeanZ = (DownloadBean) next;
                    if (downloadBeanZ == null) {
                        downloadBeanZ = f59900a.z(downloadListBean, subject, downloadItem, str, str2, str3, str4, str5);
                    }
                }
                downloadBeanZ.setVipInfo(downloadListBean.getVipInfo());
                arrayList.add(downloadBeanZ);
            }
        }
        return arrayList;
    }
}
