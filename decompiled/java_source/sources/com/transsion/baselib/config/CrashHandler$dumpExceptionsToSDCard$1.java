package com.transsion.baselib.config;

import android.app.Application;
import com.google.android.gms.measurement.AppMeasurement;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.baselib.config.CrashHandler$dumpExceptionsToSDCard$1", f = "CrashHandler.kt", l = {}, m = "invokeSuspend")
final class CrashHandler$dumpExceptionsToSDCard$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Throwable $e;
    int label;
    final /* synthetic */ CrashHandler this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CrashHandler$dumpExceptionsToSDCard$1(CrashHandler crashHandler, Throwable th2, Continuation<? super CrashHandler$dumpExceptionsToSDCard$1> continuation) {
        super(2, continuation);
        this.this$0 = crashHandler;
        this.$e = th2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new CrashHandler$dumpExceptionsToSDCard$1(this.this$0, this.$e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((CrashHandler$dumpExceptionsToSDCard$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [T, java.io.PrintWriter] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        PrintWriter printWriter;
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        try {
            try {
                Application application = this.this$0.f43016b;
                if (application != null) {
                    Throwable th2 = this.$e;
                    String strC = mg.c.f69560a.c(application);
                    File file = new File(strC);
                    if (!file.exists()) {
                        file.mkdirs();
                    }
                    Date date = new Date(System.currentTimeMillis());
                    String str = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault()).format(date);
                    ?? printWriter2 = new PrintWriter(new BufferedWriter(new FileWriter(new File(strC + File.separator + AppMeasurement.CRASH_ORIGIN + str + ".txt"), true)));
                    objectRef.element = printWriter2;
                    String str2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault()).format(date);
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("begin crash ");
                    sb2.append(str2);
                    printWriter2.println(sb2.toString());
                    th2.printStackTrace((PrintWriter) objectRef.element);
                }
                printWriter = (PrintWriter) objectRef.element;
                if (printWriter != null) {
                    printWriter.close();
                }
            } catch (Exception e11) {
                e11.printStackTrace();
                printWriter = (PrintWriter) objectRef.element;
                if (printWriter != null) {
                }
            }
            return Unit.f67061a;
        } catch (Throwable th3) {
            PrintWriter printWriter3 = (PrintWriter) objectRef.element;
            if (printWriter3 != null) {
                printWriter3.close();
            }
            throw th3;
        }
    }
}
