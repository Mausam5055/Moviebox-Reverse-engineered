package com.transsion.ugcvideodetail.viewmodel;

import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.u0;
import com.blankj.utilcode.util.y;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.video.UGCCollectionVideoGroupDao;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.ugcvideodetail.api.bean.UGCImmVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoBelongToCollection;
import com.transsion.ugcvideodetail.api.bean.UGCVideoList;
import com.transsion.ugcvideodetail.api.bean.UGCVideoPlayInfo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoPlayStream;
import com.transsnet.downloader.manager.DownloadEsHelper;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
public final class UGCImmVideoDetailViewModel extends UGCVideoDetailViewModel {

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public static final a f56409d0 = new a(null);
    private String I;
    private String J;
    private String M;
    private int N;
    private int O;
    private String P;
    private final b0 W;
    private final LiveData X;
    private final b0 Y;
    private final LiveData Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private final b0 f56410a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private final b0 f56411b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private final LiveData f56412c0;
    private final Lazy K = LazyKt.b(new Function0() { // from class: com.transsion.ugcvideodetail.viewmodel.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return UGCImmVideoDetailViewModel.x();
        }
    });
    private final int L = y.e();
    private boolean Q = true;
    private boolean R = true;
    private float S = 1.0f;
    private final b0 T = new b0();
    private final b0 U = new b0();
    private final b0 V = new b0();

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public UGCImmVideoDetailViewModel() {
        b0 b0Var = new b0();
        this.W = b0Var;
        this.X = b0Var;
        b0 b0Var2 = new b0();
        this.Y = b0Var2;
        this.Z = b0Var2;
        this.f56410a0 = new b0();
        b0 b0Var3 = new b0();
        this.f56411b0 = b0Var3;
        this.f56412c0 = b0Var3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final rv.a F() {
        return (rv.a) this.K.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void F0(boolean z10, UGCVideoList uGCVideoList, int i11, boolean z11, Pager pager) {
        k.d(u0.a(this), null, null, new UGCImmVideoDetailViewModel$fetchPlayInfoList$1(this, uGCVideoList, i11, z10, z11, pager, null), 3, null);
    }

    static /* synthetic */ void G0(UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel, boolean z10, UGCVideoList uGCVideoList, int i11, boolean z11, Pager pager, int i12, Object obj) {
        if ((i12 & 4) != 0) {
            i11 = -1;
        }
        int i13 = i11;
        if ((i12 & 8) != 0) {
            z11 = true;
        }
        boolean z12 = z11;
        if ((i12 & 16) != 0) {
            pager = null;
        }
        uGCImmVideoDetailViewModel.F0(z10, uGCVideoList, i13, z12, pager);
    }

    public static /* synthetic */ void Q0(UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel, String str, int i11, int i12, boolean z10, boolean z11, int i13, Object obj) {
        if ((i13 & 16) != 0) {
            z11 = false;
        }
        uGCImmVideoDetailViewModel.P0(str, i11, i12, z10, z11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    public final Object a1(UGCVideo uGCVideo, UGCVideoPlayInfo uGCVideoPlayInfo, Continuation continuation) throws Throwable {
        UGCImmVideoDetailViewModel$onFirstVideoDetailSuccess$1 uGCImmVideoDetailViewModel$onFirstVideoDetailSuccess$1;
        int iIntValue;
        UGCImmVideo uGCImmVideo;
        UGCVideoBelongToCollection belongToCollection;
        String collectionId;
        int i11;
        UGCImmVideo uGCImmVideo2;
        Integer videoNum;
        Integer videoNum2;
        UGCVideoBelongToCollection belongToCollection2;
        UGCVideoBelongToCollection belongToCollection3;
        Integer position;
        Object objM454constructorimpl;
        if (continuation instanceof UGCImmVideoDetailViewModel$onFirstVideoDetailSuccess$1) {
            uGCImmVideoDetailViewModel$onFirstVideoDetailSuccess$1 = (UGCImmVideoDetailViewModel$onFirstVideoDetailSuccess$1) continuation;
            int i12 = uGCImmVideoDetailViewModel$onFirstVideoDetailSuccess$1.label;
            if ((i12 & Integer.MIN_VALUE) != 0) {
                uGCImmVideoDetailViewModel$onFirstVideoDetailSuccess$1.label = i12 - Integer.MIN_VALUE;
            } else {
                uGCImmVideoDetailViewModel$onFirstVideoDetailSuccess$1 = new UGCImmVideoDetailViewModel$onFirstVideoDetailSuccess$1(this, continuation);
            }
        } else {
            uGCImmVideoDetailViewModel$onFirstVideoDetailSuccess$1 = new UGCImmVideoDetailViewModel$onFirstVideoDetailSuccess$1(this, continuation);
        }
        Object obj = uGCImmVideoDetailViewModel$onFirstVideoDetailSuccess$1.result;
        Object objF = IntrinsicsKt.f();
        int i13 = uGCImmVideoDetailViewModel$onFirstVideoDetailSuccess$1.label;
        if (i13 == 0) {
            ResultKt.b(obj);
            String collectionId2 = null;
            lg.a.C0828a.r(lg.a.f68839a, "UGCImmVideoDetailViewModel", new String[]{"onFirstVideoDetailSuccess id:" + (uGCVideo != null ? uGCVideo.getUgcVideoId() : null) + ", position:" + (uGCVideo != null ? Boxing.d(uGCVideo.videoUGCPosition()) : null)}, false, 4, null);
            iIntValue = (uGCVideo == null || (belongToCollection3 = uGCVideo.getBelongToCollection()) == null || (position = belongToCollection3.getPosition()) == null) ? -1 : position.intValue();
            uGCImmVideo = new UGCImmVideo(uGCVideo, uGCVideoPlayInfo);
            uGCImmVideo.setDownloadStatus(uGCVideoPlayInfo != null ? uGCVideoPlayInfo.getDownloadStatus() : 0);
            if (uGCVideo != null && (belongToCollection2 = uGCVideo.getBelongToCollection()) != null) {
                collectionId2 = belongToCollection2.getCollectionId();
            }
            uGCImmVideo.setCollectionList(!(collectionId2 == null || collectionId2.length() == 0));
            this.f56411b0.q(uGCImmVideo);
            if (uGCVideo != null && (belongToCollection = uGCVideo.getBelongToCollection()) != null && (collectionId = belongToCollection.getCollectionId()) != null) {
                UGCVideoBelongToCollection belongToCollection4 = uGCVideo.getBelongToCollection();
                if (((belongToCollection4 == null || (videoNum2 = belongToCollection4.getVideoNum()) == null) ? 0 : videoNum2.intValue()) <= 1) {
                    b0 b0Var = this.W;
                    UGCVideoBelongToCollection belongToCollection5 = uGCVideo.getBelongToCollection();
                    b0Var.q(MapsKt.m(TuplesKt.a(collectionId, Boxing.d((belongToCollection5 == null || (videoNum = belongToCollection5.getVideoNum()) == null) ? 1 : videoNum.intValue()))));
                }
                try {
                    Result.Companion companion = Result.INSTANCE;
                    UGCCollectionVideoGroupDao uGCCollectionVideoGroupDaoZ = z();
                    String ugcVideoId = uGCVideo.getUgcVideoId();
                    Intrinsics.e(ugcVideoId);
                    List listQ = CollectionsKt.q(ugcVideoId);
                    uGCImmVideoDetailViewModel$onFirstVideoDetailSuccess$1.L$0 = uGCImmVideo;
                    uGCImmVideoDetailViewModel$onFirstVideoDetailSuccess$1.I$0 = iIntValue;
                    uGCImmVideoDetailViewModel$onFirstVideoDetailSuccess$1.label = 1;
                    if (uGCCollectionVideoGroupDaoZ.a(collectionId, listQ, uGCImmVideoDetailViewModel$onFirstVideoDetailSuccess$1) == objF) {
                        return objF;
                    }
                    i11 = iIntValue;
                    uGCImmVideo2 = uGCImmVideo;
                } catch (Throwable th2) {
                    th = th2;
                    i11 = iIntValue;
                    uGCImmVideo2 = uGCImmVideo;
                    Result.Companion companion2 = Result.INSTANCE;
                    objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th));
                }
            }
            if (uGCImmVideo.getIsCollectionList() && iIntValue > 0) {
                E0(CollectionsKt.q(uGCImmVideo), true);
            }
            return Unit.f67061a;
        }
        if (i13 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        i11 = uGCImmVideoDetailViewModel$onFirstVideoDetailSuccess$1.I$0;
        uGCImmVideo2 = (UGCImmVideo) uGCImmVideoDetailViewModel$onFirstVideoDetailSuccess$1.L$0;
        try {
            ResultKt.b(obj);
        } catch (Throwable th3) {
            th = th3;
            Result.Companion companion3 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th));
        }
        objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        iIntValue = i11;
        uGCImmVideo = uGCImmVideo2;
        Result.m453boximpl(objM454constructorimpl);
        if (uGCImmVideo.getIsCollectionList()) {
            E0(CollectionsKt.q(uGCImmVideo), true);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final rv.a x() {
        return (rv.a) zg.c.f79414e.a().h(rv.a.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:33:0x0086 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:34:0x0088 A[Catch: all -> 0x003b, TryCatch #0 {all -> 0x003b, blocks: (B:14:0x0037, B:31:0x007c, B:34:0x0088, B:36:0x008e, B:38:0x0093, B:40:0x0099, B:43:0x00a0, B:45:0x00a7, B:47:0x00af, B:52:0x00be, B:56:0x00c7, B:59:0x00eb, B:60:0x00f8, B:63:0x0105, B:21:0x004a, B:27:0x0062, B:24:0x0051), top: B:67:0x002d }] */
    /* JADX WARN: Code duplicated, block: B:35:0x008d  */
    /* JADX WARN: Code duplicated, block: B:50:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:51:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:54:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:55:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:58:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:62:0x0104  */
    /* JADX WARN: Code duplicated, block: B:63:0x0105 A[Catch: all -> 0x003b, TRY_LEAVE, TryCatch #0 {all -> 0x003b, blocks: (B:14:0x0037, B:31:0x007c, B:34:0x0088, B:36:0x008e, B:38:0x0093, B:40:0x0099, B:43:0x00a0, B:45:0x00a7, B:47:0x00af, B:52:0x00be, B:56:0x00c7, B:59:0x00eb, B:60:0x00f8, B:63:0x0105, B:21:0x004a, B:27:0x0062, B:24:0x0051), top: B:67:0x002d }] */
    /* JADX WARN: Code duplicated, block: B:8:0x001a  */
    public final Object y(String str, Continuation continuation) throws Throwable {
        UGCImmVideoDetailViewModel$fetchVideoPlayInfoInternal$1 uGCImmVideoDetailViewModel$fetchVideoPlayInfoInternal$1;
        DownloadBean downloadBean;
        BaseDto baseDto;
        UGCVideoPlayInfo uGCVideoPlayInfo;
        String path;
        UGCVideoPlayInfo uGCVideoPlayInfo2;
        String resourceId;
        String str2;
        String path2;
        String str3;
        String subtitleIdType;
        int status;
        String str4 = str;
        if (continuation instanceof UGCImmVideoDetailViewModel$fetchVideoPlayInfoInternal$1) {
            uGCImmVideoDetailViewModel$fetchVideoPlayInfoInternal$1 = (UGCImmVideoDetailViewModel$fetchVideoPlayInfoInternal$1) continuation;
            int i11 = uGCImmVideoDetailViewModel$fetchVideoPlayInfoInternal$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                uGCImmVideoDetailViewModel$fetchVideoPlayInfoInternal$1.label = i11 - Integer.MIN_VALUE;
            } else {
                uGCImmVideoDetailViewModel$fetchVideoPlayInfoInternal$1 = new UGCImmVideoDetailViewModel$fetchVideoPlayInfoInternal$1(this, continuation);
            }
        } else {
            uGCImmVideoDetailViewModel$fetchVideoPlayInfoInternal$1 = new UGCImmVideoDetailViewModel$fetchVideoPlayInfoInternal$1(this, continuation);
        }
        UGCImmVideoDetailViewModel$fetchVideoPlayInfoInternal$1 uGCImmVideoDetailViewModel$fetchVideoPlayInfoInternal$2 = uGCImmVideoDetailViewModel$fetchVideoPlayInfoInternal$1;
        Object objR = uGCImmVideoDetailViewModel$fetchVideoPlayInfoInternal$2.result;
        Object objF = IntrinsicsKt.f();
        int i12 = uGCImmVideoDetailViewModel$fetchVideoPlayInfoInternal$2.label;
        try {
            if (i12 != 0) {
                if (i12 == 1) {
                    str4 = (String) uGCImmVideoDetailViewModel$fetchVideoPlayInfoInternal$2.L$0;
                    ResultKt.b(objR);
                } else {
                    if (i12 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    downloadBean = (DownloadBean) uGCImmVideoDetailViewModel$fetchVideoPlayInfoInternal$2.L$0;
                    ResultKt.b(objR);
                }
                baseDto = (BaseDto) objR;
                uGCVideoPlayInfo = (UGCVideoPlayInfo) baseDto.getData();
                if (uGCVideoPlayInfo != null) {
                    if (downloadBean != null) {
                        status = downloadBean.getStatus();
                    } else {
                        status = 0;
                    }
                    uGCVideoPlayInfo.setDownloadStatus(status);
                }
                if (downloadBean != null && (path = downloadBean.getPath()) != null && path.length() != 0 && downloadBean.getStatus() == 5 && (uGCVideoPlayInfo2 = (UGCVideoPlayInfo) baseDto.getData()) != null) {
                    resourceId = downloadBean.getResourceId();
                    if (resourceId == null) {
                        str2 = "";
                    } else {
                        str2 = resourceId;
                    }
                    path2 = downloadBean.getPath();
                    if (path2 == null) {
                        str3 = "";
                    } else {
                        str3 = path2;
                    }
                    String strValueOf = String.valueOf(downloadBean.getResolution());
                    String strValueOf2 = String.valueOf(downloadBean.getSize());
                    String strValueOf3 = String.valueOf(downloadBean.getDuration());
                    subtitleIdType = downloadBean.getSubtitleIdType();
                    if (subtitleIdType == null) {
                        subtitleIdType = "ResourceId";
                    }
                    uGCVideoPlayInfo2.setResources(CollectionsKt.e(new UGCVideoPlayStream("Mp4", str2, str3, strValueOf, strValueOf2, strValueOf3, "", "", subtitleIdType)));
                }
                if (Intrinsics.c(baseDto.getCode(), "0")) {
                    return (UGCVideoPlayInfo) baseDto.getData();
                }
                return null;
            }
            ResultKt.b(objR);
            DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f59419m.a();
            uGCImmVideoDetailViewModel$fetchVideoPlayInfoInternal$2.L$0 = str4;
            uGCImmVideoDetailViewModel$fetchVideoPlayInfoInternal$2.label = 1;
            objR = downloadEsHelperA.R(str4, uGCImmVideoDetailViewModel$fetchVideoPlayInfoInternal$2);
            if (objR == objF) {
                return objF;
            }
            DownloadBean downloadBean2 = (DownloadBean) objR;
            rv.a aVarF = F();
            uGCImmVideoDetailViewModel$fetchVideoPlayInfoInternal$2.L$0 = downloadBean2;
            uGCImmVideoDetailViewModel$fetchVideoPlayInfoInternal$2.label = 2;
            Object objI = rv.a.C0910a.i(aVarF, str4, null, uGCImmVideoDetailViewModel$fetchVideoPlayInfoInternal$2, 2, null);
            if (objI == objF) {
                return objF;
            }
            objR = objI;
            downloadBean = downloadBean2;
            baseDto = (BaseDto) objR;
            uGCVideoPlayInfo = (UGCVideoPlayInfo) baseDto.getData();
            if (uGCVideoPlayInfo != null) {
                if (downloadBean != null) {
                    status = downloadBean.getStatus();
                } else {
                    status = 0;
                }
                uGCVideoPlayInfo.setDownloadStatus(status);
            }
            if (downloadBean != null) {
                resourceId = downloadBean.getResourceId();
                if (resourceId == null) {
                    str2 = "";
                } else {
                    str2 = resourceId;
                }
                path2 = downloadBean.getPath();
                if (path2 == null) {
                    str3 = "";
                } else {
                    str3 = path2;
                }
                String strValueOf4 = String.valueOf(downloadBean.getResolution());
                String strValueOf5 = String.valueOf(downloadBean.getSize());
                String strValueOf6 = String.valueOf(downloadBean.getDuration());
                subtitleIdType = downloadBean.getSubtitleIdType();
                if (subtitleIdType == null) {
                    subtitleIdType = "ResourceId";
                }
                uGCVideoPlayInfo2.setResources(CollectionsKt.e(new UGCVideoPlayStream("Mp4", str2, str3, strValueOf4, strValueOf5, strValueOf6, "", "", subtitleIdType)));
            }
            if (Intrinsics.c(baseDto.getCode(), "0")) {
                return null;
            }
            return (UGCVideoPlayInfo) baseDto.getData();
        } catch (Throwable th2) {
            lg.a.C0828a.l(lg.a.f68839a, "UGCImmVideoDetailViewModel", "fetchVideoPlayInfoInternal error:" + th2, false, 4, null);
            return null;
        }
    }

    public final void E0(List list, boolean z10) {
        String ugcVideoId;
        String ugcVideoId2;
        String ugcVideoId3;
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            return;
        }
        Iterable<UGCImmVideo> arrayList = (List) this.f56410a0.f();
        if (arrayList == null) {
            arrayList = new ArrayList();
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (UGCImmVideo uGCImmVideo : arrayList) {
            UGCVideo ugcVideo = uGCImmVideo.getUgcVideo();
            if (ugcVideo != null && (ugcVideoId3 = ugcVideo.getUgcVideoId()) != null) {
                linkedHashMap.put(ugcVideoId3, uGCImmVideo);
            }
        }
        if (z10) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                UGCImmVideo uGCImmVideo2 = (UGCImmVideo) it.next();
                UGCVideo ugcVideo2 = uGCImmVideo2.getUgcVideo();
                if (ugcVideo2 != null && (ugcVideoId2 = ugcVideo2.getUgcVideoId()) != null) {
                    linkedHashMap.put(ugcVideoId2, uGCImmVideo2);
                }
            }
        } else {
            for (UGCImmVideo uGCImmVideo3 : CollectionsKt.U(list)) {
                UGCVideo ugcVideo3 = uGCImmVideo3.getUgcVideo();
                if (ugcVideo3 != null && (ugcVideoId = ugcVideo3.getUgcVideoId()) != null && !linkedHashMap.containsKey(ugcVideoId)) {
                    LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                    linkedHashMap2.put(ugcVideoId, uGCImmVideo3);
                    linkedHashMap2.putAll(linkedHashMap);
                    linkedHashMap.clear();
                    linkedHashMap.putAll(linkedHashMap2);
                }
            }
        }
        b0 b0Var = this.f56410a0;
        Collection collectionValues = linkedHashMap.values();
        Intrinsics.g(collectionValues, "<get-values>(...)");
        b0Var.q(CollectionsKt.U0(collectionValues));
    }

    public final b0 H0() {
        return this.f56410a0;
    }

    public final LiveData I0() {
        return this.f56412c0;
    }

    public final void J0(String ugcVideoId, String str) {
        Intrinsics.h(ugcVideoId, "ugcVideoId");
        lg.a.C0828a.r(lg.a.f68839a, "UGCImmVideoDetailViewModel", new String[]{"getFirstVideoDetail--getFirstVideoDetail id:" + ugcVideoId + ",collectionId:" + str}, false, 4, null);
        k.d(u0.a(this), null, null, new UGCImmVideoDetailViewModel$getFirstVideoDetail$1(this, ugcVideoId, str, null), 3, null);
    }

    public final void K0(String subjectId) {
        Intrinsics.h(subjectId, "subjectId");
        lg.a.C0828a.r(lg.a.f68839a, "UGCImmVideoDetailViewModel", new String[]{"getFirstVideoDetailBySubject id:" + subjectId}, false, 4, null);
        k.d(u0.a(this), null, null, new UGCImmVideoDetailViewModel$getFirstVideoDetailBySubject$1(this, subjectId, null), 3, null);
    }

    public final b0 L0() {
        return this.U;
    }

    public final b0 M0() {
        return this.V;
    }

    public final LiveData N0() {
        return this.X;
    }

    public final b0 O0() {
        return this.T;
    }

    public final void P0(String collectionId, int i11, int i12, boolean z10, boolean z11) {
        Intrinsics.h(collectionId, "collectionId");
        k.d(u0.a(this), null, null, new UGCImmVideoDetailViewModel$getImmVideoList$1(this, collectionId, i11, i12, z10, z11, null), 3, null);
    }

    public final LiveData R0() {
        return this.Z;
    }

    public final void S0(boolean z10, String str) {
        k.d(u0.a(this), null, null, new UGCImmVideoDetailViewModel$getImmVideoRecommentList$1(z10, this, str, null), 3, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void T0(String ugcVideoId, String str) {
        Intrinsics.h(ugcVideoId, "ugcVideoId");
        lg.a.C0828a.r(lg.a.f68839a, "UGCImmVideoDetailViewModel", new String[]{"getLocalDataWithoutNet id:" + ugcVideoId + ",collectionId:" + str}, false, 4, null);
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = ugcVideoId;
        k.d(u0.a(this), null, null, new UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1(str, this, ugcVideoId, objectRef, null), 3, null);
    }

    public final boolean U0() {
        return this.Q;
    }

    public final String V0() {
        return this.J;
    }

    public final String W0() {
        return this.P;
    }

    public final float X0() {
        return this.S;
    }

    public final boolean Y0() {
        return this.R;
    }

    public final void Z0(String ugcVideoId, boolean z10) {
        Intrinsics.h(ugcVideoId, "ugcVideoId");
        k.d(u0.a(this), null, null, new UGCImmVideoDetailViewModel$loadImmHistory$1(this, ugcVideoId, z10, null), 3, null);
    }

    public final void b1(boolean z10) {
        this.R = z10;
    }

    public final void c1(boolean z10) {
        this.Q = z10;
    }

    public final void d1(String str) {
        this.P = str;
    }

    public final void e1(float f11) {
        this.S = f11;
    }

    public final void f1(UGCImmVideo uGCImmVideo, long j11, long j12) {
        k.d(o0.a(y0.b()), null, null, new UGCImmVideoDetailViewModel$updateHistory$1(uGCImmVideo, j12, j11, this, null), 3, null);
    }
}
