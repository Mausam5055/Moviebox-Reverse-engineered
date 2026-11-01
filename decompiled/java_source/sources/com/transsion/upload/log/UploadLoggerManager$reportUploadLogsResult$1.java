package com.transsion.upload.log;

import com.google.gson.JsonObject;
import com.transsion.upload.bean.LoggerBean;
import cw.a;
import cw.b;
import cw.c;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "com.transsion.upload.log.UploadLoggerManager$reportUploadLogsResult$1", f = "UploadLoggerManager.kt", l = {}, m = "invokeSuspend")
final class UploadLoggerManager$reportUploadLogsResult$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $bucket;
    final /* synthetic */ Function1<String, Unit> $callback;
    final /* synthetic */ String $sourcePath;
    final /* synthetic */ a $uploadCallback;
    final /* synthetic */ String $url;
    final /* synthetic */ String $zipFileName;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    UploadLoggerManager$reportUploadLogsResult$1(String str, String str2, a aVar, String str3, Function1<? super String, Unit> function1, String str4, Continuation<? super UploadLoggerManager$reportUploadLogsResult$1> continuation) {
        super(2, continuation);
        this.$url = str;
        this.$bucket = str2;
        this.$uploadCallback = aVar;
        this.$sourcePath = str3;
        this.$callback = function1;
        this.$zipFileName = str4;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UploadLoggerManager$reportUploadLogsResult$1(this.$url, this.$bucket, this.$uploadCallback, this.$sourcePath, this.$callback, this.$zipFileName, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((UploadLoggerManager$reportUploadLogsResult$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        try {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("logsZipUrl", this.$url);
            jsonObject.addProperty("tempBucket", this.$bucket);
            String str = this.$url;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("reportUploadLogs url=");
            sb2.append(str);
            b bVarC = c.f60931a.c();
            if (bVarC != null) {
                final a aVar = this.$uploadCallback;
                final String str2 = this.$sourcePath;
                final Function1<String, Unit> function1 = this.$callback;
                final String str3 = this.$zipFileName;
                bVarC.h(jsonObject, new Function1<LoggerBean, Unit>() { // from class: com.transsion.upload.log.UploadLoggerManager$reportUploadLogsResult$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Object invoke(Object obj2) {
                        invoke((LoggerBean) obj2);
                        return Unit.f67061a;
                    }

                    public final void invoke(LoggerBean loggerBean) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("reportUploadLogsResult code=");
                        sb3.append(loggerBean);
                        if (loggerBean == null) {
                            a aVar2 = aVar;
                            if (aVar2 != null) {
                                a.C0724a.a(aVar2, "", "", "", null, 8, null);
                                return;
                            }
                            return;
                        }
                        String logId = loggerBean.getLogId();
                        if (logId != null) {
                            Function1<String, Unit> function2 = function1;
                            if (function2 != null) {
                                function2.invoke(logId);
                            }
                        } else {
                            a aVar3 = aVar;
                            if (aVar3 != null) {
                                a.C0724a.a(aVar3, "", "", "", null, 8, null);
                            }
                        }
                        String str4 = str2;
                        if (str4 != null) {
                            UploadLoggerManager.f56636a.c(str4, str3);
                        }
                    }
                });
            }
        } catch (Exception e11) {
            e11.printStackTrace();
            e11.toString();
            a aVar2 = this.$uploadCallback;
            if (aVar2 != null) {
                e11.printStackTrace();
                a.C0724a.a(aVar2, "", Unit.f67061a.toString(), "", null, 8, null);
            }
        }
        return Unit.f67061a;
    }
}
