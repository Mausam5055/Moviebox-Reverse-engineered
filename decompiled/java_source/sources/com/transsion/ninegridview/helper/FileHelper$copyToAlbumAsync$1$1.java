package com.transsion.ninegridview.helper;

import android.content.Context;
import java.io.File;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ninegridview.helper.FileHelper$copyToAlbumAsync$1$1", f = "FileHelper.kt", l = {45}, m = "invokeSuspend")
final class FileHelper$copyToAlbumAsync$1$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Context $context;
    final /* synthetic */ File $file;
    final /* synthetic */ String $fileName;
    final /* synthetic */ boolean $needToast;
    final /* synthetic */ String $relativePath;
    final /* synthetic */ FileHelper $this_runCatching;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FileHelper$copyToAlbumAsync$1$1(FileHelper fileHelper, File file, Context context, String str, String str2, boolean z10, Continuation<? super FileHelper$copyToAlbumAsync$1$1> continuation) {
        super(2, continuation);
        this.$this_runCatching = fileHelper;
        this.$file = file;
        this.$context = context;
        this.$fileName = str;
        this.$relativePath = str2;
        this.$needToast = z10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new FileHelper$copyToAlbumAsync$1$1(this.$this_runCatching, this.$file, this.$context, this.$fileName, this.$relativePath, this.$needToast, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((FileHelper$copyToAlbumAsync$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            FileHelper fileHelper = this.$this_runCatching;
            File file = this.$file;
            Context context = this.$context;
            String str = this.$fileName;
            String str2 = this.$relativePath;
            boolean z10 = this.$needToast;
            this.label = 1;
            if (fileHelper.e(file, context, str, str2, z10, this) == objF) {
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
