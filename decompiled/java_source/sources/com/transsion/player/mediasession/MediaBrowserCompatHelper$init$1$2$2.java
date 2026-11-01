package com.transsion.player.mediasession;

import android.app.Application;
import android.content.ComponentName;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.session.MediaControllerCompat;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.player.mediasession.MediaBrowserCompatHelper$init$1$2$2", f = "MediaBrowserCompatHelper.kt", l = {}, m = "invokeSuspend")
final class MediaBrowserCompatHelper$init$1$2$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function1<MediaControllerCompat.e, Unit> $callback;
    final /* synthetic */ Application $it;
    final /* synthetic */ MediaBrowserCompatHelper $this_runCatching;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    MediaBrowserCompatHelper$init$1$2$2(Function1<? super MediaControllerCompat.e, Unit> function1, MediaBrowserCompatHelper mediaBrowserCompatHelper, Application application, Continuation<? super MediaBrowserCompatHelper$init$1$2$2> continuation) {
        super(2, continuation);
        this.$callback = function1;
        this.$this_runCatching = mediaBrowserCompatHelper;
        this.$it = application;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MediaBrowserCompatHelper$init$1$2$2(this.$callback, this.$this_runCatching, this.$it, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((MediaBrowserCompatHelper$init$1$2$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        Function1<MediaControllerCompat.e, Unit> function1 = this.$callback;
        if (function1 != null) {
            Boxing.a(this.$this_runCatching.f48388f.add(function1));
        }
        this.$this_runCatching.f48386d = new MediaBrowserCompat(this.$it, new ComponentName(this.$it, (Class<?>) MediaService.class), this.$this_runCatching.f48385c, null);
        MediaBrowserCompat mediaBrowserCompat = this.$this_runCatching.f48386d;
        if (mediaBrowserCompat != null) {
            mediaBrowserCompat.a();
        }
        return Unit.f67061a;
    }
}
