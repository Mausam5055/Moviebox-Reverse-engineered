package com.transsnet.downloader.core;

import android.app.Application;
import android.media.MediaMetadataRetriever;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.blankj.utilcode.util.ThreadUtils;
import com.blankj.utilcode.util.Utils;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.download.DownloadException;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsnet.downloader.manager.DownloadEsHelper;
import com.transsnet.downloader.notification.DownloadNotificationUtils;
import java.util.Iterator;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import lj.m0;

/* JADX INFO: loaded from: classes.dex */
public final class DownloadResponseImpl implements c {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final a f58566j = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set f58567a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final oy.c f58568b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f58569c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f58570d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Handler f58571e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f58572f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.transsnet.downloader.manager.g f58573g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Lazy f58574h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private n0 f58575i;

    /* JADX INFO: loaded from: classes7.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    public static final class b extends Handler {
        b(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            DownloadBean downloadBean;
            Intrinsics.h(msg, "msg");
            super.handleMessage(msg);
            Object obj = msg.obj;
            if (obj != null) {
                Intrinsics.f(obj, "null cannot be cast to non-null type com.transsion.baselib.db.download.DownloadBean");
                downloadBean = (DownloadBean) obj;
            } else {
                downloadBean = null;
            }
            if (downloadBean == null) {
                return;
            }
            DownloadResponseImpl.this.j(downloadBean, msg.what, msg.arg1 == 1);
        }
    }

    public DownloadResponseImpl(com.transsnet.downloader.manager.g downloadManager, Set downloadListeners, oy.c cVar) {
        Intrinsics.h(downloadManager, "downloadManager");
        Intrinsics.h(downloadListeners, "downloadListeners");
        this.f58567a = downloadListeners;
        this.f58568b = cVar;
        this.f58569c = -1;
        this.f58571e = new b(Looper.getMainLooper());
        this.f58572f = 40;
        this.f58574h = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.core.d
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DownloadResponseImpl.k();
            }
        });
        this.f58575i = o0.a(y0.b());
        this.f58573g = downloadManager;
    }

    private final void h(DownloadBean downloadBean) {
        if (downloadBean.getStatus() == 7) {
            return;
        }
        k.d(this.f58575i, null, null, new DownloadResponseImpl$createOrUpdateDownloadInfo$1(downloadBean, this, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final lj.n0 i() {
        return (lj.n0) this.f58574h.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:58:0x0151  */
    /* JADX WARN: Code duplicated, block: B:60:0x0157  */
    /* JADX WARN: Code duplicated, block: B:64:0x0168 A[LOOP:6: B:62:0x0162->B:64:0x0168, LOOP_END] */
    public final void j(DownloadBean downloadBean, int i11, boolean z10) {
        m0 downloadListener;
        Iterator it;
        lg.a.C0828a.f(lg.a.f68839a, "DownloadImp-ResponseImpl", "onStatusChanged, handleMessage what = " + i11 + ", status = " + downloadBean.getStatus() + ", name = " + downloadBean.getTotalTitleName() + ", code = " + System.identityHashCode(downloadBean), false, 4, null);
        if (i11 != 57) {
            switch (i11) {
                case 1:
                    m0 downloadListener2 = downloadBean.getDownloadListener();
                    if (downloadListener2 != null) {
                        downloadListener2.g(downloadBean);
                    }
                    Iterator it2 = this.f58567a.iterator();
                    while (it2.hasNext()) {
                        ((m0) it2.next()).g(downloadBean);
                    }
                    l(downloadBean);
                    break;
                case 2:
                    Long size = downloadBean.getSize();
                    long jLongValue = size != null ? size.longValue() : 0L;
                    long progress = downloadBean.getProgress();
                    m0 downloadListener3 = downloadBean.getDownloadListener();
                    if (downloadListener3 != null) {
                        downloadListener3.c(downloadBean, progress, jLongValue);
                    }
                    Iterator it3 = this.f58567a.iterator();
                    while (it3.hasNext()) {
                        ((m0) it3.next()).c(downloadBean, progress, jLongValue);
                    }
                    l(downloadBean);
                    break;
                case 3:
                    m0 downloadListener4 = downloadBean.getDownloadListener();
                    if (downloadListener4 != null) {
                        downloadListener4.d(downloadBean);
                    }
                    Iterator it4 = this.f58567a.iterator();
                    while (it4.hasNext()) {
                        ((m0) it4.next()).d(downloadBean);
                    }
                    l(downloadBean);
                    break;
                case 4:
                    m0 downloadListener5 = downloadBean.getDownloadListener();
                    if (downloadListener5 != null) {
                        downloadListener5.f(downloadBean);
                    }
                    Iterator it5 = this.f58567a.iterator();
                    while (it5.hasNext()) {
                        ((m0) it5.next()).f(downloadBean);
                    }
                    l(downloadBean);
                    break;
                case 5:
                    m0 downloadListener6 = downloadBean.getDownloadListener();
                    if (downloadListener6 != null) {
                        downloadListener6.e(downloadBean, downloadBean.getName());
                    }
                    Iterator it6 = this.f58567a.iterator();
                    while (it6.hasNext()) {
                        ((m0) it6.next()).e(downloadBean, downloadBean.getName());
                    }
                    l(downloadBean);
                    break;
                case 6:
                    m0 downloadListener7 = downloadBean.getDownloadListener();
                    if (downloadListener7 != null) {
                        downloadListener7.a(downloadBean, downloadBean.getException());
                    }
                    Iterator it7 = this.f58567a.iterator();
                    while (it7.hasNext()) {
                        ((m0) it7.next()).a(downloadBean, downloadBean.getException());
                    }
                    l(downloadBean);
                    break;
                case 7:
                    downloadListener = downloadBean.getDownloadListener();
                    if (downloadListener != null) {
                        downloadListener.b(downloadBean);
                    }
                    it = this.f58567a.iterator();
                    while (it.hasNext()) {
                        ((m0) it.next()).b(downloadBean);
                    }
                    l(downloadBean);
                    break;
            }
        } else {
            downloadListener = downloadBean.getDownloadListener();
            if (downloadListener != null) {
                downloadListener.b(downloadBean);
            }
            it = this.f58567a.iterator();
            while (it.hasNext()) {
                ((m0) it.next()).b(downloadBean);
            }
            l(downloadBean);
        }
        if (z10) {
            return;
        }
        n(downloadBean);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final lj.n0 k() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).q1();
    }

    private final void l(DownloadBean downloadBean) {
        Object value;
        if (downloadBean.getIsPreDownload()) {
            return;
        }
        if (downloadBean.getStatus() == 6) {
            ConfigBean configBeanC = sm.f.f75407c.a().c("download_error_opt_off", true);
            if (configBeanC == null || (value = configBeanC.getValue()) == null) {
                value = 0;
            }
            DownloadException exception = downloadBean.getException();
            if (exception != null && exception.getCode() == downloadBean.getPreErrorCode() && Intrinsics.c(value, 0)) {
                return;
            }
            DownloadException exception2 = downloadBean.getException();
            downloadBean.setPreErrorCode(exception2 != null ? exception2.getCode() : DownloadException.INSTANCE.a());
        }
        k.d(this.f58575i, null, null, new DownloadResponseImpl$report$1(downloadBean, this, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:64:0x013c  */
    /* JADX WARN: Code duplicated, block: B:68:0x014c  */
    /* JADX WARN: Code duplicated, block: B:71:0x0165 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code duplicated, block: B:88:0x01a1  */
    /* JADX WARN: Code duplicated, block: B:92:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:95:0x01ca A[RETURN] */
    public final Object m(DownloadBean downloadBean, Continuation continuation) throws Throwable {
        DownloadResponseImpl$tryUpdateVideoInfo$1 downloadResponseImpl$tryUpdateVideoInfo$1;
        MediaMetadataRetriever mediaMetadataRetriever;
        Ref.IntRef intRef;
        Ref.IntRef intRef2;
        Unit unit;
        Ref.IntRef intRef3;
        DownloadBean downloadBean2;
        Ref.IntRef intRef4;
        Ref.IntRef intRef5;
        Ref.IntRef intRef6;
        Ref.IntRef intRef7;
        Integer numV;
        Integer numV2;
        Long lX;
        DownloadEsHelper downloadEsHelperA;
        String resourceId;
        int i11;
        int i12;
        DownloadEsHelper downloadEsHelperA2;
        String resourceId2;
        int i13;
        int i14;
        if (continuation instanceof DownloadResponseImpl$tryUpdateVideoInfo$1) {
            downloadResponseImpl$tryUpdateVideoInfo$1 = (DownloadResponseImpl$tryUpdateVideoInfo$1) continuation;
            int i15 = downloadResponseImpl$tryUpdateVideoInfo$1.label;
            if ((i15 & Integer.MIN_VALUE) != 0) {
                downloadResponseImpl$tryUpdateVideoInfo$1.label = i15 - Integer.MIN_VALUE;
            } else {
                downloadResponseImpl$tryUpdateVideoInfo$1 = new DownloadResponseImpl$tryUpdateVideoInfo$1(this, continuation);
            }
        } else {
            downloadResponseImpl$tryUpdateVideoInfo$1 = new DownloadResponseImpl$tryUpdateVideoInfo$1(this, continuation);
        }
        Object obj = downloadResponseImpl$tryUpdateVideoInfo$1.result;
        Object objF = IntrinsicsKt.f();
        switch (downloadResponseImpl$tryUpdateVideoInfo$1.label) {
            case 0:
                ResultKt.b(obj);
                if (downloadBean.getStatus() == 5) {
                    Long duration = downloadBean.getDuration();
                    if ((duration != null ? duration.longValue() : 0L) <= 0 || downloadBean.getVideoWidth() <= 0) {
                        mediaMetadataRetriever = new MediaMetadataRetriever();
                        Ref.LongRef longRef = new Ref.LongRef();
                        intRef = new Ref.IntRef();
                        intRef2 = new Ref.IntRef();
                        try {
                            try {
                                mediaMetadataRetriever.setDataSource(downloadBean.getPath());
                                try {
                                    String strExtractMetadata = mediaMetadataRetriever.extractMetadata(9);
                                    longRef.element = (strExtractMetadata == null || (lX = StringsKt.x(strExtractMetadata)) == null) ? 0L : lX.longValue();
                                    break;
                                } catch (Throwable unused) {
                                }
                                try {
                                    String strExtractMetadata2 = mediaMetadataRetriever.extractMetadata(18);
                                    int iIntValue = 0;
                                    intRef.element = (strExtractMetadata2 == null || (numV2 = StringsKt.v(strExtractMetadata2)) == null) ? 0 : numV2.intValue();
                                    String strExtractMetadata3 = mediaMetadataRetriever.extractMetadata(19);
                                    if (strExtractMetadata3 != null && (numV = StringsKt.v(strExtractMetadata3)) != null) {
                                        iIntValue = numV.intValue();
                                    }
                                    intRef2.element = iIntValue;
                                    break;
                                } catch (Throwable unused2) {
                                }
                                mediaMetadataRetriever.release();
                                if (longRef.element > 0) {
                                    DownloadEsHelper downloadEsHelperA3 = DownloadEsHelper.f59419m.a();
                                    String resourceId3 = downloadBean.getResourceId();
                                    if (resourceId3 == null) {
                                        resourceId3 = downloadBean.getUrl();
                                    }
                                    long j11 = longRef.element;
                                    downloadResponseImpl$tryUpdateVideoInfo$1.L$0 = downloadBean;
                                    downloadResponseImpl$tryUpdateVideoInfo$1.L$1 = intRef;
                                    downloadResponseImpl$tryUpdateVideoInfo$1.L$2 = intRef2;
                                    downloadResponseImpl$tryUpdateVideoInfo$1.L$3 = mediaMetadataRetriever;
                                    downloadResponseImpl$tryUpdateVideoInfo$1.label = 1;
                                    if (downloadEsHelperA3.c0(resourceId3, j11, downloadResponseImpl$tryUpdateVideoInfo$1) == objF) {
                                        return objF;
                                    }
                                    intRef6 = intRef;
                                    intRef7 = intRef2;
                                    intRef2 = intRef7;
                                    intRef = intRef6;
                                    if (intRef.element > 0 && intRef2.element > 0) {
                                        downloadEsHelperA = DownloadEsHelper.f59419m.a();
                                        resourceId = downloadBean.getResourceId();
                                        if (resourceId == null) {
                                            resourceId = downloadBean.getUrl();
                                        }
                                        i11 = intRef.element;
                                        i12 = intRef2.element;
                                        downloadResponseImpl$tryUpdateVideoInfo$1.L$0 = mediaMetadataRetriever;
                                        downloadResponseImpl$tryUpdateVideoInfo$1.L$1 = null;
                                        downloadResponseImpl$tryUpdateVideoInfo$1.L$2 = null;
                                        downloadResponseImpl$tryUpdateVideoInfo$1.L$3 = null;
                                        downloadResponseImpl$tryUpdateVideoInfo$1.label = 2;
                                        if (downloadEsHelperA.i0(resourceId, i11, i12, downloadResponseImpl$tryUpdateVideoInfo$1) == objF) {
                                            return objF;
                                        }
                                    }
                                } else if (intRef.element > 0) {
                                    downloadEsHelperA = DownloadEsHelper.f59419m.a();
                                    resourceId = downloadBean.getResourceId();
                                    if (resourceId == null) {
                                        resourceId = downloadBean.getUrl();
                                    }
                                    i11 = intRef.element;
                                    i12 = intRef2.element;
                                    downloadResponseImpl$tryUpdateVideoInfo$1.L$0 = mediaMetadataRetriever;
                                    downloadResponseImpl$tryUpdateVideoInfo$1.L$1 = null;
                                    downloadResponseImpl$tryUpdateVideoInfo$1.L$2 = null;
                                    downloadResponseImpl$tryUpdateVideoInfo$1.L$3 = null;
                                    downloadResponseImpl$tryUpdateVideoInfo$1.label = 2;
                                    if (downloadEsHelperA.i0(resourceId, i11, i12, downloadResponseImpl$tryUpdateVideoInfo$1) == objF) {
                                        return objF;
                                    }
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                mediaMetadataRetriever.release();
                                if (longRef.element <= 0) {
                                    downloadBean2 = downloadBean;
                                } else {
                                    DownloadEsHelper downloadEsHelperA4 = DownloadEsHelper.f59419m.a();
                                    String resourceId4 = downloadBean.getResourceId();
                                    if (resourceId4 == null) {
                                        resourceId4 = downloadBean.getUrl();
                                    }
                                    long j12 = longRef.element;
                                    downloadResponseImpl$tryUpdateVideoInfo$1.L$0 = downloadBean;
                                    downloadResponseImpl$tryUpdateVideoInfo$1.L$1 = intRef;
                                    downloadResponseImpl$tryUpdateVideoInfo$1.L$2 = intRef2;
                                    downloadResponseImpl$tryUpdateVideoInfo$1.L$3 = th;
                                    downloadResponseImpl$tryUpdateVideoInfo$1.label = 5;
                                    if (downloadEsHelperA4.c0(resourceId4, j12, downloadResponseImpl$tryUpdateVideoInfo$1) == objF) {
                                        return objF;
                                    }
                                    intRef4 = intRef;
                                    intRef5 = intRef2;
                                }
                                break;
                            }
                        } catch (Exception e11) {
                            e11.printStackTrace();
                            unit = Unit.f67061a;
                            mediaMetadataRetriever.release();
                            if (longRef.element > 0) {
                                DownloadEsHelper downloadEsHelperA5 = DownloadEsHelper.f59419m.a();
                                String resourceId5 = downloadBean.getResourceId();
                                if (resourceId5 == null) {
                                    resourceId5 = downloadBean.getUrl();
                                }
                                long j13 = longRef.element;
                                downloadResponseImpl$tryUpdateVideoInfo$1.L$0 = downloadBean;
                                downloadResponseImpl$tryUpdateVideoInfo$1.L$1 = intRef;
                                downloadResponseImpl$tryUpdateVideoInfo$1.L$2 = intRef2;
                                downloadResponseImpl$tryUpdateVideoInfo$1.L$3 = unit;
                                downloadResponseImpl$tryUpdateVideoInfo$1.label = 3;
                                if (downloadEsHelperA5.c0(resourceId5, j13, downloadResponseImpl$tryUpdateVideoInfo$1) == objF) {
                                    return objF;
                                }
                                intRef3 = intRef;
                                intRef = intRef3;
                                if (intRef.element > 0) {
                                    downloadEsHelperA2 = DownloadEsHelper.f59419m.a();
                                    resourceId2 = downloadBean.getResourceId();
                                    if (resourceId2 == null) {
                                        resourceId2 = downloadBean.getUrl();
                                    }
                                    i13 = intRef.element;
                                    i14 = intRef2.element;
                                    downloadResponseImpl$tryUpdateVideoInfo$1.L$0 = unit;
                                    downloadResponseImpl$tryUpdateVideoInfo$1.L$1 = null;
                                    downloadResponseImpl$tryUpdateVideoInfo$1.L$2 = null;
                                    downloadResponseImpl$tryUpdateVideoInfo$1.L$3 = null;
                                    downloadResponseImpl$tryUpdateVideoInfo$1.label = 4;
                                    if (downloadEsHelperA2.i0(resourceId2, i13, i14, downloadResponseImpl$tryUpdateVideoInfo$1) == objF) {
                                        return objF;
                                    }
                                }
                            } else if (intRef.element > 0) {
                                downloadEsHelperA2 = DownloadEsHelper.f59419m.a();
                                resourceId2 = downloadBean.getResourceId();
                                if (resourceId2 == null) {
                                    resourceId2 = downloadBean.getUrl();
                                }
                                i13 = intRef.element;
                                i14 = intRef2.element;
                                downloadResponseImpl$tryUpdateVideoInfo$1.L$0 = unit;
                                downloadResponseImpl$tryUpdateVideoInfo$1.L$1 = null;
                                downloadResponseImpl$tryUpdateVideoInfo$1.L$2 = null;
                                downloadResponseImpl$tryUpdateVideoInfo$1.L$3 = null;
                                downloadResponseImpl$tryUpdateVideoInfo$1.label = 4;
                                if (downloadEsHelperA2.i0(resourceId2, i13, i14, downloadResponseImpl$tryUpdateVideoInfo$1) == objF) {
                                    return objF;
                                }
                            }
                        }
                    }
                }
                return Unit.f67061a;
            case 1:
                MediaMetadataRetriever mediaMetadataRetriever2 = (MediaMetadataRetriever) downloadResponseImpl$tryUpdateVideoInfo$1.L$3;
                intRef7 = (Ref.IntRef) downloadResponseImpl$tryUpdateVideoInfo$1.L$2;
                intRef6 = (Ref.IntRef) downloadResponseImpl$tryUpdateVideoInfo$1.L$1;
                DownloadBean downloadBean3 = (DownloadBean) downloadResponseImpl$tryUpdateVideoInfo$1.L$0;
                ResultKt.b(obj);
                mediaMetadataRetriever = mediaMetadataRetriever2;
                downloadBean = downloadBean3;
                intRef2 = intRef7;
                intRef = intRef6;
                if (intRef.element > 0) {
                    downloadEsHelperA = DownloadEsHelper.f59419m.a();
                    resourceId = downloadBean.getResourceId();
                    if (resourceId == null) {
                        resourceId = downloadBean.getUrl();
                    }
                    i11 = intRef.element;
                    i12 = intRef2.element;
                    downloadResponseImpl$tryUpdateVideoInfo$1.L$0 = mediaMetadataRetriever;
                    downloadResponseImpl$tryUpdateVideoInfo$1.L$1 = null;
                    downloadResponseImpl$tryUpdateVideoInfo$1.L$2 = null;
                    downloadResponseImpl$tryUpdateVideoInfo$1.L$3 = null;
                    downloadResponseImpl$tryUpdateVideoInfo$1.label = 2;
                    if (downloadEsHelperA.i0(resourceId, i11, i12, downloadResponseImpl$tryUpdateVideoInfo$1) == objF) {
                        return objF;
                    }
                }
                return Unit.f67061a;
            case 2:
                ResultKt.b(obj);
                return Unit.f67061a;
            case 3:
                Unit unit2 = (Unit) downloadResponseImpl$tryUpdateVideoInfo$1.L$3;
                Ref.IntRef intRef8 = (Ref.IntRef) downloadResponseImpl$tryUpdateVideoInfo$1.L$2;
                intRef3 = (Ref.IntRef) downloadResponseImpl$tryUpdateVideoInfo$1.L$1;
                DownloadBean downloadBean4 = (DownloadBean) downloadResponseImpl$tryUpdateVideoInfo$1.L$0;
                ResultKt.b(obj);
                intRef2 = intRef8;
                unit = unit2;
                downloadBean = downloadBean4;
                intRef = intRef3;
                if (intRef.element > 0 && intRef2.element > 0) {
                    downloadEsHelperA2 = DownloadEsHelper.f59419m.a();
                    resourceId2 = downloadBean.getResourceId();
                    if (resourceId2 == null) {
                        resourceId2 = downloadBean.getUrl();
                    }
                    i13 = intRef.element;
                    i14 = intRef2.element;
                    downloadResponseImpl$tryUpdateVideoInfo$1.L$0 = unit;
                    downloadResponseImpl$tryUpdateVideoInfo$1.L$1 = null;
                    downloadResponseImpl$tryUpdateVideoInfo$1.L$2 = null;
                    downloadResponseImpl$tryUpdateVideoInfo$1.L$3 = null;
                    downloadResponseImpl$tryUpdateVideoInfo$1.label = 4;
                    if (downloadEsHelperA2.i0(resourceId2, i13, i14, downloadResponseImpl$tryUpdateVideoInfo$1) == objF) {
                        return objF;
                    }
                }
                return Unit.f67061a;
            case 4:
                ResultKt.b(obj);
                return Unit.f67061a;
            case 5:
                Throwable th3 = (Throwable) downloadResponseImpl$tryUpdateVideoInfo$1.L$3;
                intRef5 = (Ref.IntRef) downloadResponseImpl$tryUpdateVideoInfo$1.L$2;
                intRef4 = (Ref.IntRef) downloadResponseImpl$tryUpdateVideoInfo$1.L$1;
                DownloadBean downloadBean5 = (DownloadBean) downloadResponseImpl$tryUpdateVideoInfo$1.L$0;
                ResultKt.b(obj);
                th = th3;
                downloadBean = downloadBean5;
                downloadBean2 = downloadBean;
                intRef2 = intRef5;
                intRef = intRef4;
                Throwable th4 = th;
                if (intRef.element <= 0 || intRef2.element <= 0) {
                    throw th4;
                }
                DownloadEsHelper downloadEsHelperA6 = DownloadEsHelper.f59419m.a();
                String resourceId6 = downloadBean2.getResourceId();
                if (resourceId6 == null) {
                    resourceId6 = downloadBean2.getUrl();
                }
                int i16 = intRef.element;
                int i17 = intRef2.element;
                downloadResponseImpl$tryUpdateVideoInfo$1.L$0 = th4;
                downloadResponseImpl$tryUpdateVideoInfo$1.L$1 = null;
                downloadResponseImpl$tryUpdateVideoInfo$1.L$2 = null;
                downloadResponseImpl$tryUpdateVideoInfo$1.L$3 = null;
                downloadResponseImpl$tryUpdateVideoInfo$1.label = 6;
                if (downloadEsHelperA6.i0(resourceId6, i16, i17, downloadResponseImpl$tryUpdateVideoInfo$1) == objF) {
                    return objF;
                }
                throw th4;
            case 6:
                Throwable th5 = (Throwable) downloadResponseImpl$tryUpdateVideoInfo$1.L$0;
                ResultKt.b(obj);
                throw th5;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    private final void n(DownloadBean downloadBean) {
        DownloadNotificationUtils.f59506a.I(downloadBean);
    }

    @Override // com.transsnet.downloader.core.c
    public void a(DownloadBean downloadBean) {
        int status = downloadBean != null ? downloadBean.getStatus() : -1;
        if (downloadBean != null && (!downloadBean.isDownloading()) && this.f58569c == status && Intrinsics.c(this.f58570d, downloadBean.getResourceId())) {
            lg.a.f68839a.x("DownloadImp-ResponseImpl", "onStatusChanged, intercept status = " + status + " resourceId= " + downloadBean.getResourceId(), true);
            return;
        }
        this.f58569c = status;
        this.f58570d = downloadBean != null ? downloadBean.getResourceId() : null;
        if (downloadBean != null) {
            h(downloadBean);
            if (ThreadUtils.j()) {
                j(downloadBean, downloadBean.getStatus(), downloadBean.getIsPreDownload());
            } else {
                Message messageObtainMessage = this.f58571e.obtainMessage(downloadBean.getStatus());
                Intrinsics.g(messageObtainMessage, "obtainMessage(...)");
                messageObtainMessage.obj = downloadBean;
                messageObtainMessage.arg1 = downloadBean.getIsPreDownload() ? 1 : 0;
                messageObtainMessage.sendToTarget();
            }
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        String str = "onStatusChanged，name = " + (downloadBean != null ? downloadBean.getTotalTitleName() : null) + ",status =" + (downloadBean != null ? Integer.valueOf(downloadBean.getStatus()) : null) + ",  progress:" + (downloadBean != null ? Long.valueOf(downloadBean.getProgress()) : null) + ", size:" + (downloadBean != null ? downloadBean.getSize() : null) + ", " + downloadBean;
        boolean z10 = false;
        if (downloadBean != null && downloadBean.isDownloading()) {
            z10 = true;
        }
        c0828a.c("DownloadImp-ResponseImpl", str, !z10);
    }

    @Override // com.transsnet.downloader.core.c
    public void b(DownloadBean downloadBean, DownloadException downloadException) {
        com.transsnet.downloader.manager.g gVar;
        if (downloadBean != null) {
            downloadBean.setStatus(6);
        }
        if (this.f58569c == 6) {
            if (Intrinsics.c(this.f58570d, downloadBean != null ? downloadBean.getResourceId() : null)) {
                lg.a.C0828a.f(lg.a.f68839a, "DownloadImp-ResponseImpl", "handleException, intercept", false, 4, null);
                return;
            }
        }
        this.f58569c = 6;
        this.f58570d = downloadBean != null ? downloadBean.getResourceId() : null;
        if (downloadBean != null) {
            downloadBean.setException(downloadException);
        }
        if (downloadBean != null) {
            h(downloadBean);
            if (ThreadUtils.j()) {
                j(downloadBean, downloadBean.getStatus(), downloadBean.getIsPreDownload());
            } else {
                Message messageObtainMessage = this.f58571e.obtainMessage(6);
                Intrinsics.g(messageObtainMessage, "obtainMessage(...)");
                messageObtainMessage.obj = downloadBean;
                messageObtainMessage.arg1 = downloadBean.getIsPreDownload() ? 1 : 0;
                messageObtainMessage.sendToTarget();
            }
        }
        lg.a.f68839a.x("download", "handleException: code = " + (downloadException != null ? Integer.valueOf(downloadException.getCode()) : null) + ",responseCode = " + (downloadException != null ? Integer.valueOf(downloadException.getResponseCode()) : null) + ", msg = " + (downloadException != null ? downloadException.getLocalizedMessage() : null), true);
        if (downloadBean == null || (gVar = this.f58573g) == null) {
            return;
        }
        gVar.v(downloadBean);
    }
}
