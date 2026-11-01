package com.transsion.subtitle;

import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import java.util.Iterator;
import java.util.List;
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
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.subtitle.VideoSubtitleControl$downloadListener$1$onSaveDownload$1", f = "VideoSubtitleControl.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension
final class VideoSubtitleControl$downloadListener$1$onSaveDownload$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ SubtitleDownloadTable $bean;
    int label;
    final /* synthetic */ VideoSubtitleControl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    VideoSubtitleControl$downloadListener$1$onSaveDownload$1(VideoSubtitleControl videoSubtitleControl, SubtitleDownloadTable subtitleDownloadTable, Continuation<? super VideoSubtitleControl$downloadListener$1$onSaveDownload$1> continuation) {
        super(2, continuation);
        this.this$0 = videoSubtitleControl;
        this.$bean = subtitleDownloadTable;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new VideoSubtitleControl$downloadListener$1$onSaveDownload$1(this.this$0, this.$bean, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((VideoSubtitleControl$downloadListener$1$onSaveDownload$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object next;
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        List list = this.this$0.f54712l;
        SubtitleDownloadTable subtitleDownloadTable = this.$bean;
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            eu.a aVar = (eu.a) next;
            if (Intrinsics.c(aVar.b().getId(), subtitleDownloadTable.getId()) && aVar.b().getResourceStreamType() == subtitleDownloadTable.getResourceStreamType()) {
                break;
            }
        }
        VideoSubtitleControl videoSubtitleControl = this.this$0;
        SubtitleDownloadTable subtitleDownloadTable2 = this.$bean;
        if (((eu.a) next) == null) {
            videoSubtitleControl.f54712l.add(new eu.a(subtitleDownloadTable2));
            videoSubtitleControl.f54709i.invoke(videoSubtitleControl.f54712l);
        }
        return Unit.f67061a;
    }
}
