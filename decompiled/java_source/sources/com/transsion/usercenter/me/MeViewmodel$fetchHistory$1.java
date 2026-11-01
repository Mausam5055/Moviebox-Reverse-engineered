package com.transsion.usercenter.me;

import com.transsion.baselib.db.video.ShortTVPlayDao;
import com.transsion.baselib.db.video.UGCVideoDetailPlayBean;
import com.transsion.baselib.db.video.UGCVideoDetailPlayDao;
import com.transsion.baselib.db.video.VideoDetailPlayBean;
import com.transsion.baselib.db.video.VideoDetailPlayDao;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.usercenter.me.MeViewmodel$fetchHistory$1", f = "MeViewmodel.kt", l = {150, 152, 153}, m = "invokeSuspend")
@SourceDebugExtension
final class MeViewmodel$fetchHistory$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    Object L$0;
    int label;
    final /* synthetic */ MeViewmodel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MeViewmodel$fetchHistory$1(MeViewmodel meViewmodel, Continuation<? super MeViewmodel$fetchHistory$1> continuation) {
        super(2, continuation);
        this.this$0 = meViewmodel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MeViewmodel$fetchHistory$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((MeViewmodel$fetchHistory$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0066  */
    /* JADX WARN: Code duplicated, block: B:25:0x006a  */
    /* JADX WARN: Code duplicated, block: B:27:0x0080 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:31:0x0099 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:32:0x009a  */
    /* JADX WARN: Code duplicated, block: B:35:0x009f  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        List listL;
        List list;
        List list2;
        List listL2;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 != 0) {
            if (i11 == 1) {
                ResultKt.b(obj);
            } else if (i11 == 2) {
                list = (List) this.L$0;
                ResultKt.b(obj);
                UGCVideoDetailPlayDao uGCVideoDetailPlayDaoL = this.this$0.L();
                int i12 = this.this$0.f56901j;
                this.L$0 = list;
                this.label = 3;
                obj = uGCVideoDetailPlayDaoL.d(0, i12, this);
                if (obj == objF) {
                    return objF;
                }
                list2 = list;
            } else {
                if (i11 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                list2 = (List) this.L$0;
                ResultKt.b(obj);
            }
            listL2 = (List) obj;
            if (listL2 == null) {
                listL2 = CollectionsKt.l();
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(list2);
            arrayList.addAll(listL2);
            List listI0 = CollectionsKt.I0(arrayList, new Comparator() { // from class: com.transsion.usercenter.me.MeViewmodel$fetchHistory$1$invokeSuspend$$inlined$sortedByDescending$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t11, T t12) {
                    long timeStamp;
                    long timeStamp2 = 0;
                    if (t12 instanceof VideoDetailPlayBean) {
                        timeStamp = ((VideoDetailPlayBean) t12).getTimeStamp();
                    } else {
                        timeStamp = t12 instanceof UGCVideoDetailPlayBean ? ((UGCVideoDetailPlayBean) t12).getTimeStamp() : 0L;
                    }
                    Long lValueOf = Long.valueOf(timeStamp);
                    if (t11 instanceof VideoDetailPlayBean) {
                        timeStamp2 = ((VideoDetailPlayBean) t11).getTimeStamp();
                    } else if (t11 instanceof UGCVideoDetailPlayBean) {
                        timeStamp2 = ((UGCVideoDetailPlayBean) t11).getTimeStamp();
                    }
                    return ComparisonsKt.d(lValueOf, Long.valueOf(timeStamp2));
                }
            });
            MeViewmodel meViewmodel = this.this$0;
            meViewmodel.f56903l = CollectionsKt.U0(CollectionsKt.K0(listI0, meViewmodel.f56901j));
            this.this$0.T();
            this.this$0.C().n(CollectionsKt.U0(this.this$0.f56903l));
            return Unit.f67061a;
        }
        ResultKt.b(obj);
        if (ak.o.f646a.i()) {
            listL = CollectionsKt.l();
        } else {
            VideoDetailPlayDao videoDetailPlayDaoM = this.this$0.M();
            int i13 = this.this$0.f56901j;
            this.label = 1;
            obj = videoDetailPlayDaoM.d(0, i13, this);
            if (obj == objF) {
                return objF;
            }
        }
        list = listL;
        if (ak.o.f646a.i()) {
            CollectionsKt.l();
        } else {
            ShortTVPlayDao shortTVPlayDaoK = this.this$0.K();
            int i14 = this.this$0.f56901j;
            this.L$0 = list;
            this.label = 2;
            obj = shortTVPlayDaoK.d(0, i14, this);
            if (obj == objF) {
                return objF;
            }
        }
        UGCVideoDetailPlayDao uGCVideoDetailPlayDaoL2 = this.this$0.L();
        int i15 = this.this$0.f56901j;
        this.L$0 = list;
        this.label = 3;
        obj = uGCVideoDetailPlayDaoL2.d(0, i15, this);
        if (obj == objF) {
            return objF;
        }
        list2 = list;
        listL2 = (List) obj;
        if (listL2 == null) {
            listL2 = CollectionsKt.l();
        }
        ArrayList arrayList2 = new ArrayList();
        arrayList2.addAll(list2);
        arrayList2.addAll(listL2);
        List listI1 = CollectionsKt.I0(arrayList2, new Comparator() { // from class: com.transsion.usercenter.me.MeViewmodel$fetchHistory$1$invokeSuspend$$inlined$sortedByDescending$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t11, T t12) {
                long timeStamp;
                long timeStamp2 = 0;
                if (t12 instanceof VideoDetailPlayBean) {
                    timeStamp = ((VideoDetailPlayBean) t12).getTimeStamp();
                } else {
                    timeStamp = t12 instanceof UGCVideoDetailPlayBean ? ((UGCVideoDetailPlayBean) t12).getTimeStamp() : 0L;
                }
                Long lValueOf = Long.valueOf(timeStamp);
                if (t11 instanceof VideoDetailPlayBean) {
                    timeStamp2 = ((VideoDetailPlayBean) t11).getTimeStamp();
                } else if (t11 instanceof UGCVideoDetailPlayBean) {
                    timeStamp2 = ((UGCVideoDetailPlayBean) t11).getTimeStamp();
                }
                return ComparisonsKt.d(lValueOf, Long.valueOf(timeStamp2));
            }
        });
        MeViewmodel meViewmodel2 = this.this$0;
        meViewmodel2.f56903l = CollectionsKt.U0(CollectionsKt.K0(listI1, meViewmodel2.f56901j));
        this.this$0.T();
        this.this$0.C().n(CollectionsKt.U0(this.this$0.f56903l));
        return Unit.f67061a;
        listL = (List) obj;
        if (listL == null) {
            listL = CollectionsKt.l();
        }
        list = listL;
        if (ak.o.f646a.i()) {
            CollectionsKt.l();
        } else {
            ShortTVPlayDao shortTVPlayDaoK2 = this.this$0.K();
            int i16 = this.this$0.f56901j;
            this.L$0 = list;
            this.label = 2;
            obj = shortTVPlayDaoK2.d(0, i16, this);
            if (obj == objF) {
                return objF;
            }
        }
        UGCVideoDetailPlayDao uGCVideoDetailPlayDaoL3 = this.this$0.L();
        int i17 = this.this$0.f56901j;
        this.L$0 = list;
        this.label = 3;
        obj = uGCVideoDetailPlayDaoL3.d(0, i17, this);
        if (obj == objF) {
            return objF;
        }
        list2 = list;
        listL2 = (List) obj;
        if (listL2 == null) {
            listL2 = CollectionsKt.l();
        }
        ArrayList arrayList3 = new ArrayList();
        arrayList3.addAll(list2);
        arrayList3.addAll(listL2);
        List listI2 = CollectionsKt.I0(arrayList3, new Comparator() { // from class: com.transsion.usercenter.me.MeViewmodel$fetchHistory$1$invokeSuspend$$inlined$sortedByDescending$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t11, T t12) {
                long timeStamp;
                long timeStamp2 = 0;
                if (t12 instanceof VideoDetailPlayBean) {
                    timeStamp = ((VideoDetailPlayBean) t12).getTimeStamp();
                } else {
                    timeStamp = t12 instanceof UGCVideoDetailPlayBean ? ((UGCVideoDetailPlayBean) t12).getTimeStamp() : 0L;
                }
                Long lValueOf = Long.valueOf(timeStamp);
                if (t11 instanceof VideoDetailPlayBean) {
                    timeStamp2 = ((VideoDetailPlayBean) t11).getTimeStamp();
                } else if (t11 instanceof UGCVideoDetailPlayBean) {
                    timeStamp2 = ((UGCVideoDetailPlayBean) t11).getTimeStamp();
                }
                return ComparisonsKt.d(lValueOf, Long.valueOf(timeStamp2));
            }
        });
        MeViewmodel meViewmodel3 = this.this$0;
        meViewmodel3.f56903l = CollectionsKt.U0(CollectionsKt.K0(listI2, meViewmodel3.f56901j));
        this.this$0.T();
        this.this$0.C().n(CollectionsKt.U0(this.this$0.f56903l));
        return Unit.f67061a;
    }
}
