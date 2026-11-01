package com.transsion.ad.test.ad_config;

import android.text.TextUtils;
import androidx.recyclerview.widget.RecyclerView;
import com.tencent.mmkv.MMKV;
import com.transsion.ad.db.mcc.LocalMcc;
import com.transsion.ad.strategy.NationalInformationManager;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.ArrayList;
import java.util.List;
import ji.q;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.u0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ad.test.ad_config.TestAdMccActivity$loadData$1", f = "TestAdMccActivity.kt", l = {Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE, 138}, m = "invokeSuspend")
@SourceDebugExtension
final class TestAdMccActivity$loadData$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ TestAdMccActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TestAdMccActivity$loadData$1(TestAdMccActivity testAdMccActivity, Continuation<? super TestAdMccActivity$loadData$1> continuation) {
        super(2, continuation);
        this.this$0 = testAdMccActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new TestAdMccActivity$loadData$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((TestAdMccActivity$loadData$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        String string;
        q qVar;
        RecyclerView recyclerView;
        RecyclerView.m layoutManager;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 != 0) {
            if (i11 == 1) {
                ResultKt.b(obj);
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            qVar = this.this$0.binding;
            if (qVar != null && (recyclerView = qVar.f66168f) != null && (layoutManager = recyclerView.getLayoutManager()) != null) {
                layoutManager.scrollToPosition(this.this$0.checkedPosition);
            }
            return Unit.f67061a;
        }
        ResultKt.b(obj);
        NationalInformationManager nationalInformationManager = NationalInformationManager.f42224a;
        this.label = 1;
        obj = nationalInformationManager.c(this);
        if (obj == objF) {
            return objF;
        }
        List list = (List) obj;
        ArrayList arrayList = new ArrayList();
        MMKV mmkvC = bh.a.f16469a.c();
        String str = "";
        if (mmkvC != null && (string = mmkvC.getString("sp_code", "")) != null) {
            str = string;
        }
        this.this$0.i0(null);
        TestAdMccActivity testAdMccActivity = this.this$0;
        int i12 = 0;
        for (Object obj2 : list) {
            int i13 = i12 + 1;
            if (i12 < 0) {
                CollectionsKt.u();
            }
            LocalMcc localMcc = (LocalMcc) obj2;
            if (TextUtils.equals(localMcc.getMcc(), str)) {
                arrayList.add(new TestAdMccActivity.b(true, localMcc));
                testAdMccActivity.i0(localMcc);
                testAdMccActivity.checkedPosition = i12;
            } else {
                Boxing.a(arrayList.add(new TestAdMccActivity.b(false, localMcc)));
            }
            i12 = i13;
        }
        TestAdMccActivity.a aVar = this.this$0.nationalInformationAdapter;
        if (aVar != null) {
            aVar.n1(arrayList);
        }
        this.label = 2;
        if (u0.a(2000L, this) == objF) {
            return objF;
        }
        qVar = this.this$0.binding;
        if (qVar != null) {
            layoutManager.scrollToPosition(this.this$0.checkedPosition);
        }
        return Unit.f67061a;
    }
}
