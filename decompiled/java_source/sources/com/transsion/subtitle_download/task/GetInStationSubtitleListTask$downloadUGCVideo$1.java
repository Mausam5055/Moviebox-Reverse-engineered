package com.transsion.subtitle_download.task;

import com.tn.lib.net.bean.BaseDto;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.subtitle_download.task.GetInStationSubtitleListTask$downloadUGCVideo$1", f = "GetInStationSubtitleListTask.kt", l = {Sdk$SDKError.Reason.MRAID_JS_WRITE_FAILED_VALUE, 141, 157}, m = "invokeSuspend")
final class GetInStationSubtitleListTask$downloadUGCVideo$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $collectionId;
    final /* synthetic */ String $idType;
    final /* synthetic */ String $ops;
    final /* synthetic */ String $resourceId;
    final /* synthetic */ Function1<Boolean, Unit> $resultCallback;
    final /* synthetic */ String $subjectId;
    final /* synthetic */ String $ugcVideoId;
    final /* synthetic */ String $videoResourceId;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    Object L$6;
    Object L$7;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    GetInStationSubtitleListTask$downloadUGCVideo$1(String str, String str2, String str3, String str4, String str5, String str6, Function1<? super Boolean, Unit> function1, String str7, Continuation<? super GetInStationSubtitleListTask$downloadUGCVideo$1> continuation) {
        super(2, continuation);
        this.$ugcVideoId = str;
        this.$videoResourceId = str2;
        this.$idType = str3;
        this.$subjectId = str4;
        this.$resourceId = str5;
        this.$collectionId = str6;
        this.$resultCallback = function1;
        this.$ops = str7;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        GetInStationSubtitleListTask$downloadUGCVideo$1 getInStationSubtitleListTask$downloadUGCVideo$1 = new GetInStationSubtitleListTask$downloadUGCVideo$1(this.$ugcVideoId, this.$videoResourceId, this.$idType, this.$subjectId, this.$resourceId, this.$collectionId, this.$resultCallback, this.$ops, continuation);
        getInStationSubtitleListTask$downloadUGCVideo$1.L$0 = obj;
        return getInStationSubtitleListTask$downloadUGCVideo$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((GetInStationSubtitleListTask$downloadUGCVideo$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:47:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:49:0x0221 A[RETURN] */
    /* JADX WARN: Instruction removed from duplicated block: B:47:0x01b1, please report this as an issue */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        Object obj2;
        String str6;
        Object objM454constructorimpl;
        String str7;
        String str8;
        String str9;
        String str10;
        String str11;
        String str12;
        Function1<Boolean, Unit> function1;
        Throwable thM457exceptionOrNullimpl;
        a2 a2VarC;
        GetInStationSubtitleListTask$downloadUGCVideo$1$2$1 getInStationSubtitleListTask$downloadUGCVideo$1$2$1;
        String str13;
        Object objA;
        String str14;
        String str15;
        String str16;
        String str17;
        Function1<Boolean, Unit> function2;
        String str18;
        String str19;
        BaseDto baseDto;
        com.transsion.subtitle_download.utils.b bVar;
        GetInStationSubtitleListTask getInStationSubtitleListTask;
        Function1<Boolean, Unit> function3;
        GetInStationSubtitleListTask$downloadUGCVideo$1 getInStationSubtitleListTask$downloadUGCVideo$1 = this;
        Object objF = IntrinsicsKt.f();
        int i11 = getInStationSubtitleListTask$downloadUGCVideo$1.label;
        try {
            try {
                try {
                    try {
                        try {
                            if (i11 != 0) {
                                if (i11 == 1) {
                                    String str20 = (String) getInStationSubtitleListTask$downloadUGCVideo$1.L$7;
                                    Function1<Boolean, Unit> function4 = (Function1) getInStationSubtitleListTask$downloadUGCVideo$1.L$6;
                                    String str21 = (String) getInStationSubtitleListTask$downloadUGCVideo$1.L$5;
                                    String str22 = (String) getInStationSubtitleListTask$downloadUGCVideo$1.L$4;
                                    String str23 = (String) getInStationSubtitleListTask$downloadUGCVideo$1.L$3;
                                    String str24 = (String) getInStationSubtitleListTask$downloadUGCVideo$1.L$2;
                                    str14 = (String) getInStationSubtitleListTask$downloadUGCVideo$1.L$1;
                                    String str25 = (String) getInStationSubtitleListTask$downloadUGCVideo$1.L$0;
                                    ResultKt.b(obj);
                                    str13 = str20;
                                    str17 = str24;
                                    str16 = str23;
                                    str19 = str22;
                                    function2 = function4;
                                    objA = obj;
                                    str18 = str21;
                                    str15 = str25;
                                } else if (i11 == 2) {
                                    ResultKt.b(obj);
                                    str = " -- resourceId = ";
                                    str2 = " -- videoResourceId = ";
                                    str3 = " -- ugcVideoId = ";
                                    str4 = " -- collectionId = ";
                                    str5 = " -- idType = ";
                                    obj2 = objF;
                                    str6 = " --> downloadUGCVideo() --> 请求接口获取字幕列表并进行处理 --> subjectId = ";
                                    objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
                                    str7 = getInStationSubtitleListTask$downloadUGCVideo$1.$subjectId;
                                    str8 = getInStationSubtitleListTask$downloadUGCVideo$1.$resourceId;
                                    str9 = getInStationSubtitleListTask$downloadUGCVideo$1.$videoResourceId;
                                    str10 = getInStationSubtitleListTask$downloadUGCVideo$1.$ugcVideoId;
                                    str11 = getInStationSubtitleListTask$downloadUGCVideo$1.$collectionId;
                                    str12 = getInStationSubtitleListTask$downloadUGCVideo$1.$idType;
                                    function1 = getInStationSubtitleListTask$downloadUGCVideo$1.$resultCallback;
                                    thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
                                    if (thM457exceptionOrNullimpl != null) {
                                        com.transsion.subtitle_download.utils.b.f55044a.b(GetInStationSubtitleListTask.f55013a.l() + str6 + str7 + str + str8 + str2 + str9 + str3 + str10 + str4 + str11 + str5 + str12 + " - --> 请求接口发生异常 --> Throwable.it = " + thM457exceptionOrNullimpl);
                                        a2VarC = y0.c();
                                        getInStationSubtitleListTask$downloadUGCVideo$1$2$1 = new GetInStationSubtitleListTask$downloadUGCVideo$1$2$1(function1, null);
                                        getInStationSubtitleListTask$downloadUGCVideo$1.L$0 = null;
                                        getInStationSubtitleListTask$downloadUGCVideo$1.L$1 = null;
                                        getInStationSubtitleListTask$downloadUGCVideo$1.L$2 = null;
                                        getInStationSubtitleListTask$downloadUGCVideo$1.L$3 = null;
                                        getInStationSubtitleListTask$downloadUGCVideo$1.L$4 = null;
                                        getInStationSubtitleListTask$downloadUGCVideo$1.L$5 = null;
                                        getInStationSubtitleListTask$downloadUGCVideo$1.L$6 = null;
                                        getInStationSubtitleListTask$downloadUGCVideo$1.L$7 = null;
                                        getInStationSubtitleListTask$downloadUGCVideo$1.label = 3;
                                        if (kotlinx.coroutines.i.g(a2VarC, getInStationSubtitleListTask$downloadUGCVideo$1$2$1, getInStationSubtitleListTask$downloadUGCVideo$1) == obj2) {
                                            return obj2;
                                        }
                                    }
                                } else {
                                    if (i11 != 3) {
                                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                    }
                                    ResultKt.b(obj);
                                }
                                return Unit.f67061a;
                            }
                            ResultKt.b(obj);
                            String str26 = getInStationSubtitleListTask$downloadUGCVideo$1.$ugcVideoId;
                            String str27 = getInStationSubtitleListTask$downloadUGCVideo$1.$videoResourceId;
                            String str28 = getInStationSubtitleListTask$downloadUGCVideo$1.$idType;
                            String str29 = getInStationSubtitleListTask$downloadUGCVideo$1.$subjectId;
                            String str30 = getInStationSubtitleListTask$downloadUGCVideo$1.$resourceId;
                            String str31 = getInStationSubtitleListTask$downloadUGCVideo$1.$collectionId;
                            Function1<Boolean, Unit> function5 = getInStationSubtitleListTask$downloadUGCVideo$1.$resultCallback;
                            String str32 = getInStationSubtitleListTask$downloadUGCVideo$1.$ops;
                            Result.Companion companion = Result.INSTANCE;
                            ku.a aVarK = GetInStationSubtitleListTask.f55013a.k();
                            String strA = vg.a.f77324a.a();
                            getInStationSubtitleListTask$downloadUGCVideo$1.L$0 = str26;
                            getInStationSubtitleListTask$downloadUGCVideo$1.L$1 = str27;
                            getInStationSubtitleListTask$downloadUGCVideo$1.L$2 = str28;
                            getInStationSubtitleListTask$downloadUGCVideo$1.L$3 = str29;
                            getInStationSubtitleListTask$downloadUGCVideo$1.L$4 = str30;
                            getInStationSubtitleListTask$downloadUGCVideo$1.L$5 = str31;
                            getInStationSubtitleListTask$downloadUGCVideo$1.L$6 = function5;
                            getInStationSubtitleListTask$downloadUGCVideo$1.L$7 = str32;
                            getInStationSubtitleListTask$downloadUGCVideo$1.label = 1;
                            str13 = str32;
                            objA = aVarK.a(str26, str27, str28, strA, this);
                            if (objA == objF) {
                                return objF;
                            }
                            str14 = str27;
                            str15 = str26;
                            str16 = str29;
                            str17 = str28;
                            function2 = function5;
                            str18 = str31;
                            str19 = str30;
                            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
                        } catch (Throwable th2) {
                            th = th2;
                            Result.Companion companion2 = Result.INSTANCE;
                            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th));
                        }
                        Object objG = getInStationSubtitleListTask.g(baseDto, function3, str19, str16, null, 4, 0, 0, str15, str18, str13, this);
                        obj2 = objF;
                        if (objG == obj2) {
                            return obj2;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        obj2 = objF;
                        Result.Companion companion3 = Result.INSTANCE;
                        objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th));
                        str7 = getInStationSubtitleListTask$downloadUGCVideo$1.$subjectId;
                        str8 = getInStationSubtitleListTask$downloadUGCVideo$1.$resourceId;
                        str9 = getInStationSubtitleListTask$downloadUGCVideo$1.$videoResourceId;
                        str10 = getInStationSubtitleListTask$downloadUGCVideo$1.$ugcVideoId;
                        str11 = getInStationSubtitleListTask$downloadUGCVideo$1.$collectionId;
                        str12 = getInStationSubtitleListTask$downloadUGCVideo$1.$idType;
                        function1 = getInStationSubtitleListTask$downloadUGCVideo$1.$resultCallback;
                        thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
                        if (thM457exceptionOrNullimpl != null) {
                            com.transsion.subtitle_download.utils.b.f55044a.b(GetInStationSubtitleListTask.f55013a.l() + str6 + str7 + str + str8 + str2 + str9 + str3 + str10 + str4 + str11 + str5 + str12 + " - --> 请求接口发生异常 --> Throwable.it = " + thM457exceptionOrNullimpl);
                            a2VarC = y0.c();
                            getInStationSubtitleListTask$downloadUGCVideo$1$2$1 = new GetInStationSubtitleListTask$downloadUGCVideo$1$2$1(function1, null);
                            getInStationSubtitleListTask$downloadUGCVideo$1.L$0 = null;
                            getInStationSubtitleListTask$downloadUGCVideo$1.L$1 = null;
                            getInStationSubtitleListTask$downloadUGCVideo$1.L$2 = null;
                            getInStationSubtitleListTask$downloadUGCVideo$1.L$3 = null;
                            getInStationSubtitleListTask$downloadUGCVideo$1.L$4 = null;
                            getInStationSubtitleListTask$downloadUGCVideo$1.L$5 = null;
                            getInStationSubtitleListTask$downloadUGCVideo$1.L$6 = null;
                            getInStationSubtitleListTask$downloadUGCVideo$1.L$7 = null;
                            getInStationSubtitleListTask$downloadUGCVideo$1.label = 3;
                            if (kotlinx.coroutines.i.g(a2VarC, getInStationSubtitleListTask$downloadUGCVideo$1$2$1, getInStationSubtitleListTask$downloadUGCVideo$1) == obj2) {
                                return obj2;
                            }
                        }
                        return Unit.f67061a;
                    }
                    bVar.a(getInStationSubtitleListTask.l() + " --> downloadUGCVideo() --> 请求接口获取字幕列表并进行处理 --> subjectId = " + str16 + " -- resourceId = " + str19 + " -- videoResourceId = " + str14 + " -- ugcVideoId = " + str15 + " -- collectionId = " + str18 + " -- idType = " + str17 + " --> subtitles = " + baseDto);
                    getInStationSubtitleListTask$downloadUGCVideo$1 = this;
                    getInStationSubtitleListTask$downloadUGCVideo$1.L$0 = null;
                    getInStationSubtitleListTask$downloadUGCVideo$1.L$1 = null;
                    getInStationSubtitleListTask$downloadUGCVideo$1.L$2 = null;
                    getInStationSubtitleListTask$downloadUGCVideo$1.L$3 = null;
                    getInStationSubtitleListTask$downloadUGCVideo$1.L$4 = null;
                    getInStationSubtitleListTask$downloadUGCVideo$1.L$5 = null;
                    getInStationSubtitleListTask$downloadUGCVideo$1.L$6 = null;
                    getInStationSubtitleListTask$downloadUGCVideo$1.L$7 = null;
                    getInStationSubtitleListTask$downloadUGCVideo$1.label = 2;
                    str6 = " --> downloadUGCVideo() --> 请求接口获取字幕列表并进行处理 --> subjectId = ";
                    str = " -- resourceId = ";
                    str2 = " -- videoResourceId = ";
                    str3 = " -- ugcVideoId = ";
                    str4 = " -- collectionId = ";
                    str5 = " -- idType = ";
                } catch (Throwable th4) {
                    th = th4;
                    getInStationSubtitleListTask$downloadUGCVideo$1 = this;
                    str6 = " --> downloadUGCVideo() --> 请求接口获取字幕列表并进行处理 --> subjectId = ";
                    str = " -- resourceId = ";
                    str2 = " -- videoResourceId = ";
                    str3 = " -- ugcVideoId = ";
                    str4 = " -- collectionId = ";
                    str5 = " -- idType = ";
                    obj2 = objF;
                    Result.Companion companion4 = Result.INSTANCE;
                    objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th));
                    str7 = getInStationSubtitleListTask$downloadUGCVideo$1.$subjectId;
                    str8 = getInStationSubtitleListTask$downloadUGCVideo$1.$resourceId;
                    str9 = getInStationSubtitleListTask$downloadUGCVideo$1.$videoResourceId;
                    str10 = getInStationSubtitleListTask$downloadUGCVideo$1.$ugcVideoId;
                    str11 = getInStationSubtitleListTask$downloadUGCVideo$1.$collectionId;
                    str12 = getInStationSubtitleListTask$downloadUGCVideo$1.$idType;
                    function1 = getInStationSubtitleListTask$downloadUGCVideo$1.$resultCallback;
                    thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
                    if (thM457exceptionOrNullimpl != null) {
                        com.transsion.subtitle_download.utils.b.f55044a.b(GetInStationSubtitleListTask.f55013a.l() + str6 + str7 + str + str8 + str2 + str9 + str3 + str10 + str4 + str11 + str5 + str12 + " - --> 请求接口发生异常 --> Throwable.it = " + thM457exceptionOrNullimpl);
                        a2VarC = y0.c();
                        getInStationSubtitleListTask$downloadUGCVideo$1$2$1 = new GetInStationSubtitleListTask$downloadUGCVideo$1$2$1(function1, null);
                        getInStationSubtitleListTask$downloadUGCVideo$1.L$0 = null;
                        getInStationSubtitleListTask$downloadUGCVideo$1.L$1 = null;
                        getInStationSubtitleListTask$downloadUGCVideo$1.L$2 = null;
                        getInStationSubtitleListTask$downloadUGCVideo$1.L$3 = null;
                        getInStationSubtitleListTask$downloadUGCVideo$1.L$4 = null;
                        getInStationSubtitleListTask$downloadUGCVideo$1.L$5 = null;
                        getInStationSubtitleListTask$downloadUGCVideo$1.L$6 = null;
                        getInStationSubtitleListTask$downloadUGCVideo$1.L$7 = null;
                        getInStationSubtitleListTask$downloadUGCVideo$1.label = 3;
                        if (kotlinx.coroutines.i.g(a2VarC, getInStationSubtitleListTask$downloadUGCVideo$1$2$1, getInStationSubtitleListTask$downloadUGCVideo$1) == obj2) {
                            return obj2;
                        }
                    }
                    return Unit.f67061a;
                }
                bVar = com.transsion.subtitle_download.utils.b.f55044a;
                getInStationSubtitleListTask = GetInStationSubtitleListTask.f55013a;
                function3 = function2;
            } catch (Throwable th5) {
                th = th5;
            }
            baseDto = (BaseDto) objA;
        } catch (Throwable th6) {
            th = th6;
            str = " -- resourceId = ";
            str2 = " -- videoResourceId = ";
            str3 = " -- ugcVideoId = ";
            str4 = " -- collectionId = ";
            str5 = " -- idType = ";
            obj2 = objF;
            str6 = " --> downloadUGCVideo() --> 请求接口获取字幕列表并进行处理 --> subjectId = ";
        }
        str7 = getInStationSubtitleListTask$downloadUGCVideo$1.$subjectId;
        str8 = getInStationSubtitleListTask$downloadUGCVideo$1.$resourceId;
        str9 = getInStationSubtitleListTask$downloadUGCVideo$1.$videoResourceId;
        str10 = getInStationSubtitleListTask$downloadUGCVideo$1.$ugcVideoId;
        str11 = getInStationSubtitleListTask$downloadUGCVideo$1.$collectionId;
        str12 = getInStationSubtitleListTask$downloadUGCVideo$1.$idType;
        function1 = getInStationSubtitleListTask$downloadUGCVideo$1.$resultCallback;
        thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            com.transsion.subtitle_download.utils.b.f55044a.b(GetInStationSubtitleListTask.f55013a.l() + str6 + str7 + str + str8 + str2 + str9 + str3 + str10 + str4 + str11 + str5 + str12 + " - --> 请求接口发生异常 --> Throwable.it = " + thM457exceptionOrNullimpl);
            a2VarC = y0.c();
            getInStationSubtitleListTask$downloadUGCVideo$1$2$1 = new GetInStationSubtitleListTask$downloadUGCVideo$1$2$1(function1, null);
            getInStationSubtitleListTask$downloadUGCVideo$1.L$0 = null;
            getInStationSubtitleListTask$downloadUGCVideo$1.L$1 = null;
            getInStationSubtitleListTask$downloadUGCVideo$1.L$2 = null;
            getInStationSubtitleListTask$downloadUGCVideo$1.L$3 = null;
            getInStationSubtitleListTask$downloadUGCVideo$1.L$4 = null;
            getInStationSubtitleListTask$downloadUGCVideo$1.L$5 = null;
            getInStationSubtitleListTask$downloadUGCVideo$1.L$6 = null;
            getInStationSubtitleListTask$downloadUGCVideo$1.L$7 = null;
            getInStationSubtitleListTask$downloadUGCVideo$1.label = 3;
            if (kotlinx.coroutines.i.g(a2VarC, getInStationSubtitleListTask$downloadUGCVideo$1$2$1, getInStationSubtitleListTask$downloadUGCVideo$1) == obj2) {
                return obj2;
            }
        }
        return Unit.f67061a;
    }
}
