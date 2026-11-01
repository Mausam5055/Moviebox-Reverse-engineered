package com.transsion.push.feature.toolbar;

import android.graphics.Bitmap;
import ej.f;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.n;
import kotlinx.coroutines.n0;
import oh.c;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "Landroid/graphics/Bitmap;", "<anonymous>", "(Lkotlinx/coroutines/n0;)Landroid/graphics/Bitmap;"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.push.feature.toolbar.ToolbarNotificationUtils$loadImageAsBitmap$2", f = "ToolbarNotificationUtils.kt", l = {500}, m = "invokeSuspend")
@SourceDebugExtension
final class ToolbarNotificationUtils$loadImageAsBitmap$2 extends SuspendLambda implements Function2<n0, Continuation<? super Bitmap>, Object> {
    final /* synthetic */ int $dp20;
    final /* synthetic */ String $url;
    int I$0;
    Object L$0;
    int label;

    static final class a implements Function1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ n f50841a;

        a(n nVar) {
            this.f50841a = nVar;
        }

        public final void a(Bitmap bitmap) {
            this.f50841a.resume(bitmap, (Function1) null);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a((Bitmap) obj);
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ToolbarNotificationUtils$loadImageAsBitmap$2(String str, int i11, Continuation<? super ToolbarNotificationUtils$loadImageAsBitmap$2> continuation) {
        super(2, continuation);
        this.$url = str;
        this.$dp20 = i11;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ToolbarNotificationUtils$loadImageAsBitmap$2(this.$url, this.$dp20, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Bitmap> continuation) {
        return ((ToolbarNotificationUtils$loadImageAsBitmap$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            String str = this.$url;
            int i12 = this.$dp20;
            this.L$0 = str;
            this.I$0 = i12;
            this.label = 1;
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.c(this), 1);
            cancellableContinuationImpl.initCancellability();
            c.f71017a.b(f.a.e(f.f61882a, str, i12, false, true, 4, null), new a(cancellableContinuationImpl));
            obj = cancellableContinuationImpl.getResult();
            if (obj == IntrinsicsKt.f()) {
                DebugProbesKt.c(this);
            }
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return obj;
    }
}
