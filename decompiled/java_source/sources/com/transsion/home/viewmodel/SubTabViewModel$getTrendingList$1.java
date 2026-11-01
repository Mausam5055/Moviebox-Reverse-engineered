package com.transsion.home.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.bean.TrendingRequestEntity;
import com.transsion.home.bean.TrendingRespData;
import com.transsion.home.bean.TrendingRespItem;
import com.vungle.ads.internal.protos.Sdk$SDKError;
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
import kotlinx.coroutines.n0;
import okhttp3.RequestBody;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.home.viewmodel.SubTabViewModel$getTrendingList$1", f = "SubTabViewModel.kt", l = {Sdk$SDKError.Reason.AD_RESPONSE_EMPTY_VALUE, Sdk$SDKError.Reason.AD_RESPONSE_TIMED_OUT_VALUE}, m = "invokeSuspend")
final class SubTabViewModel$getTrendingList$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ TrendingRequestEntity $requestEntity;
    final /* synthetic */ String $tabCode;
    final /* synthetic */ int $tabId;
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ SubTabViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SubTabViewModel$getTrendingList$1(TrendingRequestEntity trendingRequestEntity, SubTabViewModel subTabViewModel, String str, int i11, Continuation<? super SubTabViewModel$getTrendingList$1> continuation) {
        super(2, continuation);
        this.$requestEntity = trendingRequestEntity;
        this.this$0 = subTabViewModel;
        this.$tabCode = str;
        this.$tabId = i11;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        SubTabViewModel$getTrendingList$1 subTabViewModel$getTrendingList$1 = new SubTabViewModel$getTrendingList$1(this.$requestEntity, this.this$0, this.$tabCode, this.$tabId, continuation);
        subTabViewModel$getTrendingList$1.L$0 = obj;
        return subTabViewModel$getTrendingList$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((SubTabViewModel$getTrendingList$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:39:0x00bb A[Catch: Exception -> 0x001c, TryCatch #0 {Exception -> 0x001c, blocks: (B:7:0x0017, B:36:0x00ad, B:37:0x00af, B:39:0x00bb, B:41:0x00c7, B:43:0x00cd, B:45:0x00d7, B:47:0x0101, B:49:0x0109, B:52:0x0113, B:59:0x012e, B:61:0x0136, B:62:0x0139, B:51:0x010f, B:53:0x0118, B:55:0x0120, B:58:0x012a, B:57:0x0126, B:63:0x0145, B:14:0x002f, B:31:0x0092, B:17:0x003b, B:19:0x0045, B:23:0x0052, B:25:0x0072, B:27:0x007a, B:32:0x0095, B:22:0x004c), top: B:68:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x00c7 A[Catch: Exception -> 0x001c, TryCatch #0 {Exception -> 0x001c, blocks: (B:7:0x0017, B:36:0x00ad, B:37:0x00af, B:39:0x00bb, B:41:0x00c7, B:43:0x00cd, B:45:0x00d7, B:47:0x0101, B:49:0x0109, B:52:0x0113, B:59:0x012e, B:61:0x0136, B:62:0x0139, B:51:0x010f, B:53:0x0118, B:55:0x0120, B:58:0x012a, B:57:0x0126, B:63:0x0145, B:14:0x002f, B:31:0x0092, B:17:0x003b, B:19:0x0045, B:23:0x0052, B:25:0x0072, B:27:0x007a, B:32:0x0095, B:22:0x004c), top: B:68:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:47:0x0101 A[Catch: Exception -> 0x001c, TryCatch #0 {Exception -> 0x001c, blocks: (B:7:0x0017, B:36:0x00ad, B:37:0x00af, B:39:0x00bb, B:41:0x00c7, B:43:0x00cd, B:45:0x00d7, B:47:0x0101, B:49:0x0109, B:52:0x0113, B:59:0x012e, B:61:0x0136, B:62:0x0139, B:51:0x010f, B:53:0x0118, B:55:0x0120, B:58:0x012a, B:57:0x0126, B:63:0x0145, B:14:0x002f, B:31:0x0092, B:17:0x003b, B:19:0x0045, B:23:0x0052, B:25:0x0072, B:27:0x007a, B:32:0x0095, B:22:0x004c), top: B:68:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:49:0x0109 A[Catch: Exception -> 0x001c, TryCatch #0 {Exception -> 0x001c, blocks: (B:7:0x0017, B:36:0x00ad, B:37:0x00af, B:39:0x00bb, B:41:0x00c7, B:43:0x00cd, B:45:0x00d7, B:47:0x0101, B:49:0x0109, B:52:0x0113, B:59:0x012e, B:61:0x0136, B:62:0x0139, B:51:0x010f, B:53:0x0118, B:55:0x0120, B:58:0x012a, B:57:0x0126, B:63:0x0145, B:14:0x002f, B:31:0x0092, B:17:0x003b, B:19:0x0045, B:23:0x0052, B:25:0x0072, B:27:0x007a, B:32:0x0095, B:22:0x004c), top: B:68:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x010f A[Catch: Exception -> 0x001c, TryCatch #0 {Exception -> 0x001c, blocks: (B:7:0x0017, B:36:0x00ad, B:37:0x00af, B:39:0x00bb, B:41:0x00c7, B:43:0x00cd, B:45:0x00d7, B:47:0x0101, B:49:0x0109, B:52:0x0113, B:59:0x012e, B:61:0x0136, B:62:0x0139, B:51:0x010f, B:53:0x0118, B:55:0x0120, B:58:0x012a, B:57:0x0126, B:63:0x0145, B:14:0x002f, B:31:0x0092, B:17:0x003b, B:19:0x0045, B:23:0x0052, B:25:0x0072, B:27:0x007a, B:32:0x0095, B:22:0x004c), top: B:68:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:53:0x0118 A[Catch: Exception -> 0x001c, TryCatch #0 {Exception -> 0x001c, blocks: (B:7:0x0017, B:36:0x00ad, B:37:0x00af, B:39:0x00bb, B:41:0x00c7, B:43:0x00cd, B:45:0x00d7, B:47:0x0101, B:49:0x0109, B:52:0x0113, B:59:0x012e, B:61:0x0136, B:62:0x0139, B:51:0x010f, B:53:0x0118, B:55:0x0120, B:58:0x012a, B:57:0x0126, B:63:0x0145, B:14:0x002f, B:31:0x0092, B:17:0x003b, B:19:0x0045, B:23:0x0052, B:25:0x0072, B:27:0x007a, B:32:0x0095, B:22:0x004c), top: B:68:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:55:0x0120 A[Catch: Exception -> 0x001c, TryCatch #0 {Exception -> 0x001c, blocks: (B:7:0x0017, B:36:0x00ad, B:37:0x00af, B:39:0x00bb, B:41:0x00c7, B:43:0x00cd, B:45:0x00d7, B:47:0x0101, B:49:0x0109, B:52:0x0113, B:59:0x012e, B:61:0x0136, B:62:0x0139, B:51:0x010f, B:53:0x0118, B:55:0x0120, B:58:0x012a, B:57:0x0126, B:63:0x0145, B:14:0x002f, B:31:0x0092, B:17:0x003b, B:19:0x0045, B:23:0x0052, B:25:0x0072, B:27:0x007a, B:32:0x0095, B:22:0x004c), top: B:68:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:57:0x0126 A[Catch: Exception -> 0x001c, TryCatch #0 {Exception -> 0x001c, blocks: (B:7:0x0017, B:36:0x00ad, B:37:0x00af, B:39:0x00bb, B:41:0x00c7, B:43:0x00cd, B:45:0x00d7, B:47:0x0101, B:49:0x0109, B:52:0x0113, B:59:0x012e, B:61:0x0136, B:62:0x0139, B:51:0x010f, B:53:0x0118, B:55:0x0120, B:58:0x012a, B:57:0x0126, B:63:0x0145, B:14:0x002f, B:31:0x0092, B:17:0x003b, B:19:0x0045, B:23:0x0052, B:25:0x0072, B:27:0x007a, B:32:0x0095, B:22:0x004c), top: B:68:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:61:0x0136 A[Catch: Exception -> 0x001c, TryCatch #0 {Exception -> 0x001c, blocks: (B:7:0x0017, B:36:0x00ad, B:37:0x00af, B:39:0x00bb, B:41:0x00c7, B:43:0x00cd, B:45:0x00d7, B:47:0x0101, B:49:0x0109, B:52:0x0113, B:59:0x012e, B:61:0x0136, B:62:0x0139, B:51:0x010f, B:53:0x0118, B:55:0x0120, B:58:0x012a, B:57:0x0126, B:63:0x0145, B:14:0x002f, B:31:0x0092, B:17:0x003b, B:19:0x0045, B:23:0x0052, B:25:0x0072, B:27:0x007a, B:32:0x0095, B:22:0x004c), top: B:68:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:63:0x0145 A[Catch: Exception -> 0x001c, TRY_LEAVE, TryCatch #0 {Exception -> 0x001c, blocks: (B:7:0x0017, B:36:0x00ad, B:37:0x00af, B:39:0x00bb, B:41:0x00c7, B:43:0x00cd, B:45:0x00d7, B:47:0x0101, B:49:0x0109, B:52:0x0113, B:59:0x012e, B:61:0x0136, B:62:0x0139, B:51:0x010f, B:53:0x0118, B:55:0x0120, B:58:0x012a, B:57:0x0126, B:63:0x0145, B:14:0x002f, B:31:0x0092, B:17:0x003b, B:19:0x0045, B:23:0x0052, B:25:0x0072, B:27:0x007a, B:32:0x0095, B:22:0x004c), top: B:68:0x0009 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:63:0x0145, please report this as an issue */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        n0 n0Var;
        String strValueOf;
        SubTabViewModel subTabViewModel;
        BaseDto baseDto;
        TrendingRespData trendingRespData;
        Integer numD;
        TrendingRespData trendingRespData2;
        List<TrendingRespItem> listL;
        List<OperateItem> listL2;
        TrendingRespData trendingRespData3;
        TrendingRespData trendingRespData4;
        List<TrendingRespItem> listL3;
        List<TrendingRespItem> items;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                n0Var = (n0) this.L$0;
                TrendingRequestEntity trendingRequestEntity = this.$requestEntity;
                if (this.this$0.f45834g) {
                    strValueOf = this.$tabCode;
                    if (strValueOf == null) {
                        strValueOf = "";
                    }
                } else {
                    strValueOf = String.valueOf(this.$tabId);
                }
                trendingRequestEntity.setTabId(strValueOf);
                this.$requestEntity.setDisablePlaylist(Boxing.a(false));
                bh.b.a aVar = bh.b.f16471a;
                String strJ = com.blankj.utilcode.util.o.j(this.$requestEntity);
                Intrinsics.g(strJ, "toJson(...)");
                RequestBody requestBodyA = aVar.a(strJ);
                if (requestBodyA != null) {
                    SubTabViewModel subTabViewModel2 = this.this$0;
                    if (subTabViewModel2.f45834g) {
                        ol.e eVar = subTabViewModel2.f45832e;
                        String strA = vg.a.f77324a.a();
                        this.L$0 = n0Var;
                        this.L$1 = subTabViewModel2;
                        this.label = 1;
                        obj = eVar.d(strA, requestBodyA, this);
                        if (obj == objF) {
                            return objF;
                        }
                        subTabViewModel = subTabViewModel2;
                        baseDto = (BaseDto) obj;
                        if (Intrinsics.c(baseDto.getCode(), "0")) {
                            lg.a.C0828a c0828a = lg.a.f68839a;
                            trendingRespData = (TrendingRespData) baseDto.getData();
                            if (trendingRespData != null) {
                                numD = null;
                            } else {
                                numD = null;
                            }
                            lg.a.C0828a.f(c0828a, "SubTabViewModel", "success " + numD + " " + n0Var + "@PostListViewModel", false, 4, null);
                            if (subTabViewModel.f45834g) {
                                trendingRespData4 = (TrendingRespData) baseDto.getData();
                                if (trendingRespData4 != null) {
                                    listL3 = CollectionsKt.l();
                                } else {
                                    listL3 = CollectionsKt.l();
                                }
                                listL2 = subTabViewModel.m(listL3);
                            } else {
                                trendingRespData2 = (TrendingRespData) baseDto.getData();
                                if (trendingRespData2 != null) {
                                    listL = CollectionsKt.l();
                                } else {
                                    listL = CollectionsKt.l();
                                }
                                listL2 = subTabViewModel.l(listL);
                            }
                            trendingRespData3 = (TrendingRespData) baseDto.getData();
                            if (trendingRespData3 != null) {
                                trendingRespData3.setTransferData(listL2);
                            }
                            subTabViewModel.s().n(baseDto.getData());
                        } else {
                            lg.a.C0828a.f(lg.a.f68839a, "SubTabViewModel", "code " + baseDto.getCode() + " message " + baseDto.getMsg(), false, 4, null);
                        }
                    } else {
                        ol.e eVar2 = subTabViewModel2.f45832e;
                        String strA2 = vg.a.f77324a.a();
                        this.L$0 = n0Var;
                        this.L$1 = subTabViewModel2;
                        this.label = 2;
                        obj = eVar2.b(strA2, requestBodyA, this);
                        if (obj == objF) {
                            return objF;
                        }
                        subTabViewModel = subTabViewModel2;
                        baseDto = (BaseDto) obj;
                        if (Intrinsics.c(baseDto.getCode(), "0")) {
                            lg.a.C0828a c0828a2 = lg.a.f68839a;
                            trendingRespData = (TrendingRespData) baseDto.getData();
                            if (trendingRespData != null) {
                                numD = null;
                            } else {
                                numD = null;
                            }
                            lg.a.C0828a.f(c0828a2, "SubTabViewModel", "success " + numD + " " + n0Var + "@PostListViewModel", false, 4, null);
                            if (subTabViewModel.f45834g) {
                                trendingRespData4 = (TrendingRespData) baseDto.getData();
                                if (trendingRespData4 != null) {
                                    listL3 = CollectionsKt.l();
                                } else {
                                    listL3 = CollectionsKt.l();
                                }
                                listL2 = subTabViewModel.m(listL3);
                            } else {
                                trendingRespData2 = (TrendingRespData) baseDto.getData();
                                if (trendingRespData2 != null) {
                                    listL = CollectionsKt.l();
                                } else {
                                    listL = CollectionsKt.l();
                                }
                                listL2 = subTabViewModel.l(listL);
                            }
                            trendingRespData3 = (TrendingRespData) baseDto.getData();
                            if (trendingRespData3 != null) {
                                trendingRespData3.setTransferData(listL2);
                            }
                            subTabViewModel.s().n(baseDto.getData());
                        } else {
                            lg.a.C0828a.f(lg.a.f68839a, "SubTabViewModel", "code " + baseDto.getCode() + " message " + baseDto.getMsg(), false, 4, null);
                        }
                    }
                }
            } else if (i11 == 1) {
                subTabViewModel = (SubTabViewModel) this.L$1;
                n0Var = (n0) this.L$0;
                ResultKt.b(obj);
                baseDto = (BaseDto) obj;
                if (Intrinsics.c(baseDto.getCode(), "0")) {
                    lg.a.C0828a c0828a3 = lg.a.f68839a;
                    trendingRespData = (TrendingRespData) baseDto.getData();
                    if (trendingRespData != null) {
                        numD = null;
                    } else {
                        numD = null;
                    }
                    lg.a.C0828a.f(c0828a3, "SubTabViewModel", "success " + numD + " " + n0Var + "@PostListViewModel", false, 4, null);
                    if (subTabViewModel.f45834g) {
                        trendingRespData4 = (TrendingRespData) baseDto.getData();
                        if (trendingRespData4 != null) {
                            listL3 = CollectionsKt.l();
                        } else {
                            listL3 = CollectionsKt.l();
                        }
                        listL2 = subTabViewModel.m(listL3);
                    } else {
                        trendingRespData2 = (TrendingRespData) baseDto.getData();
                        if (trendingRespData2 != null) {
                            listL = CollectionsKt.l();
                        } else {
                            listL = CollectionsKt.l();
                        }
                        listL2 = subTabViewModel.l(listL);
                    }
                    trendingRespData3 = (TrendingRespData) baseDto.getData();
                    if (trendingRespData3 != null) {
                        trendingRespData3.setTransferData(listL2);
                    }
                    subTabViewModel.s().n(baseDto.getData());
                } else {
                    lg.a.C0828a.f(lg.a.f68839a, "SubTabViewModel", "code " + baseDto.getCode() + " message " + baseDto.getMsg(), false, 4, null);
                }
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                subTabViewModel = (SubTabViewModel) this.L$1;
                n0Var = (n0) this.L$0;
                ResultKt.b(obj);
                baseDto = (BaseDto) obj;
                if (Intrinsics.c(baseDto.getCode(), "0")) {
                    lg.a.C0828a c0828a4 = lg.a.f68839a;
                    trendingRespData = (TrendingRespData) baseDto.getData();
                    if (trendingRespData != null || (items = trendingRespData.getItems()) == null) {
                        numD = null;
                    } else {
                        numD = Boxing.d(items.size());
                    }
                    lg.a.C0828a.f(c0828a4, "SubTabViewModel", "success " + numD + " " + n0Var + "@PostListViewModel", false, 4, null);
                    if (subTabViewModel.f45834g) {
                        trendingRespData4 = (TrendingRespData) baseDto.getData();
                        if (trendingRespData4 != null || (listL3 = trendingRespData4.getItems()) == null) {
                            listL3 = CollectionsKt.l();
                        }
                        listL2 = subTabViewModel.m(listL3);
                    } else {
                        trendingRespData2 = (TrendingRespData) baseDto.getData();
                        if (trendingRespData2 != null || (listL = trendingRespData2.getItems()) == null) {
                            listL = CollectionsKt.l();
                        }
                        listL2 = subTabViewModel.l(listL);
                    }
                    trendingRespData3 = (TrendingRespData) baseDto.getData();
                    if (trendingRespData3 != null) {
                        trendingRespData3.setTransferData(listL2);
                    }
                    subTabViewModel.s().n(baseDto.getData());
                } else {
                    lg.a.C0828a.f(lg.a.f68839a, "SubTabViewModel", "code " + baseDto.getCode() + " message " + baseDto.getMsg(), false, 4, null);
                }
            }
        } catch (Exception e11) {
            lg.a.C0828a.f(lg.a.f68839a, "SubTabViewModel", String.valueOf(e11.getMessage()), false, 4, null);
            e11.printStackTrace();
            this.this$0.s().n(null);
        }
        return Unit.f67061a;
    }
}
