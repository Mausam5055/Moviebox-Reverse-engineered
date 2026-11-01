package com.transsion.shorttv.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.shorttv.bean.Cover;
import com.transsion.shorttv.bean.DownloadItem;
import com.transsion.shorttv.bean.DownloadListBean;
import com.transsion.shorttv.bean.Media;
import com.transsion.shorttv.bean.Pager;
import com.transsion.shorttv.bean.ShortTVItem;
import com.transsion.shorttv.bean.ShortTvInfoEpisodeList;
import com.transsion.shorttv.bean.Subject;
import com.transsion.shorttv.bean.Video;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.shorttv.viewmodel.ShortTvDownloadViewModel$getEpisodeList$1", f = "ShortTvDownloadViewModel.kt", l = {112}, m = "invokeSuspend")
@SourceDebugExtension
final class ShortTvDownloadViewModel$getEpisodeList$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ int $endPosition;
    final /* synthetic */ int $startPosition;
    final /* synthetic */ String $subjectId;
    int label;
    final /* synthetic */ ShortTvDownloadViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ShortTvDownloadViewModel$getEpisodeList$1(ShortTvDownloadViewModel shortTvDownloadViewModel, String str, int i11, int i12, Continuation<? super ShortTvDownloadViewModel$getEpisodeList$1> continuation) {
        super(2, continuation);
        this.this$0 = shortTvDownloadViewModel;
        this.$subjectId = str;
        this.$startPosition = i11;
        this.$endPosition = i12;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ShortTvDownloadViewModel$getEpisodeList$1(this.this$0, this.$subjectId, this.$startPosition, this.$endPosition, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ShortTvDownloadViewModel$getEpisodeList$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        ShortTvInfoEpisodeList shortTvInfoEpisodeList;
        List<ShortTVItem> items;
        List tags;
        Integer subjectType;
        String title;
        Video videoAddress;
        Integer size;
        Video videoAddress2;
        List<ShortTVItem> items2;
        Object objC;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                lg.a.C0828a.f(lg.a.f68839a, "ShortTvDownload", "getShortTvEpisodeList---start", false, 4, null);
                os.a aVarK = this.this$0.k();
                String str = this.$subjectId;
                int i12 = this.$startPosition;
                int i13 = this.$endPosition;
                this.label = 1;
                objC = os.a.C0875a.c(aVarK, str, i12, i13, 0, null, this, 24, null);
                if (objC == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
                objC = obj;
            }
            BaseDto baseDto = (BaseDto) objC;
            shortTvInfoEpisodeList = Intrinsics.c(baseDto.getCode(), "0") ? (ShortTvInfoEpisodeList) baseDto.getData() : null;
        } catch (Exception unused) {
        }
        if (shortTvInfoEpisodeList != null) {
            shortTvInfoEpisodeList.setStartPosition(this.$startPosition);
        }
        if (shortTvInfoEpisodeList != null) {
            shortTvInfoEpisodeList.setEndPosition(this.$endPosition);
        }
        lg.a.C0828a.f(lg.a.f68839a, "ShortTvDownload", "getShortTvEpisodeList---end, size= " + ((shortTvInfoEpisodeList == null || (items2 = shortTvInfoEpisodeList.getItems()) == null) ? null : Boxing.d(items2.size())), false, 4, null);
        if (shortTvInfoEpisodeList == null || (items = shortTvInfoEpisodeList.getItems()) == null) {
            this.this$0.l().n(null);
            return Unit.f67061a;
        }
        ArrayList arrayList = new ArrayList();
        for (ShortTVItem shortTVItem : items) {
            String id2 = shortTVItem.getId();
            Subject info = shortTvInfoEpisodeList.getInfo();
            if (info == null || (title = info.getTitle()) == null) {
                title = "";
            }
            String str2 = title + " EP" + shortTVItem.getEp();
            Media video = shortTVItem.getVideo();
            String url = (video == null || (videoAddress2 = video.getVideoAddress()) == null) ? null : videoAddress2.getUrl();
            Media video2 = shortTVItem.getVideo();
            DownloadItem downloadItem = new DownloadItem(id2, str2, url, 2, (video2 == null || (videoAddress = video2.getVideoAddress()) == null || (size = videoAddress.getSize()) == null) ? null : Boxing.e(size.intValue()), "", shortTVItem.getId(), Boxing.d(shortTVItem.getSe()), shortTVItem.getSe(), shortTVItem.getEp(), 0, "", null, Boxing.d(0), null, 1024, null);
            downloadItem.setEpisodeItem(shortTVItem);
            arrayList.add(downloadItem);
        }
        Pager pager = shortTvInfoEpisodeList.getPager();
        Subject info2 = shortTvInfoEpisodeList.getInfo();
        Cover cover = info2 != null ? info2.getCover() : null;
        Subject info3 = shortTvInfoEpisodeList.getInfo();
        String subjectId = info3 != null ? info3.getSubjectId() : null;
        Subject info4 = shortTvInfoEpisodeList.getInfo();
        String title2 = info4 != null ? info4.getTitle() : null;
        Subject info5 = shortTvInfoEpisodeList.getInfo();
        int iIntValue = (info5 == null || (subjectType = info5.getSubjectType()) == null) ? 7 : subjectType.intValue();
        Subject info6 = shortTvInfoEpisodeList.getInfo();
        String title3 = info6 != null ? info6.getTitle() : null;
        Subject info7 = shortTvInfoEpisodeList.getInfo();
        String description = info7 != null ? info7.getDescription() : null;
        Subject info8 = shortTvInfoEpisodeList.getInfo();
        DownloadListBean downloadListBean = new DownloadListBean(arrayList, pager, cover, subjectId, null, title2, iIntValue, title3, Boxing.d(this.$startPosition), info8 != null ? Boxing.d(info8.getTotalEpisode()) : null, null, description, null, null, null, null, null, null, false, 0, 0, 2094080, null);
        int i14 = this.$startPosition;
        int i15 = this.$endPosition;
        downloadListBean.setStartPosition(i14);
        downloadListBean.setEndPosition(i15);
        Subject info9 = shortTvInfoEpisodeList.getInfo();
        downloadListBean.setGenre(info9 != null ? info9.getGenre() : null);
        Subject info10 = shortTvInfoEpisodeList.getInfo();
        downloadListBean.setTags((info10 == null || (tags = info10.getTags()) == null) ? null : CollectionsKt.U0(tags));
        Subject info11 = shortTvInfoEpisodeList.getInfo();
        downloadListBean.setReleaseDate(info11 != null ? info11.getReleaseDate() : null);
        Subject info12 = shortTvInfoEpisodeList.getInfo();
        downloadListBean.setShortTVFavInfo(info12 != null ? info12.getShortTVFavInfo() : null);
        this.this$0.l().n(downloadListBean);
        return Unit.f67061a;
    }
}
