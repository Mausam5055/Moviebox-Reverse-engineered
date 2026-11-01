package com.transsnet.downloader.proxy;

import android.app.Application;
import androidx.collection.s;
import com.blankj.utilcode.util.Utils;
import com.danikula.videocache.m;
import com.danikula.videocache.q;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.download.DownloadRange;
import com.transsnet.downloader.core.task.DownloadTaskUtil;
import com.transsnet.downloader.util.DownloadUtil;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import lj.n0;
import ny.d;

/* JADX INFO: loaded from: classes.dex */
public final class DownloadFileCache implements com.danikula.videocache.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private RandomAccessFile f59572d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private DownloadBean f59573e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f59574f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private c f59575g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private DownloadRange f59577i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f59578j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f59580l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private m f59581m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f59569a = 3145728;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f59570b = 3145728;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Lazy f59571c = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.proxy.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return DownloadFileCache.m();
        }
    });

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ConcurrentHashMap f59576h = new ConcurrentHashMap();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f59579k = "";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f59582n = true;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final d f59583o = new a();

    /* JADX INFO: loaded from: classes7.dex */
    public static final class a extends d {
        a() {
        }

        @Override // ny.d
        public void h(DownloadBean bean, int i11) {
            m mVar;
            m mVar2;
            Intrinsics.h(bean, "bean");
            if (DownloadFileCache.this.f59577i == null || (mVar = DownloadFileCache.this.f59581m) == null || !mVar.b()) {
                return;
            }
            long j11 = DownloadFileCache.this.f59580l + ((long) 8192);
            DownloadRange downloadRange = DownloadFileCache.this.f59577i;
            Intrinsics.e(downloadRange);
            if (j11 > downloadRange.totalProgress() || (mVar2 = DownloadFileCache.this.f59581m) == null) {
                return;
            }
            mVar2.c();
        }
    }

    private final void g(long j11) {
        DownloadRange downloadRange;
        DownloadRange downloadRange2 = this.f59577i;
        if (downloadRange2 != null) {
            Intrinsics.e(downloadRange2);
            if (downloadRange2.contains(j11)) {
                return;
            }
        }
        q.a("checkDownloadNewV2Ranges = " + (this.f59573e == null));
        DownloadBean downloadBean = this.f59573e;
        if (downloadBean != null) {
            DownloadRange downloadRange3 = this.f59577i;
            for (DownloadRange downloadRange4 : downloadBean.getDownloadRanges()) {
                if (downloadRange4.contains(j11)) {
                    this.f59578j = downloadRange4.getThreadIndex();
                    this.f59577i = downloadRange4;
                    break;
                }
            }
            lg.a.C0828a c0828a = lg.a.f68839a;
            int i11 = this.f59578j;
            DownloadRange downloadRange5 = this.f59577i;
            Boolean boolValueOf = downloadRange5 != null ? Boolean.valueOf(downloadRange5.getIsDownloading()) : null;
            DownloadRange downloadRange6 = this.f59577i;
            Boolean boolValueOf2 = downloadRange6 != null ? Boolean.valueOf(downloadRange6.isRangeDownloadSuccess()) : null;
            DownloadRange downloadRange7 = this.f59577i;
            Object objValueOf = downloadRange7 != null ? Integer.valueOf(downloadRange7.getRangeId()) : "range is null";
            DownloadRange downloadRange8 = this.f59577i;
            Long lValueOf = downloadRange8 != null ? Long.valueOf(downloadRange8.getStart()) : null;
            DownloadRange downloadRange9 = this.f59577i;
            Long lValueOf2 = downloadRange9 != null ? Long.valueOf(downloadRange9.getEnd()) : null;
            DownloadRange downloadRange10 = this.f59577i;
            Long lValueOf3 = downloadRange10 != null ? Long.valueOf(downloadRange10.getProgress()) : null;
            c0828a.c("download", StringsKt.n("download&play checkDownloadNewV2Ranges, offset=" + j11 + ",index = " + i11 + " \n                  currentRange, isDownloading: " + boolValueOf + ", downloadSuccess: " + boolValueOf2 + "\n                  rangeId: " + objValueOf + ", start: " + lValueOf + ", end: " + lValueOf2 + ",progress: " + lValueOf3 + "\n                  resourceId:" + downloadBean.getResourceId() + ",name:" + downloadBean.getName() + "\n                "), true);
            DownloadRange downloadRange11 = this.f59577i;
            if (downloadRange11 != null) {
                Intrinsics.e(downloadRange11);
                if (downloadRange11.getIsDownloading()) {
                    return;
                }
                DownloadRange downloadRange12 = this.f59577i;
                Intrinsics.e(downloadRange12);
                if (downloadRange12.isRangeDownloadSuccess() || !nh.m.f70474a.e()) {
                    return;
                }
                c cVar = this.f59575g;
                if (cVar != null) {
                    String resourceId = downloadBean.getResourceId();
                    int i12 = this.f59578j;
                    DownloadRange downloadRange13 = this.f59577i;
                    Intrinsics.e(downloadRange13);
                    downloadRange = downloadRange3;
                    cVar.a(resourceId, i12, downloadRange, downloadRange13);
                } else {
                    downloadRange = downloadRange3;
                }
                for (Map.Entry entry : this.f59576h.entrySet()) {
                    Object key = entry.getKey();
                    String resourceId2 = downloadBean.getResourceId();
                    if (resourceId2 == null) {
                        resourceId2 = downloadBean.getUrl();
                    }
                    if (Intrinsics.c(key, resourceId2)) {
                        c cVar2 = (c) entry.getValue();
                        String resourceId3 = downloadBean.getResourceId();
                        int i13 = this.f59578j;
                        DownloadRange downloadRange14 = this.f59577i;
                        Intrinsics.e(downloadRange14);
                        cVar2.a(resourceId3, i13, downloadRange, downloadRange14);
                    }
                }
            }
        }
    }

    private final void h(String str, long j11) {
        Object resourceId;
        List<DownloadRange> downloadRanges;
        String url;
        DownloadBean downloadBean = this.f59573e;
        List<DownloadRange> downloadRanges2 = downloadBean != null ? downloadBean.getDownloadRanges() : null;
        if (downloadRanges2 == null || downloadRanges2.isEmpty()) {
            return;
        }
        DownloadBean downloadBean2 = this.f59573e;
        Intrinsics.e(downloadBean2);
        for (DownloadRange downloadRange : downloadBean2.getDownloadRanges()) {
            if (downloadRange.contains(j11)) {
                DownloadRange downloadRange2 = this.f59577i;
                long start = downloadRange.getStart();
                if (j11 <= downloadRange.totalProgress() && start <= j11) {
                    this.f59577i = downloadRange;
                    r(str + "_range1", str + " 暂停当前线程，启动新线程下载, 已经下载，直接返回, offset = " + j11 + ", rangeId = " + downloadRange.getRangeId());
                } else if (j11 < downloadRange.getStart() + downloadRange.getProgress() + this.f59570b) {
                    this.f59577i = downloadRange;
                    r(str + "_range2", str + " 暂停当前线程，启动新线程下载, 小于阈值，等待下载,只的启动线程，不处理range, offset = " + j11);
                } else {
                    if (downloadRange.getEnd() - j11 < this.f59570b) {
                        r(str + "_range3", str + " 暂停当前线程，启动新线程下载, 新增分片小于阈值，使用阈值大小, offset = " + j11);
                        j11 = downloadRange.getEnd() - this.f59570b;
                    } else {
                        r(str + "_range4", str + " 暂停当前线程，启动新线程下载, 新增分片大于阈值, offset = " + j11);
                    }
                    if (nh.m.f70474a.e()) {
                        DownloadRange downloadRange3 = new DownloadRange();
                        DownloadBean downloadBean3 = this.f59573e;
                        if (downloadBean3 == null || (resourceId = downloadBean3.getResourceId()) == null) {
                            resourceId = 0;
                        }
                        downloadRange3.setThreadId(resourceId.hashCode());
                        downloadRange3.setRangeId(s.a(downloadRange.getEnd() + j11));
                        downloadRange3.setResourceId(downloadRange.getResourceId());
                        downloadRange3.setStart(j11);
                        downloadRange3.setEnd(downloadRange.getEnd());
                        downloadRange3.setProgress(0L);
                        downloadRange.setEnd(downloadRange3.getStart() - 1);
                        DownloadBean downloadBean4 = this.f59573e;
                        if (downloadBean4 != null && (downloadRanges = downloadBean4.getDownloadRanges()) != null) {
                            downloadRanges.add(downloadRange3);
                        }
                        this.f59577i = downloadRange3;
                        DownloadBean downloadBean5 = this.f59573e;
                        s(downloadBean5 != null ? downloadBean5.getDownloadRanges() : null);
                    }
                }
                DownloadRange downloadRange4 = this.f59577i;
                if (downloadRange4 != null) {
                    Intrinsics.e(downloadRange4);
                    if (downloadRange4.isRangeDownloadSuccess()) {
                        return;
                    }
                    DownloadRange downloadRange5 = this.f59577i;
                    Intrinsics.e(downloadRange5);
                    if (downloadRange5.getIsDownloading() || !nh.m.f70474a.e()) {
                        return;
                    }
                    c cVar = this.f59575g;
                    if (cVar != null) {
                        DownloadBean downloadBean6 = this.f59573e;
                        String resourceId2 = downloadBean6 != null ? downloadBean6.getResourceId() : null;
                        int i11 = this.f59578j;
                        DownloadRange downloadRange6 = this.f59577i;
                        Intrinsics.e(downloadRange6);
                        cVar.a(resourceId2, i11, downloadRange2, downloadRange6);
                    }
                    for (Map.Entry entry : this.f59576h.entrySet()) {
                        Object key = entry.getKey();
                        DownloadBean downloadBean7 = this.f59573e;
                        if (downloadBean7 == null || (url = downloadBean7.getResourceId()) == null) {
                            DownloadBean downloadBean8 = this.f59573e;
                            url = downloadBean8 != null ? downloadBean8.getUrl() : null;
                        }
                        if (Intrinsics.c(key, url)) {
                            c cVar2 = (c) entry.getValue();
                            DownloadBean downloadBean9 = this.f59573e;
                            String resourceId3 = downloadBean9 != null ? downloadBean9.getResourceId() : null;
                            int i12 = this.f59578j;
                            DownloadRange downloadRange7 = this.f59577i;
                            Intrinsics.e(downloadRange7);
                            cVar2.a(resourceId3, i12, downloadRange2, downloadRange7);
                        }
                    }
                    return;
                }
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final n0 k() {
        return (n0) this.f59571c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final n0 m() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).q1();
    }

    private final void r(String str, String str2) {
        if (Intrinsics.c(this.f59579k, str)) {
            return;
        }
        this.f59579k = str;
        q.a("================range,  " + str2);
    }

    private final void s(List list) {
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(list2);
        if (arrayList.size() > 1) {
            CollectionsKt.A(arrayList, new Comparator() { // from class: com.transsnet.downloader.proxy.DownloadFileCache$updateDBRanges$lambda$6$$inlined$sortBy$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t11, T t12) {
                    return ComparisonsKt.d(Long.valueOf(((DownloadRange) t11).getStart()), Long.valueOf(((DownloadRange) t12).getStart()));
                }
            });
        }
        list.clear();
        list.addAll(arrayList);
        k.d(o0.a(y0.b()), null, null, new DownloadFileCache$updateDBRanges$1(list, this, null), 3, null);
    }

    @Override // com.danikula.videocache.a
    public long A() {
        Long size;
        DownloadBean downloadBean = this.f59573e;
        if (downloadBean == null || (size = downloadBean.getSize()) == null) {
            return 0L;
        }
        return size.longValue();
    }

    @Override // com.danikula.videocache.a
    public void B() {
        try {
            DownloadBean downloadBean = this.f59573e;
            String path = downloadBean != null ? downloadBean.getPath() : null;
            if (path != null && path.length() != 0) {
                q.b("1-path create");
                DownloadBean downloadBean2 = this.f59573e;
                this.f59572d = new RandomAccessFile(downloadBean2 != null ? downloadBean2.getPath() : null, CampaignEx.JSON_KEY_AD_R);
                return;
            }
            q.b("path is null, is not downloading");
        } catch (Throwable th2) {
            DownloadBean downloadBean3 = this.f59573e;
            q.b("1--path = " + (downloadBean3 != null ? downloadBean3.getPath() : null) + ",error = " + th2);
            try {
                q.b("2-path create");
                DownloadBean downloadBean4 = this.f59573e;
                this.f59572d = new RandomAccessFile(downloadBean4 != null ? downloadBean4.getPath() : null, "rwd");
            } catch (Throwable th3) {
                DownloadBean downloadBean5 = this.f59573e;
                q.b("2--path = " + (downloadBean5 != null ? downloadBean5.getPath() : null) + ",error = " + th3);
            }
        }
    }

    @Override // com.danikula.videocache.a
    public void C(long j11) {
        Object resourceId;
        String url;
        List<DownloadRange> downloadRanges;
        if (DownloadTaskUtil.f58629a.j()) {
            g(j11);
            return;
        }
        DownloadRange downloadRange = this.f59577i;
        if (downloadRange == null) {
            lg.a.C0828a c0828a = lg.a.f68839a;
            DownloadBean downloadBean = this.f59573e;
            String resourceId2 = downloadBean != null ? downloadBean.getResourceId() : null;
            DownloadBean downloadBean2 = this.f59573e;
            c0828a.i("download", "download&play currentRangeNull currentRange is null, offset = " + j11 + ",resourceId=" + resourceId2 + ",,name=" + (downloadBean2 != null ? downloadBean2.getName() : null), true);
            return;
        }
        Intrinsics.e(downloadRange);
        long start = downloadRange.getStart();
        DownloadRange downloadRange2 = this.f59577i;
        Intrinsics.e(downloadRange2);
        if (j11 <= downloadRange2.totalProgress() && start <= j11) {
            r("currentRange1", "当前分片已下载进度内，不做任何处理，直接返回, offset = " + j11);
            return;
        }
        DownloadRange downloadRange3 = this.f59577i;
        Intrinsics.e(downloadRange3);
        if (j11 < downloadRange3.getStart()) {
            h("beforeRange", j11);
            return;
        }
        DownloadRange downloadRange4 = this.f59577i;
        Intrinsics.e(downloadRange4);
        if (j11 >= downloadRange4.getEnd()) {
            h("afterRange", j11);
            return;
        }
        DownloadRange downloadRange5 = this.f59577i;
        Intrinsics.e(downloadRange5);
        long start2 = downloadRange5.getStart();
        DownloadRange downloadRange6 = this.f59577i;
        Intrinsics.e(downloadRange6);
        if (j11 < start2 + downloadRange6.getProgress() + this.f59570b) {
            r("currentRange21", "当前分片内，快进小于阈值，等待下载, offset = " + j11);
            return;
        }
        DownloadRange downloadRange7 = this.f59577i;
        Intrinsics.e(downloadRange7);
        if (downloadRange7.getEnd() - j11 < this.f59570b) {
            r("currentRange22", "当前分片内，（暂停当前线程，启动新线程下载）快进 新增分片小于阈值，使用阈值大小, offset = " + j11);
            DownloadRange downloadRange8 = this.f59577i;
            Intrinsics.e(downloadRange8);
            j11 = downloadRange8.getEnd() - this.f59570b;
        } else {
            r("currentRange23", "当前分片内，（暂停当前线程，启动新线程下载）快进 新增分片大于阈值, offset = " + j11);
        }
        if (nh.m.f70474a.e()) {
            DownloadRange downloadRange9 = new DownloadRange();
            DownloadBean downloadBean3 = this.f59573e;
            if (downloadBean3 == null || (resourceId = downloadBean3.getResourceId()) == null) {
                resourceId = 0;
            }
            downloadRange9.setThreadId(resourceId.hashCode());
            DownloadRange downloadRange10 = this.f59577i;
            Intrinsics.e(downloadRange10);
            downloadRange9.setRangeId(s.a(downloadRange10.getEnd() + j11));
            DownloadRange downloadRange11 = this.f59577i;
            Intrinsics.e(downloadRange11);
            downloadRange9.setResourceId(downloadRange11.getResourceId());
            downloadRange9.setStart(j11);
            DownloadRange downloadRange12 = this.f59577i;
            Intrinsics.e(downloadRange12);
            downloadRange9.setEnd(downloadRange12.getEnd());
            downloadRange9.setProgress(0L);
            DownloadRange downloadRange13 = this.f59577i;
            Intrinsics.e(downloadRange13);
            downloadRange13.setEnd(downloadRange9.getStart() - 1);
            DownloadBean downloadBean4 = this.f59573e;
            if (downloadBean4 != null && (downloadRanges = downloadBean4.getDownloadRanges()) != null) {
                downloadRanges.add(downloadRange9);
            }
            DownloadRange downloadRange14 = this.f59577i;
            this.f59577i = downloadRange9;
            DownloadBean downloadBean5 = this.f59573e;
            s(downloadBean5 != null ? downloadBean5.getDownloadRanges() : null);
            c cVar = this.f59575g;
            if (cVar != null) {
                DownloadBean downloadBean6 = this.f59573e;
                cVar.a(downloadBean6 != null ? downloadBean6.getResourceId() : null, this.f59578j, downloadRange14, downloadRange9);
            }
            for (Map.Entry entry : this.f59576h.entrySet()) {
                Object key = entry.getKey();
                DownloadBean downloadBean7 = this.f59573e;
                if (downloadBean7 == null || (url = downloadBean7.getResourceId()) == null) {
                    DownloadBean downloadBean8 = this.f59573e;
                    url = downloadBean8 != null ? downloadBean8.getUrl() : null;
                }
                if (Intrinsics.c(key, url)) {
                    c cVar2 = (c) entry.getValue();
                    DownloadBean downloadBean9 = this.f59573e;
                    cVar2.a(downloadBean9 != null ? downloadBean9.getResourceId() : null, this.f59578j, downloadRange14, downloadRange9);
                }
            }
        }
    }

    @Override // com.danikula.videocache.a
    public int D(byte[] buffer, long j11, int i11, String url) throws IOException {
        RandomAccessFile randomAccessFile;
        Intrinsics.h(buffer, "buffer");
        Intrinsics.h(url, "url");
        if (this.f59572d == null) {
            B();
        }
        RandomAccessFile randomAccessFile2 = this.f59572d;
        if ((randomAccessFile2 != null ? randomAccessFile2.length() : 0L) == 0) {
            DownloadRange downloadRange = this.f59577i;
            if ((downloadRange != null ? downloadRange.getProgress() : 0L) > 0) {
                q.f("read error, create new data file");
                B();
            }
        }
        RandomAccessFile randomAccessFile3 = this.f59572d;
        if (randomAccessFile3 != null) {
            randomAccessFile3.seek(j11);
        }
        DownloadRange downloadRange2 = this.f59577i;
        Intrinsics.e(downloadRange2);
        int i12 = (j11 <= downloadRange2.totalProgress() && (randomAccessFile = this.f59572d) != null) ? randomAccessFile.read(buffer, 0, i11) : -1;
        if (i12 == -1) {
            RandomAccessFile randomAccessFile4 = this.f59572d;
            Long lValueOf = randomAccessFile4 != null ? Long.valueOf(randomAccessFile4.length()) : null;
            DownloadRange downloadRange3 = this.f59577i;
            Integer numValueOf = downloadRange3 != null ? Integer.valueOf(downloadRange3.getRangeId()) : null;
            DownloadRange downloadRange4 = this.f59577i;
            Long lValueOf2 = downloadRange4 != null ? Long.valueOf(downloadRange4.getStart()) : null;
            DownloadRange downloadRange5 = this.f59577i;
            Long lValueOf3 = downloadRange5 != null ? Long.valueOf(downloadRange5.getEnd()) : null;
            DownloadRange downloadRange6 = this.f59577i;
            q.b("read -1, dataFile created & length= " + lValueOf + ", rangeId = " + numValueOf + ", offset = " + j11 + " , start =  " + lValueOf2 + ",end =  " + lValueOf3 + ", totalProgress = " + (downloadRange6 != null ? Long.valueOf(downloadRange6.totalProgress()) : null));
        }
        return i12;
    }

    @Override // com.danikula.videocache.a
    public void E(long j11) {
        if (DownloadTaskUtil.f58629a.j()) {
            return;
        }
        DownloadRange downloadRange = this.f59577i;
        if (downloadRange != null) {
            Intrinsics.e(downloadRange);
            long start = downloadRange.getStart();
            DownloadRange downloadRange2 = this.f59577i;
            Intrinsics.e(downloadRange2);
            if (j11 <= downloadRange2.getEnd() && start <= j11) {
                return;
            }
        }
        q.a("check  downloadBean = " + (this.f59573e == null));
        DownloadBean downloadBean = this.f59573e;
        if (downloadBean != null) {
            for (DownloadRange downloadRange3 : downloadBean.getDownloadRanges()) {
                if (downloadRange3.contains(j11)) {
                    this.f59578j = downloadRange3.getThreadIndex();
                    this.f59577i = downloadRange3;
                    break;
                }
            }
            lg.a.C0828a c0828a = lg.a.f68839a;
            int i11 = this.f59578j;
            DownloadRange downloadRange4 = this.f59577i;
            Object objValueOf = downloadRange4 != null ? Integer.valueOf(downloadRange4.getRangeId()) : "range is null";
            DownloadRange downloadRange5 = this.f59577i;
            Long lValueOf = downloadRange5 != null ? Long.valueOf(downloadRange5.getStart()) : null;
            DownloadRange downloadRange6 = this.f59577i;
            Long lValueOf2 = downloadRange6 != null ? Long.valueOf(downloadRange6.getEnd()) : null;
            DownloadRange downloadRange7 = this.f59577i;
            Long lValueOf3 = downloadRange7 != null ? Long.valueOf(downloadRange7.getProgress()) : null;
            DownloadBean downloadBean2 = this.f59573e;
            String resourceId = downloadBean2 != null ? downloadBean2.getResourceId() : null;
            DownloadBean downloadBean3 = this.f59573e;
            c0828a.c("download", StringsKt.n("download&play set new download thread, offset=" + j11 + ",index = " + i11 + " \n                           currentRange.rangeId = " + objValueOf + ", start = " + lValueOf + ", end = " + lValueOf2 + ",\n                           progress = " + lValueOf3 + ",resourceId=" + resourceId + ",name=" + (downloadBean3 != null ? downloadBean3.getName() : null) + "\n                    "), true);
        }
    }

    @Override // com.danikula.videocache.a
    public void F(m proxyCache) {
        Intrinsics.h(proxyCache, "proxyCache");
        this.f59581m = proxyCache;
    }

    @Override // com.danikula.videocache.a
    public long G() {
        DownloadRange downloadRange = this.f59577i;
        return downloadRange != null ? downloadRange.getEnd() : A();
    }

    @Override // com.danikula.videocache.a
    public boolean H(long j11, int i11, String url) {
        Intrinsics.h(url, "url");
        this.f59580l = j11;
        DownloadBean downloadBean = this.f59573e;
        if (downloadBean != null) {
            downloadBean.setCurrentOffset(j11);
        }
        if (this.f59577i == null) {
            return false;
        }
        RandomAccessFile randomAccessFile = this.f59572d;
        if ((randomAccessFile != null ? randomAccessFile.length() : 0L) < j11) {
            return false;
        }
        DownloadRange downloadRange = this.f59577i;
        Intrinsics.e(downloadRange);
        if (downloadRange.isRangeDownloadSuccess()) {
            return true;
        }
        long j12 = j11 + ((long) i11);
        DownloadRange downloadRange2 = this.f59577i;
        Intrinsics.e(downloadRange2);
        return j12 <= downloadRange2.totalProgress();
    }

    @Override // com.danikula.videocache.a
    public void close() {
        try {
            RandomAccessFile randomAccessFile = this.f59572d;
            if (randomAccessFile != null) {
                randomAccessFile.close();
            }
            this.f59579k = "";
        } catch (Throwable unused) {
        }
    }

    public final void f(String resourceId, c callback) {
        Intrinsics.h(resourceId, "resourceId");
        Intrinsics.h(callback, "callback");
        this.f59576h.put(resourceId, callback);
    }

    public final DownloadBean i() {
        return this.f59573e;
    }

    @Override // com.danikula.videocache.a
    public boolean isCompleted() {
        DownloadBean downloadBean = this.f59573e;
        return downloadBean != null && downloadBean.getStatus() == 5;
    }

    public final d j() {
        return this.f59583o;
    }

    public final boolean l() {
        return this.f59582n;
    }

    public final void n(String resourceId) {
        Intrinsics.h(resourceId, "resourceId");
        this.f59576h.remove(resourceId);
    }

    public final void o() {
        this.f59577i = null;
        this.f59578j = 0;
        this.f59579k = "";
        close();
        this.f59572d = null;
        this.f59581m = null;
        this.f59582n = true;
    }

    public final void p(String str) {
        this.f59574f = str;
    }

    public final void q(DownloadBean downloadBean) {
        Intrinsics.h(downloadBean, "downloadBean");
        this.f59582n = false;
        q.e("set new video =  " + downloadBean.getName());
        this.f59573e = downloadBean;
        Long size = downloadBean.getSize();
        long jLongValue = size != null ? size.longValue() / ((long) 120) : this.f59569a;
        long j11 = this.f59569a;
        if (jLongValue > j11) {
            jLongValue = j11;
        }
        this.f59570b = jLongValue;
        DownloadUtil.f59900a.B(downloadBean);
    }

    @Override // com.danikula.videocache.a
    public String z() {
        String str = this.f59574f;
        if (str != null) {
            return str;
        }
        DownloadBean downloadBean = this.f59573e;
        return (downloadBean == null || downloadBean.getType() != 1) ? MimeTypes.VIDEO_MP4 : MimeTypes.AUDIO_MPEG;
    }
}
