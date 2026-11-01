package com.transsion.home.viewmodel.preload;

import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.moviedetailapi.bean.Video;
import com.transsnet.downloader.manager.DownloadEsHelper;
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

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.home.viewmodel.preload.PreloadTrendingBuiltInHelper$copyVideoFiles$1", f = "PreloadTrendingBuiltInHelper.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension
final class PreloadTrendingBuiltInHelper$copyVideoFiles$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ List<PostSubjectItem> $list;
    int label;
    final /* synthetic */ PreloadTrendingBuiltInHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PreloadTrendingBuiltInHelper$copyVideoFiles$1(List<PostSubjectItem> list, PreloadTrendingBuiltInHelper preloadTrendingBuiltInHelper, Continuation<? super PreloadTrendingBuiltInHelper$copyVideoFiles$1> continuation) {
        super(2, continuation);
        this.$list = list;
        this.this$0 = preloadTrendingBuiltInHelper;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PreloadTrendingBuiltInHelper$copyVideoFiles$1(this.$list, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PreloadTrendingBuiltInHelper$copyVideoFiles$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Media media;
        List<Video> video;
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        String absolutePath = DownloadEsHelper.f59419m.a().g().getAbsolutePath();
        List<PostSubjectItem> list = this.$list;
        PreloadTrendingBuiltInHelper preloadTrendingBuiltInHelper = this.this$0;
        for (PostSubjectItem postSubjectItem : list) {
            if (postSubjectItem.getBuiltIn() && (media = postSubjectItem.getMedia()) != null && (video = media.getVideo()) != null && (!video.isEmpty())) {
                Media media2 = postSubjectItem.getMedia();
                List<Video> video2 = media2 != null ? media2.getVideo() : null;
                Intrinsics.e(video2);
                Video video3 = video2.get(0);
                String url = video3.getUrl();
                if (url != null) {
                    String title = postSubjectItem.getTitle();
                    if (title == null) {
                        Subject subject = postSubjectItem.getSubject();
                        String title2 = subject != null ? subject.getTitle() : null;
                        title = title2 == null ? "" : title2;
                    }
                    String str = title + ".mp4";
                    Intrinsics.e(absolutePath);
                    if (preloadTrendingBuiltInHelper.b(absolutePath, str, url)) {
                        video3.setUrl(absolutePath + "/" + str);
                        lg.a.C0828a.f(lg.a.f68839a, "copyFile", "copyFile success,new url = " + video3.getUrl() + " ", false, 4, null);
                    }
                }
            }
        }
        return Unit.f67061a;
    }
}
