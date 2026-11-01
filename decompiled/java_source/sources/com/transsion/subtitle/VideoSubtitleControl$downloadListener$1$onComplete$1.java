package com.transsion.subtitle;

import android.text.TextUtils;
import com.blankj.utilcode.util.Utils;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
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
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.subtitle.VideoSubtitleControl$downloadListener$1$onComplete$1", f = "VideoSubtitleControl.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension
final class VideoSubtitleControl$downloadListener$1$onComplete$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ SubtitleDownloadTable $stDownloadTable;
    int label;
    final /* synthetic */ VideoSubtitleControl this$0;
    final /* synthetic */ VideoSubtitleControl$downloadListener$1 this$1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    VideoSubtitleControl$downloadListener$1$onComplete$1(SubtitleDownloadTable subtitleDownloadTable, VideoSubtitleControl videoSubtitleControl, VideoSubtitleControl$downloadListener$1 videoSubtitleControl$downloadListener$1, Continuation<? super VideoSubtitleControl$downloadListener$1$onComplete$1> continuation) {
        super(2, continuation);
        this.$stDownloadTable = subtitleDownloadTable;
        this.this$0 = videoSubtitleControl;
        this.this$1 = videoSubtitleControl$downloadListener$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new VideoSubtitleControl$downloadListener$1$onComplete$1(this.$stDownloadTable, this.this$0, this.this$1, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((VideoSubtitleControl$downloadListener$1$onComplete$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        String resourceId = this.$stDownloadTable.getResourceId();
        DownloadBean downloadBean = this.this$0.f54716p;
        if (!TextUtils.equals(resourceId, downloadBean != null ? downloadBean.getSubtitleResId() : null)) {
            a.f54738a.a(this.this$0.getClass().getSimpleName() + " --> onComplete() --> 字幕下载成功，不是当前视频，不做处理");
            return Unit.f67061a;
        }
        Function1 function1 = this.this$0.f54710j;
        if (function1 != null) {
            function1.invoke(Utils.a().getString(R$string.subtitle_downloaded_successfully));
        }
        eu.a aVar = new eu.a(this.$stDownloadTable);
        Function3 function3 = this.this$0.f54707g;
        String lanName = this.$stDownloadTable.getLanName();
        if (lanName == null) {
            lanName = "";
        }
        String lan = this.$stDownloadTable.getLan();
        if (lan == null) {
            lan = "";
        }
        function3.invoke(lanName, lan, Boxing.d(this.$stDownloadTable.getType()));
        if (this.this$0.G) {
            this.this$1.e(aVar);
        } else {
            this.this$1.h(aVar);
        }
        if (aVar.b().getIsSetImmediately()) {
            this.this$0.W(aVar);
        }
        this.this$1.g();
        Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        booleanRef.element = true;
        for (eu.a aVar2 : this.this$0.f54712l) {
            if (Intrinsics.c(aVar2.b().getId(), aVar.b().getId())) {
                booleanRef.element = false;
                aVar2.h(aVar.b());
            }
        }
        if (booleanRef.element) {
            aVar.l(true);
            aVar.b().setStatus(5);
            this.this$0.f54712l.add(aVar);
            this.this$0.f54709i.invoke(this.this$0.f54712l);
            a.f54738a.a(this.this$0.getClass().getSimpleName() + " --> handleSetImmediately() --> 搜索字幕下载处理");
        }
        String string = com.transsion.baselib.report.launch.b.f43370a.b().getString("k_subtitle_language", "");
        if (aVar.b().getIsSetImmediately() || string == null || string.length() == 0) {
            this.this$0.a0(aVar);
        }
        return Unit.f67061a;
    }
}
