package com.transsion.postdetail.shorttv.factory;

import android.R;
import android.widget.FrameLayout;
import androidx.fragment.app.FragmentActivity;
import com.blankj.utilcode.util.Utils;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baseui.R$string;
import com.transsion.shorttv.bean.Cover;
import com.transsion.shorttv.bean.DownloadItem;
import com.transsion.shorttv.bean.DownloadListBean;
import com.transsion.shorttv.bean.Media;
import com.transsion.shorttv.bean.ShortTVItem;
import com.transsion.shorttv.bean.Subject;
import com.transsion.shorttv.bean.SubjectType;
import com.transsion.shorttv.bean.Video;
import com.transsnet.downloader.manager.DownloadEsHelper;
import com.transsnet.downloader.manager.p;
import com.transsnet.downloader.view.DownloadingTipsDialogFragment;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import lj.m0;
import lj.s0;
import okhttp3.internal.http2.Settings;

/* JADX INFO: loaded from: classes6.dex */
public final class ShortTvDownloadProvider implements qs.d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private qs.m f49205b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private qs.n f49206c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private DownloadBean f49209f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f49204a = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.shorttv.factory.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return ShortTvDownloadProvider.r();
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final m0 f49207d = new a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final s0 f49208e = new b();

    public static final class a extends lj.a {
        a() {
        }

        @Override // lj.a, lj.m0
        public void e(DownloadBean bean, String str) {
            Intrinsics.h(bean, "bean");
            qs.m mVar = ShortTvDownloadProvider.this.f49205b;
            if (mVar != null) {
                mVar.a(bean.getSubjectId(), bean.getEp());
            }
        }
    }

    public static final class b implements s0 {
        b() {
        }

        private final ts.a d(DownloadBean downloadBean) {
            return new ts.a(downloadBean.getSubjectId(), downloadBean.getSubjectId() + "_" + downloadBean.getEp() + "short", downloadBean.getName(), downloadBean.getTitleName(), downloadBean.getResourceId(), downloadBean.getEp(), downloadBean.getSe(), downloadBean.getOps());
        }

        @Override // lj.s0
        public void a(String subtitleResId) {
            Intrinsics.h(subtitleResId, "subtitleResId");
            qs.n nVar = ShortTvDownloadProvider.this.f49206c;
            if (nVar != null) {
                nVar.a(subtitleResId);
            }
        }

        @Override // lj.s0
        public void b(DownloadBean bean) {
            String resourceId;
            qs.n nVar;
            Intrinsics.h(bean, "bean");
            if (!bean.isShotTV() || !bean.isVideo() || bean.isMusic() || (resourceId = bean.getResourceId()) == null || resourceId.length() == 0 || (nVar = ShortTvDownloadProvider.this.f49206c) == null) {
                return;
            }
            nVar.c(d(bean));
        }

        @Override // lj.s0
        public void c(DownloadBean bean, boolean z10) {
            String resourceId;
            qs.n nVar;
            Intrinsics.h(bean, "bean");
            if (!bean.isShotTV() || (resourceId = bean.getResourceId()) == null || resourceId.length() == 0 || (nVar = ShortTvDownloadProvider.this.f49206c) == null) {
                return;
            }
            nVar.b(d(bean), z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(DownloadItem downloadItem, int i11, FragmentActivity fragmentActivity) {
        DownloadBean downloadBeanQ;
        String resourceId = downloadItem.getResourceId();
        if (resourceId == null) {
            resourceId = downloadItem.getUrl();
        }
        if (resourceId == null || (downloadBeanQ = DownloadEsHelper.f59419m.a().q(resourceId)) == null) {
            return;
        }
        DownloadingTipsDialogFragment downloadingTipsDialogFragmentA = DownloadingTipsDialogFragment.INSTANCE.a(i11);
        downloadingTipsDialogFragmentA.O0(downloadBeanQ);
        downloadingTipsDialogFragmentA.k0(fragmentActivity, "DownloadingTipsDialogFragment");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.transsnet.downloader.manager.g r() {
        return p.f59500a.a(Utils.a());
    }

    private final com.transsnet.downloader.manager.g s() {
        return (com.transsnet.downloader.manager.g) this.f49204a.getValue();
    }

    private final ShortTVItem t(DownloadBean downloadBean) {
        Integer numValueOf = Integer.valueOf(downloadBean.getVideoHeight());
        Long size = downloadBean.getSize();
        return new ShortTVItem(downloadBean.getResourceId(), downloadBean.getSubjectId(), downloadBean.getSe(), downloadBean.getEp(), null, new Media(null, null, null, null, null, null, new Video(null, null, null, null, numValueOf, size != null ? Integer.valueOf((int) size.longValue()) : null, downloadBean.getPath(), Integer.valueOf(downloadBean.getVideoWidth()), null), null), null, null, downloadBean.getReadProgress(), downloadBean.getStatus(), 0, 1232, null);
    }

    private final Subject u(DownloadBean downloadBean) {
        Cover cover = new Cover(null, null, null, downloadBean.getCover(), null, downloadBean.getThumbnail(), null, null, null, 471, null);
        String subjectId = downloadBean.getSubjectId();
        String subjectName = downloadBean.getSubjectName();
        int subjectType = downloadBean.getSubjectType();
        return new Subject(subjectId, Integer.valueOf(subjectType), subjectName, null, cover, null, null, null, null, null, null, null, null, null, null, null, null, null, null, downloadBean.getOps(), null, null, null, null, false, false, null, null, null, null, null, false, false, null, null, downloadBean.getTotalEpisode(), false, false, 0L, null, null, 0L, null, 0, false, null, 0, null, null, null, null, null, false, null, null, 0, 0, null, 0, null, 0, null, -524312, 1073741815, null);
    }

    private final DownloadBean v(DownloadListBean downloadListBean, Subject subject, String str, String str2, String str3, DownloadItem downloadItem) {
        String genre;
        String thumbnail;
        Cover cover;
        String releaseDate;
        String countryName;
        String title;
        List<DownloadItem> items;
        Integer totalEpisode;
        Cover cover2;
        Cover cover3;
        Cover cover4;
        String url;
        String url2 = downloadItem.getUrl();
        String str4 = url2 == null ? "" : url2;
        String resourceId = downloadItem.getResourceId();
        String str5 = resourceId == null ? "" : resourceId;
        String name = downloadItem.getName();
        DownloadBean downloadBean = new DownloadBean(str4, str5, name == null ? "" : name, (downloadListBean == null || (cover4 = downloadListBean.getCover()) == null || (url = cover4.getUrl()) == null) ? "" : url, downloadItem.getSize(), null, null, null, null, null, 0L, 0, 0, 0, 0L, 0L, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -32, -1, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
        Integer numValueOf = null;
        if (subject == null || (genre = subject.getGenre()) == null) {
            genre = downloadListBean != null ? downloadListBean.getGenre() : null;
        }
        downloadBean.setGenre(genre);
        downloadBean.setCreateAt(System.currentTimeMillis());
        if (subject == null || (cover3 = subject.getCover()) == null || (thumbnail = cover3.getThumbnail()) == null) {
            thumbnail = (downloadListBean == null || (cover = downloadListBean.getCover()) == null) ? null : cover.getThumbnail();
            if (thumbnail == null) {
                thumbnail = "";
            }
        }
        downloadBean.setThumbnail(thumbnail);
        if (subject == null || (releaseDate = subject.getGenre()) == null) {
            releaseDate = downloadListBean != null ? downloadListBean.getReleaseDate() : null;
        }
        downloadBean.setReleaseDate(releaseDate);
        if (subject == null || (countryName = subject.getCountryName()) == null) {
            countryName = downloadListBean != null ? downloadListBean.getCountryName() : null;
        }
        downloadBean.setCountryName(countryName);
        downloadBean.setRestrictLevel(subject != null ? subject.getRestrictLevel() : null);
        downloadBean.setImdbRate(subject != null ? subject.getImdbRate() : null);
        downloadBean.setSeNum(subject != null ? subject.getSeNum() : null);
        downloadBean.setSubtitles(subject != null ? subject.getSubtitles() : null);
        downloadBean.setDuration(downloadItem.getDuration());
        downloadBean.setAverageHueLight((downloadListBean == null || (cover2 = downloadListBean.getCover()) == null) ? null : cover2.getAverageHueLight());
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
        downloadBean.setSubjectId(downloadListBean != null ? downloadListBean.getSubjectId() : null);
        if (downloadListBean == null || (title = downloadListBean.getTitle()) == null) {
            title = subject != null ? subject.getTitle() : null;
        }
        downloadBean.setSubjectName(title);
        downloadBean.setPageFrom(str2);
        downloadBean.setLastPageFrom(str3);
        downloadBean.setOps(str);
        String sourceUrl = downloadItem.getSourceUrl();
        if (sourceUrl == null) {
            sourceUrl = "";
        }
        downloadBean.setSourceUrl(sourceUrl);
        downloadBean.setTaskId(downloadItem.getTaskId());
        downloadBean.setRequireMemberType(downloadItem.getRequireMemberType());
        downloadBean.setType(DownloadBean.INSTANCE.c(downloadListBean != null ? Integer.valueOf(downloadListBean.getSubjectType()) : null));
        downloadBean.setSubjectType(downloadListBean != null ? downloadListBean.getSubjectType() : SubjectType.SHORT_TV.getValue());
        downloadBean.setSubjectDurationSeconds(downloadListBean != null ? downloadListBean.getDurationSeconds() : null);
        downloadBean.setTotalEpisode((downloadListBean == null || (totalEpisode = downloadListBean.getTotalEpisode()) == null) ? 1 : totalEpisode.intValue());
        if (downloadListBean != null && (items = downloadListBean.getItems()) != null) {
            numValueOf = Integer.valueOf(items.size());
        }
        Intrinsics.e(numValueOf);
        if (numValueOf.intValue() > downloadBean.getTotalEpisode()) {
            downloadBean.setMultiresolution(1);
        }
        return downloadBean;
    }

    @Override // qs.d
    public Object a(String str, int i11, String str2, Continuation continuation) {
        return s().a(str, i11, str2, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // qs.d
    public Object b(String str, Continuation continuation) throws Throwable {
        ShortTvDownloadProvider$fetchDownloadList$1 shortTvDownloadProvider$fetchDownloadList$1;
        if (continuation instanceof ShortTvDownloadProvider$fetchDownloadList$1) {
            shortTvDownloadProvider$fetchDownloadList$1 = (ShortTvDownloadProvider$fetchDownloadList$1) continuation;
            int i11 = shortTvDownloadProvider$fetchDownloadList$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                shortTvDownloadProvider$fetchDownloadList$1.label = i11 - Integer.MIN_VALUE;
            } else {
                shortTvDownloadProvider$fetchDownloadList$1 = new ShortTvDownloadProvider$fetchDownloadList$1(this, continuation);
            }
        } else {
            shortTvDownloadProvider$fetchDownloadList$1 = new ShortTvDownloadProvider$fetchDownloadList$1(this, continuation);
        }
        Object objV = shortTvDownloadProvider$fetchDownloadList$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = shortTvDownloadProvider$fetchDownloadList$1.label;
        if (i12 == 0) {
            ResultKt.b(objV);
            DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f59419m.a();
            shortTvDownloadProvider$fetchDownloadList$1.label = 1;
            objV = downloadEsHelperA.v(str, shortTvDownloadProvider$fetchDownloadList$1);
            if (objV == objF) {
                return objF;
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(objV);
        }
        Iterable iterable = (Iterable) objV;
        ArrayList arrayList = new ArrayList(CollectionsKt.v(iterable, 10));
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add(t((DownloadBean) it.next()));
        }
        return arrayList;
    }

    @Override // qs.d
    public void c() {
        s().x(this.f49207d);
        this.f49205b = null;
    }

    @Override // qs.d
    public Object d(String str, int i11, long j11, Continuation continuation) throws Throwable {
        Object objD0 = DownloadEsHelper.f59419m.a().d0(str, i11, j11, continuation);
        return objD0 == IntrinsicsKt.f() ? objD0 : Unit.f67061a;
    }

    @Override // qs.d
    public boolean e(long j11) {
        DownloadEsHelper.a aVar = DownloadEsHelper.f59419m;
        aVar.a().i();
        String strT = aVar.a().t();
        if (strT.length() == 0) {
            return false;
        }
        try {
            long j12 = com.blankj.utilcode.util.n.j(strT);
            Long lY = s().y();
            if (j11 + (lY != null ? lY.longValue() : 0L) >= j12) {
                uh.b.f76753a.d(R$string.insufficient_storage_available);
                lg.a.f68839a.o("--- 可用存储空间不足，释放空间并重试 ---", true);
                return true;
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    @Override // qs.d
    public void f(qs.m listener) {
        Intrinsics.h(listener, "listener");
        this.f49205b = listener;
        s().e(this.f49207d);
    }

    @Override // qs.d
    public DownloadItem g(String str) {
        DownloadItem downloadItem = null;
        if (str != null && str.length() != 0) {
            DownloadBean downloadBeanQ = DownloadEsHelper.f59419m.a().q(str);
            if (downloadBeanQ == null) {
                return null;
            }
            String resourceId = downloadBeanQ.getResourceId();
            if (resourceId == null) {
                resourceId = downloadBeanQ.getUrl();
            }
            String str2 = resourceId;
            String totalTitleName = downloadBeanQ.getTotalTitleName();
            String url = downloadBeanQ.getUrl();
            Long size = downloadBeanQ.getSize();
            downloadItem = new DownloadItem(str2, totalTitleName, url, 1, Long.valueOf(size != null ? size.longValue() : 0L), downloadBeanQ.getUploadBy(), downloadBeanQ.getPostId(), Integer.valueOf(downloadBeanQ.getEpse()), downloadBeanQ.getSe(), downloadBeanQ.getEp(), downloadBeanQ.getStatus(), downloadBeanQ.getSourceUrl(), Integer.valueOf(downloadBeanQ.getResolution()), null, null);
            String taskId = downloadBeanQ.getTaskId();
            if (taskId == null) {
                taskId = "";
            }
            downloadItem.setTaskId(taskId);
        }
        return downloadItem;
    }

    @Override // qs.d
    public void h(DownloadListBean downloadListBean, Subject subject, String str, String str2, String str3, List list) {
        Intrinsics.h(list, "list");
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            DownloadBean downloadBeanV = v(downloadListBean, subject, str, str2, str3, (DownloadItem) it.next());
            if (this.f49209f != null) {
                this.f49209f = downloadBeanV;
            }
            arrayList.add(downloadBeanV);
        }
        s().D(arrayList);
    }

    @Override // qs.d
    public void i(final FragmentActivity activity, final DownloadItem item, final int i11, String formatSize) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(item, "item");
        Intrinsics.h(formatSize, "formatSize");
        ((FrameLayout) activity.findViewById(R.id.content)).postDelayed(new Runnable() { // from class: com.transsion.postdetail.shorttv.factory.d
            @Override // java.lang.Runnable
            public final void run() {
                ShortTvDownloadProvider.q(item, i11, activity);
            }
        }, 300L);
    }

    @Override // qs.d
    public void j(qs.n listener) {
        Intrinsics.h(listener, "listener");
        this.f49206c = listener;
        s().F(this.f49208e);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // qs.d
    public Object k(String str, Continuation continuation) throws Throwable {
        ShortTvDownloadProvider$getDownloadSubject$1 shortTvDownloadProvider$getDownloadSubject$1;
        if (continuation instanceof ShortTvDownloadProvider$getDownloadSubject$1) {
            shortTvDownloadProvider$getDownloadSubject$1 = (ShortTvDownloadProvider$getDownloadSubject$1) continuation;
            int i11 = shortTvDownloadProvider$getDownloadSubject$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                shortTvDownloadProvider$getDownloadSubject$1.label = i11 - Integer.MIN_VALUE;
            } else {
                shortTvDownloadProvider$getDownloadSubject$1 = new ShortTvDownloadProvider$getDownloadSubject$1(this, continuation);
            }
        } else {
            shortTvDownloadProvider$getDownloadSubject$1 = new ShortTvDownloadProvider$getDownloadSubject$1(this, continuation);
        }
        Object objV = shortTvDownloadProvider$getDownloadSubject$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = shortTvDownloadProvider$getDownloadSubject$1.label;
        if (i12 == 0) {
            ResultKt.b(objV);
            DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f59419m.a();
            shortTvDownloadProvider$getDownloadSubject$1.label = 1;
            objV = downloadEsHelperA.v(str, shortTvDownloadProvider$getDownloadSubject$1);
            if (objV == objF) {
                return objF;
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(objV);
        }
        DownloadBean downloadBean = (DownloadBean) CollectionsKt.k0((List) objV);
        if (downloadBean != null) {
            return u(downloadBean);
        }
        return null;
    }

    @Override // qs.d
    public void l(FragmentActivity fragmentActivity, String str, int i11) {
        qs.d.a.a(this, fragmentActivity, str, i11);
    }
}
