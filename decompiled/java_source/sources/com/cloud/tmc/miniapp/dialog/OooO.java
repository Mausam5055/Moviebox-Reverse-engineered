package com.cloud.tmc.miniapp.dialog;

import android.graphics.drawable.Drawable;
import androidx.appcompat.widget.AppCompatImageView;
import com.cloud.tmc.kernel.resource.IResourceProcessor;
import java.io.File;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes3.dex */
@DebugMetadata(c = "com.cloud.tmc.miniapp.dialog.BottomActionSheetDialog$ActionItemAdapter$ViewHolder$requestDrawable$1", f = "BottomActionSheetDialog.kt", l = {}, m = "invokeSuspend")
public final class OooO extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    public final /* synthetic */ OooO0o OooO00o;
    public final /* synthetic */ String OooO0O0;
    public final /* synthetic */ String OooO0OO;
    public final /* synthetic */ OooO0o.OooO00o OooO0Oo;
    public final /* synthetic */ Function1<Drawable, Unit> OooO0o0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public OooO(OooO0o oooO0o, String str, String str2, OooO0o.OooO00o oooO00o, Function1<? super Drawable, Unit> function1, Continuation<? super OooO> continuation) {
        super(2, continuation);
        this.OooO00o = oooO0o;
        this.OooO0O0 = str;
        this.OooO0OO = str2;
        this.OooO0Oo = oooO00o;
        this.OooO0o0 = function1;
    }

    public static final void OooO00o(Function1 function1, File file) {
        if (function1 != null) {
            function1.invoke(Drawable.createFromPath(file != null ? file.getAbsolutePath() : null));
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new OooO(this.OooO00o, this.OooO0O0, this.OooO0OO, this.OooO0Oo, this.OooO0o0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public Object invoke(Object obj, Object obj2) {
        return ((OooO) create((n0) obj, (Continuation) obj2)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        ResultKt.b(obj);
        Object value = this.OooO00o.OooO00o.getValue();
        Intrinsics.g(value, "<get-processor>(...)");
        final File file = ((IResourceProcessor) value).get(this.OooO0O0, this.OooO0OO);
        AppCompatImageView appCompatImageView = (AppCompatImageView) this.OooO0Oo.OooO0O0.getValue();
        if (appCompatImageView != null) {
            final Function1<Drawable, Unit> function1 = this.OooO0o0;
            Boxing.a(appCompatImageView.post(new Runnable() { // from class: com.cloud.tmc.miniapp.dialog.a
                @Override // java.lang.Runnable
                public final void run() {
                    OooO.OooO00o(function1, file);
                }
            }));
        }
        return Unit.f67061a;
    }
}
