package com.transsion.audio.viewmodel;

import android.text.TextUtils;
import com.transsion.audio.player.AudioPlayer;
import com.transsion.baselib.db.audio.AudioBean;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.audio.viewmodel.HistoryListManager$getAudioList$1", f = "HistoryListManager.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_VISIBILITY_VALUE, 67}, m = "invokeSuspend")
final class HistoryListManager$getAudioList$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ HistoryListManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    HistoryListManager$getAudioList$1(HistoryListManager historyListManager, Continuation<? super HistoryListManager$getAudioList$1> continuation) {
        super(2, continuation);
        this.this$0 = historyListManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new HistoryListManager$getAudioList$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((HistoryListManager$getAudioList$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0066  */
    /* JADX WARN: Code duplicated, block: B:26:0x0075  */
    /* JADX WARN: Code duplicated, block: B:27:0x007a  */
    /* JADX WARN: Code duplicated, block: B:38:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:39:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:43:0x0073 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:44:0x0085 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:45:0x0091 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:46:0x009f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:48:0x0060 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:49:0x0060 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:50:0x0060 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:51:0x0060 A[SYNTHETIC] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        List list;
        List list2;
        AudioBean audioBeanT;
        Iterator it;
        Integer numD;
        AudioBean audioBean;
        String audioUrl;
        jj.a aVarQ;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 != 0) {
            if (i11 == 1) {
                ResultKt.b(obj);
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                it = (Iterator) this.L$2;
                audioBeanT = (AudioBean) this.L$1;
                list2 = (List) this.L$0;
                ResultKt.b(obj);
            }
            while (it.hasNext()) {
                audioBean = (AudioBean) it.next();
                if (audioBean.getStatus() == 3) {
                    if (audioBeanT != null) {
                        audioUrl = audioBeanT.getAudioUrl();
                    } else {
                        audioUrl = null;
                    }
                    if (TextUtils.equals(audioUrl, audioBean.getAudioUrl())) {
                        continue;
                    } else {
                        audioBean.setStatus(4);
                        aVarQ = this.this$0.q();
                        if (aVarQ != null) {
                            this.L$0 = list2;
                            this.L$1 = audioBeanT;
                            this.L$2 = it;
                            this.label = 2;
                            if (aVarQ.h(audioBean, this) == objF) {
                                return objF;
                            }
                        } else {
                            continue;
                        }
                    }
                }
            }
            list = list2;
            this.this$0.p().q(list);
            lg.a.C0828a c0828a = lg.a.f68839a;
            if (list != null) {
                numD = Boxing.d(list.size());
            } else {
                numD = null;
            }
            lg.a.C0828a.g(c0828a, "get getAudioList success" + numD, false, 2, null);
            return Unit.f67061a;
        }
        ResultKt.b(obj);
        jj.a aVarQ2 = this.this$0.q();
        if (aVarQ2 != null) {
            this.label = 1;
            obj = aVarQ2.e(this);
            if (obj == objF) {
                return objF;
            }
        } else {
            list = null;
        }
        if (list != null && !list.isEmpty()) {
            list2 = list;
            audioBeanT = AudioPlayer.f42889i.a().t();
            it = list.iterator();
            while (it.hasNext()) {
                audioBean = (AudioBean) it.next();
                if (audioBean.getStatus() == 3) {
                    if (audioBeanT != null) {
                        audioUrl = audioBeanT.getAudioUrl();
                    } else {
                        audioUrl = null;
                    }
                    if (TextUtils.equals(audioUrl, audioBean.getAudioUrl())) {
                        audioBean.setStatus(4);
                        aVarQ = this.this$0.q();
                        if (aVarQ != null) {
                            this.L$0 = list2;
                            this.L$1 = audioBeanT;
                            this.L$2 = it;
                            this.label = 2;
                            if (aVarQ.h(audioBean, this) == objF) {
                                return objF;
                            }
                        } else {
                            continue;
                        }
                    } else {
                        continue;
                    }
                }
            }
            list = list2;
        }
        this.this$0.p().q(list);
        lg.a.C0828a c0828a2 = lg.a.f68839a;
        if (list != null) {
            numD = Boxing.d(list.size());
        } else {
            numD = null;
        }
        lg.a.C0828a.g(c0828a2, "get getAudioList success" + numD, false, 2, null);
        return Unit.f67061a;
        list = (List) obj;
        if (list != null) {
            list2 = list;
            audioBeanT = AudioPlayer.f42889i.a().t();
            it = list.iterator();
            while (it.hasNext()) {
                audioBean = (AudioBean) it.next();
                if (audioBean.getStatus() == 3) {
                    if (audioBeanT != null) {
                        audioUrl = audioBeanT.getAudioUrl();
                    } else {
                        audioUrl = null;
                    }
                    if (TextUtils.equals(audioUrl, audioBean.getAudioUrl())) {
                        audioBean.setStatus(4);
                        aVarQ = this.this$0.q();
                        if (aVarQ != null) {
                            this.L$0 = list2;
                            this.L$1 = audioBeanT;
                            this.L$2 = it;
                            this.label = 2;
                            if (aVarQ.h(audioBean, this) == objF) {
                                return objF;
                            }
                        } else {
                            continue;
                        }
                    } else {
                        continue;
                    }
                }
            }
            list = list2;
        }
        this.this$0.p().q(list);
        lg.a.C0828a c0828a3 = lg.a.f68839a;
        if (list != null) {
            numD = Boxing.d(list.size());
        } else {
            numD = null;
        }
        lg.a.C0828a.g(c0828a3, "get getAudioList success" + numD, false, 2, null);
        return Unit.f67061a;
    }
}
