package com.transsnet.downloader.manager;

import com.transsion.baselib.db.audio.AudioBean;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsnet.downloader.DownloadManagerApi;
import java.util.Iterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;
import lj.s0;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.manager.DownloadManagerImpl$deleteItem$1", f = "DownloadManagerImpl.kt", l = {1449, 1454, 1465, 1470, 1472}, m = "invokeSuspend")
@SourceDebugExtension
final class DownloadManagerImpl$deleteItem$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function1<Boolean, Unit> $callback;
    final /* synthetic */ DownloadBean $downloadInfo;
    Object L$0;
    int label;
    final /* synthetic */ DownloadManagerImpl this$0;

    /* JADX INFO: renamed from: com.transsnet.downloader.manager.DownloadManagerImpl$deleteItem$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.downloader.manager.DownloadManagerImpl$deleteItem$1$2", f = "DownloadManagerImpl.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function1<Boolean, Unit> $callback;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass2(Function1<? super Boolean, Unit> function1, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$callback = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$callback, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            Function1<Boolean, Unit> function1 = this.$callback;
            if (function1 == null) {
                return null;
            }
            function1.invoke(Boxing.a(true));
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    DownloadManagerImpl$deleteItem$1(DownloadBean downloadBean, DownloadManagerImpl downloadManagerImpl, Function1<? super Boolean, Unit> function1, Continuation<? super DownloadManagerImpl$deleteItem$1> continuation) {
        super(2, continuation);
        this.$downloadInfo = downloadBean;
        this.this$0 = downloadManagerImpl;
        this.$callback = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadManagerImpl$deleteItem$1(this.$downloadInfo, this.this$0, this.$callback, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DownloadManagerImpl$deleteItem$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00e6 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:37:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:41:0x0105 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:44:0x010a  */
    /* JADX WARN: Code duplicated, block: B:46:0x011b  */
    /* JADX WARN: Code duplicated, block: B:48:0x0123 A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Unit unit;
        a2 a2VarC;
        AnonymousClass2 anonymousClass2;
        jj.a aVarM0;
        AudioBean audioBean;
        jj.a aVarM1;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 != 0) {
            if (i11 == 1) {
                ResultKt.b(obj);
            } else if (i11 == 2) {
                unit = (Unit) this.L$0;
                ResultKt.b(obj);
                lg.a.C0828a.g(lg.a.f68839a, "get deleteItem success " + unit, false, 2, null);
                a2VarC = y0.c();
                anonymousClass2 = new AnonymousClass2(this.$callback, null);
                this.L$0 = null;
                this.label = 3;
                if (kotlinx.coroutines.i.g(a2VarC, anonymousClass2, this) == objF) {
                    return objF;
                }
                if (this.$downloadInfo.getType() == 1) {
                    String url = this.$downloadInfo.getUrl();
                    this.label = 4;
                    obj = aVarM0.c(url, this);
                    if (obj == objF) {
                        return objF;
                    }
                    audioBean = (AudioBean) obj;
                    if (audioBean != null) {
                        DownloadManagerImpl downloadManagerImpl = this.this$0;
                        audioBean.setReadProcess(Boxing.e(0L));
                        aVarM1 = downloadManagerImpl.m0();
                        if (aVarM1 != null) {
                            this.label = 5;
                            if (aVarM1.b(audioBean, this) == objF) {
                                return objF;
                            }
                        }
                    }
                }
            } else if (i11 == 3) {
                ResultKt.b(obj);
                if (this.$downloadInfo.getType() == 1 && (aVarM0 = this.this$0.m0()) != null) {
                    String url2 = this.$downloadInfo.getUrl();
                    this.label = 4;
                    obj = aVarM0.c(url2, this);
                    if (obj == objF) {
                        return objF;
                    }
                    audioBean = (AudioBean) obj;
                    if (audioBean != null) {
                        DownloadManagerImpl downloadManagerImpl2 = this.this$0;
                        audioBean.setReadProcess(Boxing.e(0L));
                        aVarM1 = downloadManagerImpl2.m0();
                        if (aVarM1 != null) {
                            this.label = 5;
                            if (aVarM1.b(audioBean, this) == objF) {
                                return objF;
                            }
                        }
                    }
                }
            } else if (i11 == 4) {
                ResultKt.b(obj);
                audioBean = (AudioBean) obj;
                if (audioBean != null) {
                    DownloadManagerImpl downloadManagerImpl3 = this.this$0;
                    audioBean.setReadProcess(Boxing.e(0L));
                    aVarM1 = downloadManagerImpl3.m0();
                    if (aVarM1 != null) {
                        this.label = 5;
                        if (aVarM1.b(audioBean, this) == objF) {
                            return objF;
                        }
                    }
                }
            } else {
                if (i11 != 5) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            DownloadManagerApi.B0(DownloadManagerApi.f58398j.a(), this.$downloadInfo.getSubjectId(), this.$downloadInfo.getResourceId(), this.$downloadInfo.isSeries(), false, this.$downloadInfo.isMultiresolution(), 8, null);
            return Unit.f67061a;
        }
        ResultKt.b(obj);
        DownloadBean downloadBean = this.$downloadInfo;
        downloadBean.setPreStatus(downloadBean.getStatus());
        this.$downloadInfo.setStatus(7);
        Set set = this.this$0.f59452r;
        DownloadBean downloadBean2 = this.$downloadInfo;
        Iterator it = set.iterator();
        while (it.hasNext()) {
            ((s0) it.next()).a(downloadBean2.getSubtitleResId());
        }
        DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f59419m.a();
        String resourceId = this.$downloadInfo.getResourceId();
        if (resourceId == null) {
            resourceId = this.$downloadInfo.getUrl();
        }
        String ugcVideoId = this.$downloadInfo.getUgcVideoId();
        String postId = this.$downloadInfo.getPostId();
        this.label = 1;
        if (downloadEsHelperA.l(resourceId, ugcVideoId, postId, this) == objF) {
            return objF;
        }
        unit = Unit.f67061a;
        lj.n0 n0VarR0 = this.this$0.r0();
        String resourceId2 = this.$downloadInfo.getResourceId();
        if (resourceId2 == null) {
            resourceId2 = this.$downloadInfo.getUrl();
        }
        this.L$0 = unit;
        this.label = 2;
        if (n0VarR0.b(resourceId2, this) == objF) {
            return objF;
        }
        lg.a.C0828a.g(lg.a.f68839a, "get deleteItem success " + unit, false, 2, null);
        a2VarC = y0.c();
        anonymousClass2 = new AnonymousClass2(this.$callback, null);
        this.L$0 = null;
        this.label = 3;
        if (kotlinx.coroutines.i.g(a2VarC, anonymousClass2, this) == objF) {
            return objF;
        }
        if (this.$downloadInfo.getType() == 1) {
            String url3 = this.$downloadInfo.getUrl();
            this.label = 4;
            obj = aVarM0.c(url3, this);
            if (obj == objF) {
                return objF;
            }
            audioBean = (AudioBean) obj;
            if (audioBean != null) {
                DownloadManagerImpl downloadManagerImpl4 = this.this$0;
                audioBean.setReadProcess(Boxing.e(0L));
                aVarM1 = downloadManagerImpl4.m0();
                if (aVarM1 != null) {
                    this.label = 5;
                    if (aVarM1.b(audioBean, this) == objF) {
                        return objF;
                    }
                }
            }
        }
        DownloadManagerApi.B0(DownloadManagerApi.f58398j.a(), this.$downloadInfo.getSubjectId(), this.$downloadInfo.getResourceId(), this.$downloadInfo.isSeries(), false, this.$downloadInfo.isMultiresolution(), 8, null);
        return Unit.f67061a;
    }
}
