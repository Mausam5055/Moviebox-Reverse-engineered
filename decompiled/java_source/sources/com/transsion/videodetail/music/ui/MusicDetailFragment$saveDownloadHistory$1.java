package com.transsion.videodetail.music.ui;

import com.transsion.baselib.db.download.DownloadBean;
import com.transsnet.downloader.manager.DownloadEsHelper;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.flow.event.sync.event.LocalVideoEvent;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.videodetail.music.ui.MusicDetailFragment$saveDownloadHistory$1", f = "MusicDetailFragment.kt", l = {1821}, m = "invokeSuspend")
@SourceDebugExtension
final class MusicDetailFragment$saveDownloadHistory$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ long $progress;
    long J$0;
    Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ MusicDetailFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MusicDetailFragment$saveDownloadHistory$1(MusicDetailFragment musicDetailFragment, long j11, Continuation<? super MusicDetailFragment$saveDownloadHistory$1> continuation) {
        super(2, continuation);
        this.this$0 = musicDetailFragment;
        this.$progress = j11;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MusicDetailFragment$saveDownloadHistory$1(this.this$0, this.$progress, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((MusicDetailFragment$saveDownloadHistory$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        String resourceId;
        String str;
        long j11;
        MusicDetailFragment musicDetailFragment;
        Long duration;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            DownloadBean downloadBean = this.this$0.downloadBean;
            if (downloadBean != null && (resourceId = downloadBean.getResourceId()) != null) {
                long j12 = this.$progress;
                MusicDetailFragment musicDetailFragment2 = this.this$0;
                DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f59419m.a();
                this.L$0 = musicDetailFragment2;
                this.L$1 = resourceId;
                this.J$0 = j12;
                this.label = 1;
                if (downloadEsHelperA.e0(resourceId, j12, this) == objF) {
                    return objF;
                }
                str = resourceId;
                j11 = j12;
                musicDetailFragment = musicDetailFragment2;
            }
            return Unit.f67061a;
        }
        if (i11 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        long j13 = this.J$0;
        String str2 = (String) this.L$1;
        musicDetailFragment = (MusicDetailFragment) this.L$0;
        ResultKt.b(obj);
        j11 = j13;
        str = str2;
        DownloadBean downloadBean2 = musicDetailFragment.downloadBean;
        LocalVideoEvent localVideoEvent = new LocalVideoEvent(str, j11, (downloadBean2 == null || (duration = downloadBean2.getDuration()) == null) ? 0L : duration.longValue(), false, false, 16, null);
        AppScopeVMlProvider appScopeVMlProvider = AppScopeVMlProvider.INSTANCE;
        FlowEventBus flowEventBus = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
        String name = LocalVideoEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, localVideoEvent, 0L);
        DownloadBean downloadBean3 = musicDetailFragment.downloadBean;
        boolean z10 = false;
        if (downloadBean3 != null && downloadBean3.isOutside()) {
            z10 = true;
        }
        my.e eVar = new my.e(true, z10);
        FlowEventBus flowEventBus2 = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
        String name2 = my.e.class.getName();
        Intrinsics.g(name2, "getName(...)");
        flowEventBus2.postEvent(name2, eVar, 0L);
        return Unit.f67061a;
    }
}
