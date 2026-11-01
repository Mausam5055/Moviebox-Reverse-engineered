package com.transsion.shorttv.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.shorttv.bean.Media;
import com.transsion.shorttv.bean.ShortTVItem;
import com.transsion.shorttv.bean.ShortTvInfoEpisodeList;
import com.transsion.shorttv.bean.Subject;
import com.transsion.shorttv.bean.Video;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.shorttv.viewmodel.ShortTvViewModel$getShortTvEpisodesInfo$2", f = "ShortTvViewModel.kt", l = {481, 487}, m = "invokeSuspend")
@SourceDebugExtension
final class ShortTvViewModel$getShortTvEpisodesInfo$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ int $selectEp;
    final /* synthetic */ int $start;
    final /* synthetic */ String $subjectId;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    Object L$6;
    int label;
    final /* synthetic */ ShortTvViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ShortTvViewModel$getShortTvEpisodesInfo$2(int i11, ShortTvViewModel shortTvViewModel, String str, int i12, Continuation<? super ShortTvViewModel$getShortTvEpisodesInfo$2> continuation) {
        super(2, continuation);
        this.$start = i11;
        this.this$0 = shortTvViewModel;
        this.$subjectId = str;
        this.$selectEp = i12;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ShortTvViewModel$getShortTvEpisodesInfo$2(this.$start, this.this$0, this.$subjectId, this.$selectEp, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ShortTvViewModel$getShortTvEpisodesInfo$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x00b7 A[Catch: all -> 0x0033, TryCatch #0 {all -> 0x0033, blocks: (B:7:0x002b, B:39:0x00f5, B:41:0x00f9, B:26:0x00b1, B:28:0x00b7, B:30:0x00cc, B:32:0x00d2, B:34:0x00d8, B:36:0x00de, B:43:0x00fe, B:14:0x0046, B:21:0x0096, B:23:0x00a1, B:25:0x00a7, B:17:0x0078), top: B:77:0x000b }] */
    /* JADX WARN: Code duplicated, block: B:48:0x011b  */
    /* JADX WARN: Code duplicated, block: B:50:0x0126  */
    /* JADX WARN: Code duplicated, block: B:51:0x012b  */
    /* JADX WARN: Code duplicated, block: B:54:0x0134  */
    /* JADX WARN: Code duplicated, block: B:55:0x0139  */
    /* JADX WARN: Code duplicated, block: B:58:0x0145  */
    /* JADX WARN: Code duplicated, block: B:67:0x0173  */
    /* JADX WARN: Code duplicated, block: B:69:0x0180  */
    /* JADX WARN: Code duplicated, block: B:70:0x0187  */
    /* JADX WARN: Code duplicated, block: B:74:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:80:0x00fd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:81:0x00cc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:84:0x00b1 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x00f9, code lost:
    
        r1 = null;
     */
    /* JADX WARN: Instruction removed from duplicated block: B:74:0x01b1, please report this as an issue */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00f2 -> B:39:0x00f5). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objM454constructorimpl;
        ShortTvViewModel shortTvViewModel;
        String str;
        int i11;
        ShortTvViewModel shortTvViewModel2;
        String str2;
        int i12;
        BaseDto baseDto;
        ShortTvInfoEpisodeList shortTvInfoEpisodeList;
        List<ShortTVItem> items;
        ShortTvInfoEpisodeList shortTvInfoEpisodeList2;
        Subject info;
        List listU0;
        List<ShortTVItem> list;
        String str3;
        Object objC;
        ShortTvViewModel shortTvViewModel3;
        List<ShortTVItem> items2;
        ShortTvViewModel shortTvViewModel4;
        Iterator it;
        String str4;
        Object obj2;
        Media video;
        Video videoAddress;
        qs.d dVarS0;
        Object objA;
        Object objF = IntrinsicsKt.f();
        int i13 = this.label;
        try {
            if (i13 != 0) {
                if (i13 == 1) {
                    String str5 = (String) this.L$1;
                    shortTvViewModel3 = (ShortTvViewModel) this.L$0;
                    ResultKt.b(obj);
                    str3 = str5;
                    objC = obj;
                } else {
                    if (i13 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    Video video2 = (Video) this.L$6;
                    it = (Iterator) this.L$3;
                    obj2 = this.L$2;
                    str4 = (String) this.L$1;
                    shortTvViewModel4 = (ShortTvViewModel) this.L$0;
                    ResultKt.b(obj);
                    videoAddress = video2;
                    objA = obj;
                }
                String str6 = (String) objA;
                videoAddress.setUrl(str6);
                while (true) {
                    if (it.hasNext()) {
                        objC = obj2;
                        objM454constructorimpl = Result.m454constructorimpl((BaseDto) objC);
                        shortTvViewModel = this.this$0;
                        str = this.$subjectId;
                        i11 = this.$selectEp;
                        if (Result.m461isSuccessimpl(objM454constructorimpl)) {
                            baseDto = (BaseDto) objM454constructorimpl;
                            shortTvInfoEpisodeList = (ShortTvInfoEpisodeList) baseDto.getData();
                            if (shortTvInfoEpisodeList != null) {
                                items = shortTvInfoEpisodeList.getItems();
                            } else {
                                items = null;
                            }
                            shortTvInfoEpisodeList2 = (ShortTvInfoEpisodeList) baseDto.getData();
                            if (shortTvInfoEpisodeList2 != null) {
                                info = shortTvInfoEpisodeList2.getInfo();
                            } else {
                                info = null;
                            }
                            if (shortTvViewModel.j0().f() == null) {
                                shortTvViewModel.b1(info, items.get(0), 0L);
                                lg.a.C0828a.f(lg.a.f68839a, "ShortTvViewModel", "没有历史", false, 4, null);
                            }
                            if (shortTvViewModel.L0(items)) {
                                shortTvViewModel.f53697s.q(baseDto.getData());
                            }
                            if (items != null) {
                                listU0 = CollectionsKt.U0(items);
                            } else {
                                listU0 = null;
                            }
                            shortTvViewModel.X0(str, listU0);
                            shortTvViewModel.f53681c0.put(str + i11, Boxing.d(0));
                        }
                        shortTvViewModel2 = this.this$0;
                        str2 = this.$subjectId;
                        i12 = this.$selectEp;
                        if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
                            shortTvViewModel2.f53697s.q(null);
                            shortTvViewModel2.f53681c0.put(str2 + i12, Boxing.d(-1));
                        }
                        return Unit.f67061a;
                    }
                    ShortTVItem shortTVItem = (ShortTVItem) it.next();
                    zr.b.f79451a.d(shortTVItem);
                    int ep2 = shortTVItem.getEp();
                    video = shortTVItem.getVideo();
                    if (video == null && (videoAddress = video.getVideoAddress()) != null) {
                        String url = videoAddress.getUrl();
                        if (url == null || (dVarS0 = shortTvViewModel4.s0()) == null) {
                            str6 = null;
                        } else {
                            this.L$0 = shortTvViewModel4;
                            this.L$1 = str4;
                            this.L$2 = obj2;
                            this.L$3 = it;
                            this.L$4 = shortTVItem;
                            this.L$5 = videoAddress;
                            this.L$6 = videoAddress;
                            this.label = 2;
                            objA = dVarS0.a(str4, ep2, url, this);
                            if (objA == objF) {
                                return objF;
                            }
                            String str7 = (String) objA;
                        }
                        videoAddress.setUrl(str7);
                        if (it.hasNext()) {
                            objC = obj2;
                            objM454constructorimpl = Result.m454constructorimpl((BaseDto) objC);
                            shortTvViewModel = this.this$0;
                            str = this.$subjectId;
                            i11 = this.$selectEp;
                            if (Result.m461isSuccessimpl(objM454constructorimpl)) {
                                baseDto = (BaseDto) objM454constructorimpl;
                                shortTvInfoEpisodeList = (ShortTvInfoEpisodeList) baseDto.getData();
                                if (shortTvInfoEpisodeList != null) {
                                    items = shortTvInfoEpisodeList.getItems();
                                } else {
                                    items = null;
                                }
                                shortTvInfoEpisodeList2 = (ShortTvInfoEpisodeList) baseDto.getData();
                                if (shortTvInfoEpisodeList2 != null) {
                                    info = shortTvInfoEpisodeList2.getInfo();
                                } else {
                                    info = null;
                                }
                                if (shortTvViewModel.j0().f() == null && (list = items) != null && !list.isEmpty() && info != null) {
                                    shortTvViewModel.b1(info, items.get(0), 0L);
                                    lg.a.C0828a.f(lg.a.f68839a, "ShortTvViewModel", "没有历史", false, 4, null);
                                }
                                if (shortTvViewModel.L0(items)) {
                                    shortTvViewModel.f53697s.q(baseDto.getData());
                                }
                                if (items != null) {
                                    listU0 = CollectionsKt.U0(items);
                                } else {
                                    listU0 = null;
                                }
                                shortTvViewModel.X0(str, listU0);
                                shortTvViewModel.f53681c0.put(str + i11, Boxing.d(0));
                            }
                            shortTvViewModel2 = this.this$0;
                            str2 = this.$subjectId;
                            i12 = this.$selectEp;
                            if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
                                shortTvViewModel2.f53697s.q(null);
                                shortTvViewModel2.f53681c0.put(str2 + i12, Boxing.d(-1));
                            }
                            return Unit.f67061a;
                        }
                        ShortTVItem shortTVItem2 = (ShortTVItem) it.next();
                        zr.b.f79451a.d(shortTVItem2);
                        int ep3 = shortTVItem2.getEp();
                        video = shortTVItem2.getVideo();
                        if (video == null) {
                        }
                    }
                }
            } else {
                ResultKt.b(obj);
                lg.a.C0828a.f(lg.a.f68839a, "ShortTvViewModel", "getShortTvEpisodes start：" + this.$start + "  ", false, 4, null);
                ShortTvViewModel shortTvViewModel5 = this.this$0;
                str3 = this.$subjectId;
                int i14 = this.$start;
                Result.Companion companion = Result.INSTANCE;
                this.L$0 = shortTvViewModel5;
                this.L$1 = str3;
                this.label = 1;
                objC = os.a.C0875a.c(shortTvViewModel5.f53676a, str3, i14, i14 + 19, 0, null, this, 24, null);
                if (objC == objF) {
                    return objF;
                }
                shortTvViewModel3 = shortTvViewModel5;
            }
            ShortTvInfoEpisodeList shortTvInfoEpisodeList3 = (ShortTvInfoEpisodeList) ((BaseDto) objC).getData();
            if (shortTvInfoEpisodeList3 != null && (items2 = shortTvInfoEpisodeList3.getItems()) != null) {
                shortTvViewModel4 = shortTvViewModel3;
                it = items2.iterator();
                str4 = str3;
                obj2 = objC;
                while (true) {
                    if (it.hasNext()) {
                        ShortTVItem shortTVItem3 = (ShortTVItem) it.next();
                        zr.b.f79451a.d(shortTVItem3);
                        int ep4 = shortTVItem3.getEp();
                        video = shortTVItem3.getVideo();
                        if (video == null) {
                        }
                    } else {
                        objC = obj2;
                    }
                }
            }
            objM454constructorimpl = Result.m454constructorimpl((BaseDto) objC);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        shortTvViewModel = this.this$0;
        str = this.$subjectId;
        i11 = this.$selectEp;
        if (Result.m461isSuccessimpl(objM454constructorimpl)) {
            baseDto = (BaseDto) objM454constructorimpl;
            shortTvInfoEpisodeList = (ShortTvInfoEpisodeList) baseDto.getData();
            if (shortTvInfoEpisodeList != null) {
                items = shortTvInfoEpisodeList.getItems();
            } else {
                items = null;
            }
            shortTvInfoEpisodeList2 = (ShortTvInfoEpisodeList) baseDto.getData();
            if (shortTvInfoEpisodeList2 != null) {
                info = shortTvInfoEpisodeList2.getInfo();
            } else {
                info = null;
            }
            if (shortTvViewModel.j0().f() == null) {
                shortTvViewModel.b1(info, items.get(0), 0L);
                lg.a.C0828a.f(lg.a.f68839a, "ShortTvViewModel", "没有历史", false, 4, null);
            }
            if (shortTvViewModel.L0(items)) {
                shortTvViewModel.f53697s.q(baseDto.getData());
            }
            if (items != null) {
                listU0 = CollectionsKt.U0(items);
            } else {
                listU0 = null;
            }
            shortTvViewModel.X0(str, listU0);
            shortTvViewModel.f53681c0.put(str + i11, Boxing.d(0));
        }
        shortTvViewModel2 = this.this$0;
        str2 = this.$subjectId;
        i12 = this.$selectEp;
        if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
            shortTvViewModel2.f53697s.q(null);
            shortTvViewModel2.f53681c0.put(str2 + i12, Boxing.d(-1));
        }
        return Unit.f67061a;
    }
}
