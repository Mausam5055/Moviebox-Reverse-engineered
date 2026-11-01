package com.transsnet.downloader.viewmodel;

import android.app.Application;
import android.text.TextUtils;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.ad.utils.CommonLogUtil;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsnet.downloader.DownloadManagerApi;
import com.transsnet.downloader.bean.DownloadUrlBean;
import com.transsnet.downloader.manager.DownloadEsHelper;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import okhttp3.internal.http2.Settings;

/* JADX INFO: loaded from: classes.dex */
public final class DownloadListManager {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final a f59994m = new a(null);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final Lazy f59995n = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() { // from class: com.transsnet.downloader.viewmodel.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return DownloadListManager.U();
        }
    });

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private androidx.p009lifecycle.b0 f60002g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private androidx.p009lifecycle.b0 f60003h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private androidx.p009lifecycle.b0 f60005j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f59996a = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.viewmodel.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return DownloadListManager.X();
        }
    });

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f59997b = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.viewmodel.e
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return DownloadListManager.t();
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Lazy f59998c = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.viewmodel.f
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return DownloadListManager.u();
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f59999d = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.viewmodel.g
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return DownloadListManager.w();
        }
    });

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Lazy f60000e = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.viewmodel.h
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return DownloadListManager.y();
        }
    });

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Lazy f60001f = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.viewmodel.i
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return DownloadListManager.W();
        }
    });

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ConcurrentHashMap f60004i = new ConcurrentHashMap();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f60006k = true;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Map f60007l = new LinkedHashMap();

    /* JADX INFO: loaded from: classes7.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DownloadListManager a() {
            return (DownloadListManager) DownloadListManager.f59995n.getValue();
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    public static final class b extends sg.a {
        b() {
        }

        @Override // sg.a
        public void a(String str, String str2) {
            lg.a.C0828a.f(lg.a.f68839a, "downloadAna", "url download, get config failure, liveData is null = " + (DownloadListManager.this.Q() == null), false, 4, null);
            androidx.p009lifecycle.b0 b0VarQ = DownloadListManager.this.Q();
            if (b0VarQ != null) {
                b0VarQ.n(null);
            }
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(DownloadUrlBean downloadUrlBean) {
            lg.a.C0828a.v(lg.a.f68839a, "downloadAna", "url download, get config success, liveData is null = " + (DownloadListManager.this.Q() == null), false, 4, null);
            androidx.p009lifecycle.b0 b0VarQ = DownloadListManager.this.Q();
            if (b0VarQ != null) {
                b0VarQ.n(downloadUrlBean);
            }
        }
    }

    public static /* synthetic */ void I(DownloadListManager downloadListManager, boolean z10, boolean z11, BiddingNativeManager biddingNativeManager, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = true;
        }
        if ((i11 & 2) != 0) {
            z11 = false;
        }
        if ((i11 & 4) != 0) {
            biddingNativeManager = null;
        }
        downloadListManager.H(z10, z11, biddingNativeManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final qy.a L() {
        return (qy.a) this.f59996a.getValue();
    }

    public static /* synthetic */ void N(DownloadListManager downloadListManager, String str, int i11, int i12, String str2, int i13, int i14, Object obj) {
        if ((i14 & 2) != 0) {
            i11 = 1;
        }
        int i15 = i11;
        if ((i14 & 4) != 0) {
            i12 = 20;
        }
        int i16 = i12;
        if ((i14 & 8) != 0) {
            str2 = "";
        }
        String str3 = str2;
        if ((i14 & 16) != 0) {
            i13 = com.transsion.baselib.report.launch.b.f43370a.b().getInt("download_last_resolution", 0);
        }
        downloadListManager.M(str, i15, i16, str3, i13);
    }

    private final List R(List list) {
        Iterator it;
        int i11 = 0;
        int i12 = 1;
        ArrayList arrayList = new ArrayList();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            DownloadBean downloadBean = (DownloadBean) it2.next();
            if (linkedHashMap.containsKey(downloadBean.getSubjectId())) {
                if (downloadBean.isVideo() && Intrinsics.c(downloadBean.getResourceId(), downloadBean.getUrl())) {
                    arrayList.add(downloadBean);
                } else {
                    List list2 = (List) linkedHashMap.get(downloadBean.getSubjectId());
                    if (list2 != null) {
                        list2.add(downloadBean);
                    }
                }
            } else if (downloadBean.getSubjectId() != null) {
                String subjectId = downloadBean.getSubjectId();
                Intrinsics.e(subjectId);
                linkedHashMap.put(subjectId, CollectionsKt.q(downloadBean));
            } else {
                arrayList.add(downloadBean);
            }
        }
        Iterator it3 = linkedHashMap.entrySet().iterator();
        while (it3.hasNext()) {
            Map.Entry entry = (Map.Entry) it3.next();
            if (((List) entry.getValue()).size() == i12) {
                arrayList.add(((List) entry.getValue()).get(i11));
            } else {
                if (((List) entry.getValue()).size() > i12) {
                    DownloadBean downloadBean2 = (DownloadBean) ((List) entry.getValue()).get(i11);
                    DownloadBean downloadBean3 = new DownloadBean("series", "series", "", downloadBean2.getCover(), 0L, null, null, null, null, downloadBean2.getUpdateTimeStamp(), 0L, 0, 0, 0, 0L, downloadBean2.getCreateAt(), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -33312, -1, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
                    downloadBean3.setStatus(10);
                    List list3 = (List) entry.getValue();
                    if (list3.size() > i12) {
                        CollectionsKt.A(list3, new Comparator() { // from class: com.transsnet.downloader.viewmodel.DownloadListManager$handleDownloaded$lambda$14$$inlined$sortBy$1
                            /* JADX WARN: Multi-variable type inference failed */
                            @Override // java.util.Comparator
                            public final int compare(T t11, T t12) {
                                return ComparisonsKt.d(Integer.valueOf(((DownloadBean) t11).getEpse()), Integer.valueOf(((DownloadBean) t12).getEpse()));
                            }
                        });
                    }
                    downloadBean3.getSeriesList().addAll((Collection) entry.getValue());
                    DownloadBean downloadBean4 = downloadBean2;
                    long jLongValue = 0;
                    long jLongValue2 = 0;
                    long readProgress = 0;
                    boolean z10 = false;
                    int i13 = 0;
                    boolean z11 = false;
                    for (DownloadBean downloadBean5 : (List) entry.getValue()) {
                        it3 = it3;
                        if (downloadBean5.getStatus() == 14) {
                            i13 = 1;
                        } else {
                            if (downloadBean5.getIsTransferFailed()) {
                                z10 = true;
                            }
                            if (!z11 && !downloadBean5.getIsTransferFailed() && downloadBean5.isFileExist()) {
                                downloadBean4 = downloadBean5;
                                z11 = true;
                            }
                            Long size = downloadBean5.getSize();
                            jLongValue += size != null ? size.longValue() : 0L;
                            Long duration = downloadBean5.getDuration();
                            jLongValue2 += duration != null ? duration.longValue() : 0L;
                            readProgress += downloadBean5.getReadProgress();
                        }
                    }
                    it = it3;
                    downloadBean3.setTransferFailed(z10);
                    downloadBean3.setThumbnail(downloadBean2.getThumbnail());
                    downloadBean3.setCount(((List) entry.getValue()).size() - i13);
                    downloadBean3.setSize(Long.valueOf(jLongValue));
                    downloadBean3.setDuration(Long.valueOf(jLongValue2));
                    downloadBean3.setOps(downloadBean2.getOps());
                    downloadBean3.setTotalEpisode(downloadBean2.getTotalEpisode());
                    downloadBean3.setSubjectId(downloadBean2.getSubjectId());
                    downloadBean3.setSubjectName(downloadBean2.getSubjectName());
                    downloadBean3.setReadProgress(readProgress);
                    downloadBean3.setRootPath(downloadBean4.getRootPath());
                    downloadBean3.setRootPathType(downloadBean4.getRootPathType());
                    downloadBean3.setType(downloadBean2.getType());
                    downloadBean3.setSubjectType(downloadBean2.getSubjectType());
                    c0(downloadBean3);
                    arrayList.add(downloadBean3);
                }
                it3 = it;
                i11 = 0;
                i12 = 1;
            }
            it = it3;
            it3 = it;
            i11 = 0;
            i12 = 1;
        }
        if (arrayList.size() > 1) {
            CollectionsKt.A(arrayList, new Comparator() { // from class: com.transsnet.downloader.viewmodel.DownloadListManager$handleDownloaded$$inlined$sortByDescending$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t11, T t12) {
                    return ComparisonsKt.d(Long.valueOf(((DownloadBean) t12).getCreateAt()), Long.valueOf(((DownloadBean) t11).getCreateAt()));
                }
            });
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void S(List list) {
        if (this.f60007l == null) {
            this.f60007l = new LinkedHashMap();
        }
        this.f60007l.clear();
        int size = list.size();
        for (int i11 = 0; i11 < size; i11++) {
            String resourceId = ((DownloadBean) list.get(i11)).getResourceId();
            if (resourceId != null && resourceId.length() > 0) {
                this.f60007l.put(resourceId, Integer.valueOf(i11));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void T(List list, BiddingNativeManager biddingNativeManager) {
        Object objM454constructorimpl;
        Object objValueOf;
        if (biddingNativeManager == null) {
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            DownloadBean downloadBean = new DownloadBean(CommonLogUtil.TAG_AD, CommonLogUtil.TAG_AD, CommonLogUtil.TAG_AD, "", 0L, null, null, null, null, null, 0L, 0, 0, 0, 0L, 0L, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -32, -1, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
            downloadBean.setStatus(13);
            downloadBean.setWrapNativeManager(biddingNativeManager);
            if (!biddingNativeManager.V0()) {
                return;
            }
            if (2 >= list.size()) {
                objValueOf = Boolean.valueOf(list.add(downloadBean));
            } else {
                list.add(2, downloadBean);
                objValueOf = Unit.f67061a;
            }
            objM454constructorimpl = Result.m454constructorimpl(objValueOf);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Result.m457exceptionOrNullimpl(objM454constructorimpl);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DownloadListManager U() {
        return new DownloadListManager();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final androidx.p009lifecycle.b0 W() {
        return new androidx.p009lifecycle.b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final qy.a X() {
        return (qy.a) zg.c.f79414e.a().h(qy.a.class);
    }

    private final void c0(DownloadBean downloadBean) {
        if (K().f() == null) {
            return;
        }
        DownloadBean downloadBean2 = (DownloadBean) K().f();
        if (Intrinsics.c(downloadBean2 != null ? downloadBean2.getSubjectId() : null, downloadBean.getSubjectId())) {
            K().n(downloadBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void q(List list) {
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                DownloadBean downloadBean = (DownloadBean) it.next();
                if (!TextUtils.isEmpty(downloadBean.getSubjectId()) && !TextUtils.isEmpty(downloadBean.getResourceId()) && !downloadBean.isShotTV()) {
                    DownloadManagerApi.f58398j.a().T(downloadBean.getSubjectId(), downloadBean.getResourceId(), downloadBean.isSeries(), downloadBean.getTotalEpisode(), false, downloadBean.getResolution() > 0);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void s(List list) {
        File[] fileArrListFiles;
        if (list.isEmpty()) {
            try {
                Result.Companion companion = Result.INSTANCE;
                File fileS = DownloadEsHelper.f59419m.a().s();
                if (fileS.exists() && fileS.isDirectory() && (fileArrListFiles = fileS.listFiles()) != null && fileArrListFiles.length != 0) {
                    hj.i.f64505a.s("download", "app_perf", MapsKt.f(TuplesKt.a("download_ops", "delete_download_file")));
                }
                Result.m454constructorimpl(Unit.f67061a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m454constructorimpl(ResultKt.a(th2));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final lj.c t() {
        Application applicationA = Utils.a();
        if (applicationA != null) {
            return AppDatabase.INSTANCE.b(applicationA).p1();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final androidx.p009lifecycle.b0 u() {
        return new androidx.p009lifecycle.b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object v(List list, Continuation continuation) {
        ArrayList arrayList = new ArrayList();
        if (list != null && !list.isEmpty()) {
            arrayList.addAll(R(list));
        }
        lg.a.C0828a.f(lg.a.f68839a, "DownloadPanel", "2-  get getDownloadedList success = " + arrayList.size(), false, 4, null);
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final androidx.p009lifecycle.b0 w() {
        return new androidx.p009lifecycle.b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object x(Continuation continuation) throws Throwable {
        DownloadListManager$downloadingList$1 downloadListManager$downloadingList$1;
        if (continuation instanceof DownloadListManager$downloadingList$1) {
            downloadListManager$downloadingList$1 = (DownloadListManager$downloadingList$1) continuation;
            int i11 = downloadListManager$downloadingList$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                downloadListManager$downloadingList$1.label = i11 - Integer.MIN_VALUE;
            } else {
                downloadListManager$downloadingList$1 = new DownloadListManager$downloadingList$1(this, continuation);
            }
        } else {
            downloadListManager$downloadingList$1 = new DownloadListManager$downloadingList$1(this, continuation);
        }
        Object objC = downloadListManager$downloadingList$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = downloadListManager$downloadingList$1.label;
        if (i12 == 0) {
            ResultKt.b(objC);
            DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f59419m.a();
            downloadListManager$downloadingList$1.label = 1;
            objC = downloadEsHelperA.C(downloadListManager$downloadingList$1);
            if (objC == objF) {
                return objF;
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(objC);
        }
        List list = (List) objC;
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            List list2 = list;
            if (!list2.isEmpty()) {
                int size = list2.size();
                int i13 = 0;
                while (true) {
                    if (i13 >= size) {
                        i13 = -1;
                        break;
                    }
                    DownloadBean downloadBean = (DownloadBean) list.get(i13);
                    if (downloadBean.isDownloading() && !downloadBean.getIsPreDownload()) {
                        break;
                    }
                    i13++;
                }
                if (i13 > 0) {
                    Collections.swap(list, i13, 0);
                }
                arrayList.addAll(list2);
            }
        }
        lg.a.C0828a.f(lg.a.f68839a, "DownloadPanel", "1 -- get getDownloadingList success = " + arrayList.size(), false, 4, null);
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final androidx.p009lifecycle.b0 y() {
        return new androidx.p009lifecycle.b0();
    }

    public final ConcurrentHashMap A() {
        return this.f60004i;
    }

    public final androidx.p009lifecycle.b0 B() {
        return (androidx.p009lifecycle.b0) this.f59998c.getValue();
    }

    public final Map C() {
        return this.f60007l;
    }

    public final androidx.p009lifecycle.b0 D() {
        return this.f60003h;
    }

    public final void E() {
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new DownloadListManager$getDownloadedList$1(this, null), 3, null);
    }

    public final androidx.p009lifecycle.b0 F() {
        return (androidx.p009lifecycle.b0) this.f59999d.getValue();
    }

    public final androidx.p009lifecycle.b0 G() {
        return (androidx.p009lifecycle.b0) this.f60000e.getValue();
    }

    public final void H(boolean z10, boolean z11, BiddingNativeManager biddingNativeManager) {
        E();
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new DownloadListManager$getList$1(z11, this, z10, biddingNativeManager, null), 3, null);
    }

    public final Object J(int i11, Continuation continuation) {
        return DownloadEsHelper.f59419m.a().G(i11, continuation);
    }

    public final androidx.p009lifecycle.b0 K() {
        return (androidx.p009lifecycle.b0) this.f60001f.getValue();
    }

    public final void M(String str, int i11, int i12, String str2, int i13) {
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new DownloadListManager$getShortTVList$1(i13, this, str, i11, i12, str2, null), 3, null);
    }

    public final Object O(Continuation continuation) {
        return DownloadEsHelper.f59419m.a().M(continuation);
    }

    public final void P(String str, String linkUrl) {
        Intrinsics.h(linkUrl, "linkUrl");
        if (this.f60005j == null) {
            this.f60005j = new androidx.p009lifecycle.b0();
        }
        L().e(vg.a.f77324a.a(), linkUrl, str).f(sg.d.f75349a.c()).subscribe(new b());
    }

    public final androidx.p009lifecycle.b0 Q() {
        return this.f60005j;
    }

    public final boolean V() {
        return this.f60006k;
    }

    public final void Y(androidx.p009lifecycle.b0 b0Var) {
        this.f60002g = b0Var;
    }

    public final void Z(androidx.p009lifecycle.b0 b0Var) {
        this.f60003h = b0Var;
    }

    public final void a0(boolean z10) {
        this.f60006k = z10;
    }

    public final void b0(androidx.p009lifecycle.b0 b0Var) {
        this.f60005j = b0Var;
    }

    public final void p(DownloadBean downloadBean) {
        Intrinsics.h(downloadBean, "downloadBean");
        if (this.f60003h == null) {
            this.f60003h = new androidx.p009lifecycle.b0();
        }
        androidx.p009lifecycle.b0 b0Var = this.f60003h;
        if (b0Var != null) {
            b0Var.q(downloadBean);
        }
    }

    public final void r(int i11) {
        if (this.f60004i.containsKey(Integer.valueOf(i11))) {
            return;
        }
        this.f60004i.put(Integer.valueOf(i11), new androidx.p009lifecycle.b0());
    }

    public final androidx.p009lifecycle.b0 z() {
        return this.f60002g;
    }
}
