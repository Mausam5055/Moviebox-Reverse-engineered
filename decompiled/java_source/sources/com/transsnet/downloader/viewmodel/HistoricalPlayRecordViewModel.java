package com.transsnet.downloader.viewmodel;

import android.app.Application;
import android.text.TextUtils;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.u0;
import com.blankj.utilcode.util.Utils;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.audio.AudioBean;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.video.ShortTVPlayBean;
import com.transsion.baselib.db.video.ShortTVPlayDao;
import com.transsion.baselib.db.video.UGCVideoDetailPlayBean;
import com.transsion.baselib.db.video.UGCVideoDetailPlayDao;
import com.transsion.baselib.db.video.VideoDetailPlayBean;
import com.transsion.baselib.db.video.VideoDetailPlayDao;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.room.api.IAudioApi;
import com.transsion.room.api.IFloatingApi;
import com.transsnet.downloader.DownloadManagerApi;
import com.transsnet.downloader.bean.HistoricalPlayRecordBean;
import com.transsnet.downloader.bean.HistoricalPlayRecordMultipleEntity;
import com.transsnet.downloader.manager.DownloadEsHelper;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.j1;
import kotlinx.coroutines.flow.y0;

/* JADX INFO: loaded from: classes7.dex */
public final class HistoricalPlayRecordViewModel extends a {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f60077n;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f60065b = new androidx.p009lifecycle.b0();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f60066c = new androidx.p009lifecycle.b0();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f60067d = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.viewmodel.b0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return HistoricalPlayRecordViewModel.k0();
        }
    });

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f60068e = new androidx.p009lifecycle.b0();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Lazy f60069f = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.viewmodel.c0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return HistoricalPlayRecordViewModel.h0();
        }
    });

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Lazy f60070g = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.viewmodel.d0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return HistoricalPlayRecordViewModel.y();
        }
    });

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Lazy f60071h = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.viewmodel.e0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return HistoricalPlayRecordViewModel.j0();
        }
    });

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Lazy f60072i = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.viewmodel.f0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return HistoricalPlayRecordViewModel.m0();
        }
    });

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Lazy f60073j = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.viewmodel.g0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return HistoricalPlayRecordViewModel.l0();
        }
    });

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Lazy f60074k = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.viewmodel.h0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return HistoricalPlayRecordViewModel.a0();
        }
    });

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final Lazy f60075l = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.viewmodel.i0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return HistoricalPlayRecordViewModel.b0();
        }
    });

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private String f60076m = "lastFormatTime";

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f60078o = 10;

    static /* synthetic */ List A(HistoricalPlayRecordViewModel historicalPlayRecordViewModel, List list, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = true;
        }
        return historicalPlayRecordViewModel.z(list, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object D(AudioBean audioBean, Continuation continuation) throws Throwable {
        HistoricalPlayRecordViewModel$deleteAudioRecord$1 historicalPlayRecordViewModel$deleteAudioRecord$1;
        if (continuation instanceof HistoricalPlayRecordViewModel$deleteAudioRecord$1) {
            historicalPlayRecordViewModel$deleteAudioRecord$1 = (HistoricalPlayRecordViewModel$deleteAudioRecord$1) continuation;
            int i11 = historicalPlayRecordViewModel$deleteAudioRecord$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                historicalPlayRecordViewModel$deleteAudioRecord$1.label = i11 - Integer.MIN_VALUE;
            } else {
                historicalPlayRecordViewModel$deleteAudioRecord$1 = new HistoricalPlayRecordViewModel$deleteAudioRecord$1(this, continuation);
            }
        } else {
            historicalPlayRecordViewModel$deleteAudioRecord$1 = new HistoricalPlayRecordViewModel$deleteAudioRecord$1(this, continuation);
        }
        Object obj = historicalPlayRecordViewModel$deleteAudioRecord$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = historicalPlayRecordViewModel$deleteAudioRecord$1.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            jj.a aVarH = H();
            if (aVarH != null) {
                historicalPlayRecordViewModel$deleteAudioRecord$1.L$0 = audioBean;
                historicalPlayRecordViewModel$deleteAudioRecord$1.label = 1;
                if (aVarH.b(audioBean, historicalPlayRecordViewModel$deleteAudioRecord$1) == objF) {
                    return objF;
                }
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            audioBean = (AudioBean) historicalPlayRecordViewModel$deleteAudioRecord$1.L$0;
            ResultKt.b(obj);
        }
        a0.f60085a.t("delete --- " + audioBean.getTitle() + " ---audio recording");
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object E(VideoDetailPlayBean videoDetailPlayBean, Continuation continuation) throws Throwable {
        HistoricalPlayRecordViewModel$deleteShortTVRecord$1 historicalPlayRecordViewModel$deleteShortTVRecord$1;
        if (continuation instanceof HistoricalPlayRecordViewModel$deleteShortTVRecord$1) {
            historicalPlayRecordViewModel$deleteShortTVRecord$1 = (HistoricalPlayRecordViewModel$deleteShortTVRecord$1) continuation;
            int i11 = historicalPlayRecordViewModel$deleteShortTVRecord$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                historicalPlayRecordViewModel$deleteShortTVRecord$1.label = i11 - Integer.MIN_VALUE;
            } else {
                historicalPlayRecordViewModel$deleteShortTVRecord$1 = new HistoricalPlayRecordViewModel$deleteShortTVRecord$1(this, continuation);
            }
        } else {
            historicalPlayRecordViewModel$deleteShortTVRecord$1 = new HistoricalPlayRecordViewModel$deleteShortTVRecord$1(this, continuation);
        }
        Object objE = historicalPlayRecordViewModel$deleteShortTVRecord$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = historicalPlayRecordViewModel$deleteShortTVRecord$1.label;
        if (i12 != 0) {
            if (i12 == 1) {
                ResultKt.b(objE);
            } else {
                if (i12 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(objE);
            }
            return Unit.f67061a;
        }
        ResultKt.b(objE);
        ShortTVPlayDao shortTVPlayDaoQ = Q();
        String subjectId = videoDetailPlayBean.getSubjectId();
        historicalPlayRecordViewModel$deleteShortTVRecord$1.label = 1;
        objE = shortTVPlayDaoQ.e(subjectId, historicalPlayRecordViewModel$deleteShortTVRecord$1);
        if (objE == objF) {
            return objF;
        }
        ShortTVPlayBean shortTVPlayBean = (ShortTVPlayBean) objE;
        if (shortTVPlayBean != null) {
            ShortTVPlayDao shortTVPlayDaoQ2 = Q();
            historicalPlayRecordViewModel$deleteShortTVRecord$1.label = 2;
            if (shortTVPlayDaoQ2.j(shortTVPlayBean, historicalPlayRecordViewModel$deleteShortTVRecord$1) == objF) {
                return objF;
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:25:0x006f  */
    /* JADX WARN: Code duplicated, block: B:31:0x0085 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:33:? A[LOOP:0: B:23:0x0069->B:33:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object F(VideoDetailPlayBean videoDetailPlayBean, Continuation continuation) throws Throwable {
        HistoricalPlayRecordViewModel$deleteStreamRecord$1 historicalPlayRecordViewModel$deleteStreamRecord$1;
        VideoDetailPlayBean videoDetailPlayBean2;
        Iterator it;
        VideoDetailPlayBean videoDetailPlayBean3;
        VideoDetailPlayDao videoDetailPlayDaoV;
        if (continuation instanceof HistoricalPlayRecordViewModel$deleteStreamRecord$1) {
            historicalPlayRecordViewModel$deleteStreamRecord$1 = (HistoricalPlayRecordViewModel$deleteStreamRecord$1) continuation;
            int i11 = historicalPlayRecordViewModel$deleteStreamRecord$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                historicalPlayRecordViewModel$deleteStreamRecord$1.label = i11 - Integer.MIN_VALUE;
            } else {
                historicalPlayRecordViewModel$deleteStreamRecord$1 = new HistoricalPlayRecordViewModel$deleteStreamRecord$1(this, continuation);
            }
        } else {
            historicalPlayRecordViewModel$deleteStreamRecord$1 = new HistoricalPlayRecordViewModel$deleteStreamRecord$1(this, continuation);
        }
        Object objJ = historicalPlayRecordViewModel$deleteStreamRecord$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = historicalPlayRecordViewModel$deleteStreamRecord$1.label;
        if (i12 != 0) {
            if (i12 == 1) {
                videoDetailPlayBean = (VideoDetailPlayBean) historicalPlayRecordViewModel$deleteStreamRecord$1.L$0;
                ResultKt.b(objJ);
            } else {
                if (i12 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                it = (Iterator) historicalPlayRecordViewModel$deleteStreamRecord$1.L$1;
                videoDetailPlayBean2 = (VideoDetailPlayBean) historicalPlayRecordViewModel$deleteStreamRecord$1.L$0;
                ResultKt.b(objJ);
            }
            while (it.hasNext()) {
                videoDetailPlayBean3 = (VideoDetailPlayBean) it.next();
                videoDetailPlayDaoV = V();
                historicalPlayRecordViewModel$deleteStreamRecord$1.L$0 = videoDetailPlayBean2;
                historicalPlayRecordViewModel$deleteStreamRecord$1.L$1 = it;
                historicalPlayRecordViewModel$deleteStreamRecord$1.label = 2;
                if (videoDetailPlayDaoV.h(videoDetailPlayBean3, historicalPlayRecordViewModel$deleteStreamRecord$1) == objF) {
                    return objF;
                }
            }
            a0.f60085a.t("delete --- " + videoDetailPlayBean2.getSubjectId() + " --- video recording --> success");
            return Unit.f67061a;
        }
        ResultKt.b(objJ);
        VideoDetailPlayDao videoDetailPlayDaoV2 = V();
        String subjectId = videoDetailPlayBean.getSubjectId();
        historicalPlayRecordViewModel$deleteStreamRecord$1.L$0 = videoDetailPlayBean;
        historicalPlayRecordViewModel$deleteStreamRecord$1.label = 1;
        objJ = videoDetailPlayDaoV2.j(subjectId, historicalPlayRecordViewModel$deleteStreamRecord$1);
        if (objJ == objF) {
            return objF;
        }
        List arrayList = (List) objJ;
        if (arrayList == null) {
            arrayList = new ArrayList();
        }
        videoDetailPlayBean2 = videoDetailPlayBean;
        it = arrayList.iterator();
        while (it.hasNext()) {
            videoDetailPlayBean3 = (VideoDetailPlayBean) it.next();
            videoDetailPlayDaoV = V();
            historicalPlayRecordViewModel$deleteStreamRecord$1.L$0 = videoDetailPlayBean2;
            historicalPlayRecordViewModel$deleteStreamRecord$1.L$1 = it;
            historicalPlayRecordViewModel$deleteStreamRecord$1.label = 2;
            if (videoDetailPlayDaoV.h(videoDetailPlayBean3, historicalPlayRecordViewModel$deleteStreamRecord$1) == objF) {
                return objF;
            }
        }
        a0.f60085a.t("delete --- " + videoDetailPlayBean2.getSubjectId() + " --- video recording --> success");
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object G(DownloadBean downloadBean, Continuation continuation) throws Throwable {
        HistoricalPlayRecordViewModel$deleteVideoRecord$1 historicalPlayRecordViewModel$deleteVideoRecord$1;
        if (continuation instanceof HistoricalPlayRecordViewModel$deleteVideoRecord$1) {
            historicalPlayRecordViewModel$deleteVideoRecord$1 = (HistoricalPlayRecordViewModel$deleteVideoRecord$1) continuation;
            int i11 = historicalPlayRecordViewModel$deleteVideoRecord$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                historicalPlayRecordViewModel$deleteVideoRecord$1.label = i11 - Integer.MIN_VALUE;
            } else {
                historicalPlayRecordViewModel$deleteVideoRecord$1 = new HistoricalPlayRecordViewModel$deleteVideoRecord$1(this, continuation);
            }
        } else {
            historicalPlayRecordViewModel$deleteVideoRecord$1 = new HistoricalPlayRecordViewModel$deleteVideoRecord$1(this, continuation);
        }
        Object obj = historicalPlayRecordViewModel$deleteVideoRecord$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = historicalPlayRecordViewModel$deleteVideoRecord$1.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            downloadBean.setRead(1);
            downloadBean.setLastPlayTimeStamp(0L);
            downloadBean.setReadProgress(0L);
            DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f59419m.a();
            historicalPlayRecordViewModel$deleteVideoRecord$1.L$0 = downloadBean;
            historicalPlayRecordViewModel$deleteVideoRecord$1.label = 1;
            if (downloadEsHelperA.b0(downloadBean, historicalPlayRecordViewModel$deleteVideoRecord$1) == objF) {
                return objF;
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            downloadBean = (DownloadBean) historicalPlayRecordViewModel$deleteVideoRecord$1.L$0;
            ResultKt.b(obj);
        }
        a0.f60085a.t("delete --- " + downloadBean.getName() + " --- video recording --> success");
        return Unit.f67061a;
    }

    private final jj.a H() {
        return (jj.a) this.f60070g.getValue();
    }

    private final IAudioApi K() {
        return (IAudioApi) this.f60074k.getValue();
    }

    private final IFloatingApi L() {
        return (IFloatingApi) this.f60075l.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:23:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:25:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:28:0x00dc A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:29:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:32:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:39:0x011a A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:41:0x0126  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00f2 -> B:36:0x00fc). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x0118 -> B:40:0x011b). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object O(java.util.List r14, kotlin.coroutines.Continuation r15) {
        /*
            Method dump skipped, instruction units count: 327
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.transsnet.downloader.viewmodel.HistoricalPlayRecordViewModel.O(java.util.List, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ShortTVPlayDao Q() {
        return (ShortTVPlayDao) this.f60071h.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object R(List list, Continuation continuation) throws Throwable {
        HistoricalPlayRecordViewModel$getTransferReceivedVideoDataList$2 historicalPlayRecordViewModel$getTransferReceivedVideoDataList$2;
        List arrayList;
        Object objO;
        if (continuation instanceof HistoricalPlayRecordViewModel$getTransferReceivedVideoDataList$2) {
            historicalPlayRecordViewModel$getTransferReceivedVideoDataList$2 = (HistoricalPlayRecordViewModel$getTransferReceivedVideoDataList$2) continuation;
            int i11 = historicalPlayRecordViewModel$getTransferReceivedVideoDataList$2.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                historicalPlayRecordViewModel$getTransferReceivedVideoDataList$2.label = i11 - Integer.MIN_VALUE;
            } else {
                historicalPlayRecordViewModel$getTransferReceivedVideoDataList$2 = new HistoricalPlayRecordViewModel$getTransferReceivedVideoDataList$2(this, continuation);
            }
        } else {
            historicalPlayRecordViewModel$getTransferReceivedVideoDataList$2 = new HistoricalPlayRecordViewModel$getTransferReceivedVideoDataList$2(this, continuation);
        }
        Object obj = historicalPlayRecordViewModel$getTransferReceivedVideoDataList$2.result;
        Object objF = IntrinsicsKt.f();
        int i12 = historicalPlayRecordViewModel$getTransferReceivedVideoDataList$2.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            arrayList = new ArrayList();
            DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f59419m.a();
            historicalPlayRecordViewModel$getTransferReceivedVideoDataList$2.L$0 = list;
            historicalPlayRecordViewModel$getTransferReceivedVideoDataList$2.L$1 = arrayList;
            historicalPlayRecordViewModel$getTransferReceivedVideoDataList$2.label = 1;
            objO = DownloadEsHelper.O(downloadEsHelperA, false, historicalPlayRecordViewModel$getTransferReceivedVideoDataList$2, 1, null);
            if (objO == objF) {
                return objF;
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            List list2 = (List) historicalPlayRecordViewModel$getTransferReceivedVideoDataList$2.L$1;
            List list3 = (List) historicalPlayRecordViewModel$getTransferReceivedVideoDataList$2.L$0;
            ResultKt.b(obj);
            arrayList = list2;
            list = list3;
            objO = obj;
        }
        List list4 = (List) objO;
        if (list4 != null) {
            Iterator it = list4.iterator();
            while (it.hasNext()) {
                arrayList.add(c((DownloadBean) it.next()));
            }
        }
        if (list != null) {
            Boxing.a(list.addAll(arrayList));
        }
        T().n(A(this, arrayList, false, 2, null));
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final UGCVideoDetailPlayDao U() {
        return (UGCVideoDetailPlayDao) this.f60073j.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final VideoDetailPlayDao V() {
        return (VideoDetailPlayDao) this.f60072i.getValue();
    }

    public static /* synthetic */ void X(HistoricalPlayRecordViewModel historicalPlayRecordViewModel, boolean z10, boolean z11, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = true;
        }
        if ((i11 & 2) != 0) {
            z11 = false;
        }
        historicalPlayRecordViewModel.W(z10, z11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object Z(HistoricalPlayRecordBean historicalPlayRecordBean, Continuation continuation) {
        Object objD;
        Object objF;
        Object objE;
        Object objG;
        if (historicalPlayRecordBean.getUgcVideo() != null) {
            UGCVideoDetailPlayDao uGCVideoDetailPlayDaoU = U();
            UGCVideoDetailPlayBean ugcVideo = historicalPlayRecordBean.getUgcVideo();
            Intrinsics.e(ugcVideo);
            Object objJ = uGCVideoDetailPlayDaoU.j(ugcVideo.getUgcVideoId(), continuation);
            return objJ == IntrinsicsKt.f() ? objJ : Unit.f67061a;
        }
        int type = historicalPlayRecordBean.getType();
        if (type == 1) {
            AudioBean audio = historicalPlayRecordBean.getAudio();
            if (audio != null && (objD = D(audio, continuation)) == IntrinsicsKt.f()) {
                return objD;
            }
        } else if (type == 7) {
            VideoDetailPlayBean streamVideo = historicalPlayRecordBean.getStreamVideo();
            if (streamVideo != null && (objF = F(streamVideo, continuation)) == IntrinsicsKt.f()) {
                return objF;
            }
        } else if (type != 8) {
            DownloadBean video = historicalPlayRecordBean.getVideo();
            if (video != null && (objG = G(video, continuation)) == IntrinsicsKt.f()) {
                return objG;
            }
        } else {
            VideoDetailPlayBean streamVideo2 = historicalPlayRecordBean.getStreamVideo();
            if (streamVideo2 != null && (objE = E(streamVideo2, continuation)) == IntrinsicsKt.f()) {
                return objE;
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IAudioApi a0() {
        return (IAudioApi) TheRouter.d(IAudioApi.class, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IFloatingApi b0() {
        return (IFloatingApi) TheRouter.d(IFloatingApi.class, new Object[0]);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0023  */
    private final void d0(HistoricalPlayRecordBean historicalPlayRecordBean, FragmentActivity fragmentActivity) {
        boolean z10;
        AudioBean audio = historicalPlayRecordBean.getAudio();
        if (audio != null) {
            IAudioApi iAudioApiK = K();
            if (iAudioApiK != null ? iAudioApiK.b(audio) : false) {
                IAudioApi iAudioApiK2 = K();
                if (iAudioApiK2 != null) {
                    z10 = iAudioApiK2.f();
                }
                if (z10) {
                    IAudioApi iAudioApiK3 = K();
                    if (iAudioApiK3 != null) {
                        iAudioApiK3.stop();
                        return;
                    }
                    return;
                }
            }
            IAudioApi iAudioApiK4 = K();
            if (iAudioApiK4 != null) {
                IAudioApi.a.a(iAudioApiK4, audio, false, 2, null);
            }
            IFloatingApi iFloatingApiL = L();
            if (iFloatingApiL != null) {
                iFloatingApiL.a(new WeakReference(fragmentActivity), audio);
            }
        }
    }

    private final void e0(VideoDetailPlayBean videoDetailPlayBean, FragmentActivity fragmentActivity, String str) {
        Integer subjectType;
        String downloadFilePath = videoDetailPlayBean != null ? videoDetailPlayBean.getDownloadFilePath() : null;
        boolean zO = a0.f60085a.o(downloadFilePath);
        if (downloadFilePath == null || downloadFilePath.length() == 0 || !zO) {
            if (fragmentActivity != null) {
                Navigator.x(TheRouter.c("/movie/detail").F("subject_type", (videoDetailPlayBean == null || (subjectType = videoDetailPlayBean.getSubjectType()) == null) ? SubjectType.MOVIE.getValue() : subjectType.intValue()).K("id", videoDetailPlayBean != null ? videoDetailPlayBean.getSubjectId() : null).K("module_name", HistoricalPlayRecordViewModel.class.getSimpleName()), fragmentActivity, null, 2, null);
            }
        } else if (fragmentActivity != null) {
            DownloadManagerApi.f58398j.a().t0(fragmentActivity, videoDetailPlayBean.getId(), str);
        }
    }

    private final void f0(HistoricalPlayRecordBean historicalPlayRecordBean, FragmentActivity fragmentActivity, String str) {
        String subjectId;
        if (fragmentActivity != null) {
            Navigator navigatorF = TheRouter.c("/movie/detail").F("subject_type", SubjectType.MUSIC.getValue());
            VideoDetailPlayBean streamVideo = historicalPlayRecordBean.getStreamVideo();
            if (streamVideo == null || (subjectId = streamVideo.getSubjectId()) == null) {
                DownloadBean video = historicalPlayRecordBean.getVideo();
                subjectId = video != null ? video.getSubjectId() : null;
            }
            Navigator.x(navigatorF.K("id", subjectId), fragmentActivity, null, 2, null);
        }
    }

    private final void g0(HistoricalPlayRecordBean historicalPlayRecordBean, FragmentActivity fragmentActivity, String str) {
        DownloadBean video = historicalPlayRecordBean.getVideo();
        if (video == null || fragmentActivity == null) {
            return;
        }
        if (video.isShotTV()) {
            Navigator.x(TheRouter.c(ls.a.f69034a.b()).K("id", video.getSubjectId()).F("ep", video.getEp()).K("ops", video.getOps()).G("ms", video.getReadProgress()), fragmentActivity, null, 2, null);
        } else {
            DownloadManagerApi.f58398j.a().s0(fragmentActivity, video, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final y0 h0() {
        return j1.a(-1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ShortTVPlayDao j0() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).x1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final androidx.p009lifecycle.b0 k0() {
        return new androidx.p009lifecycle.b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final UGCVideoDetailPlayDao l0() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).C1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final VideoDetailPlayDao m0() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).D1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final jj.a y() {
        Application applicationA = Utils.a();
        if (applicationA != null) {
            return AppDatabase.INSTANCE.b(applicationA).o1();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List z(List list, boolean z10) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(16, 0.75f, true);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            HistoricalPlayRecordBean historicalPlayRecordBean = (HistoricalPlayRecordBean) it.next();
            if (linkedHashMap.containsKey(historicalPlayRecordBean.getOriginalFormatTime())) {
                List list2 = (List) linkedHashMap.get(historicalPlayRecordBean.getOriginalFormatTime());
                if (list2 != null) {
                    list2.add(historicalPlayRecordBean);
                }
            } else {
                String originalFormatTime = historicalPlayRecordBean.getOriginalFormatTime();
                if (originalFormatTime == null) {
                    originalFormatTime = "";
                }
                linkedHashMap.put(originalFormatTime, CollectionsKt.q(historicalPlayRecordBean));
            }
        }
        ArrayList arrayList = new ArrayList();
        String formatTime = "lastFormatTime";
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            if (z10 && !TextUtils.equals(((HistoricalPlayRecordBean) ((List) entry.getValue()).get(0)).getFormatTime(), formatTime)) {
                formatTime = ((HistoricalPlayRecordBean) ((List) entry.getValue()).get(0)).getFormatTime();
                arrayList.add(new HistoricalPlayRecordMultipleEntity(1, null, ((HistoricalPlayRecordBean) ((List) entry.getValue()).get(0)).getFormatTime(), null));
            }
            ArrayList arrayList2 = new ArrayList();
            Iterator it2 = ((Iterable) entry.getValue()).iterator();
            while (it2.hasNext()) {
                arrayList2.add(new HistoricalPlayRecordMultipleEntity(2, (HistoricalPlayRecordBean) it2.next(), ((HistoricalPlayRecordBean) ((List) entry.getValue()).get(0)).getFormatTime(), null));
            }
            arrayList.addAll(arrayList2);
        }
        return arrayList;
    }

    public final void B(HistoricalPlayRecordMultipleEntity historicalPlayRecordMultipleEntity, Function0 callback) {
        Intrinsics.h(callback, "callback");
        kotlinx.coroutines.k.d(u0.a(this), null, null, new HistoricalPlayRecordViewModel$delete$2(historicalPlayRecordMultipleEntity, this, callback, null), 3, null);
    }

    public final void C(Function0 callback) {
        Intrinsics.h(callback, "callback");
        kotlinx.coroutines.k.d(u0.a(this), null, null, new HistoricalPlayRecordViewModel$deleteAll$2(this, callback, null), 3, null);
    }

    public final androidx.p009lifecycle.b0 I() {
        return this.f60065b;
    }

    public final androidx.p009lifecycle.b0 J() {
        return this.f60066c;
    }

    public final int M() {
        return this.f60077n;
    }

    public final void N() {
        kotlinx.coroutines.k.d(u0.a(this), kotlinx.coroutines.y0.b(), null, new HistoricalPlayRecordViewModel$getOutsideLocalFileList$1(this, null), 2, null);
    }

    public final y0 P() {
        return (y0) this.f60069f.getValue();
    }

    public final void S() {
        kotlinx.coroutines.k.d(u0.a(this), kotlinx.coroutines.y0.b(), null, new HistoricalPlayRecordViewModel$getTransferReceivedVideoDataList$1(this, null), 2, null);
    }

    public final androidx.p009lifecycle.b0 T() {
        return (androidx.p009lifecycle.b0) this.f60067d.getValue();
    }

    public final void W(boolean z10, boolean z11) {
        kotlinx.coroutines.k.d(u0.a(this), kotlinx.coroutines.y0.b(), null, new HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1(z11, this, z10, null), 2, null);
    }

    public final void Y() {
        kotlinx.coroutines.k.d(u0.a(this), kotlinx.coroutines.y0.b(), null, new HistoricalPlayRecordViewModel$loadVideoCover$1(this, null), 2, null);
    }

    public final void c0(HistoricalPlayRecordMultipleEntity historicalPlayRecordMultipleEntity, FragmentActivity fragmentActivity, String str) {
        HistoricalPlayRecordBean historical;
        if (historicalPlayRecordMultipleEntity == null || historicalPlayRecordMultipleEntity.getType() == 1 || (historical = historicalPlayRecordMultipleEntity.getHistorical()) == null) {
            return;
        }
        int type = historical.getType();
        if (type == 1) {
            d0(historical, fragmentActivity);
            return;
        }
        if (type == 2 || type == 3 || type == 5) {
            g0(historical, fragmentActivity, str);
        } else if (type == 6) {
            f0(historical, fragmentActivity, str);
        } else {
            if (type != 7) {
                return;
            }
            e0(historical.getStreamVideo(), fragmentActivity, str);
        }
    }

    public final void i0(int i11) {
        this.f60077n = i11;
    }
}
