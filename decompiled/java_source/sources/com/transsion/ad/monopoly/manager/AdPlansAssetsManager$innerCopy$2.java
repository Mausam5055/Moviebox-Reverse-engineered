package com.transsion.ad.monopoly.manager;

import android.text.TextUtils;
import com.blankj.utilcode.util.o;
import com.tencent.mmkv.MMKV;
import com.transsion.ad.monopoly.model.AdPlans;
import com.transsion.ad.monopoly.model.MbAdPlansBean;
import com.transsion.ad.monopoly.model.MbAdPlansDto;
import com.transsion.ad.strategy.f;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ad.monopoly.manager.AdPlansAssetsManager$innerCopy$2", f = "AdPlansAssetsManager.kt", l = {Sdk$SDKMetric.SDKMetricType.TEMPLATE_HTML_SIZE_VALUE, 44}, m = "invokeSuspend")
final class AdPlansAssetsManager$innerCopy$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    Object L$0;
    int label;

    AdPlansAssetsManager$innerCopy$2(Continuation<? super AdPlansAssetsManager$innerCopy$2> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new AdPlansAssetsManager$innerCopy$2(continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((AdPlansAssetsManager$innerCopy$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0077 A[Catch: all -> 0x0016, TryCatch #0 {all -> 0x0016, blocks: (B:7:0x0012, B:27:0x0068, B:29:0x0077, B:31:0x007d, B:33:0x0088, B:35:0x008e, B:37:0x0098, B:39:0x009e, B:40:0x00a2, B:43:0x00e0, B:13:0x0021, B:19:0x0035, B:21:0x003d, B:23:0x004b, B:41:0x00c5, B:42:0x00d3, B:16:0x0028), top: B:52:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:30:0x007c  */
    /* JADX WARN: Code duplicated, block: B:36:0x0097  */
    /* JADX WARN: Code duplicated, block: B:39:0x009e A[Catch: all -> 0x0016, TryCatch #0 {all -> 0x0016, blocks: (B:7:0x0012, B:27:0x0068, B:29:0x0077, B:31:0x007d, B:33:0x0088, B:35:0x008e, B:37:0x0098, B:39:0x009e, B:40:0x00a2, B:43:0x00e0, B:13:0x0021, B:19:0x0035, B:21:0x003d, B:23:0x004b, B:41:0x00c5, B:42:0x00d3, B:16:0x0028), top: B:52:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:49:0x00f8  */
    /* JADX WARN: Instruction removed from duplicated block: B:49:0x00f8, please report this as an issue */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objM454constructorimpl;
        Throwable thM457exceptionOrNullimpl;
        MbAdPlansDto mbAdPlansDto;
        MbAdPlansBean data;
        String version;
        MbAdPlansBean data2;
        Integer numD;
        List<AdPlans> adPlans;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 != 0) {
                if (i11 == 1) {
                    ResultKt.b(obj);
                } else {
                    if (i11 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    mbAdPlansDto = (MbAdPlansDto) this.L$0;
                    ResultKt.b(obj);
                }
                MMKV mmkvC = f.f42232a.c();
                data = mbAdPlansDto.getData();
                if (data != null) {
                    version = data.getVersion();
                } else {
                    version = null;
                }
                mmkvC.putString("non_ad_plan_version", version);
                AdPlansAssetsManager adPlansAssetsManager = AdPlansAssetsManager.f42149b;
                data2 = mbAdPlansDto.getData();
                if (data2 != null || (adPlans = data2.getAdPlans()) == null) {
                    numD = null;
                } else {
                    numD = Boxing.d(adPlans.size());
                }
                MbAdPlansBean data3 = mbAdPlansDto.getData();
                oi.b.a.c(adPlansAssetsManager, 4, "innerCopy() --> success --> adPlans?.size -- " + numD + " --> adPlans = " + (data3 != null ? data3.getAdPlans() : null), null, false, 12, null);
                objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
                thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
                if (thM457exceptionOrNullimpl != null) {
                    oi.b.a.c(AdPlansAssetsManager.f42149b, 6, "innerCopy() --> 保存本地数据异常 -- error error error --> it = " + thM457exceptionOrNullimpl, null, false, 12, null);
                }
                return Unit.f67061a;
            }
            ResultKt.b(obj);
            Result.Companion companion = Result.INSTANCE;
            AdPlansStorageManager adPlansStorageManager = AdPlansStorageManager.f42153a;
            this.label = 1;
            obj = adPlansStorageManager.j(this);
            if (obj == objF) {
                return objF;
            }
            if (((Number) obj).intValue() <= 0) {
                String strB = ti.f.f76255a.b("local_non_ad_plan.json");
                if (TextUtils.isEmpty(strB)) {
                    oi.b.a.c(AdPlansAssetsManager.f42149b, 6, "innerCopy() --> assets数据 -- 保存数据库失败 -- fail fail fail -- readAssets = null", null, false, 12, null);
                } else {
                    MbAdPlansDto mbAdPlansDto2 = (MbAdPlansDto) o.d(strB, MbAdPlansDto.class);
                    AdPlansAssetsManager adPlansAssetsManager2 = AdPlansAssetsManager.f42149b;
                    Intrinsics.e(mbAdPlansDto2);
                    MbAdPlansDto mbAdPlansDtoE = adPlansAssetsManager2.e(mbAdPlansDto2);
                    this.L$0 = mbAdPlansDtoE;
                    this.label = 2;
                    if (adPlansAssetsManager2.f(mbAdPlansDtoE, this) == objF) {
                        return objF;
                    }
                    mbAdPlansDto = mbAdPlansDtoE;
                    MMKV mmkvC2 = f.f42232a.c();
                    data = mbAdPlansDto.getData();
                    if (data != null) {
                        version = data.getVersion();
                    } else {
                        version = null;
                    }
                    mmkvC2.putString("non_ad_plan_version", version);
                    AdPlansAssetsManager adPlansAssetsManager3 = AdPlansAssetsManager.f42149b;
                    data2 = mbAdPlansDto.getData();
                    if (data2 != null) {
                        numD = null;
                    } else {
                        numD = null;
                    }
                    MbAdPlansBean data4 = mbAdPlansDto.getData();
                    if (data4 != null) {
                    }
                    oi.b.a.c(adPlansAssetsManager3, 4, "innerCopy() --> success --> adPlans?.size -- " + numD + " --> adPlans = " + (data4 != null ? data4.getAdPlans() : null), null, false, 12, null);
                }
            } else {
                oi.b.a.c(AdPlansAssetsManager.f42149b, 4, "innerCopy() --> 本地存在非标广告计划，不需要从assets下载", null, false, 12, null);
            }
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            oi.b.a.c(AdPlansAssetsManager.f42149b, 6, "innerCopy() --> 保存本地数据异常 -- error error error --> it = " + thM457exceptionOrNullimpl, null, false, 12, null);
        }
        return Unit.f67061a;
    }
}
