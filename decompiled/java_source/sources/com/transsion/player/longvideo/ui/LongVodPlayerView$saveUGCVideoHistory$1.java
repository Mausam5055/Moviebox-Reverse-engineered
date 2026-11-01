package com.transsion.player.longvideo.ui;

import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.video.UGCVideoDetailPlayBean;
import com.transsion.baselib.db.video.UGCVideoDetailPlayDao;
import com.transsion.baselib.utils.PlayMode;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoBelongToCollection;
import com.transsion.ugcvideodetail.api.bean.UGCVideoCategory;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.player.longvideo.ui.LongVodPlayerView$saveUGCVideoHistory$1", f = "LongVodPlayerView.kt", l = {3116, 3154, 3160}, m = "invokeSuspend")
@SourceDebugExtension
final class LongVodPlayerView$saveUGCVideoHistory$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ LongVodPlayerView this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LongVodPlayerView$saveUGCVideoHistory$1(LongVodPlayerView longVodPlayerView, Continuation<? super LongVodPlayerView$saveUGCVideoHistory$1> continuation) {
        super(2, continuation);
        this.this$0 = longVodPlayerView;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LongVodPlayerView$saveUGCVideoHistory$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((LongVodPlayerView$saveUGCVideoHistory$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:102:0x019a  */
    /* JADX WARN: Code duplicated, block: B:104:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:115:0x01ca  */
    /* JADX WARN: Code duplicated, block: B:123:0x01e7  */
    /* JADX WARN: Code duplicated, block: B:131:0x0204  */
    /* JADX WARN: Code duplicated, block: B:139:0x0221  */
    /* JADX WARN: Code duplicated, block: B:142:0x022b  */
    /* JADX WARN: Code duplicated, block: B:143:0x0232  */
    /* JADX WARN: Code duplicated, block: B:146:0x0248  */
    /* JADX WARN: Code duplicated, block: B:149:0x02cf A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:150:0x02d0  */
    /* JADX WARN: Code duplicated, block: B:151:0x02d3  */
    /* JADX WARN: Code duplicated, block: B:153:0x0329 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:154:0x032a  */
    /* JADX WARN: Code duplicated, block: B:64:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:66:0x0110  */
    /* JADX WARN: Code duplicated, block: B:67:0x011c  */
    /* JADX WARN: Code duplicated, block: B:76:0x0136  */
    /* JADX WARN: Code duplicated, block: B:78:0x013e  */
    /* JADX WARN: Code duplicated, block: B:84:0x0157  */
    /* JADX WARN: Code duplicated, block: B:85:0x015e  */
    /* JADX WARN: Code duplicated, block: B:88:0x0168  */
    /* JADX WARN: Code duplicated, block: B:89:0x016f  */
    /* JADX WARN: Code duplicated, block: B:92:0x0179  */
    /* JADX WARN: Code duplicated, block: B:93:0x0180  */
    /* JADX WARN: Instruction removed from duplicated block: B:151:0x02d3, please report this as an issue */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        String ugcVideoId;
        DownloadBean downloadBeanD;
        String ugcVideoCollectionId;
        DownloadBean downloadBeanD2;
        Object objC;
        String str;
        String str2;
        UGCVideo uGCVideoU;
        UGCVideoBelongToCollection belongToCollection;
        UGCVideo uGCVideoU2;
        int i11;
        int iIntValue;
        DownloadBean downloadBeanD3;
        UGCVideoDetailPlayDao ugcVideoDetailPlayDao;
        long jCurrentTimeMillis;
        long j11;
        String str3;
        String str4;
        String str5;
        String str6;
        go.a aVar;
        Long lE;
        go.a aVar2;
        go.a aVar3;
        String str7;
        DownloadBean downloadBeanD4;
        go.a aVar4;
        String strC;
        go.a aVar5;
        String strS;
        go.a aVar6;
        String strB;
        go.a aVar7;
        go.a aVar8;
        String str8;
        DownloadBean downloadBeanD5;
        go.a aVar9;
        Integer id2;
        go.a aVar10;
        Integer id3;
        go.a aVar11;
        Integer id4;
        go.a aVar12;
        Integer id5;
        go.a aVar13;
        boolean zG;
        UGCVideoDetailPlayBean uGCVideoDetailPlayBean;
        UGCVideoDetailPlayDao ugcVideoDetailPlayDao2;
        UGCVideo uGCVideoU3;
        UGCVideoCategory cateLev4;
        UGCVideo uGCVideoU4;
        UGCVideoCategory cateLev3;
        UGCVideo uGCVideoU5;
        UGCVideoCategory cateLev2;
        UGCVideo uGCVideoU6;
        UGCVideoCategory cateLev1;
        UGCVideo uGCVideoU7;
        UGCVideo uGCVideoU8;
        UGCVideo uGCVideoU9;
        Object objF = IntrinsicsKt.f();
        int i12 = this.label;
        if (i12 != 0) {
            if (i12 == 1) {
                String str9 = (String) this.L$1;
                String str10 = (String) this.L$0;
                ResultKt.b(obj);
                objC = obj;
                str2 = str9;
                str = str10;
            } else {
                if (i12 != 2 && i12 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                str6 = (String) this.L$1;
                str5 = (String) this.L$0;
                ResultKt.b(obj);
            }
            my.e eVar = new my.e(true, false);
            AppScopeVMlProvider appScopeVMlProvider = AppScopeVMlProvider.INSTANCE;
            FlowEventBus flowEventBus = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
            String name = my.e.class.getName();
            Intrinsics.g(name, "getName(...)");
            flowEventBus.postEvent(name, eVar, 0L);
            my.g gVar = new my.g(str5, str6, this.this$0.playProgress);
            FlowEventBus flowEventBus2 = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
            String name2 = my.g.class.getName();
            Intrinsics.g(name2, "getName(...)");
            flowEventBus2.postEvent(name2, gVar, 0L);
            return Unit.f67061a;
        }
        ResultKt.b(obj);
        go.a aVar14 = this.this$0.curBean;
        if (aVar14 == null || (uGCVideoU2 = aVar14.u()) == null || (ugcVideoId = uGCVideoU2.getUgcVideoId()) == null) {
            go.a aVar15 = this.this$0.curBean;
            ugcVideoId = (aVar15 == null || (downloadBeanD = aVar15.d()) == null) ? null : downloadBeanD.getUgcVideoId();
            if (ugcVideoId == null) {
                return Unit.f67061a;
            }
        }
        go.a aVar16 = this.this$0.curBean;
        if (aVar16 == null || (uGCVideoU = aVar16.u()) == null || (belongToCollection = uGCVideoU.getBelongToCollection()) == null || (ugcVideoCollectionId = belongToCollection.getCollectionId()) == null) {
            go.a aVar17 = this.this$0.curBean;
            ugcVideoCollectionId = (aVar17 == null || (downloadBeanD2 = aVar17.d()) == null) ? null : downloadBeanD2.getUgcVideoCollectionId();
        }
        if (ugcVideoCollectionId == null) {
            ugcVideoCollectionId = UGCVideoDetailPlayBean.SINGLE_VIDEO_PREFIX + ugcVideoId;
        }
        UGCVideoDetailPlayDao ugcVideoDetailPlayDao3 = this.this$0.getUgcVideoDetailPlayDao();
        this.L$0 = ugcVideoId;
        this.L$1 = ugcVideoCollectionId;
        this.label = 1;
        objC = ugcVideoDetailPlayDao3.c(ugcVideoCollectionId, this);
        if (objC == objF) {
            return objF;
        }
        str = ugcVideoId;
        str2 = ugcVideoCollectionId;
        UGCVideoDetailPlayBean uGCVideoDetailPlayBean2 = (UGCVideoDetailPlayBean) objC;
        go.a aVar18 = this.this$0.curBean;
        if (aVar18 == null || (uGCVideoU9 = aVar18.u()) == null) {
            go.a aVar19 = this.this$0.curBean;
            Integer ugcVideoPosition = (aVar19 == null || (downloadBeanD3 = aVar19.d()) == null) ? null : downloadBeanD3.getUgcVideoPosition();
            if (ugcVideoPosition != null) {
                iIntValue = ugcVideoPosition.intValue();
            } else {
                i11 = 1;
            }
            if (uGCVideoDetailPlayBean2 == null) {
                long j12 = this.this$0.playProgress;
                long j13 = this.this$0.totalDuration;
                aVar = this.this$0.curBean;
                if (aVar != null) {
                    lE = Boxing.e(aVar.n());
                } else {
                    lE = null;
                }
                aVar2 = this.this$0.curBean;
                if (aVar2 != null || (uGCVideoU8 = aVar2.u()) == null || (name = uGCVideoU8.getTitle()) == null) {
                    aVar3 = this.this$0.curBean;
                    if (aVar3 != null || (downloadBeanD4 = aVar3.d()) == null) {
                        str7 = null;
                    } else {
                        String name3 = downloadBeanD4.getName();
                        str7 = name3;
                    }
                } else {
                    str7 = name3;
                }
                long jCurrentTimeMillis2 = System.currentTimeMillis();
                aVar4 = this.this$0.curBean;
                if (aVar4 != null) {
                    strC = aVar4.c();
                } else {
                    strC = null;
                }
                aVar5 = this.this$0.curBean;
                if (aVar5 != null) {
                    strS = aVar5.s();
                } else {
                    strS = null;
                }
                aVar6 = this.this$0.curBean;
                if (aVar6 != null) {
                    strB = aVar6.b();
                } else {
                    strB = null;
                }
                aVar7 = this.this$0.curBean;
                if (aVar7 != null || (uGCVideoU7 = aVar7.u()) == null || (ugcVideoType = uGCVideoU7.getCategory()) == null) {
                    aVar8 = this.this$0.curBean;
                    if (aVar8 != null || (downloadBeanD5 = aVar8.d()) == null) {
                        str8 = null;
                    } else {
                        String ugcVideoType = downloadBeanD5.getUgcVideoType();
                        str8 = ugcVideoType;
                    }
                } else {
                    str8 = ugcVideoType;
                }
                aVar9 = this.this$0.curBean;
                if (aVar9 != null || (uGCVideoU6 = aVar9.u()) == null || (cateLev1 = uGCVideoU6.getCateLev1()) == null) {
                    id2 = null;
                } else {
                    id2 = cateLev1.getId();
                }
                aVar10 = this.this$0.curBean;
                if (aVar10 != null || (uGCVideoU5 = aVar10.u()) == null || (cateLev2 = uGCVideoU5.getCateLev2()) == null) {
                    id3 = null;
                } else {
                    id3 = cateLev2.getId();
                }
                aVar11 = this.this$0.curBean;
                if (aVar11 != null || (uGCVideoU4 = aVar11.u()) == null || (cateLev3 = uGCVideoU4.getCateLev3()) == null) {
                    id4 = null;
                } else {
                    id4 = cateLev3.getId();
                }
                aVar12 = this.this$0.curBean;
                if (aVar12 != null || (uGCVideoU3 = aVar12.u()) == null || (cateLev4 = uGCVideoU3.getCateLev4()) == null) {
                    id5 = null;
                } else {
                    id5 = cateLev4.getId();
                }
                aVar13 = this.this$0.curBean;
                if (aVar13 != null) {
                    zG = aVar13.g();
                } else {
                    zG = false;
                }
                String value = PlayMode.STREAM.getValue();
                boolean z10 = this.this$0.isRewardUnlock;
                go.a aVar20 = this.this$0.curBean;
                uGCVideoDetailPlayBean = new UGCVideoDetailPlayBean(str2, str, j12, str7, strC, strS, i11, str8, id2, id3, id4, id5, jCurrentTimeMillis2, null, Boxing.e(j13), lE, strB, null, zG, value, null, null, null, 0L, Boxing.e(0L), Boxing.e(0L), false, z10, false, aVar20 != null ? aVar20.q() : null, null, null, null, null, null, ak.o.f646a.d(), -1063116800, 7, null);
                lg.a.C0828a.f(lg.a.f68839a, LongVodPlayerView.TAG, "saveUGCVideoHistory new,collectionId:" + str2 + ", ugcVideoId:" + str + " , progress " + this.this$0.playProgress, false, 4, null);
                ugcVideoDetailPlayDao2 = this.this$0.getUgcVideoDetailPlayDao();
                this.L$0 = str;
                this.L$1 = str2;
                this.label = 2;
                if (ugcVideoDetailPlayDao2.n(uGCVideoDetailPlayBean, this) == objF) {
                    return objF;
                }
                str5 = str;
                str6 = str2;
            } else {
                lg.a.C0828a.f(lg.a.f68839a, LongVodPlayerView.TAG, "saveUGCVideoHistory old,collectionId:" + str2 + ", ugcVideoId:" + str + ", progress " + this.this$0.playProgress, false, 4, null);
                ugcVideoDetailPlayDao = this.this$0.getUgcVideoDetailPlayDao();
                jCurrentTimeMillis = System.currentTimeMillis();
                j11 = this.this$0.playProgress;
                this.L$0 = str;
                this.L$1 = str2;
                this.label = 3;
                str3 = str;
                str4 = str2;
                if (ugcVideoDetailPlayDao.e(str2, str, jCurrentTimeMillis, j11, i11, this) == objF) {
                    return objF;
                }
                str5 = str3;
                str6 = str4;
            }
            my.e eVar2 = new my.e(true, false);
            AppScopeVMlProvider appScopeVMlProvider2 = AppScopeVMlProvider.INSTANCE;
            FlowEventBus flowEventBus3 = (FlowEventBus) appScopeVMlProvider2.getApplicationScopeViewModel(FlowEventBus.class);
            String name4 = my.e.class.getName();
            Intrinsics.g(name4, "getName(...)");
            flowEventBus3.postEvent(name4, eVar2, 0L);
            my.g gVar2 = new my.g(str5, str6, this.this$0.playProgress);
            FlowEventBus flowEventBus4 = (FlowEventBus) appScopeVMlProvider2.getApplicationScopeViewModel(FlowEventBus.class);
            String name5 = my.g.class.getName();
            Intrinsics.g(name5, "getName(...)");
            flowEventBus4.postEvent(name5, gVar2, 0L);
            return Unit.f67061a;
        }
        iIntValue = uGCVideoU9.videoUGCPosition();
        i11 = iIntValue;
        if (uGCVideoDetailPlayBean2 == null) {
            long j14 = this.this$0.playProgress;
            long j15 = this.this$0.totalDuration;
            aVar = this.this$0.curBean;
            if (aVar != null) {
                lE = Boxing.e(aVar.n());
            } else {
                lE = null;
            }
            aVar2 = this.this$0.curBean;
            if (aVar2 != null) {
                aVar3 = this.this$0.curBean;
                if (aVar3 != null) {
                }
                str7 = null;
            } else {
                aVar3 = this.this$0.curBean;
                if (aVar3 != null) {
                }
                str7 = null;
            }
            long jCurrentTimeMillis3 = System.currentTimeMillis();
            aVar4 = this.this$0.curBean;
            if (aVar4 != null) {
                strC = aVar4.c();
            } else {
                strC = null;
            }
            aVar5 = this.this$0.curBean;
            if (aVar5 != null) {
                strS = aVar5.s();
            } else {
                strS = null;
            }
            aVar6 = this.this$0.curBean;
            if (aVar6 != null) {
                strB = aVar6.b();
            } else {
                strB = null;
            }
            aVar7 = this.this$0.curBean;
            if (aVar7 != null) {
                aVar8 = this.this$0.curBean;
                if (aVar8 != null) {
                }
                str8 = null;
            } else {
                aVar8 = this.this$0.curBean;
                if (aVar8 != null) {
                }
                str8 = null;
            }
            aVar9 = this.this$0.curBean;
            if (aVar9 != null) {
                id2 = null;
            } else {
                id2 = null;
            }
            aVar10 = this.this$0.curBean;
            if (aVar10 != null) {
                id3 = null;
            } else {
                id3 = null;
            }
            aVar11 = this.this$0.curBean;
            if (aVar11 != null) {
                id4 = null;
            } else {
                id4 = null;
            }
            aVar12 = this.this$0.curBean;
            if (aVar12 != null) {
                id5 = null;
            } else {
                id5 = null;
            }
            aVar13 = this.this$0.curBean;
            if (aVar13 != null) {
                zG = aVar13.g();
            } else {
                zG = false;
            }
            String value2 = PlayMode.STREAM.getValue();
            boolean z11 = this.this$0.isRewardUnlock;
            go.a aVar21 = this.this$0.curBean;
            if (aVar21 != null) {
            }
            uGCVideoDetailPlayBean = new UGCVideoDetailPlayBean(str2, str, j14, str7, strC, strS, i11, str8, id2, id3, id4, id5, jCurrentTimeMillis3, null, Boxing.e(j15), lE, strB, null, zG, value2, null, null, null, 0L, Boxing.e(0L), Boxing.e(0L), false, z11, false, aVar21 != null ? aVar21.q() : null, null, null, null, null, null, ak.o.f646a.d(), -1063116800, 7, null);
            lg.a.C0828a.f(lg.a.f68839a, LongVodPlayerView.TAG, "saveUGCVideoHistory new,collectionId:" + str2 + ", ugcVideoId:" + str + " , progress " + this.this$0.playProgress, false, 4, null);
            ugcVideoDetailPlayDao2 = this.this$0.getUgcVideoDetailPlayDao();
            this.L$0 = str;
            this.L$1 = str2;
            this.label = 2;
            if (ugcVideoDetailPlayDao2.n(uGCVideoDetailPlayBean, this) == objF) {
                return objF;
            }
            str5 = str;
            str6 = str2;
        } else {
            lg.a.C0828a.f(lg.a.f68839a, LongVodPlayerView.TAG, "saveUGCVideoHistory old,collectionId:" + str2 + ", ugcVideoId:" + str + ", progress " + this.this$0.playProgress, false, 4, null);
            ugcVideoDetailPlayDao = this.this$0.getUgcVideoDetailPlayDao();
            jCurrentTimeMillis = System.currentTimeMillis();
            j11 = this.this$0.playProgress;
            this.L$0 = str;
            this.L$1 = str2;
            this.label = 3;
            str3 = str;
            str4 = str2;
            if (ugcVideoDetailPlayDao.e(str2, str, jCurrentTimeMillis, j11, i11, this) == objF) {
                return objF;
            }
            str5 = str3;
            str6 = str4;
        }
        my.e eVar3 = new my.e(true, false);
        AppScopeVMlProvider appScopeVMlProvider3 = AppScopeVMlProvider.INSTANCE;
        FlowEventBus flowEventBus5 = (FlowEventBus) appScopeVMlProvider3.getApplicationScopeViewModel(FlowEventBus.class);
        String name6 = my.e.class.getName();
        Intrinsics.g(name6, "getName(...)");
        flowEventBus5.postEvent(name6, eVar3, 0L);
        my.g gVar3 = new my.g(str5, str6, this.this$0.playProgress);
        FlowEventBus flowEventBus6 = (FlowEventBus) appScopeVMlProvider3.getApplicationScopeViewModel(FlowEventBus.class);
        String name7 = my.g.class.getName();
        Intrinsics.g(name7, "getName(...)");
        flowEventBus6.postEvent(name7, gVar3, 0L);
        return Unit.f67061a;
    }
}
