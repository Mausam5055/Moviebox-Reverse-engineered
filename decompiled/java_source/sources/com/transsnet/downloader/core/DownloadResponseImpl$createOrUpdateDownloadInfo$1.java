package com.transsnet.downloader.core;

import com.blankj.utilcode.util.a0;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.download.DownloadRange;
import com.transsnet.downloader.manager.DownloadEsHelper;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;
import nh.m;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.core.DownloadResponseImpl$createOrUpdateDownloadInfo$1", f = "DownloadResponseImpl.kt", l = {183, 184, 190, 198, Sdk$SDKError.Reason.INVALID_JSON_BID_PAYLOAD_VALUE}, m = "invokeSuspend")
@SourceDebugExtension
final class DownloadResponseImpl$createOrUpdateDownloadInfo$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ DownloadBean $downloadInfo;
    Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ DownloadResponseImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadResponseImpl$createOrUpdateDownloadInfo$1(DownloadBean downloadBean, DownloadResponseImpl downloadResponseImpl, Continuation<? super DownloadResponseImpl$createOrUpdateDownloadInfo$1> continuation) {
        super(2, continuation);
        this.$downloadInfo = downloadBean;
        this.this$0 = downloadResponseImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadResponseImpl$createOrUpdateDownloadInfo$1(this.$downloadInfo, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DownloadResponseImpl$createOrUpdateDownloadInfo$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:44:0x010b A[Catch: all -> 0x0037, TRY_LEAVE, TryCatch #0 {all -> 0x0037, blocks: (B:14:0x0032, B:42:0x0105, B:44:0x010b, B:41:0x00f5), top: B:64:0x000c }] */
    /* JADX WARN: Code duplicated, block: B:48:0x013a  */
    /* JADX WARN: Code duplicated, block: B:50:0x0142  */
    /* JADX WARN: Code duplicated, block: B:52:0x0150  */
    /* JADX WARN: Code duplicated, block: B:55:0x0162 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:58:0x016b  */
    /* JADX WARN: Code duplicated, block: B:61:0x0196 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:67:0x0121 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:69:? A[LOOP:0: B:42:0x0105->B:69:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:40:0x00d0, please report this as an issue */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        lj.n0 n0VarI;
        String resourceId;
        DownloadResponseImpl downloadResponseImpl;
        DownloadBean downloadBean;
        String cover;
        DownloadResponseImpl downloadResponseImpl2;
        Iterator it;
        DownloadRange downloadRange;
        lj.n0 n0VarI2;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 != 0) {
                if (i11 == 1) {
                    ResultKt.b(obj);
                } else if (i11 == 2) {
                    ResultKt.b(obj);
                    if (!this.$downloadInfo.getDownloadRanges().isEmpty()) {
                        lg.a.C0828a.f(lg.a.f68839a, "DownloadImp-ResponseImpl", "Response, insert ranges, size = " + this.$downloadInfo.getDownloadRanges().size(), false, 4, null);
                        List<DownloadRange> downloadRanges = this.$downloadInfo.getDownloadRanges();
                        downloadResponseImpl2 = this.this$0;
                        it = downloadRanges.iterator();
                        while (it.hasNext()) {
                            downloadRange = (DownloadRange) it.next();
                            n0VarI2 = downloadResponseImpl2.i();
                            this.L$0 = downloadResponseImpl2;
                            this.L$1 = it;
                            this.label = 3;
                            if (n0VarI2.d(downloadRange, this) == objF) {
                                return objF;
                            }
                        }
                        if (this.$downloadInfo.isCompleted()) {
                            n0VarI = this.this$0.i();
                            resourceId = this.$downloadInfo.getResourceId();
                            if (resourceId == null) {
                                resourceId = this.$downloadInfo.getUrl();
                            }
                            this.L$0 = null;
                            this.L$1 = null;
                            this.label = 4;
                            if (n0VarI.b(resourceId, this) == objF) {
                                return objF;
                            }
                            cover = this.$downloadInfo.getCover();
                            if (cover != null) {
                                int iA = a0.a(120.0f);
                                ej.f.a aVar = ej.f.f61882a;
                                ej.f.a.j(aVar, ej.f.a.e(aVar, cover, iA, false, true, 4, null), cover, iA, null, 8, null);
                            }
                        }
                    } else if (this.$downloadInfo.isCompleted()) {
                        n0VarI = this.this$0.i();
                        resourceId = this.$downloadInfo.getResourceId();
                        if (resourceId == null) {
                            resourceId = this.$downloadInfo.getUrl();
                        }
                        this.L$0 = null;
                        this.L$1 = null;
                        this.label = 4;
                        if (n0VarI.b(resourceId, this) == objF) {
                            return objF;
                        }
                        cover = this.$downloadInfo.getCover();
                        if (cover != null) {
                            int iA2 = a0.a(120.0f);
                            ej.f.a aVar2 = ej.f.f61882a;
                            ej.f.a.j(aVar2, ej.f.a.e(aVar2, cover, iA2, false, true, 4, null), cover, iA2, null, 8, null);
                        }
                    }
                    downloadResponseImpl = this.this$0;
                    downloadBean = this.$downloadInfo;
                    this.L$0 = null;
                    this.L$1 = null;
                    this.label = 5;
                    if (downloadResponseImpl.m(downloadBean, this) == objF) {
                        return objF;
                    }
                } else if (i11 == 3) {
                    it = (Iterator) this.L$1;
                    downloadResponseImpl2 = (DownloadResponseImpl) this.L$0;
                    ResultKt.b(obj);
                    while (it.hasNext()) {
                        downloadRange = (DownloadRange) it.next();
                        n0VarI2 = downloadResponseImpl2.i();
                        this.L$0 = downloadResponseImpl2;
                        this.L$1 = it;
                        this.label = 3;
                        if (n0VarI2.d(downloadRange, this) == objF) {
                            return objF;
                        }
                    }
                    if (this.$downloadInfo.isCompleted()) {
                        n0VarI = this.this$0.i();
                        resourceId = this.$downloadInfo.getResourceId();
                        if (resourceId == null) {
                            resourceId = this.$downloadInfo.getUrl();
                        }
                        this.L$0 = null;
                        this.L$1 = null;
                        this.label = 4;
                        if (n0VarI.b(resourceId, this) == objF) {
                            return objF;
                        }
                        cover = this.$downloadInfo.getCover();
                        if (cover != null) {
                            int iA3 = a0.a(120.0f);
                            ej.f.a aVar3 = ej.f.f61882a;
                            ej.f.a.j(aVar3, ej.f.a.e(aVar3, cover, iA3, false, true, 4, null), cover, iA3, null, 8, null);
                        }
                    }
                    downloadResponseImpl = this.this$0;
                    downloadBean = this.$downloadInfo;
                    this.L$0 = null;
                    this.L$1 = null;
                    this.label = 5;
                    if (downloadResponseImpl.m(downloadBean, this) == objF) {
                        return objF;
                    }
                } else if (i11 == 4) {
                    ResultKt.b(obj);
                    cover = this.$downloadInfo.getCover();
                    if (cover != null) {
                        int iA4 = a0.a(120.0f);
                        ej.f.a aVar4 = ej.f.f61882a;
                        ej.f.a.j(aVar4, ej.f.a.e(aVar4, cover, iA4, false, true, 4, null), cover, iA4, null, 8, null);
                    }
                    downloadResponseImpl = this.this$0;
                    downloadBean = this.$downloadInfo;
                    this.L$0 = null;
                    this.L$1 = null;
                    this.label = 5;
                    if (downloadResponseImpl.m(downloadBean, this) == objF) {
                        return objF;
                    }
                } else {
                    if (i11 != 5) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                return Unit.f67061a;
            }
            ResultKt.b(obj);
            if (this.$downloadInfo.getStatus() == 7) {
                return Unit.f67061a;
            }
            if (this.$downloadInfo.getStatus() == 6 && m.f70474a.e()) {
                DownloadBean downloadBean2 = this.$downloadInfo;
                downloadBean2.setDownloadErrorCount(downloadBean2.getDownloadErrorCount() + 1);
                lg.a.C0828a.f(lg.a.f68839a, "DownloadImp-ResponseImpl", "download error , save error count = " + this.$downloadInfo.getDownloadErrorCount(), false, 4, null);
            }
            DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f59419m.a();
            DownloadBean downloadBean3 = this.$downloadInfo;
            this.label = 1;
            if (downloadEsHelperA.T(downloadBean3, this) == objF) {
                return objF;
            }
            DownloadEsHelper downloadEsHelperA2 = DownloadEsHelper.f59419m.a();
            String resourceId2 = this.$downloadInfo.getResourceId();
            if (resourceId2 == null) {
                resourceId2 = this.$downloadInfo.getUrl();
            }
            int status = this.$downloadInfo.getStatus();
            this.label = 2;
            if (downloadEsHelperA2.f0(resourceId2, status, this) == objF) {
                return objF;
            }
            if (!this.$downloadInfo.getDownloadRanges().isEmpty()) {
                lg.a.C0828a.f(lg.a.f68839a, "DownloadImp-ResponseImpl", "Response, insert ranges, size = " + this.$downloadInfo.getDownloadRanges().size(), false, 4, null);
                List<DownloadRange> downloadRanges2 = this.$downloadInfo.getDownloadRanges();
                downloadResponseImpl2 = this.this$0;
                it = downloadRanges2.iterator();
                while (it.hasNext()) {
                    downloadRange = (DownloadRange) it.next();
                    n0VarI2 = downloadResponseImpl2.i();
                    this.L$0 = downloadResponseImpl2;
                    this.L$1 = it;
                    this.label = 3;
                    if (n0VarI2.d(downloadRange, this) == objF) {
                        return objF;
                    }
                }
                if (this.$downloadInfo.isCompleted()) {
                    n0VarI = this.this$0.i();
                    resourceId = this.$downloadInfo.getResourceId();
                    if (resourceId == null) {
                        resourceId = this.$downloadInfo.getUrl();
                    }
                    this.L$0 = null;
                    this.L$1 = null;
                    this.label = 4;
                    if (n0VarI.b(resourceId, this) == objF) {
                        return objF;
                    }
                    cover = this.$downloadInfo.getCover();
                    if (cover != null) {
                        int iA5 = a0.a(120.0f);
                        ej.f.a aVar5 = ej.f.f61882a;
                        ej.f.a.j(aVar5, ej.f.a.e(aVar5, cover, iA5, false, true, 4, null), cover, iA5, null, 8, null);
                    }
                }
            } else if (this.$downloadInfo.isCompleted()) {
                n0VarI = this.this$0.i();
                resourceId = this.$downloadInfo.getResourceId();
                if (resourceId == null) {
                    resourceId = this.$downloadInfo.getUrl();
                }
                this.L$0 = null;
                this.L$1 = null;
                this.label = 4;
                if (n0VarI.b(resourceId, this) == objF) {
                    return objF;
                }
                cover = this.$downloadInfo.getCover();
                if (cover != null) {
                    int iA6 = a0.a(120.0f);
                    ej.f.a aVar6 = ej.f.f61882a;
                    ej.f.a.j(aVar6, ej.f.a.e(aVar6, cover, iA6, false, true, 4, null), cover, iA6, null, 8, null);
                }
            }
        } catch (Throwable th2) {
            lg.a.f68839a.c("DownloadImp-ResponseImpl", "createOrUpdateDownloadInfo, insert ranges error:" + th2, true);
        }
        downloadResponseImpl = this.this$0;
        downloadBean = this.$downloadInfo;
        this.L$0 = null;
        this.L$1 = null;
        this.label = 5;
        if (downloadResponseImpl.m(downloadBean, this) == objF) {
            return objF;
        }
        return Unit.f67061a;
    }
}
