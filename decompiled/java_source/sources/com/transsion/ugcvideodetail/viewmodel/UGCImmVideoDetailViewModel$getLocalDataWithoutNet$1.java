package com.transsion.ugcvideodetail.viewmodel;

import androidx.p009lifecycle.b0;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.video.UGCCollectionVideoGroupDao;
import com.transsion.baselib.db.video.UGCVideoDetailPlayBean;
import com.transsion.baselib.db.video.UGCVideoDetailPlayDao;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.ugcvideodetail.api.bean.UGCImmVideo;
import com.transsion.ugcvideodetail.api.bean.UGCImmVideoContent;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoBelongToCollection;
import com.transsion.ugcvideodetail.api.bean.UGCVideoCreator;
import com.transsion.ugcvideodetail.api.bean.UGCVideoPlayInfo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoPlayStream;
import com.transsnet.downloader.manager.DownloadEsHelper;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Triple;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1", f = "UGCImmVideoDetailViewModel.kt", l = {199}, m = "invokeSuspend")
final class UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $collectionId;
    final /* synthetic */ Ref.ObjectRef<String> $curUgcVideoId;
    final /* synthetic */ String $ugcVideoId;
    int label;
    final /* synthetic */ UGCImmVideoDetailViewModel this$0;

    /* JADX INFO: renamed from: com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0007\u001a\u00020\u0006*(\u0012$\u0012\"\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0007\u0010\b"}, d2 = {"Lkotlinx/coroutines/flow/c;", "Lkotlin/Triple;", "", "Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;", "", "Lcom/transsion/baselib/db/download/DownloadBean;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1", f = "UGCImmVideoDetailViewModel.kt", l = {174, 177, 178, 180, 182, 185, 187, 193, 194}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.c, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $collectionId;
        final /* synthetic */ Ref.ObjectRef<String> $curUgcVideoId;
        final /* synthetic */ String $ugcVideoId;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        final /* synthetic */ UGCImmVideoDetailViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(String str, UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel, String str2, Ref.ObjectRef<String> objectRef, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$collectionId = str;
            this.this$0 = uGCImmVideoDetailViewModel;
            this.$ugcVideoId = str2;
            this.$curUgcVideoId = objectRef;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$collectionId, this.this$0, this.$ugcVideoId, this.$curUgcVideoId, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.flow.c cVar, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(cVar, continuation)).invokeSuspend(Unit.f67061a);
        }

        /* JADX WARN: Code duplicated, block: B:33:0x00e7  */
        /* JADX WARN: Code duplicated, block: B:35:0x00fe A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:38:0x0103  */
        /* JADX WARN: Code duplicated, block: B:41:0x014f A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:44:0x0169 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:47:0x017f A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:50:0x019d A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:51:0x019e  */
        /* JADX WARN: Code duplicated, block: B:54:0x01a7  */
        /* JADX WARN: Code duplicated, block: B:56:0x01b6 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:57:0x01b7  */
        /* JADX WARN: Code duplicated, block: B:59:0x01d4 A[RETURN] */
        /* JADX WARN: Instruction removed from duplicated block: B:38:0x0103, please report this as an issue */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v17, types: [T, com.transsion.baselib.db.video.UGCVideoDetailPlayBean] */
        /* JADX WARN: Type inference failed for: r9v2, types: [T, java.lang.String] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            kotlinx.coroutines.flow.c cVar;
            Object objC;
            String str;
            Object objR;
            Ref.ObjectRef objectRef;
            kotlinx.coroutines.flow.c cVar2;
            Ref.ObjectRef objectRef2;
            UGCVideoDetailPlayBean uGCVideoDetailPlayBean;
            Object objR2;
            kotlinx.coroutines.flow.c cVar3;
            UGCVideoDetailPlayBean uGCVideoDetailPlayBean2;
            DownloadBean downloadBean;
            Triple triple;
            T t11;
            Object objC2;
            Ref.ObjectRef objectRef3;
            String str2;
            kotlinx.coroutines.flow.c cVar4;
            Object objP;
            ?? r11;
            Triple triple2;
            Object objF = IntrinsicsKt.f();
            switch (this.label) {
                case 0:
                    ResultKt.b(obj);
                    cVar = (kotlinx.coroutines.flow.c) this.L$0;
                    String str3 = this.$collectionId;
                    if (str3 == null || str3.length() == 0) {
                        UGCCollectionVideoGroupDao uGCCollectionVideoGroupDaoZ = this.this$0.z();
                        String str4 = this.$ugcVideoId;
                        this.L$0 = cVar;
                        this.label = 1;
                        objC = uGCCollectionVideoGroupDaoZ.c(str4, this);
                        if (objC == objF) {
                            return objF;
                        }
                        str = (String) objC;
                    } else {
                        str = this.$collectionId;
                    }
                    if (str != null || str.length() == 0) {
                        UGCVideoDetailPlayDao uGCVideoDetailPlayDaoK = this.this$0.K();
                        String str5 = this.$ugcVideoId;
                        this.L$0 = cVar;
                        this.L$1 = str;
                        this.label = 2;
                        objR = uGCVideoDetailPlayDaoK.r(str5, this);
                        if (objR == objF) {
                            return objF;
                        }
                        uGCVideoDetailPlayBean = (UGCVideoDetailPlayBean) objR;
                        DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f59419m.a();
                        String str6 = this.$curUgcVideoId.element;
                        this.L$0 = cVar;
                        this.L$1 = str;
                        this.L$2 = uGCVideoDetailPlayBean;
                        this.label = 3;
                        objR2 = downloadEsHelperA.R(str6, this);
                        if (objR2 == objF) {
                            return objF;
                        }
                        cVar3 = cVar;
                        uGCVideoDetailPlayBean2 = uGCVideoDetailPlayBean;
                        downloadBean = (DownloadBean) objR2;
                        if (downloadBean == null) {
                            this.L$0 = null;
                            this.L$1 = null;
                            this.L$2 = null;
                            this.label = 4;
                            if (cVar3.emit(null, this) == objF) {
                                return objF;
                            }
                        } else {
                            triple = new Triple(str, uGCVideoDetailPlayBean2, CollectionsKt.q(downloadBean));
                            this.L$0 = null;
                            this.L$1 = null;
                            this.L$2 = null;
                            this.label = 5;
                            if (cVar3.emit(triple, this) == objF) {
                                return objF;
                            }
                        }
                        return Unit.f67061a;
                    }
                    objectRef = new Ref.ObjectRef();
                    UGCVideoDetailPlayDao uGCVideoDetailPlayDaoK2 = this.this$0.K();
                    String str7 = this.$ugcVideoId;
                    this.L$0 = cVar;
                    this.L$1 = str;
                    this.L$2 = objectRef;
                    this.L$3 = objectRef;
                    this.label = 6;
                    Object objR3 = uGCVideoDetailPlayDaoK2.r(str7, this);
                    if (objR3 == objF) {
                        return objF;
                    }
                    cVar2 = cVar;
                    objectRef2 = objectRef;
                    t11 = objR3;
                    objectRef.element = t11;
                    if (objectRef2.element == 0) {
                        UGCVideoDetailPlayDao uGCVideoDetailPlayDaoK3 = this.this$0.K();
                        this.L$0 = cVar2;
                        this.L$1 = str;
                        this.L$2 = objectRef2;
                        this.L$3 = null;
                        this.label = 7;
                        objC2 = uGCVideoDetailPlayDaoK3.c(str, this);
                        if (objC2 == objF) {
                            return objF;
                        }
                        r11 = (UGCVideoDetailPlayBean) objC2;
                        if (r11 != 0) {
                            Ref.ObjectRef<String> objectRef4 = this.$curUgcVideoId;
                            String str8 = this.$ugcVideoId;
                            objectRef4.element = r11.getUgcVideoId();
                            objectRef2.element = r11;
                            lg.a.C0828a.f(lg.a.f68839a, "UGCImmVideoDetailViewModel", "getLocalDataWithoutNet curId:" + str8 + ", history:" + ((Object) objectRef4.element), false, 4, null);
                        }
                    }
                    objectRef3 = objectRef2;
                    str2 = str;
                    cVar4 = cVar2;
                    DownloadEsHelper downloadEsHelperA2 = DownloadEsHelper.f59419m.a();
                    this.L$0 = cVar4;
                    this.L$1 = str2;
                    this.L$2 = objectRef3;
                    this.L$3 = null;
                    this.label = 8;
                    objP = downloadEsHelperA2.P(str2, this);
                    if (objP == objF) {
                        return objF;
                    }
                    triple2 = new Triple(str2, objectRef3.element, (List) objP);
                    this.L$0 = null;
                    this.L$1 = null;
                    this.L$2 = null;
                    this.label = 9;
                    if (cVar4.emit(triple2, this) == objF) {
                        return objF;
                    }
                    return Unit.f67061a;
                case 1:
                    cVar = (kotlinx.coroutines.flow.c) this.L$0;
                    ResultKt.b(obj);
                    objC = obj;
                    str = (String) objC;
                    if (str != null) {
                        break;
                    }
                    UGCVideoDetailPlayDao uGCVideoDetailPlayDaoK4 = this.this$0.K();
                    String str9 = this.$ugcVideoId;
                    this.L$0 = cVar;
                    this.L$1 = str;
                    this.label = 2;
                    objR = uGCVideoDetailPlayDaoK4.r(str9, this);
                    if (objR == objF) {
                        return objF;
                    }
                    uGCVideoDetailPlayBean = (UGCVideoDetailPlayBean) objR;
                    DownloadEsHelper downloadEsHelperA3 = DownloadEsHelper.f59419m.a();
                    String str10 = this.$curUgcVideoId.element;
                    this.L$0 = cVar;
                    this.L$1 = str;
                    this.L$2 = uGCVideoDetailPlayBean;
                    this.label = 3;
                    objR2 = downloadEsHelperA3.R(str10, this);
                    if (objR2 == objF) {
                        return objF;
                    }
                    cVar3 = cVar;
                    uGCVideoDetailPlayBean2 = uGCVideoDetailPlayBean;
                    downloadBean = (DownloadBean) objR2;
                    if (downloadBean == null) {
                        this.L$0 = null;
                        this.L$1 = null;
                        this.L$2 = null;
                        this.label = 4;
                        if (cVar3.emit(null, this) == objF) {
                            return objF;
                        }
                    } else {
                        triple = new Triple(str, uGCVideoDetailPlayBean2, CollectionsKt.q(downloadBean));
                        this.L$0 = null;
                        this.L$1 = null;
                        this.L$2 = null;
                        this.label = 5;
                        if (cVar3.emit(triple, this) == objF) {
                            return objF;
                        }
                    }
                    return Unit.f67061a;
                case 2:
                    String str11 = (String) this.L$1;
                    kotlinx.coroutines.flow.c cVar5 = (kotlinx.coroutines.flow.c) this.L$0;
                    ResultKt.b(obj);
                    objR = obj;
                    str = str11;
                    cVar = cVar5;
                    uGCVideoDetailPlayBean = (UGCVideoDetailPlayBean) objR;
                    DownloadEsHelper downloadEsHelperA4 = DownloadEsHelper.f59419m.a();
                    String str12 = this.$curUgcVideoId.element;
                    this.L$0 = cVar;
                    this.L$1 = str;
                    this.L$2 = uGCVideoDetailPlayBean;
                    this.label = 3;
                    objR2 = downloadEsHelperA4.R(str12, this);
                    if (objR2 == objF) {
                        return objF;
                    }
                    cVar3 = cVar;
                    uGCVideoDetailPlayBean2 = uGCVideoDetailPlayBean;
                    downloadBean = (DownloadBean) objR2;
                    if (downloadBean == null) {
                        this.L$0 = null;
                        this.L$1 = null;
                        this.L$2 = null;
                        this.label = 4;
                        if (cVar3.emit(null, this) == objF) {
                            return objF;
                        }
                    } else {
                        triple = new Triple(str, uGCVideoDetailPlayBean2, CollectionsKt.q(downloadBean));
                        this.L$0 = null;
                        this.L$1 = null;
                        this.L$2 = null;
                        this.label = 5;
                        if (cVar3.emit(triple, this) == objF) {
                            return objF;
                        }
                    }
                    return Unit.f67061a;
                case 3:
                    uGCVideoDetailPlayBean2 = (UGCVideoDetailPlayBean) this.L$2;
                    str = (String) this.L$1;
                    cVar3 = (kotlinx.coroutines.flow.c) this.L$0;
                    ResultKt.b(obj);
                    objR2 = obj;
                    downloadBean = (DownloadBean) objR2;
                    if (downloadBean == null) {
                        this.L$0 = null;
                        this.L$1 = null;
                        this.L$2 = null;
                        this.label = 4;
                        if (cVar3.emit(null, this) == objF) {
                            return objF;
                        }
                    } else {
                        triple = new Triple(str, uGCVideoDetailPlayBean2, CollectionsKt.q(downloadBean));
                        this.L$0 = null;
                        this.L$1 = null;
                        this.L$2 = null;
                        this.label = 5;
                        if (cVar3.emit(triple, this) == objF) {
                            return objF;
                        }
                    }
                    return Unit.f67061a;
                case 4:
                case 5:
                case 9:
                    ResultKt.b(obj);
                    return Unit.f67061a;
                case 6:
                    objectRef = (Ref.ObjectRef) this.L$3;
                    objectRef2 = (Ref.ObjectRef) this.L$2;
                    str = (String) this.L$1;
                    kotlinx.coroutines.flow.c cVar6 = (kotlinx.coroutines.flow.c) this.L$0;
                    ResultKt.b(obj);
                    cVar2 = cVar6;
                    t11 = obj;
                    objectRef.element = t11;
                    if (objectRef2.element == 0) {
                        UGCVideoDetailPlayDao uGCVideoDetailPlayDaoK5 = this.this$0.K();
                        this.L$0 = cVar2;
                        this.L$1 = str;
                        this.L$2 = objectRef2;
                        this.L$3 = null;
                        this.label = 7;
                        objC2 = uGCVideoDetailPlayDaoK5.c(str, this);
                        if (objC2 == objF) {
                            return objF;
                        }
                        r11 = (UGCVideoDetailPlayBean) objC2;
                        if (r11 != 0) {
                            Ref.ObjectRef<String> objectRef5 = this.$curUgcVideoId;
                            String str13 = this.$ugcVideoId;
                            objectRef5.element = r11.getUgcVideoId();
                            objectRef2.element = r11;
                            lg.a.C0828a.f(lg.a.f68839a, "UGCImmVideoDetailViewModel", "getLocalDataWithoutNet curId:" + str13 + ", history:" + ((Object) objectRef5.element), false, 4, null);
                        }
                    }
                    objectRef3 = objectRef2;
                    str2 = str;
                    cVar4 = cVar2;
                    DownloadEsHelper downloadEsHelperA5 = DownloadEsHelper.f59419m.a();
                    this.L$0 = cVar4;
                    this.L$1 = str2;
                    this.L$2 = objectRef3;
                    this.L$3 = null;
                    this.label = 8;
                    objP = downloadEsHelperA5.P(str2, this);
                    if (objP == objF) {
                        return objF;
                    }
                    triple2 = new Triple(str2, objectRef3.element, (List) objP);
                    this.L$0 = null;
                    this.L$1 = null;
                    this.L$2 = null;
                    this.label = 9;
                    if (cVar4.emit(triple2, this) == objF) {
                        return objF;
                    }
                    return Unit.f67061a;
                case 7:
                    Ref.ObjectRef objectRef6 = (Ref.ObjectRef) this.L$2;
                    String str14 = (String) this.L$1;
                    kotlinx.coroutines.flow.c cVar7 = (kotlinx.coroutines.flow.c) this.L$0;
                    ResultKt.b(obj);
                    cVar2 = cVar7;
                    str = str14;
                    objectRef2 = objectRef6;
                    objC2 = obj;
                    r11 = (UGCVideoDetailPlayBean) objC2;
                    if (r11 != 0) {
                        Ref.ObjectRef<String> objectRef7 = this.$curUgcVideoId;
                        String str15 = this.$ugcVideoId;
                        objectRef7.element = r11.getUgcVideoId();
                        objectRef2.element = r11;
                        lg.a.C0828a.f(lg.a.f68839a, "UGCImmVideoDetailViewModel", "getLocalDataWithoutNet curId:" + str15 + ", history:" + ((Object) objectRef7.element), false, 4, null);
                    }
                    objectRef3 = objectRef2;
                    str2 = str;
                    cVar4 = cVar2;
                    DownloadEsHelper downloadEsHelperA6 = DownloadEsHelper.f59419m.a();
                    this.L$0 = cVar4;
                    this.L$1 = str2;
                    this.L$2 = objectRef3;
                    this.L$3 = null;
                    this.label = 8;
                    objP = downloadEsHelperA6.P(str2, this);
                    if (objP == objF) {
                        return objF;
                    }
                    triple2 = new Triple(str2, objectRef3.element, (List) objP);
                    this.L$0 = null;
                    this.L$1 = null;
                    this.L$2 = null;
                    this.label = 9;
                    if (cVar4.emit(triple2, this) == objF) {
                        return objF;
                    }
                    return Unit.f67061a;
                case 8:
                    objectRef3 = (Ref.ObjectRef) this.L$2;
                    str2 = (String) this.L$1;
                    cVar4 = (kotlinx.coroutines.flow.c) this.L$0;
                    ResultKt.b(obj);
                    objP = obj;
                    triple2 = new Triple(str2, objectRef3.element, (List) objP);
                    this.L$0 = null;
                    this.L$1 = null;
                    this.L$2 = null;
                    this.label = 9;
                    if (cVar4.emit(triple2, this) == objF) {
                        return objF;
                    }
                    return Unit.f67061a;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    /* JADX INFO: renamed from: com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\t\u001a\u00020\b*(\u0012$\u0012\"\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0018\u00010\u00010\u00002\u0006\u0010\u0007\u001a\u00020\u0006H\n¢\u0006\u0004\b\t\u0010\n"}, d2 = {"Lkotlinx/coroutines/flow/c;", "Lkotlin/Triple;", "", "Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;", "", "Lcom/transsion/baselib/db/download/DownloadBean;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$2", f = "UGCImmVideoDetailViewModel.kt", l = {198}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function3<kotlinx.coroutines.flow.c, Throwable, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(3, continuation);
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(kotlinx.coroutines.flow.c cVar, Throwable th2, Continuation<? super Unit> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(continuation);
            anonymousClass2.L$0 = cVar;
            return anonymousClass2.invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                kotlinx.coroutines.flow.c cVar = (kotlinx.coroutines.flow.c) this.L$0;
                this.label = 1;
                if (cVar.emit(null, this) == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1(String str, UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel, String str2, Ref.ObjectRef<String> objectRef, Continuation<? super UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1> continuation) {
        super(2, continuation);
        this.$collectionId = str;
        this.this$0 = uGCImmVideoDetailViewModel;
        this.$ugcVideoId = str2;
        this.$curUgcVideoId = objectRef;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1(this.$collectionId, this.this$0, this.$ugcVideoId, this.$curUgcVideoId, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.flow.b bVarF = kotlinx.coroutines.flow.d.f(kotlinx.coroutines.flow.d.u(kotlinx.coroutines.flow.d.s(new AnonymousClass1(this.$collectionId, this.this$0, this.$ugcVideoId, this.$curUgcVideoId, null)), y0.b()), new AnonymousClass2(null));
            final UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel = this.this$0;
            final Ref.ObjectRef<String> objectRef = this.$curUgcVideoId;
            kotlinx.coroutines.flow.c cVar = new kotlinx.coroutines.flow.c() { // from class: com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1.3
                /* JADX WARN: Code duplicated, block: B:111:0x0260  */
                /* JADX WARN: Code duplicated, block: B:22:0x008c  */
                @Override // kotlinx.coroutines.flow.c
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public final Object emit(Triple triple, Continuation continuation) {
                    Object next;
                    Object next2;
                    UGCVideoPlayInfo uGCVideoPlayInfo;
                    String path;
                    UGCVideo uGCVideo;
                    DownloadBean downloadBean;
                    Cover cover;
                    if (triple == null) {
                        return Unit.f67061a;
                    }
                    String str = (String) triple.component1();
                    UGCVideoDetailPlayBean uGCVideoDetailPlayBean = (UGCVideoDetailPlayBean) triple.component2();
                    List list = (List) triple.component3();
                    List list2 = list;
                    if (list2 == null || list2.isEmpty()) {
                        return Unit.f67061a;
                    }
                    final Comparator comparator = new Comparator() { // from class: com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$3$emit$$inlined$compareBy$1
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // java.util.Comparator
                        public final int compare(T t11, T t12) {
                            Integer ugcVideoPosition = ((DownloadBean) t11).getUgcVideoPosition();
                            Integer num = Integer.MAX_VALUE;
                            if (ugcVideoPosition == null) {
                                ugcVideoPosition = num;
                            }
                            Integer ugcVideoPosition2 = ((DownloadBean) t12).getUgcVideoPosition();
                            return ComparisonsKt.d(ugcVideoPosition, ugcVideoPosition2 != null ? ugcVideoPosition2 : Integer.MAX_VALUE);
                        }
                    };
                    final Comparator comparator2 = new Comparator() { // from class: com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$3$emit$$inlined$thenBy$1
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // java.util.Comparator
                        public final int compare(T t11, T t12) {
                            int iCompare = comparator.compare(t11, t12);
                            if (iCompare != 0) {
                                return iCompare;
                            }
                            Integer numValueOf = Integer.valueOf(((DownloadBean) t11).getResourcePosition());
                            if (numValueOf.intValue() <= 0) {
                                numValueOf = null;
                            }
                            if (numValueOf == null) {
                                numValueOf = Integer.MAX_VALUE;
                            }
                            Integer numValueOf2 = Integer.valueOf(((DownloadBean) t12).getResourcePosition());
                            Integer num = numValueOf2.intValue() > 0 ? numValueOf2 : null;
                            if (num == null) {
                                num = Integer.MAX_VALUE;
                            }
                            return ComparisonsKt.d(numValueOf, num);
                        }
                    };
                    List listI0 = CollectionsKt.I0(list, new Comparator() { // from class: com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$3$emit$$inlined$thenBy$2
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // java.util.Comparator
                        public final int compare(T t11, T t12) {
                            int iCompare = comparator2.compare(t11, t12);
                            if (iCompare != 0) {
                                return iCompare;
                            }
                            Integer numValueOf = Integer.valueOf(((DownloadBean) t11).getEp());
                            if (numValueOf.intValue() <= 0) {
                                numValueOf = null;
                            }
                            if (numValueOf == null) {
                                numValueOf = Integer.MAX_VALUE;
                            }
                            Integer numValueOf2 = Integer.valueOf(((DownloadBean) t12).getEp());
                            Integer num = numValueOf2.intValue() > 0 ? numValueOf2 : null;
                            if (num == null) {
                                num = Integer.MAX_VALUE;
                            }
                            return ComparisonsKt.d(numValueOf, num);
                        }
                    });
                    int size = listI0.size();
                    List list3 = listI0;
                    ArrayList arrayList = new ArrayList(CollectionsKt.v(list3, 10));
                    Iterator it = list3.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        DownloadBean downloadBean2 = (DownloadBean) it.next();
                        String cover2 = downloadBean2.getCover();
                        if (cover2 == null) {
                            cover = null;
                        } else {
                            String str2 = cover2.length() > 0 ? cover2 : null;
                            if (str2 != null) {
                                cover = new Cover(null, null, null, str2, null, str2, null, null, null, 471, null);
                            } else {
                                cover = null;
                            }
                        }
                        String ugcVideoCollectionId = downloadBean2.getUgcVideoCollectionId();
                        String str3 = ugcVideoCollectionId == null ? str : ugcVideoCollectionId;
                        String ugcVideoCollectionName = downloadBean2.getUgcVideoCollectionName();
                        Integer numD = Boxing.d(size);
                        Integer ugcVideoPosition = downloadBean2.getUgcVideoPosition();
                        UGCVideoBelongToCollection uGCVideoBelongToCollection = new UGCVideoBelongToCollection(str3, ugcVideoCollectionName, numD, Boxing.d(ugcVideoPosition != null ? ugcVideoPosition.intValue() : downloadBean2.videoUGCPosition()), null, 16, null);
                        UGCVideoCreator uGCVideoCreator = new UGCVideoCreator(uGCVideoDetailPlayBean != null ? uGCVideoDetailPlayBean.getUid() : null, uGCVideoDetailPlayBean != null ? uGCVideoDetailPlayBean.getUserName() : null, uGCVideoDetailPlayBean != null ? uGCVideoDetailPlayBean.getUserAvatar() : null, null, 8, null);
                        String ugcVideoId = downloadBean2.getUgcVideoId();
                        if (ugcVideoId == null) {
                            ugcVideoId = downloadBean2.getResourceId();
                        }
                        String str4 = ugcVideoId;
                        String ugcVideoName = downloadBean2.getUgcVideoName();
                        if (ugcVideoName == null) {
                            ugcVideoName = downloadBean2.getName();
                        }
                        UGCVideo uGCVideo2 = new UGCVideo(str4, ugcVideoName, uGCVideoDetailPlayBean != null ? uGCVideoDetailPlayBean.getDescription() : null, null, cover, null, null, downloadBean2.getDuration(), null, null, null, downloadBean2.getUgcVideoType(), uGCVideoCreator, null, uGCVideoBelongToCollection, downloadBean2.getOps(), downloadBean2.getSubjectId(), null, null, downloadBean2.getUgcVideoEpTitle(), null, null, null, 0, false, null, null, null, null, 536225640, null);
                        Integer position = uGCVideoBelongToCollection.getPosition();
                        uGCVideo2.setPlayListPosition(position != null ? position.intValue() : -1);
                        arrayList.add(uGCVideo2);
                    }
                    List listU0 = CollectionsKt.U0(arrayList);
                    Ref.ObjectRef objectRef2 = objectRef;
                    Iterator it2 = list3.iterator();
                    do {
                        if (!it2.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it2.next();
                        downloadBean = (DownloadBean) next;
                        if (Intrinsics.c(downloadBean.getUgcVideoId(), objectRef2.element)) {
                            break;
                        }
                    } while (!Intrinsics.c(downloadBean.getResourceId(), objectRef2.element));
                    DownloadBean downloadBean3 = (DownloadBean) next;
                    List<UGCVideo> list4 = listU0;
                    Ref.ObjectRef objectRef3 = objectRef;
                    Iterator it3 = list4.iterator();
                    do {
                        if (!it3.hasNext()) {
                            next2 = null;
                            break;
                        }
                        next2 = it3.next();
                        uGCVideo = (UGCVideo) next2;
                        if (Intrinsics.c(uGCVideo.getUgcVideoId(), objectRef3.element)) {
                            break;
                        }
                        if (Intrinsics.c(uGCVideo.getUgcVideoId(), downloadBean3 != null ? downloadBean3.getUgcVideoId() : null)) {
                            break;
                        }
                    } while (!Intrinsics.c(uGCVideo.getUgcVideoId(), downloadBean3 != null ? downloadBean3.getResourceId() : null));
                    UGCVideo uGCVideo3 = (UGCVideo) next2;
                    if (uGCVideo3 == null) {
                        uGCVideo3 = (UGCVideo) CollectionsKt.k0(listU0);
                    }
                    if (downloadBean3 == null || (path = downloadBean3.getPath()) == null) {
                        uGCVideoPlayInfo = null;
                    } else {
                        String str5 = path.length() > 0 ? path : null;
                        if (str5 != null) {
                            String ugcVideoId2 = downloadBean3.getUgcVideoId();
                            if (ugcVideoId2 == null) {
                                ugcVideoId2 = downloadBean3.getResourceId();
                            }
                            String resourceId = downloadBean3.getResourceId();
                            if (resourceId == null) {
                                resourceId = "";
                            }
                            String str6 = resourceId;
                            String strValueOf = String.valueOf(downloadBean3.getResolution());
                            Long size2 = downloadBean3.getSize();
                            String strValueOf2 = String.valueOf(size2 != null ? size2.longValue() : 0L);
                            Long duration = downloadBean3.getDuration();
                            String strValueOf3 = String.valueOf(duration != null ? duration.longValue() : 0L);
                            String subtitleIdType = downloadBean3.getSubtitleIdType();
                            if (subtitleIdType == null) {
                                subtitleIdType = "ResourceId";
                            }
                            uGCVideoPlayInfo = new UGCVideoPlayInfo(ugcVideoId2, CollectionsKt.e(new UGCVideoPlayStream("Mp4", str6, str5, strValueOf, strValueOf2, strValueOf3, "", "", subtitleIdType)), null);
                        } else {
                            uGCVideoPlayInfo = null;
                        }
                    }
                    if (uGCVideo3 != null) {
                        b0 b0Var = uGCImmVideoDetailViewModel.f56411b0;
                        UGCImmVideo uGCImmVideo = new UGCImmVideo(uGCVideo3, uGCVideoPlayInfo);
                        uGCImmVideo.setCollectionList(uGCVideo3.isCollection());
                        b0Var.q(uGCImmVideo);
                    }
                    ArrayList arrayList2 = new ArrayList(CollectionsKt.v(list4, 10));
                    for (UGCVideo uGCVideo4 : list4) {
                        UGCImmVideo uGCImmVideo2 = new UGCImmVideo(uGCVideo4, Intrinsics.c(uGCVideo4.getUgcVideoId(), uGCVideo3 != null ? uGCVideo3.getUgcVideoId() : null) ? uGCVideoPlayInfo : null);
                        uGCImmVideo2.setCollectionList(true);
                        arrayList2.add(uGCImmVideo2);
                    }
                    List listU1 = CollectionsKt.U0(arrayList2);
                    if (str != null) {
                        uGCImmVideoDetailViewModel.W.q(MapsKt.m(TuplesKt.a(str, Boxing.d(size))));
                    }
                    uGCImmVideoDetailViewModel.Y.q(new UGCImmVideoContent(listU1, true, null));
                    lg.a.C0828a.f(lg.a.f68839a, "UGCImmVideoDetailViewModel", "getLocalDataWithoutNet size:" + listU1.size(), false, 4, null);
                    uGCImmVideoDetailViewModel.E0(listU1, true);
                    return Unit.f67061a;
                }
            };
            this.label = 1;
            if (bVarF.a(cVar, this) == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return Unit.f67061a;
    }
}
