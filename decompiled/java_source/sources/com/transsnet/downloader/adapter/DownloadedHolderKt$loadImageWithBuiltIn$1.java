package com.transsnet.downloader.adapter;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.widget.ImageView;
import com.transsion.baseui.R$mipmap;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.adapter.DownloadedHolderKt$loadImageWithBuiltIn$1", f = "DownloadedHolder.kt", l = {}, m = "invokeSuspend")
final class DownloadedHolderKt$loadImageWithBuiltIn$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Context $context;
    final /* synthetic */ ImageView $imageView;
    final /* synthetic */ String $url;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadedHolderKt$loadImageWithBuiltIn$1(Context context, String str, ImageView imageView, Continuation<? super DownloadedHolderKt$loadImageWithBuiltIn$1> continuation) {
        super(2, continuation);
        this.$context = context;
        this.$url = str;
        this.$imageView = imageView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(ImageView imageView, Bitmap bitmap) {
        imageView.setImageBitmap(bitmap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(ImageView imageView) {
        imageView.setImageResource(R$mipmap.ic_default_video);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadedHolderKt$loadImageWithBuiltIn$1(this.$context, this.$url, this.$imageView, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DownloadedHolderKt$loadImageWithBuiltIn$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        try {
            InputStream inputStreamOpen = this.$context.getAssets().open(this.$url);
            final ImageView imageView = this.$imageView;
            final Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamOpen);
            imageView.post(new Runnable() { // from class: com.transsnet.downloader.adapter.i0
                @Override // java.lang.Runnable
                public final void run() {
                    DownloadedHolderKt$loadImageWithBuiltIn$1.g(imageView, bitmapDecodeStream);
                }
            });
            Intrinsics.e(inputStreamOpen);
        } catch (Exception unused) {
            final ImageView imageView2 = this.$imageView;
            imageView2.post(new Runnable() { // from class: com.transsnet.downloader.adapter.j0
                @Override // java.lang.Runnable
                public final void run() {
                    DownloadedHolderKt$loadImageWithBuiltIn$1.h(imageView2);
                }
            });
        }
        return Unit.f67061a;
    }
}
