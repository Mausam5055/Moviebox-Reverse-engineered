package com.transsion.shorttv.viewmodel;

import androidx.p009lifecycle.b0;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.shorttv.bean.ShortTVFavInfo;
import com.transsion.shorttv.bean.ShortTVItem;
import com.transsion.shorttv.bean.ShortTvInnerPlayBean;
import com.transsion.shorttv.bean.Subject;
import com.transsion.shorttv.bean.Trailer;
import com.transsion.shorttv.db.ShortTvAdUnlockDao;
import com.transsion.shorttv.db.ShortTvFavoriteDao;
import com.transsion.shorttv.db.ShortTvFavoriteStateBean;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
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
@DebugMetadata(c = "com.transsion.shorttv.viewmodel.ShortTvViewModel$getShortTvEpisodes$1", f = "ShortTvViewModel.kt", l = {249, 272, 295, Sdk$SDKError.Reason.WEBVIEW_ERROR_VALUE, 328, 332, 338, 351, 367, 373, TTAdConstant.DEEPLINK_UNAVAILABLE_CODE}, m = "invokeSuspend")
@SourceDebugExtension
final class ShortTvViewModel$getShortTvEpisodes$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $currentSubjectId;
    final /* synthetic */ Integer $dataSource;
    final /* synthetic */ int $ep;
    final /* synthetic */ boolean $isHistoryFirst;
    final /* synthetic */ Subject $subject;
    final /* synthetic */ String $subjectId;
    int I$0;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    boolean Z$0;
    int label;
    final /* synthetic */ ShortTvViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ShortTvViewModel$getShortTvEpisodes$1(Integer num, ShortTvViewModel shortTvViewModel, String str, String str2, Subject subject, int i11, boolean z10, Continuation<? super ShortTvViewModel$getShortTvEpisodes$1> continuation) {
        super(2, continuation);
        this.$dataSource = num;
        this.this$0 = shortTvViewModel;
        this.$subjectId = str;
        this.$currentSubjectId = str2;
        this.$subject = subject;
        this.$ep = i11;
        this.$isHistoryFirst = z10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        ShortTvViewModel$getShortTvEpisodes$1 shortTvViewModel$getShortTvEpisodes$1 = new ShortTvViewModel$getShortTvEpisodes$1(this.$dataSource, this.this$0, this.$subjectId, this.$currentSubjectId, this.$subject, this.$ep, this.$isHistoryFirst, continuation);
        shortTvViewModel$getShortTvEpisodes$1.L$0 = obj;
        return shortTvViewModel$getShortTvEpisodes$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ShortTvViewModel$getShortTvEpisodes$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:107:0x038d  */
    /* JADX WARN: Code duplicated, block: B:110:0x0395 A[Catch: Exception -> 0x0388, TryCatch #2 {Exception -> 0x0388, blocks: (B:104:0x0381, B:108:0x038e, B:110:0x0395, B:112:0x0399, B:114:0x039f, B:115:0x03a4, B:117:0x03aa, B:119:0x03b0, B:121:0x03b5, B:123:0x03bd), top: B:271:0x0381 }] */
    /* JADX WARN: Code duplicated, block: B:112:0x0399 A[Catch: Exception -> 0x0388, TryCatch #2 {Exception -> 0x0388, blocks: (B:104:0x0381, B:108:0x038e, B:110:0x0395, B:112:0x0399, B:114:0x039f, B:115:0x03a4, B:117:0x03aa, B:119:0x03b0, B:121:0x03b5, B:123:0x03bd), top: B:271:0x0381 }] */
    /* JADX WARN: Code duplicated, block: B:113:0x039e  */
    /* JADX WARN: Code duplicated, block: B:117:0x03aa A[Catch: Exception -> 0x0388, TryCatch #2 {Exception -> 0x0388, blocks: (B:104:0x0381, B:108:0x038e, B:110:0x0395, B:112:0x0399, B:114:0x039f, B:115:0x03a4, B:117:0x03aa, B:119:0x03b0, B:121:0x03b5, B:123:0x03bd), top: B:271:0x0381 }] */
    /* JADX WARN: Code duplicated, block: B:118:0x03af  */
    /* JADX WARN: Code duplicated, block: B:121:0x03b5 A[Catch: Exception -> 0x0388, TryCatch #2 {Exception -> 0x0388, blocks: (B:104:0x0381, B:108:0x038e, B:110:0x0395, B:112:0x0399, B:114:0x039f, B:115:0x03a4, B:117:0x03aa, B:119:0x03b0, B:121:0x03b5, B:123:0x03bd), top: B:271:0x0381 }] */
    /* JADX WARN: Code duplicated, block: B:123:0x03bd A[Catch: Exception -> 0x0388, TRY_LEAVE, TryCatch #2 {Exception -> 0x0388, blocks: (B:104:0x0381, B:108:0x038e, B:110:0x0395, B:112:0x0399, B:114:0x039f, B:115:0x03a4, B:117:0x03aa, B:119:0x03b0, B:121:0x03b5, B:123:0x03bd), top: B:271:0x0381 }] */
    /* JADX WARN: Code duplicated, block: B:125:0x03d2 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:126:0x03d3  */
    /* JADX WARN: Code duplicated, block: B:129:0x03d9 A[PHI: r2
  0x03d9: PHI (r2v58 boolean) = (r2v54 boolean), (r2v60 boolean) binds: [B:122:0x03bb, B:136:0x041f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:132:0x0404  */
    /* JADX WARN: Code duplicated, block: B:134:0x0419 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:136:0x041f  */
    /* JADX WARN: Code duplicated, block: B:138:0x0424  */
    /* JADX WARN: Code duplicated, block: B:140:0x0428  */
    /* JADX WARN: Code duplicated, block: B:142:0x0430  */
    /* JADX WARN: Code duplicated, block: B:144:0x0445 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:146:0x044a  */
    /* JADX WARN: Code duplicated, block: B:148:0x044e  */
    /* JADX WARN: Code duplicated, block: B:150:0x046c  */
    /* JADX WARN: Code duplicated, block: B:153:0x048b A[Catch: all -> 0x005a, TryCatch #3 {all -> 0x005a, blocks: (B:10:0x0053, B:156:0x04a0, B:158:0x04a4, B:160:0x04aa, B:162:0x04d5, B:163:0x04de, B:165:0x04e2, B:151:0x0470, B:153:0x048b), top: B:273:0x000c }] */
    /* JADX WARN: Code duplicated, block: B:155:0x049f A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:158:0x04a4 A[Catch: all -> 0x005a, TryCatch #3 {all -> 0x005a, blocks: (B:10:0x0053, B:156:0x04a0, B:158:0x04a4, B:160:0x04aa, B:162:0x04d5, B:163:0x04de, B:165:0x04e2, B:151:0x0470, B:153:0x048b), top: B:273:0x000c }] */
    /* JADX WARN: Code duplicated, block: B:164:0x04e1 A[PHI: r1 r2
  0x04e1: PHI (r1v140 boolean) = (r1v131 boolean), (r1v142 boolean), (r1v142 boolean) binds: [B:152:0x0489, B:157:0x04a2, B:159:0x04a8] A[DONT_GENERATE, DONT_INLINE]
  0x04e1: PHI (r2v72 com.transsion.shorttv.bean.Subject) = 
  (r2v70 com.transsion.shorttv.bean.Subject)
  (r2v74 com.transsion.shorttv.bean.Subject)
  (r2v74 com.transsion.shorttv.bean.Subject)
 binds: [B:152:0x0489, B:157:0x04a2, B:159:0x04a8] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:170:0x04f7  */
    /* JADX WARN: Code duplicated, block: B:173:0x0525  */
    /* JADX WARN: Code duplicated, block: B:175:0x055a  */
    /* JADX WARN: Code duplicated, block: B:176:0x0563  */
    /* JADX WARN: Code duplicated, block: B:180:0x0573  */
    /* JADX WARN: Code duplicated, block: B:182:0x058b A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:184:0x0594  */
    /* JADX WARN: Code duplicated, block: B:187:0x059d  */
    /* JADX WARN: Code duplicated, block: B:189:0x05a3  */
    /* JADX WARN: Code duplicated, block: B:200:0x05f8  */
    /* JADX WARN: Code duplicated, block: B:202:0x05fb  */
    /* JADX WARN: Code duplicated, block: B:205:0x0608  */
    /* JADX WARN: Code duplicated, block: B:210:0x061a  */
    /* JADX WARN: Code duplicated, block: B:212:0x061d  */
    /* JADX WARN: Code duplicated, block: B:214:0x0634  */
    /* JADX WARN: Code duplicated, block: B:215:0x0639  */
    /* JADX WARN: Code duplicated, block: B:219:0x0645  */
    /* JADX WARN: Code duplicated, block: B:221:0x0651  */
    /* JADX WARN: Code duplicated, block: B:223:0x0668  */
    /* JADX WARN: Code duplicated, block: B:224:0x066d  */
    /* JADX WARN: Code duplicated, block: B:228:0x0679  */
    /* JADX WARN: Code duplicated, block: B:231:0x0682 A[LOOP:0: B:201:0x05f9->B:231:0x0682, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:234:0x068b  */
    /* JADX WARN: Code duplicated, block: B:236:0x0693  */
    /* JADX WARN: Code duplicated, block: B:238:0x06a7 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:241:0x06ac  */
    /* JADX WARN: Code duplicated, block: B:244:0x06e3  */
    /* JADX WARN: Code duplicated, block: B:247:0x06e8  */
    /* JADX WARN: Code duplicated, block: B:253:0x06f5  */
    /* JADX WARN: Code duplicated, block: B:256:0x071c  */
    /* JADX WARN: Code duplicated, block: B:261:0x0737 A[LOOP:2: B:259:0x0731->B:261:0x0737, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:271:0x0381 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:277:0x0685 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:278:0x0616 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:37:0x0105  */
    /* JADX WARN: Code duplicated, block: B:45:0x0193  */
    /* JADX WARN: Code duplicated, block: B:46:0x0198  */
    /* JADX WARN: Code duplicated, block: B:60:0x022c  */
    /* JADX WARN: Code duplicated, block: B:62:0x024c  */
    /* JADX WARN: Code duplicated, block: B:63:0x0251  */
    /* JADX WARN: Code duplicated, block: B:65:0x0254 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:68:0x025c  */
    /* JADX WARN: Code duplicated, block: B:70:0x028a  */
    /* JADX WARN: Code duplicated, block: B:72:0x0294  */
    /* JADX WARN: Code duplicated, block: B:74:0x02a9 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:77:0x02ae  */
    /* JADX WARN: Code duplicated, block: B:78:0x02c0 A[PHI: r0 r1 r2 r3 r15
  0x02c0: PHI (r0v52 boolean) = (r0v47 boolean), (r0v57 boolean) binds: [B:71:0x0292, B:76:0x02ac] A[DONT_GENERATE, DONT_INLINE]
  0x02c0: PHI (r1v69 com.transsion.shorttv.bean.Subject) = (r1v39 com.transsion.shorttv.bean.Subject), (r1v95 com.transsion.shorttv.bean.Subject) binds: [B:71:0x0292, B:76:0x02ac] A[DONT_GENERATE, DONT_INLINE]
  0x02c0: PHI (r2v39 js.e) = (r2v27 js.e), (r2v50 js.e) binds: [B:71:0x0292, B:76:0x02ac] A[DONT_GENERATE, DONT_INLINE]
  0x02c0: PHI (r3v33 java.util.List) = (r3v28 java.util.List), (r3v42 java.util.List) binds: [B:71:0x0292, B:76:0x02ac] A[DONT_GENERATE, DONT_INLINE]
  0x02c0: PHI (r15v7 kotlinx.coroutines.n0) = (r15v4 kotlinx.coroutines.n0), (r15v12 kotlinx.coroutines.n0) binds: [B:71:0x0292, B:76:0x02ac] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:81:0x02e8  */
    /* JADX WARN: Code duplicated, block: B:85:0x031b  */
    /* JADX WARN: Code duplicated, block: B:87:0x031f  */
    /* JADX WARN: Code duplicated, block: B:88:0x0324  */
    /* JADX WARN: Code duplicated, block: B:91:0x0329  */
    /* JADX WARN: Code duplicated, block: B:98:0x0376 A[RETURN] */
    /* JADX WARN: Instruction removed from duplicated block: B:170:0x04f7, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:173:0x0525, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:37:0x0105, please report this as an issue */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objM454constructorimpl;
        Throwable thM457exceptionOrNullimpl;
        int totalEpisode;
        qs.d dVarS0;
        Subject subject;
        List list;
        Object objB;
        ShortTVFavInfo shortTVFavInfo;
        Boolean boolA;
        boolean z10;
        List arrayList;
        Integer num;
        List<ShortTVItem> listI0;
        String str;
        Object objI0;
        Subject subject2;
        List list2;
        ShortTvFavoriteDao shortTvFavoriteDaoB0;
        Object objA;
        int i11;
        ShortTVItem shortTVFirstEp;
        js.e eVar;
        int downloadStatus;
        js.e eVar2;
        int downloadStatus2;
        Iterator it;
        Object next;
        ShortTvFavoriteStateBean shortTvFavoriteStateBean;
        n0 n0Var;
        boolean zE;
        n0 n0Var2;
        ShortTvInnerPlayBean shortTvInnerPlayBean;
        Object objC;
        int iIntValue;
        int iS;
        lg.a.C0828a c0828a;
        List arrayList2;
        Subject subject3;
        Trailer trailer;
        Subject subject4;
        ShortTVItem shortTVFirstEp2;
        js.e eVar3;
        Subject subject5;
        ShortTvFavoriteDao shortTvFavoriteDaoB1;
        Object objA2;
        Object objI1;
        n0 n0Var3;
        Integer num2;
        ShortTVFavInfo shortTVFavInfo2;
        Subject subject6;
        qs.d dVarS1;
        Object objK;
        Subject subject7;
        List unlockedEps;
        List list3;
        Object objD;
        ShortTvFavoriteStateBean shortTvFavoriteStateBean2;
        n0 n0Var4;
        boolean z11;
        BaseDto baseDto;
        Subject subject8;
        Exception exc;
        boolean z12;
        n0 n0Var5;
        ShortTVFavInfo shortTVFavInfo3;
        qs.d dVarS2;
        Object objK2;
        boolean z13;
        Subject subject9;
        String ops;
        qs.d dVarS3;
        Object objK3;
        String str2;
        ShortTvAdUnlockDao shortTvAdUnlockDaoU;
        Object objA3;
        Unit unit;
        com.transsion.shorttv.db.e eVar4;
        Set setC;
        Object objF = IntrinsicsKt.f();
        shortTVFavInfo = null;
        ShortTVFavInfo shortTVFavInfo4 = null;
        try {
            switch (this.label) {
                case 0:
                    ResultKt.b(obj);
                    n0Var = (n0) this.L$0;
                    zE = nh.m.f70474a.e();
                    if (this.$dataSource == null) {
                        qs.h hVarA0 = this.this$0.A0();
                        if (hVarA0 != null) {
                            String str3 = this.$subjectId;
                            this.L$0 = n0Var;
                            this.Z$0 = zE;
                            this.label = 1;
                            objC = hVarA0.c(str3, this);
                            if (objC == objF) {
                                return objF;
                            }
                            n0Var2 = n0Var;
                            shortTvInnerPlayBean = (ShortTvInnerPlayBean) objC;
                        } else {
                            n0Var2 = n0Var;
                            shortTvInnerPlayBean = null;
                        }
                        if (shortTvInnerPlayBean != null) {
                            lg.a.C0828a.f(lg.a.f68839a, "ShortTvViewModel", "获取到历史：" + shortTvInnerPlayBean, false, 4, null);
                            this.this$0.J.q(shortTvInnerPlayBean);
                        }
                        iIntValue = -1;
                        if (Intrinsics.c(this.$currentSubjectId, this.$subjectId) && (num2 = (Integer) this.this$0.j0().f()) != null) {
                            iIntValue = num2.intValue();
                        }
                        int i12 = iIntValue;
                        iS = this.this$0.S(i12, shortTvInnerPlayBean, this.$subject, this.$ep, this.$isHistoryFirst);
                        c0828a = lg.a.f68839a;
                        lg.a.C0828a.f(c0828a, "ShortTvViewModel", "lastEp: " + i12 + ", historyItem: " + shortTvInnerPlayBean + ", firstSelectEp:" + iS, false, 4, null);
                        arrayList2 = new ArrayList();
                        subject3 = this.$subject;
                        if (subject3 != null) {
                            trailer = subject3.getTrailer();
                        } else {
                            trailer = null;
                        }
                        if (trailer != null || this.$subject.getShortTVFirstEp() == null || !zE) {
                            this.this$0.L.q(Boxing.a(false));
                            lg.a.C0828a.f(c0828a, "ShortTvViewModel", "不存在预告片", false, 4, null);
                            subject4 = this.$subject;
                            if (subject4 != null) {
                                shortTVFirstEp2 = subject4.getShortTVFirstEp();
                            } else {
                                shortTVFirstEp2 = null;
                            }
                            if (shortTVFirstEp2 != null && zE) {
                                if (shortTVFirstEp2.getEp() == iS) {
                                    lg.a.C0828a.f(c0828a, "ShortTvViewModel", "需要预加载第一集", false, 4, null);
                                    eVar3 = new js.e(this.$subjectId, shortTVFirstEp2.getEp(), shortTVFirstEp2, 0, 8, null);
                                    if (this.$subject.getShortTVFavInfo() == null) {
                                        subject5 = this.$subject;
                                        shortTvFavoriteDaoB1 = this.this$0.b0();
                                        if (shortTvFavoriteDaoB1 != null) {
                                            String str4 = this.$subjectId;
                                            this.L$0 = n0Var2;
                                            this.L$1 = arrayList2;
                                            this.L$2 = eVar3;
                                            this.L$3 = subject5;
                                            this.Z$0 = zE;
                                            this.label = 3;
                                            objA2 = shortTvFavoriteDaoB1.a(str4, this);
                                            if (objA2 == objF) {
                                                return objF;
                                            }
                                            shortTvFavoriteStateBean2 = (ShortTvFavoriteStateBean) objA2;
                                            if (shortTvFavoriteStateBean2 != null) {
                                                shortTVFavInfo2 = new ShortTVFavInfo(shortTvFavoriteStateBean2.getFavoriteNum(), shortTvFavoriteStateBean2.getHasFavorite(), shortTvFavoriteStateBean2.getFavoriteTime());
                                            } else {
                                                shortTVFavInfo2 = null;
                                            }
                                        } else {
                                            shortTVFavInfo2 = null;
                                        }
                                        subject5.setShortTVFavInfo(shortTVFavInfo2);
                                    }
                                    arrayList2.add(eVar3);
                                    this.this$0.g1(false);
                                    this.this$0.f53685g.q(this.$subject);
                                    this.this$0.f53695q.q(arrayList2);
                                    this.this$0.w0(this.$subjectId, 2);
                                } else {
                                    lg.a.C0828a.f(c0828a, "ShortTvViewModel", "不需要预加载第一集", false, 4, null);
                                }
                            }
                        } else if (iS == 0 && lr.c.f69031a.b().b()) {
                            lg.a.C0828a.f(c0828a, "ShortTvViewModel", "存在预告片 " + this.$subject.getTrailer(), false, 4, null);
                            ShortTvViewModel shortTvViewModel = this.this$0;
                            String str5 = this.$subjectId;
                            Subject subject10 = this.$subject;
                            this.L$0 = n0Var2;
                            this.L$1 = arrayList2;
                            this.Z$0 = zE;
                            this.label = 2;
                            objI1 = shortTvViewModel.I0(str5, subject10, this);
                            if (objI1 == objF) {
                                return objF;
                            }
                            n0Var3 = n0Var2;
                            arrayList2.add((js.e) objI1);
                            this.this$0.L.q(Boxing.a(true));
                            this.this$0.g1(false);
                            this.this$0.f53685g.q(this.$subject);
                            this.this$0.f53695q.q(arrayList2);
                            n0Var2 = n0Var3;
                        } else {
                            lg.a.C0828a.f(c0828a, "ShortTvViewModel", "不需要加载预告片", false, 4, null);
                        }
                        this.this$0.f53677a0.put(this.$subjectId + this.$ep, Boxing.d(0));
                    } else {
                        n0Var2 = n0Var;
                    }
                    if (zE) {
                        subject6 = this.$subject;
                        if (subject6 != null) {
                            dVarS1 = this.this$0.s0();
                            if (dVarS1 != null) {
                                String str6 = this.$subjectId;
                                this.L$0 = n0Var2;
                                this.L$1 = null;
                                this.L$2 = null;
                                this.L$3 = null;
                                this.Z$0 = zE;
                                this.label = 7;
                                objK = dVarS1.k(str6, this);
                                if (objK == objF) {
                                    return objF;
                                }
                                subject6 = (Subject) objK;
                            } else {
                                z10 = zE;
                                subject2 = null;
                            }
                        }
                        if (subject2 == null) {
                            this.this$0.g1(false);
                            this.this$0.f53685g.q(null);
                            this.this$0.f53695q.q(CollectionsKt.l());
                            return Unit.f67061a;
                        }
                        ShortTvViewModel shortTvViewModel2 = this.this$0;
                        str2 = this.$subjectId;
                        Result.Companion companion = Result.INSTANCE;
                        lg.a.C0828a.r(lg.a.f68839a, "ShortTvViewModel", new String[]{"will loadAdUnlockedEps"}, false, 4, null);
                        shortTvAdUnlockDaoU = shortTvViewModel2.U();
                        if (shortTvAdUnlockDaoU != null) {
                            this.L$0 = subject2;
                            this.L$1 = null;
                            this.L$2 = null;
                            this.L$3 = null;
                            this.Z$0 = z10;
                            this.label = 8;
                            objA3 = shortTvAdUnlockDaoU.a(str2, this);
                            if (objA3 == objF) {
                                return objF;
                            }
                            eVar4 = (com.transsion.shorttv.db.e) objA3;
                            if (eVar4 != null) {
                                unit = null;
                            } else {
                                unit = null;
                            }
                        } else {
                            unit = null;
                        }
                        objM454constructorimpl = Result.m454constructorimpl(unit);
                        thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
                        if (thM457exceptionOrNullimpl != null) {
                            lg.a.C0828a.l(lg.a.f68839a, "ShortTvViewModel", "loadAdUnlockedEps error: " + thM457exceptionOrNullimpl, false, 4, null);
                        }
                        if (!Intrinsics.c(subject2, this.this$0.f53685g.f())) {
                            lg.a.C0828a.f(lg.a.f68839a, "ShortTvViewModel", "getShortTvInfo,set newSubject:" + this.$subjectId, false, 4, null);
                            this.this$0.f53685g.q(subject2);
                            b0 b0Var = this.this$0.D;
                            shortTVFavInfo = subject2.getShortTVFavInfo();
                            if (shortTVFavInfo != null) {
                                boolA = Boxing.a(shortTVFavInfo.getHasFavorite());
                            } else {
                                boolA = null;
                            }
                            b0Var.q(boolA);
                        }
                        totalEpisode = subject2.getTotalEpisode();
                        dVarS0 = this.this$0.s0();
                        if (dVarS0 != null) {
                            String str7 = this.$subjectId;
                            this.L$0 = subject2;
                            this.L$1 = null;
                            this.L$2 = null;
                            this.L$3 = null;
                            this.Z$0 = z10;
                            this.I$0 = totalEpisode;
                            this.label = 9;
                            objB = dVarS0.b(str7, this);
                            if (objB == objF) {
                                return objF;
                            }
                            List list4 = (List) objB;
                            subject = subject2;
                            list = list4;
                        } else {
                            subject = subject2;
                            list = null;
                        }
                        arrayList = new ArrayList();
                        if (z10) {
                            if (subject.getTrailer() == null) {
                            }
                            this.this$0.L.q(Boxing.a(false));
                            Unit unit2 = Unit.f67061a;
                            list2 = arrayList;
                            if (1 <= totalEpisode) {
                                i11 = 1;
                                while (true) {
                                    if (list != null) {
                                        it = list.iterator();
                                        do {
                                            if (it.hasNext()) {
                                                next = it.next();
                                            } else {
                                                next = null;
                                            }
                                            shortTVFirstEp = (ShortTVItem) next;
                                        } while (((ShortTVItem) next).getEp() != i11);
                                        shortTVFirstEp = (ShortTVItem) next;
                                    } else {
                                        shortTVFirstEp = null;
                                    }
                                    if (i11 == 1) {
                                        eVar2 = new js.e(this.$subjectId, i11, null, 0, 12, null);
                                        if (shortTVFirstEp != null) {
                                            downloadStatus2 = shortTVFirstEp.getDownloadStatus();
                                        } else {
                                            downloadStatus2 = 0;
                                        }
                                        eVar2.g(downloadStatus2);
                                        if (eVar2.b() != 5) {
                                            shortTVFirstEp = subject.getShortTVFirstEp();
                                        }
                                        eVar2.h(shortTVFirstEp);
                                        list2.add(eVar2);
                                    } else {
                                        eVar = new js.e(this.$subjectId, i11, null, 0, 12, null);
                                        if (shortTVFirstEp != null) {
                                            downloadStatus = shortTVFirstEp.getDownloadStatus();
                                        } else {
                                            downloadStatus = 0;
                                        }
                                        eVar.g(downloadStatus);
                                        if (eVar.b() != 5) {
                                            shortTVFirstEp = null;
                                        }
                                        eVar.h(shortTVFirstEp);
                                        list2.add(eVar);
                                    }
                                    if (i11 != totalEpisode) {
                                        i11++;
                                    }
                                }
                            }
                            if (subject.getShortTVFavInfo() == null) {
                                shortTvFavoriteDaoB0 = this.this$0.b0();
                                if (shortTvFavoriteDaoB0 != null) {
                                    String str8 = this.$subjectId;
                                    this.L$0 = list2;
                                    this.L$1 = subject;
                                    this.L$2 = null;
                                    this.L$3 = null;
                                    this.label = 11;
                                    objA = shortTvFavoriteDaoB0.a(str8, this);
                                    if (objA == objF) {
                                        return objF;
                                    }
                                    shortTvFavoriteStateBean = (ShortTvFavoriteStateBean) objA;
                                    if (shortTvFavoriteStateBean != null) {
                                        shortTVFavInfo4 = new ShortTVFavInfo(shortTvFavoriteStateBean.getFavoriteNum(), shortTvFavoriteStateBean.getHasFavorite(), shortTvFavoriteStateBean.getFavoriteTime());
                                    }
                                }
                                subject.setShortTVFavInfo(shortTVFavInfo4);
                            }
                            arrayList = list2;
                            this.this$0.f53677a0.put(this.$subjectId + this.$ep, Boxing.d(2));
                        } else {
                            num = this.$dataSource;
                            if (num != null) {
                                return Unit.f67061a;
                            }
                            if (list != null) {
                            }
                            lg.a.C0828a.f(lg.a.f68839a, "ShortTvViewModel", "无网，显示下载数据, " + (list != null ? Boxing.d(list.size()) : null), false, 4, null);
                            if (list != null) {
                                str = this.$subjectId;
                                for (ShortTVItem shortTVItem : listI0) {
                                    js.e eVar5 = new js.e(str, shortTVItem.getEp(), null, 0, 12, null);
                                    eVar5.g(shortTVItem.getDownloadStatus());
                                    eVar5.h(shortTVItem);
                                    arrayList.add(eVar5);
                                }
                                Unit unit3 = Unit.f67061a;
                            }
                            this.this$0.f53677a0.put(this.$subjectId + this.$ep, Boxing.d(1));
                        }
                        this.this$0.g1(false);
                        this.this$0.f53695q.q(arrayList);
                        return Unit.f67061a;
                    }
                    subject7 = this.$subject;
                    if (subject7 != null) {
                        unlockedEps = subject7.getUnlockedEps();
                    } else {
                        unlockedEps = null;
                    }
                    list3 = unlockedEps;
                    if (list3 != null || list3.isEmpty()) {
                        try {
                            lg.a.C0828a.f(lg.a.f68839a, "ShortTvViewModel", "getShortTvInfo,subjectId:" + this.$subjectId, false, 4, null);
                            os.a aVar = this.this$0.f53676a;
                            String str9 = this.$subjectId;
                            this.L$0 = n0Var2;
                            this.L$1 = null;
                            this.L$2 = null;
                            this.L$3 = null;
                            this.Z$0 = zE;
                            this.label = 4;
                            objD = os.a.C0875a.d(aVar, str9, null, this, 2, null);
                            if (objD == objF) {
                                return objF;
                            }
                            baseDto = (BaseDto) objD;
                            z11 = zE;
                        } catch (Exception unused) {
                            n0Var4 = n0Var2;
                            z11 = zE;
                            n0Var2 = n0Var4;
                            baseDto = null;
                        }
                        if (baseDto != null) {
                            try {
                                subject8 = (Subject) baseDto.getData();
                            } catch (Exception e11) {
                                exc = e11;
                                z12 = z11;
                                n0Var5 = n0Var2;
                                exc.printStackTrace();
                                lg.a.C0828a.l(lg.a.f68839a, "ShortTvViewModel", "getShortTvInfo, error:" + exc, false, 4, null);
                                dVarS3 = this.this$0.s0();
                                if (dVarS3 != null) {
                                    String str10 = this.$subjectId;
                                    this.L$0 = n0Var5;
                                    this.L$1 = null;
                                    this.L$2 = null;
                                    this.L$3 = null;
                                    this.Z$0 = z12;
                                    this.label = 6;
                                    objK3 = dVarS3.k(str10, this);
                                    if (objK3 == objF) {
                                        return objF;
                                    }
                                    z11 = z12;
                                    subject8 = (Subject) objK3;
                                    z10 = z11;
                                    subject2 = subject8;
                                    if (subject2 == null) {
                                        this.this$0.g1(false);
                                        this.this$0.f53685g.q(null);
                                        this.this$0.f53695q.q(CollectionsKt.l());
                                        return Unit.f67061a;
                                    }
                                    ShortTvViewModel shortTvViewModel3 = this.this$0;
                                    str2 = this.$subjectId;
                                    Result.Companion companion2 = Result.INSTANCE;
                                    lg.a.C0828a.r(lg.a.f68839a, "ShortTvViewModel", new String[]{"will loadAdUnlockedEps"}, false, 4, null);
                                    shortTvAdUnlockDaoU = shortTvViewModel3.U();
                                    if (shortTvAdUnlockDaoU != null) {
                                        this.L$0 = subject2;
                                        this.L$1 = null;
                                        this.L$2 = null;
                                        this.L$3 = null;
                                        this.Z$0 = z10;
                                        this.label = 8;
                                        objA3 = shortTvAdUnlockDaoU.a(str2, this);
                                        if (objA3 == objF) {
                                            return objF;
                                        }
                                        eVar4 = (com.transsion.shorttv.db.e) objA3;
                                        if (eVar4 != null) {
                                            unit = null;
                                        } else {
                                            unit = null;
                                        }
                                    } else {
                                        unit = null;
                                    }
                                    objM454constructorimpl = Result.m454constructorimpl(unit);
                                    thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
                                    if (thM457exceptionOrNullimpl != null) {
                                        lg.a.C0828a.l(lg.a.f68839a, "ShortTvViewModel", "loadAdUnlockedEps error: " + thM457exceptionOrNullimpl, false, 4, null);
                                    }
                                    if (!Intrinsics.c(subject2, this.this$0.f53685g.f())) {
                                        lg.a.C0828a.f(lg.a.f68839a, "ShortTvViewModel", "getShortTvInfo,set newSubject:" + this.$subjectId, false, 4, null);
                                        this.this$0.f53685g.q(subject2);
                                        b0 b0Var2 = this.this$0.D;
                                        shortTVFavInfo = subject2.getShortTVFavInfo();
                                        if (shortTVFavInfo != null) {
                                            boolA = Boxing.a(shortTVFavInfo.getHasFavorite());
                                        } else {
                                            boolA = null;
                                        }
                                        b0Var2.q(boolA);
                                    }
                                    totalEpisode = subject2.getTotalEpisode();
                                    dVarS0 = this.this$0.s0();
                                    if (dVarS0 != null) {
                                        String str11 = this.$subjectId;
                                        this.L$0 = subject2;
                                        this.L$1 = null;
                                        this.L$2 = null;
                                        this.L$3 = null;
                                        this.Z$0 = z10;
                                        this.I$0 = totalEpisode;
                                        this.label = 9;
                                        objB = dVarS0.b(str11, this);
                                        if (objB == objF) {
                                            return objF;
                                        }
                                        List list5 = (List) objB;
                                        subject = subject2;
                                        list = list5;
                                    } else {
                                        subject = subject2;
                                        list = null;
                                    }
                                    arrayList = new ArrayList();
                                    if (z10) {
                                        if (subject.getTrailer() == null) {
                                        }
                                        this.this$0.L.q(Boxing.a(false));
                                        Unit unit4 = Unit.f67061a;
                                        list2 = arrayList;
                                        if (1 <= totalEpisode) {
                                            i11 = 1;
                                            while (true) {
                                                if (list != null) {
                                                    it = list.iterator();
                                                    do {
                                                        if (it.hasNext()) {
                                                            next = it.next();
                                                        } else {
                                                            next = null;
                                                        }
                                                        shortTVFirstEp = (ShortTVItem) next;
                                                    } while (((ShortTVItem) next).getEp() != i11);
                                                    shortTVFirstEp = (ShortTVItem) next;
                                                } else {
                                                    shortTVFirstEp = null;
                                                }
                                                if (i11 == 1) {
                                                    eVar2 = new js.e(this.$subjectId, i11, null, 0, 12, null);
                                                    if (shortTVFirstEp != null) {
                                                        downloadStatus2 = shortTVFirstEp.getDownloadStatus();
                                                    } else {
                                                        downloadStatus2 = 0;
                                                    }
                                                    eVar2.g(downloadStatus2);
                                                    if (eVar2.b() != 5) {
                                                        shortTVFirstEp = subject.getShortTVFirstEp();
                                                    }
                                                    eVar2.h(shortTVFirstEp);
                                                    list2.add(eVar2);
                                                } else {
                                                    eVar = new js.e(this.$subjectId, i11, null, 0, 12, null);
                                                    if (shortTVFirstEp != null) {
                                                        downloadStatus = shortTVFirstEp.getDownloadStatus();
                                                    } else {
                                                        downloadStatus = 0;
                                                    }
                                                    eVar.g(downloadStatus);
                                                    if (eVar.b() != 5) {
                                                        shortTVFirstEp = null;
                                                    }
                                                    eVar.h(shortTVFirstEp);
                                                    list2.add(eVar);
                                                }
                                                if (i11 != totalEpisode) {
                                                    i11++;
                                                }
                                            }
                                        }
                                        if (subject.getShortTVFavInfo() == null) {
                                            shortTvFavoriteDaoB0 = this.this$0.b0();
                                            if (shortTvFavoriteDaoB0 != null) {
                                                String str12 = this.$subjectId;
                                                this.L$0 = list2;
                                                this.L$1 = subject;
                                                this.L$2 = null;
                                                this.L$3 = null;
                                                this.label = 11;
                                                objA = shortTvFavoriteDaoB0.a(str12, this);
                                                if (objA == objF) {
                                                    return objF;
                                                }
                                                shortTvFavoriteStateBean = (ShortTvFavoriteStateBean) objA;
                                                if (shortTvFavoriteStateBean != null) {
                                                    shortTVFavInfo4 = new ShortTVFavInfo(shortTvFavoriteStateBean.getFavoriteNum(), shortTvFavoriteStateBean.getHasFavorite(), shortTvFavoriteStateBean.getFavoriteTime());
                                                }
                                            }
                                            subject.setShortTVFavInfo(shortTVFavInfo4);
                                        }
                                        arrayList = list2;
                                        this.this$0.f53677a0.put(this.$subjectId + this.$ep, Boxing.d(2));
                                    } else {
                                        num = this.$dataSource;
                                        if (num != null) {
                                            return Unit.f67061a;
                                        }
                                        lg.a.C0828a.f(lg.a.f68839a, "ShortTvViewModel", "无网，显示下载数据, " + (list != null ? Boxing.d(list.size()) : null), false, 4, null);
                                        if (list != null) {
                                            str = this.$subjectId;
                                            while (r0.hasNext()) {
                                                js.e eVar6 = new js.e(str, shortTVItem.getEp(), null, 0, 12, null);
                                                eVar6.g(shortTVItem.getDownloadStatus());
                                                eVar6.h(shortTVItem);
                                                arrayList.add(eVar6);
                                            }
                                            Unit unit5 = Unit.f67061a;
                                        }
                                        this.this$0.f53677a0.put(this.$subjectId + this.$ep, Boxing.d(1));
                                    }
                                    this.this$0.g1(false);
                                    this.this$0.f53695q.q(arrayList);
                                    return Unit.f67061a;
                                }
                                z11 = z12;
                            }
                        } else {
                            subject8 = null;
                        }
                        zr.b.f79451a.e(subject8);
                        if (subject8 != null) {
                            subject9 = this.$subject;
                            if (subject9 != null) {
                                ops = subject9.getOps();
                            } else {
                                ops = null;
                            }
                            subject8.setOps(ops);
                            Unit unit6 = Unit.f67061a;
                        }
                        ShortTvViewModel shortTvViewModel4 = this.this$0;
                        String str13 = this.$subjectId;
                        if (subject8 != null) {
                            shortTVFavInfo3 = subject8.getShortTVFavInfo();
                        } else {
                            shortTVFavInfo3 = null;
                        }
                        shortTvViewModel4.r1(str13, shortTVFavInfo3);
                        if (subject8 == null) {
                            dVarS2 = this.this$0.s0();
                            if (dVarS2 != null) {
                                String str14 = this.$subjectId;
                                this.L$0 = n0Var2;
                                this.L$1 = null;
                                this.L$2 = null;
                                this.L$3 = null;
                                this.Z$0 = z11;
                                this.label = 5;
                                objK2 = dVarS2.k(str14, this);
                                if (objK2 == objF) {
                                    return objF;
                                }
                                z13 = z11;
                                n0Var5 = n0Var2;
                                subject8 = (Subject) objK2;
                                z11 = z13;
                            } else {
                                subject8 = null;
                            }
                        }
                        z10 = z11;
                        subject2 = subject8;
                        if (subject2 == null) {
                            this.this$0.g1(false);
                            this.this$0.f53685g.q(null);
                            this.this$0.f53695q.q(CollectionsKt.l());
                            return Unit.f67061a;
                        }
                        ShortTvViewModel shortTvViewModel5 = this.this$0;
                        str2 = this.$subjectId;
                        Result.Companion companion3 = Result.INSTANCE;
                        lg.a.C0828a.r(lg.a.f68839a, "ShortTvViewModel", new String[]{"will loadAdUnlockedEps"}, false, 4, null);
                        shortTvAdUnlockDaoU = shortTvViewModel5.U();
                        if (shortTvAdUnlockDaoU != null) {
                            this.L$0 = subject2;
                            this.L$1 = null;
                            this.L$2 = null;
                            this.L$3 = null;
                            this.Z$0 = z10;
                            this.label = 8;
                            objA3 = shortTvAdUnlockDaoU.a(str2, this);
                            if (objA3 == objF) {
                                return objF;
                            }
                            eVar4 = (com.transsion.shorttv.db.e) objA3;
                            if (eVar4 != null || (setC = eVar4.c()) == null) {
                                unit = null;
                            } else {
                                lg.a.C0828a.r(lg.a.f68839a, "ShortTvViewModel", new String[]{"loadAdUnlockedEps result=" + setC}, false, 4, null);
                                if (!setC.isEmpty()) {
                                    subject2.getAdUnlockedEps().addAll(setC);
                                }
                                unit = Unit.f67061a;
                            }
                        } else {
                            unit = null;
                        }
                        objM454constructorimpl = Result.m454constructorimpl(unit);
                        thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
                        if (thM457exceptionOrNullimpl != null) {
                            lg.a.C0828a.l(lg.a.f68839a, "ShortTvViewModel", "loadAdUnlockedEps error: " + thM457exceptionOrNullimpl, false, 4, null);
                        }
                        if (!Intrinsics.c(subject2, this.this$0.f53685g.f())) {
                            lg.a.C0828a.f(lg.a.f68839a, "ShortTvViewModel", "getShortTvInfo,set newSubject:" + this.$subjectId, false, 4, null);
                            this.this$0.f53685g.q(subject2);
                            b0 b0Var3 = this.this$0.D;
                            shortTVFavInfo = subject2.getShortTVFavInfo();
                            if (shortTVFavInfo != null) {
                                boolA = Boxing.a(shortTVFavInfo.getHasFavorite());
                            } else {
                                boolA = null;
                            }
                            b0Var3.q(boolA);
                        }
                        totalEpisode = subject2.getTotalEpisode();
                        dVarS0 = this.this$0.s0();
                        if (dVarS0 != null) {
                            String str15 = this.$subjectId;
                            this.L$0 = subject2;
                            this.L$1 = null;
                            this.L$2 = null;
                            this.L$3 = null;
                            this.Z$0 = z10;
                            this.I$0 = totalEpisode;
                            this.label = 9;
                            objB = dVarS0.b(str15, this);
                            if (objB == objF) {
                                return objF;
                            }
                            List list6 = (List) objB;
                            subject = subject2;
                            list = list6;
                        } else {
                            subject = subject2;
                            list = null;
                        }
                        arrayList = new ArrayList();
                        if (z10) {
                            if (subject.getTrailer() == null && subject.getShortTVFirstEp() != null && lr.c.f69031a.b().b()) {
                                this.this$0.L.q(Boxing.a(true));
                                ShortTvViewModel shortTvViewModel6 = this.this$0;
                                String str16 = this.$subjectId;
                                this.L$0 = subject;
                                this.L$1 = list;
                                this.L$2 = arrayList;
                                this.L$3 = null;
                                this.I$0 = totalEpisode;
                                this.label = 10;
                                objI0 = shortTvViewModel6.I0(str16, subject, this);
                                if (objI0 == objF) {
                                    return objF;
                                }
                                Boxing.a(arrayList.add((js.e) objI0));
                            } else {
                                this.this$0.L.q(Boxing.a(false));
                                Unit unit7 = Unit.f67061a;
                            }
                            list2 = arrayList;
                            if (1 <= totalEpisode) {
                                i11 = 1;
                                while (true) {
                                    if (list != null) {
                                        it = list.iterator();
                                        do {
                                            if (it.hasNext()) {
                                                next = it.next();
                                            } else {
                                                next = null;
                                            }
                                            shortTVFirstEp = (ShortTVItem) next;
                                        } while (((ShortTVItem) next).getEp() != i11);
                                        shortTVFirstEp = (ShortTVItem) next;
                                    } else {
                                        shortTVFirstEp = null;
                                    }
                                    if (i11 == 1) {
                                        eVar2 = new js.e(this.$subjectId, i11, null, 0, 12, null);
                                        if (shortTVFirstEp != null) {
                                            downloadStatus2 = shortTVFirstEp.getDownloadStatus();
                                        } else {
                                            downloadStatus2 = 0;
                                        }
                                        eVar2.g(downloadStatus2);
                                        if (eVar2.b() != 5) {
                                            shortTVFirstEp = subject.getShortTVFirstEp();
                                        }
                                        eVar2.h(shortTVFirstEp);
                                        list2.add(eVar2);
                                    } else {
                                        eVar = new js.e(this.$subjectId, i11, null, 0, 12, null);
                                        if (shortTVFirstEp != null) {
                                            downloadStatus = shortTVFirstEp.getDownloadStatus();
                                        } else {
                                            downloadStatus = 0;
                                        }
                                        eVar.g(downloadStatus);
                                        if (eVar.b() != 5) {
                                            shortTVFirstEp = null;
                                        }
                                        eVar.h(shortTVFirstEp);
                                        list2.add(eVar);
                                    }
                                    if (i11 != totalEpisode) {
                                        i11++;
                                    }
                                }
                            }
                            if (subject.getShortTVFavInfo() == null) {
                                shortTvFavoriteDaoB0 = this.this$0.b0();
                                if (shortTvFavoriteDaoB0 != null) {
                                    String str17 = this.$subjectId;
                                    this.L$0 = list2;
                                    this.L$1 = subject;
                                    this.L$2 = null;
                                    this.L$3 = null;
                                    this.label = 11;
                                    objA = shortTvFavoriteDaoB0.a(str17, this);
                                    if (objA == objF) {
                                        return objF;
                                    }
                                    shortTvFavoriteStateBean = (ShortTvFavoriteStateBean) objA;
                                    if (shortTvFavoriteStateBean != null) {
                                        shortTVFavInfo4 = new ShortTVFavInfo(shortTvFavoriteStateBean.getFavoriteNum(), shortTvFavoriteStateBean.getHasFavorite(), shortTvFavoriteStateBean.getFavoriteTime());
                                    }
                                }
                                subject.setShortTVFavInfo(shortTVFavInfo4);
                            }
                            arrayList = list2;
                            this.this$0.f53677a0.put(this.$subjectId + this.$ep, Boxing.d(2));
                        } else {
                            num = this.$dataSource;
                            if (num != null && num.intValue() == 1) {
                                return Unit.f67061a;
                            }
                            if (list != null) {
                            }
                            lg.a.C0828a.f(lg.a.f68839a, "ShortTvViewModel", "无网，显示下载数据, " + (list != null ? Boxing.d(list.size()) : null), false, 4, null);
                            if (list != null && (listI0 = CollectionsKt.I0(list, new Comparator() { // from class: com.transsion.shorttv.viewmodel.ShortTvViewModel$getShortTvEpisodes$1$invokeSuspend$$inlined$sortedBy$1
                                /* JADX WARN: Multi-variable type inference failed */
                                @Override // java.util.Comparator
                                public final int compare(T t11, T t12) {
                                    return ComparisonsKt.d(Integer.valueOf(((ShortTVItem) t11).getEp()), Integer.valueOf(((ShortTVItem) t12).getEp()));
                                }
                            })) != null) {
                                str = this.$subjectId;
                                while (r0.hasNext()) {
                                    js.e eVar7 = new js.e(str, shortTVItem.getEp(), null, 0, 12, null);
                                    eVar7.g(shortTVItem.getDownloadStatus());
                                    eVar7.h(shortTVItem);
                                    arrayList.add(eVar7);
                                }
                                Unit unit8 = Unit.f67061a;
                            }
                            this.this$0.f53677a0.put(this.$subjectId + this.$ep, Boxing.d(1));
                        }
                        this.this$0.g1(false);
                        this.this$0.f53695q.q(arrayList);
                        return Unit.f67061a;
                    }
                    subject6 = this.$subject;
                    subject2 = subject6;
                    z10 = zE;
                    if (subject2 == null) {
                        this.this$0.g1(false);
                        this.this$0.f53685g.q(null);
                        this.this$0.f53695q.q(CollectionsKt.l());
                        return Unit.f67061a;
                    }
                    ShortTvViewModel shortTvViewModel7 = this.this$0;
                    str2 = this.$subjectId;
                    Result.Companion companion4 = Result.INSTANCE;
                    lg.a.C0828a.r(lg.a.f68839a, "ShortTvViewModel", new String[]{"will loadAdUnlockedEps"}, false, 4, null);
                    shortTvAdUnlockDaoU = shortTvViewModel7.U();
                    if (shortTvAdUnlockDaoU != null) {
                        this.L$0 = subject2;
                        this.L$1 = null;
                        this.L$2 = null;
                        this.L$3 = null;
                        this.Z$0 = z10;
                        this.label = 8;
                        objA3 = shortTvAdUnlockDaoU.a(str2, this);
                        if (objA3 == objF) {
                            return objF;
                        }
                        eVar4 = (com.transsion.shorttv.db.e) objA3;
                        if (eVar4 != null) {
                            unit = null;
                        } else {
                            unit = null;
                        }
                    } else {
                        unit = null;
                    }
                    objM454constructorimpl = Result.m454constructorimpl(unit);
                    thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
                    if (thM457exceptionOrNullimpl != null) {
                        lg.a.C0828a.l(lg.a.f68839a, "ShortTvViewModel", "loadAdUnlockedEps error: " + thM457exceptionOrNullimpl, false, 4, null);
                    }
                    if (!Intrinsics.c(subject2, this.this$0.f53685g.f())) {
                        lg.a.C0828a.f(lg.a.f68839a, "ShortTvViewModel", "getShortTvInfo,set newSubject:" + this.$subjectId, false, 4, null);
                        this.this$0.f53685g.q(subject2);
                        b0 b0Var4 = this.this$0.D;
                        shortTVFavInfo = subject2.getShortTVFavInfo();
                        if (shortTVFavInfo != null) {
                            boolA = Boxing.a(shortTVFavInfo.getHasFavorite());
                        } else {
                            boolA = null;
                        }
                        b0Var4.q(boolA);
                    }
                    totalEpisode = subject2.getTotalEpisode();
                    dVarS0 = this.this$0.s0();
                    if (dVarS0 != null) {
                        String str18 = this.$subjectId;
                        this.L$0 = subject2;
                        this.L$1 = null;
                        this.L$2 = null;
                        this.L$3 = null;
                        this.Z$0 = z10;
                        this.I$0 = totalEpisode;
                        this.label = 9;
                        objB = dVarS0.b(str18, this);
                        if (objB == objF) {
                            return objF;
                        }
                        List list7 = (List) objB;
                        subject = subject2;
                        list = list7;
                    } else {
                        subject = subject2;
                        list = null;
                    }
                    arrayList = new ArrayList();
                    if (z10) {
                        if (subject.getTrailer() == null) {
                        }
                        this.this$0.L.q(Boxing.a(false));
                        Unit unit9 = Unit.f67061a;
                        list2 = arrayList;
                        if (1 <= totalEpisode) {
                            i11 = 1;
                            while (true) {
                                if (list != null) {
                                    it = list.iterator();
                                    do {
                                        if (it.hasNext()) {
                                            next = it.next();
                                        } else {
                                            next = null;
                                        }
                                        shortTVFirstEp = (ShortTVItem) next;
                                    } while (((ShortTVItem) next).getEp() != i11);
                                    shortTVFirstEp = (ShortTVItem) next;
                                } else {
                                    shortTVFirstEp = null;
                                }
                                if (i11 == 1) {
                                    eVar2 = new js.e(this.$subjectId, i11, null, 0, 12, null);
                                    if (shortTVFirstEp != null) {
                                        downloadStatus2 = shortTVFirstEp.getDownloadStatus();
                                    } else {
                                        downloadStatus2 = 0;
                                    }
                                    eVar2.g(downloadStatus2);
                                    if (eVar2.b() != 5) {
                                        shortTVFirstEp = subject.getShortTVFirstEp();
                                    }
                                    eVar2.h(shortTVFirstEp);
                                    list2.add(eVar2);
                                } else {
                                    eVar = new js.e(this.$subjectId, i11, null, 0, 12, null);
                                    if (shortTVFirstEp != null) {
                                        downloadStatus = shortTVFirstEp.getDownloadStatus();
                                    } else {
                                        downloadStatus = 0;
                                    }
                                    eVar.g(downloadStatus);
                                    if (eVar.b() != 5) {
                                        shortTVFirstEp = null;
                                    }
                                    eVar.h(shortTVFirstEp);
                                    list2.add(eVar);
                                }
                                if (i11 != totalEpisode) {
                                    i11++;
                                }
                            }
                        }
                        if (subject.getShortTVFavInfo() == null) {
                            shortTvFavoriteDaoB0 = this.this$0.b0();
                            if (shortTvFavoriteDaoB0 != null) {
                                String str19 = this.$subjectId;
                                this.L$0 = list2;
                                this.L$1 = subject;
                                this.L$2 = null;
                                this.L$3 = null;
                                this.label = 11;
                                objA = shortTvFavoriteDaoB0.a(str19, this);
                                if (objA == objF) {
                                    return objF;
                                }
                                shortTvFavoriteStateBean = (ShortTvFavoriteStateBean) objA;
                                if (shortTvFavoriteStateBean != null) {
                                    shortTVFavInfo4 = new ShortTVFavInfo(shortTvFavoriteStateBean.getFavoriteNum(), shortTvFavoriteStateBean.getHasFavorite(), shortTvFavoriteStateBean.getFavoriteTime());
                                }
                            }
                            subject.setShortTVFavInfo(shortTVFavInfo4);
                        }
                        arrayList = list2;
                        this.this$0.f53677a0.put(this.$subjectId + this.$ep, Boxing.d(2));
                    } else {
                        num = this.$dataSource;
                        if (num != null) {
                            return Unit.f67061a;
                        }
                        if (list != null) {
                        }
                        lg.a.C0828a.f(lg.a.f68839a, "ShortTvViewModel", "无网，显示下载数据, " + (list != null ? Boxing.d(list.size()) : null), false, 4, null);
                        if (list != null) {
                            str = this.$subjectId;
                            while (r0.hasNext()) {
                                js.e eVar8 = new js.e(str, shortTVItem.getEp(), null, 0, 12, null);
                                eVar8.g(shortTVItem.getDownloadStatus());
                                eVar8.h(shortTVItem);
                                arrayList.add(eVar8);
                            }
                            Unit unit10 = Unit.f67061a;
                        }
                        this.this$0.f53677a0.put(this.$subjectId + this.$ep, Boxing.d(1));
                    }
                    this.this$0.g1(false);
                    this.this$0.f53695q.q(arrayList);
                    return Unit.f67061a;
                case 1:
                    zE = this.Z$0;
                    n0Var = (n0) this.L$0;
                    ResultKt.b(obj);
                    objC = obj;
                    n0Var2 = n0Var;
                    shortTvInnerPlayBean = (ShortTvInnerPlayBean) objC;
                    if (shortTvInnerPlayBean != null) {
                        lg.a.C0828a.f(lg.a.f68839a, "ShortTvViewModel", "获取到历史：" + shortTvInnerPlayBean, false, 4, null);
                        this.this$0.J.q(shortTvInnerPlayBean);
                    }
                    iIntValue = -1;
                    if (Intrinsics.c(this.$currentSubjectId, this.$subjectId)) {
                        iIntValue = num2.intValue();
                    }
                    int i13 = iIntValue;
                    iS = this.this$0.S(i13, shortTvInnerPlayBean, this.$subject, this.$ep, this.$isHistoryFirst);
                    c0828a = lg.a.f68839a;
                    lg.a.C0828a.f(c0828a, "ShortTvViewModel", "lastEp: " + i13 + ", historyItem: " + shortTvInnerPlayBean + ", firstSelectEp:" + iS, false, 4, null);
                    arrayList2 = new ArrayList();
                    subject3 = this.$subject;
                    if (subject3 != null) {
                        trailer = subject3.getTrailer();
                    } else {
                        trailer = null;
                    }
                    if (trailer != null) {
                        this.this$0.L.q(Boxing.a(false));
                        lg.a.C0828a.f(c0828a, "ShortTvViewModel", "不存在预告片", false, 4, null);
                        subject4 = this.$subject;
                        if (subject4 != null) {
                            shortTVFirstEp2 = subject4.getShortTVFirstEp();
                        } else {
                            shortTVFirstEp2 = null;
                        }
                        if (shortTVFirstEp2 != null) {
                            if (shortTVFirstEp2.getEp() == iS) {
                                lg.a.C0828a.f(c0828a, "ShortTvViewModel", "需要预加载第一集", false, 4, null);
                                eVar3 = new js.e(this.$subjectId, shortTVFirstEp2.getEp(), shortTVFirstEp2, 0, 8, null);
                                if (this.$subject.getShortTVFavInfo() == null) {
                                    subject5 = this.$subject;
                                    shortTvFavoriteDaoB1 = this.this$0.b0();
                                    if (shortTvFavoriteDaoB1 != null) {
                                        String str20 = this.$subjectId;
                                        this.L$0 = n0Var2;
                                        this.L$1 = arrayList2;
                                        this.L$2 = eVar3;
                                        this.L$3 = subject5;
                                        this.Z$0 = zE;
                                        this.label = 3;
                                        objA2 = shortTvFavoriteDaoB1.a(str20, this);
                                        if (objA2 == objF) {
                                            return objF;
                                        }
                                        shortTvFavoriteStateBean2 = (ShortTvFavoriteStateBean) objA2;
                                        if (shortTvFavoriteStateBean2 != null) {
                                            shortTVFavInfo2 = new ShortTVFavInfo(shortTvFavoriteStateBean2.getFavoriteNum(), shortTvFavoriteStateBean2.getHasFavorite(), shortTvFavoriteStateBean2.getFavoriteTime());
                                        } else {
                                            shortTVFavInfo2 = null;
                                        }
                                    } else {
                                        shortTVFavInfo2 = null;
                                    }
                                    subject5.setShortTVFavInfo(shortTVFavInfo2);
                                }
                                arrayList2.add(eVar3);
                                this.this$0.g1(false);
                                this.this$0.f53685g.q(this.$subject);
                                this.this$0.f53695q.q(arrayList2);
                                this.this$0.w0(this.$subjectId, 2);
                            } else {
                                lg.a.C0828a.f(c0828a, "ShortTvViewModel", "不需要预加载第一集", false, 4, null);
                            }
                        }
                    } else {
                        this.this$0.L.q(Boxing.a(false));
                        lg.a.C0828a.f(c0828a, "ShortTvViewModel", "不存在预告片", false, 4, null);
                        subject4 = this.$subject;
                        if (subject4 != null) {
                            shortTVFirstEp2 = subject4.getShortTVFirstEp();
                        } else {
                            shortTVFirstEp2 = null;
                        }
                        if (shortTVFirstEp2 != null) {
                            if (shortTVFirstEp2.getEp() == iS) {
                                lg.a.C0828a.f(c0828a, "ShortTvViewModel", "需要预加载第一集", false, 4, null);
                                eVar3 = new js.e(this.$subjectId, shortTVFirstEp2.getEp(), shortTVFirstEp2, 0, 8, null);
                                if (this.$subject.getShortTVFavInfo() == null) {
                                    subject5 = this.$subject;
                                    shortTvFavoriteDaoB1 = this.this$0.b0();
                                    if (shortTvFavoriteDaoB1 != null) {
                                        String str21 = this.$subjectId;
                                        this.L$0 = n0Var2;
                                        this.L$1 = arrayList2;
                                        this.L$2 = eVar3;
                                        this.L$3 = subject5;
                                        this.Z$0 = zE;
                                        this.label = 3;
                                        objA2 = shortTvFavoriteDaoB1.a(str21, this);
                                        if (objA2 == objF) {
                                            return objF;
                                        }
                                        shortTvFavoriteStateBean2 = (ShortTvFavoriteStateBean) objA2;
                                        if (shortTvFavoriteStateBean2 != null) {
                                            shortTVFavInfo2 = new ShortTVFavInfo(shortTvFavoriteStateBean2.getFavoriteNum(), shortTvFavoriteStateBean2.getHasFavorite(), shortTvFavoriteStateBean2.getFavoriteTime());
                                        } else {
                                            shortTVFavInfo2 = null;
                                        }
                                    } else {
                                        shortTVFavInfo2 = null;
                                    }
                                    subject5.setShortTVFavInfo(shortTVFavInfo2);
                                }
                                arrayList2.add(eVar3);
                                this.this$0.g1(false);
                                this.this$0.f53685g.q(this.$subject);
                                this.this$0.f53695q.q(arrayList2);
                                this.this$0.w0(this.$subjectId, 2);
                            } else {
                                lg.a.C0828a.f(c0828a, "ShortTvViewModel", "不需要预加载第一集", false, 4, null);
                            }
                        }
                    }
                    this.this$0.f53677a0.put(this.$subjectId + this.$ep, Boxing.d(0));
                    if (zE) {
                        subject6 = this.$subject;
                        if (subject6 != null) {
                            dVarS1 = this.this$0.s0();
                            if (dVarS1 != null) {
                                String str22 = this.$subjectId;
                                this.L$0 = n0Var2;
                                this.L$1 = null;
                                this.L$2 = null;
                                this.L$3 = null;
                                this.Z$0 = zE;
                                this.label = 7;
                                objK = dVarS1.k(str22, this);
                                if (objK == objF) {
                                    return objF;
                                }
                                subject6 = (Subject) objK;
                            } else {
                                z10 = zE;
                                subject2 = null;
                            }
                        }
                        if (subject2 == null) {
                            this.this$0.g1(false);
                            this.this$0.f53685g.q(null);
                            this.this$0.f53695q.q(CollectionsKt.l());
                            return Unit.f67061a;
                        }
                        ShortTvViewModel shortTvViewModel8 = this.this$0;
                        str2 = this.$subjectId;
                        Result.Companion companion5 = Result.INSTANCE;
                        lg.a.C0828a.r(lg.a.f68839a, "ShortTvViewModel", new String[]{"will loadAdUnlockedEps"}, false, 4, null);
                        shortTvAdUnlockDaoU = shortTvViewModel8.U();
                        if (shortTvAdUnlockDaoU != null) {
                            this.L$0 = subject2;
                            this.L$1 = null;
                            this.L$2 = null;
                            this.L$3 = null;
                            this.Z$0 = z10;
                            this.label = 8;
                            objA3 = shortTvAdUnlockDaoU.a(str2, this);
                            if (objA3 == objF) {
                                return objF;
                            }
                            eVar4 = (com.transsion.shorttv.db.e) objA3;
                            if (eVar4 != null) {
                                unit = null;
                            } else {
                                unit = null;
                            }
                        } else {
                            unit = null;
                        }
                        objM454constructorimpl = Result.m454constructorimpl(unit);
                        thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
                        if (thM457exceptionOrNullimpl != null) {
                            lg.a.C0828a.l(lg.a.f68839a, "ShortTvViewModel", "loadAdUnlockedEps error: " + thM457exceptionOrNullimpl, false, 4, null);
                        }
                        if (!Intrinsics.c(subject2, this.this$0.f53685g.f())) {
                            lg.a.C0828a.f(lg.a.f68839a, "ShortTvViewModel", "getShortTvInfo,set newSubject:" + this.$subjectId, false, 4, null);
                            this.this$0.f53685g.q(subject2);
                            b0 b0Var5 = this.this$0.D;
                            shortTVFavInfo = subject2.getShortTVFavInfo();
                            if (shortTVFavInfo != null) {
                                boolA = Boxing.a(shortTVFavInfo.getHasFavorite());
                            } else {
                                boolA = null;
                            }
                            b0Var5.q(boolA);
                        }
                        totalEpisode = subject2.getTotalEpisode();
                        dVarS0 = this.this$0.s0();
                        if (dVarS0 != null) {
                            String str110 = this.$subjectId;
                            this.L$0 = subject2;
                            this.L$1 = null;
                            this.L$2 = null;
                            this.L$3 = null;
                            this.Z$0 = z10;
                            this.I$0 = totalEpisode;
                            this.label = 9;
                            objB = dVarS0.b(str110, this);
                            if (objB == objF) {
                                return objF;
                            }
                            List list8 = (List) objB;
                            subject = subject2;
                            list = list8;
                        } else {
                            subject = subject2;
                            list = null;
                        }
                        arrayList = new ArrayList();
                        if (z10) {
                            if (subject.getTrailer() == null) {
                            }
                            this.this$0.L.q(Boxing.a(false));
                            Unit unit11 = Unit.f67061a;
                            list2 = arrayList;
                            if (1 <= totalEpisode) {
                                i11 = 1;
                                while (true) {
                                    if (list != null) {
                                        it = list.iterator();
                                        do {
                                            if (it.hasNext()) {
                                                next = it.next();
                                            } else {
                                                next = null;
                                            }
                                            shortTVFirstEp = (ShortTVItem) next;
                                        } while (((ShortTVItem) next).getEp() != i11);
                                        shortTVFirstEp = (ShortTVItem) next;
                                    } else {
                                        shortTVFirstEp = null;
                                    }
                                    if (i11 == 1) {
                                        eVar2 = new js.e(this.$subjectId, i11, null, 0, 12, null);
                                        if (shortTVFirstEp != null) {
                                            downloadStatus2 = shortTVFirstEp.getDownloadStatus();
                                        } else {
                                            downloadStatus2 = 0;
                                        }
                                        eVar2.g(downloadStatus2);
                                        if (eVar2.b() != 5) {
                                            shortTVFirstEp = subject.getShortTVFirstEp();
                                        }
                                        eVar2.h(shortTVFirstEp);
                                        list2.add(eVar2);
                                    } else {
                                        eVar = new js.e(this.$subjectId, i11, null, 0, 12, null);
                                        if (shortTVFirstEp != null) {
                                            downloadStatus = shortTVFirstEp.getDownloadStatus();
                                        } else {
                                            downloadStatus = 0;
                                        }
                                        eVar.g(downloadStatus);
                                        if (eVar.b() != 5) {
                                            shortTVFirstEp = null;
                                        }
                                        eVar.h(shortTVFirstEp);
                                        list2.add(eVar);
                                    }
                                    if (i11 != totalEpisode) {
                                        i11++;
                                    }
                                }
                            }
                            if (subject.getShortTVFavInfo() == null) {
                                shortTvFavoriteDaoB0 = this.this$0.b0();
                                if (shortTvFavoriteDaoB0 != null) {
                                    String str111 = this.$subjectId;
                                    this.L$0 = list2;
                                    this.L$1 = subject;
                                    this.L$2 = null;
                                    this.L$3 = null;
                                    this.label = 11;
                                    objA = shortTvFavoriteDaoB0.a(str111, this);
                                    if (objA == objF) {
                                        return objF;
                                    }
                                    shortTvFavoriteStateBean = (ShortTvFavoriteStateBean) objA;
                                    if (shortTvFavoriteStateBean != null) {
                                        shortTVFavInfo4 = new ShortTVFavInfo(shortTvFavoriteStateBean.getFavoriteNum(), shortTvFavoriteStateBean.getHasFavorite(), shortTvFavoriteStateBean.getFavoriteTime());
                                    }
                                }
                                subject.setShortTVFavInfo(shortTVFavInfo4);
                            }
                            arrayList = list2;
                            this.this$0.f53677a0.put(this.$subjectId + this.$ep, Boxing.d(2));
                            break;
                        } else {
                            num = this.$dataSource;
                            if (num != null) {
                                return Unit.f67061a;
                            }
                            if (list != null) {
                            }
                            lg.a.C0828a.f(lg.a.f68839a, "ShortTvViewModel", "无网，显示下载数据, " + (list != null ? Boxing.d(list.size()) : null), false, 4, null);
                            if (list != null) {
                                str = this.$subjectId;
                                while (r0.hasNext()) {
                                    js.e eVar9 = new js.e(str, shortTVItem.getEp(), null, 0, 12, null);
                                    eVar9.g(shortTVItem.getDownloadStatus());
                                    eVar9.h(shortTVItem);
                                    arrayList.add(eVar9);
                                }
                                Unit unit12 = Unit.f67061a;
                            }
                            this.this$0.f53677a0.put(this.$subjectId + this.$ep, Boxing.d(1));
                        }
                        this.this$0.g1(false);
                        this.this$0.f53695q.q(arrayList);
                        return Unit.f67061a;
                    }
                    subject7 = this.$subject;
                    if (subject7 != null) {
                        unlockedEps = subject7.getUnlockedEps();
                    } else {
                        unlockedEps = null;
                    }
                    list3 = unlockedEps;
                    if (list3 != null) {
                        break;
                    }
                    lg.a.C0828a.f(lg.a.f68839a, "ShortTvViewModel", "getShortTvInfo,subjectId:" + this.$subjectId, false, 4, null);
                    os.a aVar2 = this.this$0.f53676a;
                    String str23 = this.$subjectId;
                    this.L$0 = n0Var2;
                    this.L$1 = null;
                    this.L$2 = null;
                    this.L$3 = null;
                    this.Z$0 = zE;
                    this.label = 4;
                    objD = os.a.C0875a.d(aVar2, str23, null, this, 2, null);
                    if (objD == objF) {
                        return objF;
                    }
                    baseDto = (BaseDto) objD;
                    z11 = zE;
                    if (baseDto != null) {
                        subject8 = (Subject) baseDto.getData();
                    } else {
                        subject8 = null;
                    }
                    zr.b.f79451a.e(subject8);
                    if (subject8 != null) {
                        subject9 = this.$subject;
                        if (subject9 != null) {
                            ops = subject9.getOps();
                        } else {
                            ops = null;
                        }
                        subject8.setOps(ops);
                        Unit unit13 = Unit.f67061a;
                    }
                    ShortTvViewModel shortTvViewModel9 = this.this$0;
                    String str112 = this.$subjectId;
                    if (subject8 != null) {
                        shortTVFavInfo3 = subject8.getShortTVFavInfo();
                    } else {
                        shortTVFavInfo3 = null;
                    }
                    shortTvViewModel9.r1(str112, shortTVFavInfo3);
                    if (subject8 == null) {
                        dVarS2 = this.this$0.s0();
                        if (dVarS2 != null) {
                            String str113 = this.$subjectId;
                            this.L$0 = n0Var2;
                            this.L$1 = null;
                            this.L$2 = null;
                            this.L$3 = null;
                            this.Z$0 = z11;
                            this.label = 5;
                            objK2 = dVarS2.k(str113, this);
                            if (objK2 == objF) {
                                return objF;
                            }
                            z13 = z11;
                            n0Var5 = n0Var2;
                            subject8 = (Subject) objK2;
                            z11 = z13;
                        } else {
                            subject8 = null;
                        }
                    }
                    z10 = z11;
                    subject2 = subject8;
                    if (subject2 == null) {
                        this.this$0.g1(false);
                        this.this$0.f53685g.q(null);
                        this.this$0.f53695q.q(CollectionsKt.l());
                        return Unit.f67061a;
                    }
                    ShortTvViewModel shortTvViewModel10 = this.this$0;
                    str2 = this.$subjectId;
                    Result.Companion companion6 = Result.INSTANCE;
                    lg.a.C0828a.r(lg.a.f68839a, "ShortTvViewModel", new String[]{"will loadAdUnlockedEps"}, false, 4, null);
                    shortTvAdUnlockDaoU = shortTvViewModel10.U();
                    if (shortTvAdUnlockDaoU != null) {
                        this.L$0 = subject2;
                        this.L$1 = null;
                        this.L$2 = null;
                        this.L$3 = null;
                        this.Z$0 = z10;
                        this.label = 8;
                        objA3 = shortTvAdUnlockDaoU.a(str2, this);
                        if (objA3 == objF) {
                            return objF;
                        }
                        eVar4 = (com.transsion.shorttv.db.e) objA3;
                        if (eVar4 != null) {
                            unit = null;
                        } else {
                            unit = null;
                        }
                    } else {
                        unit = null;
                    }
                    objM454constructorimpl = Result.m454constructorimpl(unit);
                    thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
                    if (thM457exceptionOrNullimpl != null) {
                        lg.a.C0828a.l(lg.a.f68839a, "ShortTvViewModel", "loadAdUnlockedEps error: " + thM457exceptionOrNullimpl, false, 4, null);
                    }
                    if (!Intrinsics.c(subject2, this.this$0.f53685g.f())) {
                        lg.a.C0828a.f(lg.a.f68839a, "ShortTvViewModel", "getShortTvInfo,set newSubject:" + this.$subjectId, false, 4, null);
                        this.this$0.f53685g.q(subject2);
                        b0 b0Var6 = this.this$0.D;
                        shortTVFavInfo = subject2.getShortTVFavInfo();
                        if (shortTVFavInfo != null) {
                            boolA = Boxing.a(shortTVFavInfo.getHasFavorite());
                        } else {
                            boolA = null;
                        }
                        b0Var6.q(boolA);
                    }
                    totalEpisode = subject2.getTotalEpisode();
                    dVarS0 = this.this$0.s0();
                    if (dVarS0 != null) {
                        String str114 = this.$subjectId;
                        this.L$0 = subject2;
                        this.L$1 = null;
                        this.L$2 = null;
                        this.L$3 = null;
                        this.Z$0 = z10;
                        this.I$0 = totalEpisode;
                        this.label = 9;
                        objB = dVarS0.b(str114, this);
                        if (objB == objF) {
                            return objF;
                        }
                        List list9 = (List) objB;
                        subject = subject2;
                        list = list9;
                    } else {
                        subject = subject2;
                        list = null;
                    }
                    arrayList = new ArrayList();
                    if (z10) {
                        if (subject.getTrailer() == null) {
                        }
                        this.this$0.L.q(Boxing.a(false));
                        Unit unit14 = Unit.f67061a;
                        list2 = arrayList;
                        if (1 <= totalEpisode) {
                            i11 = 1;
                            while (true) {
                                if (list != null) {
                                    it = list.iterator();
                                    do {
                                        if (it.hasNext()) {
                                            next = it.next();
                                        } else {
                                            next = null;
                                        }
                                        shortTVFirstEp = (ShortTVItem) next;
                                    } while (((ShortTVItem) next).getEp() != i11);
                                    shortTVFirstEp = (ShortTVItem) next;
                                } else {
                                    shortTVFirstEp = null;
                                }
                                if (i11 == 1) {
                                    eVar2 = new js.e(this.$subjectId, i11, null, 0, 12, null);
                                    if (shortTVFirstEp != null) {
                                        downloadStatus2 = shortTVFirstEp.getDownloadStatus();
                                    } else {
                                        downloadStatus2 = 0;
                                    }
                                    eVar2.g(downloadStatus2);
                                    if (eVar2.b() != 5) {
                                        shortTVFirstEp = subject.getShortTVFirstEp();
                                    }
                                    eVar2.h(shortTVFirstEp);
                                    list2.add(eVar2);
                                } else {
                                    eVar = new js.e(this.$subjectId, i11, null, 0, 12, null);
                                    if (shortTVFirstEp != null) {
                                        downloadStatus = shortTVFirstEp.getDownloadStatus();
                                    } else {
                                        downloadStatus = 0;
                                    }
                                    eVar.g(downloadStatus);
                                    if (eVar.b() != 5) {
                                        shortTVFirstEp = null;
                                    }
                                    eVar.h(shortTVFirstEp);
                                    list2.add(eVar);
                                }
                                if (i11 != totalEpisode) {
                                    i11++;
                                }
                            }
                        }
                        if (subject.getShortTVFavInfo() == null) {
                            shortTvFavoriteDaoB0 = this.this$0.b0();
                            if (shortTvFavoriteDaoB0 != null) {
                                String str115 = this.$subjectId;
                                this.L$0 = list2;
                                this.L$1 = subject;
                                this.L$2 = null;
                                this.L$3 = null;
                                this.label = 11;
                                objA = shortTvFavoriteDaoB0.a(str115, this);
                                if (objA == objF) {
                                    return objF;
                                }
                                shortTvFavoriteStateBean = (ShortTvFavoriteStateBean) objA;
                                if (shortTvFavoriteStateBean != null) {
                                    shortTVFavInfo4 = new ShortTVFavInfo(shortTvFavoriteStateBean.getFavoriteNum(), shortTvFavoriteStateBean.getHasFavorite(), shortTvFavoriteStateBean.getFavoriteTime());
                                }
                            }
                            subject.setShortTVFavInfo(shortTVFavInfo4);
                        }
                        arrayList = list2;
                        this.this$0.f53677a0.put(this.$subjectId + this.$ep, Boxing.d(2));
                        break;
                    } else {
                        num = this.$dataSource;
                        if (num != null) {
                            return Unit.f67061a;
                        }
                        if (list != null) {
                        }
                        lg.a.C0828a.f(lg.a.f68839a, "ShortTvViewModel", "无网，显示下载数据, " + (list != null ? Boxing.d(list.size()) : null), false, 4, null);
                        if (list != null) {
                            str = this.$subjectId;
                            while (r0.hasNext()) {
                                js.e eVar10 = new js.e(str, shortTVItem.getEp(), null, 0, 12, null);
                                eVar10.g(shortTVItem.getDownloadStatus());
                                eVar10.h(shortTVItem);
                                arrayList.add(eVar10);
                            }
                            Unit unit15 = Unit.f67061a;
                        }
                        this.this$0.f53677a0.put(this.$subjectId + this.$ep, Boxing.d(1));
                    }
                    this.this$0.g1(false);
                    this.this$0.f53695q.q(arrayList);
                    return Unit.f67061a;
                    subject2 = subject6;
                    z10 = zE;
                    if (subject2 == null) {
                        this.this$0.g1(false);
                        this.this$0.f53685g.q(null);
                        this.this$0.f53695q.q(CollectionsKt.l());
                        return Unit.f67061a;
                    }
                    ShortTvViewModel shortTvViewModel11 = this.this$0;
                    str2 = this.$subjectId;
                    Result.Companion companion7 = Result.INSTANCE;
                    lg.a.C0828a.r(lg.a.f68839a, "ShortTvViewModel", new String[]{"will loadAdUnlockedEps"}, false, 4, null);
                    shortTvAdUnlockDaoU = shortTvViewModel11.U();
                    if (shortTvAdUnlockDaoU != null) {
                        this.L$0 = subject2;
                        this.L$1 = null;
                        this.L$2 = null;
                        this.L$3 = null;
                        this.Z$0 = z10;
                        this.label = 8;
                        objA3 = shortTvAdUnlockDaoU.a(str2, this);
                        if (objA3 == objF) {
                            return objF;
                        }
                        eVar4 = (com.transsion.shorttv.db.e) objA3;
                        if (eVar4 != null) {
                            unit = null;
                        } else {
                            unit = null;
                        }
                    } else {
                        unit = null;
                    }
                    objM454constructorimpl = Result.m454constructorimpl(unit);
                    thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
                    if (thM457exceptionOrNullimpl != null) {
                        lg.a.C0828a.l(lg.a.f68839a, "ShortTvViewModel", "loadAdUnlockedEps error: " + thM457exceptionOrNullimpl, false, 4, null);
                    }
                    if (!Intrinsics.c(subject2, this.this$0.f53685g.f())) {
                        lg.a.C0828a.f(lg.a.f68839a, "ShortTvViewModel", "getShortTvInfo,set newSubject:" + this.$subjectId, false, 4, null);
                        this.this$0.f53685g.q(subject2);
                        b0 b0Var7 = this.this$0.D;
                        shortTVFavInfo = subject2.getShortTVFavInfo();
                        if (shortTVFavInfo != null) {
                            boolA = Boxing.a(shortTVFavInfo.getHasFavorite());
                        } else {
                            boolA = null;
                        }
                        b0Var7.q(boolA);
                    }
                    totalEpisode = subject2.getTotalEpisode();
                    dVarS0 = this.this$0.s0();
                    if (dVarS0 != null) {
                        String str116 = this.$subjectId;
                        this.L$0 = subject2;
                        this.L$1 = null;
                        this.L$2 = null;
                        this.L$3 = null;
                        this.Z$0 = z10;
                        this.I$0 = totalEpisode;
                        this.label = 9;
                        objB = dVarS0.b(str116, this);
                        if (objB == objF) {
                            return objF;
                        }
                        List list10 = (List) objB;
                        subject = subject2;
                        list = list10;
                    } else {
                        subject = subject2;
                        list = null;
                    }
                    arrayList = new ArrayList();
                    if (z10) {
                        if (subject.getTrailer() == null) {
                        }
                        this.this$0.L.q(Boxing.a(false));
                        Unit unit16 = Unit.f67061a;
                        list2 = arrayList;
                        if (1 <= totalEpisode) {
                            i11 = 1;
                            while (true) {
                                if (list != null) {
                                    it = list.iterator();
                                    do {
                                        if (it.hasNext()) {
                                            next = it.next();
                                        } else {
                                            next = null;
                                        }
                                        shortTVFirstEp = (ShortTVItem) next;
                                    } while (((ShortTVItem) next).getEp() != i11);
                                    shortTVFirstEp = (ShortTVItem) next;
                                } else {
                                    shortTVFirstEp = null;
                                }
                                if (i11 == 1) {
                                    eVar2 = new js.e(this.$subjectId, i11, null, 0, 12, null);
                                    if (shortTVFirstEp != null) {
                                        downloadStatus2 = shortTVFirstEp.getDownloadStatus();
                                    } else {
                                        downloadStatus2 = 0;
                                    }
                                    eVar2.g(downloadStatus2);
                                    if (eVar2.b() != 5) {
                                        shortTVFirstEp = subject.getShortTVFirstEp();
                                    }
                                    eVar2.h(shortTVFirstEp);
                                    list2.add(eVar2);
                                } else {
                                    eVar = new js.e(this.$subjectId, i11, null, 0, 12, null);
                                    if (shortTVFirstEp != null) {
                                        downloadStatus = shortTVFirstEp.getDownloadStatus();
                                    } else {
                                        downloadStatus = 0;
                                    }
                                    eVar.g(downloadStatus);
                                    if (eVar.b() != 5) {
                                        shortTVFirstEp = null;
                                    }
                                    eVar.h(shortTVFirstEp);
                                    list2.add(eVar);
                                }
                                if (i11 != totalEpisode) {
                                    i11++;
                                }
                            }
                        }
                        if (subject.getShortTVFavInfo() == null) {
                            shortTvFavoriteDaoB0 = this.this$0.b0();
                            if (shortTvFavoriteDaoB0 != null) {
                                String str117 = this.$subjectId;
                                this.L$0 = list2;
                                this.L$1 = subject;
                                this.L$2 = null;
                                this.L$3 = null;
                                this.label = 11;
                                objA = shortTvFavoriteDaoB0.a(str117, this);
                                if (objA == objF) {
                                    return objF;
                                }
                                shortTvFavoriteStateBean = (ShortTvFavoriteStateBean) objA;
                                if (shortTvFavoriteStateBean != null) {
                                    shortTVFavInfo4 = new ShortTVFavInfo(shortTvFavoriteStateBean.getFavoriteNum(), shortTvFavoriteStateBean.getHasFavorite(), shortTvFavoriteStateBean.getFavoriteTime());
                                }
                            }
                            subject.setShortTVFavInfo(shortTVFavInfo4);
                        }
                        arrayList = list2;
                        this.this$0.f53677a0.put(this.$subjectId + this.$ep, Boxing.d(2));
                        break;
                    } else {
                        num = this.$dataSource;
                        if (num != null) {
                            return Unit.f67061a;
                        }
                        if (list != null) {
                        }
                        lg.a.C0828a.f(lg.a.f68839a, "ShortTvViewModel", "无网，显示下载数据, " + (list != null ? Boxing.d(list.size()) : null), false, 4, null);
                        if (list != null) {
                            str = this.$subjectId;
                            while (r0.hasNext()) {
                                js.e eVar11 = new js.e(str, shortTVItem.getEp(), null, 0, 12, null);
                                eVar11.g(shortTVItem.getDownloadStatus());
                                eVar11.h(shortTVItem);
                                arrayList.add(eVar11);
                            }
                            Unit unit17 = Unit.f67061a;
                        }
                        this.this$0.f53677a0.put(this.$subjectId + this.$ep, Boxing.d(1));
                    }
                    this.this$0.g1(false);
                    this.this$0.f53695q.q(arrayList);
                    return Unit.f67061a;
                case 2:
                    zE = this.Z$0;
                    List list11 = (List) this.L$1;
                    n0Var3 = (n0) this.L$0;
                    ResultKt.b(obj);
                    arrayList2 = list11;
                    objI1 = obj;
                    arrayList2.add((js.e) objI1);
                    this.this$0.L.q(Boxing.a(true));
                    this.this$0.g1(false);
                    this.this$0.f53685g.q(this.$subject);
                    this.this$0.f53695q.q(arrayList2);
                    n0Var2 = n0Var3;
                    this.this$0.f53677a0.put(this.$subjectId + this.$ep, Boxing.d(0));
                    if (zE) {
                        subject6 = this.$subject;
                        if (subject6 != null) {
                            dVarS1 = this.this$0.s0();
                            if (dVarS1 != null) {
                                String str24 = this.$subjectId;
                                this.L$0 = n0Var2;
                                this.L$1 = null;
                                this.L$2 = null;
                                this.L$3 = null;
                                this.Z$0 = zE;
                                this.label = 7;
                                objK = dVarS1.k(str24, this);
                                if (objK == objF) {
                                    return objF;
                                }
                                subject6 = (Subject) objK;
                            } else {
                                z10 = zE;
                                subject2 = null;
                            }
                        }
                        if (subject2 == null) {
                            this.this$0.g1(false);
                            this.this$0.f53685g.q(null);
                            this.this$0.f53695q.q(CollectionsKt.l());
                            return Unit.f67061a;
                        }
                        ShortTvViewModel shortTvViewModel12 = this.this$0;
                        str2 = this.$subjectId;
                        Result.Companion companion8 = Result.INSTANCE;
                        lg.a.C0828a.r(lg.a.f68839a, "ShortTvViewModel", new String[]{"will loadAdUnlockedEps"}, false, 4, null);
                        shortTvAdUnlockDaoU = shortTvViewModel12.U();
                        if (shortTvAdUnlockDaoU != null) {
                            this.L$0 = subject2;
                            this.L$1 = null;
                            this.L$2 = null;
                            this.L$3 = null;
                            this.Z$0 = z10;
                            this.label = 8;
                            objA3 = shortTvAdUnlockDaoU.a(str2, this);
                            if (objA3 == objF) {
                                return objF;
                            }
                            eVar4 = (com.transsion.shorttv.db.e) objA3;
                            if (eVar4 != null) {
                                unit = null;
                            } else {
                                unit = null;
                            }
                        } else {
                            unit = null;
                        }
                        objM454constructorimpl = Result.m454constructorimpl(unit);
                        thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
                        if (thM457exceptionOrNullimpl != null) {
                            lg.a.C0828a.l(lg.a.f68839a, "ShortTvViewModel", "loadAdUnlockedEps error: " + thM457exceptionOrNullimpl, false, 4, null);
                        }
                        if (!Intrinsics.c(subject2, this.this$0.f53685g.f())) {
                            lg.a.C0828a.f(lg.a.f68839a, "ShortTvViewModel", "getShortTvInfo,set newSubject:" + this.$subjectId, false, 4, null);
                            this.this$0.f53685g.q(subject2);
                            b0 b0Var8 = this.this$0.D;
                            shortTVFavInfo = subject2.getShortTVFavInfo();
                            if (shortTVFavInfo != null) {
                                boolA = Boxing.a(shortTVFavInfo.getHasFavorite());
                            } else {
                                boolA = null;
                            }
                            b0Var8.q(boolA);
                        }
                        totalEpisode = subject2.getTotalEpisode();
                        dVarS0 = this.this$0.s0();
                        if (dVarS0 != null) {
                            String str118 = this.$subjectId;
                            this.L$0 = subject2;
                            this.L$1 = null;
                            this.L$2 = null;
                            this.L$3 = null;
                            this.Z$0 = z10;
                            this.I$0 = totalEpisode;
                            this.label = 9;
                            objB = dVarS0.b(str118, this);
                            if (objB == objF) {
                                return objF;
                            }
                            List list12 = (List) objB;
                            subject = subject2;
                            list = list12;
                        } else {
                            subject = subject2;
                            list = null;
                        }
                        arrayList = new ArrayList();
                        if (z10) {
                            if (subject.getTrailer() == null) {
                            }
                            this.this$0.L.q(Boxing.a(false));
                            Unit unit18 = Unit.f67061a;
                            list2 = arrayList;
                            if (1 <= totalEpisode) {
                                i11 = 1;
                                while (true) {
                                    if (list != null) {
                                        it = list.iterator();
                                        do {
                                            if (it.hasNext()) {
                                                next = it.next();
                                            } else {
                                                next = null;
                                            }
                                            shortTVFirstEp = (ShortTVItem) next;
                                        } while (((ShortTVItem) next).getEp() != i11);
                                        shortTVFirstEp = (ShortTVItem) next;
                                    } else {
                                        shortTVFirstEp = null;
                                    }
                                    if (i11 == 1) {
                                        eVar2 = new js.e(this.$subjectId, i11, null, 0, 12, null);
                                        if (shortTVFirstEp != null) {
                                            downloadStatus2 = shortTVFirstEp.getDownloadStatus();
                                        } else {
                                            downloadStatus2 = 0;
                                        }
                                        eVar2.g(downloadStatus2);
                                        if (eVar2.b() != 5) {
                                            shortTVFirstEp = subject.getShortTVFirstEp();
                                        }
                                        eVar2.h(shortTVFirstEp);
                                        list2.add(eVar2);
                                    } else {
                                        eVar = new js.e(this.$subjectId, i11, null, 0, 12, null);
                                        if (shortTVFirstEp != null) {
                                            downloadStatus = shortTVFirstEp.getDownloadStatus();
                                        } else {
                                            downloadStatus = 0;
                                        }
                                        eVar.g(downloadStatus);
                                        if (eVar.b() != 5) {
                                            shortTVFirstEp = null;
                                        }
                                        eVar.h(shortTVFirstEp);
                                        list2.add(eVar);
                                    }
                                    if (i11 != totalEpisode) {
                                        i11++;
                                    }
                                }
                            }
                            if (subject.getShortTVFavInfo() == null) {
                                shortTvFavoriteDaoB0 = this.this$0.b0();
                                if (shortTvFavoriteDaoB0 != null) {
                                    String str119 = this.$subjectId;
                                    this.L$0 = list2;
                                    this.L$1 = subject;
                                    this.L$2 = null;
                                    this.L$3 = null;
                                    this.label = 11;
                                    objA = shortTvFavoriteDaoB0.a(str119, this);
                                    if (objA == objF) {
                                        return objF;
                                    }
                                    shortTvFavoriteStateBean = (ShortTvFavoriteStateBean) objA;
                                    if (shortTvFavoriteStateBean != null) {
                                        shortTVFavInfo4 = new ShortTVFavInfo(shortTvFavoriteStateBean.getFavoriteNum(), shortTvFavoriteStateBean.getHasFavorite(), shortTvFavoriteStateBean.getFavoriteTime());
                                    }
                                }
                                subject.setShortTVFavInfo(shortTVFavInfo4);
                            }
                            arrayList = list2;
                            this.this$0.f53677a0.put(this.$subjectId + this.$ep, Boxing.d(2));
                            break;
                        } else {
                            num = this.$dataSource;
                            if (num != null) {
                                return Unit.f67061a;
                            }
                            if (list != null) {
                            }
                            lg.a.C0828a.f(lg.a.f68839a, "ShortTvViewModel", "无网，显示下载数据, " + (list != null ? Boxing.d(list.size()) : null), false, 4, null);
                            if (list != null) {
                                str = this.$subjectId;
                                while (r0.hasNext()) {
                                    js.e eVar12 = new js.e(str, shortTVItem.getEp(), null, 0, 12, null);
                                    eVar12.g(shortTVItem.getDownloadStatus());
                                    eVar12.h(shortTVItem);
                                    arrayList.add(eVar12);
                                }
                                Unit unit19 = Unit.f67061a;
                            }
                            this.this$0.f53677a0.put(this.$subjectId + this.$ep, Boxing.d(1));
                        }
                        this.this$0.g1(false);
                        this.this$0.f53695q.q(arrayList);
                        return Unit.f67061a;
                    }
                    subject7 = this.$subject;
                    if (subject7 != null) {
                        unlockedEps = subject7.getUnlockedEps();
                    } else {
                        unlockedEps = null;
                    }
                    list3 = unlockedEps;
                    if (list3 != null) {
                        break;
                    }
                    lg.a.C0828a.f(lg.a.f68839a, "ShortTvViewModel", "getShortTvInfo,subjectId:" + this.$subjectId, false, 4, null);
                    os.a aVar3 = this.this$0.f53676a;
                    String str25 = this.$subjectId;
                    this.L$0 = n0Var2;
                    this.L$1 = null;
                    this.L$2 = null;
                    this.L$3 = null;
                    this.Z$0 = zE;
                    this.label = 4;
                    objD = os.a.C0875a.d(aVar3, str25, null, this, 2, null);
                    if (objD == objF) {
                        return objF;
                    }
                    baseDto = (BaseDto) objD;
                    z11 = zE;
                    if (baseDto != null) {
                        subject8 = (Subject) baseDto.getData();
                    } else {
                        subject8 = null;
                    }
                    zr.b.f79451a.e(subject8);
                    if (subject8 != null) {
                        subject9 = this.$subject;
                        if (subject9 != null) {
                            ops = subject9.getOps();
                        } else {
                            ops = null;
                        }
                        subject8.setOps(ops);
                        Unit unit110 = Unit.f67061a;
                    }
                    ShortTvViewModel shortTvViewModel13 = this.this$0;
                    String str1110 = this.$subjectId;
                    if (subject8 != null) {
                        shortTVFavInfo3 = subject8.getShortTVFavInfo();
                    } else {
                        shortTVFavInfo3 = null;
                    }
                    shortTvViewModel13.r1(str1110, shortTVFavInfo3);
                    if (subject8 == null) {
                        dVarS2 = this.this$0.s0();
                        if (dVarS2 != null) {
                            String str1111 = this.$subjectId;
                            this.L$0 = n0Var2;
                            this.L$1 = null;
                            this.L$2 = null;
                            this.L$3 = null;
                            this.Z$0 = z11;
                            this.label = 5;
                            objK2 = dVarS2.k(str1111, this);
                            if (objK2 == objF) {
                                return objF;
                            }
                            z13 = z11;
                            n0Var5 = n0Var2;
                            subject8 = (Subject) objK2;
                            z11 = z13;
                        } else {
                            subject8 = null;
                        }
                    }
                    z10 = z11;
                    subject2 = subject8;
                    if (subject2 == null) {
                        this.this$0.g1(false);
                        this.this$0.f53685g.q(null);
                        this.this$0.f53695q.q(CollectionsKt.l());
                        return Unit.f67061a;
                    }
                    ShortTvViewModel shortTvViewModel14 = this.this$0;
                    str2 = this.$subjectId;
                    Result.Companion companion9 = Result.INSTANCE;
                    lg.a.C0828a.r(lg.a.f68839a, "ShortTvViewModel", new String[]{"will loadAdUnlockedEps"}, false, 4, null);
                    shortTvAdUnlockDaoU = shortTvViewModel14.U();
                    if (shortTvAdUnlockDaoU != null) {
                        this.L$0 = subject2;
                        this.L$1 = null;
                        this.L$2 = null;
                        this.L$3 = null;
                        this.Z$0 = z10;
                        this.label = 8;
                        objA3 = shortTvAdUnlockDaoU.a(str2, this);
                        if (objA3 == objF) {
                            return objF;
                        }
                        eVar4 = (com.transsion.shorttv.db.e) objA3;
                        if (eVar4 != null) {
                            unit = null;
                        } else {
                            unit = null;
                        }
                    } else {
                        unit = null;
                    }
                    objM454constructorimpl = Result.m454constructorimpl(unit);
                    thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
                    if (thM457exceptionOrNullimpl != null) {
                        lg.a.C0828a.l(lg.a.f68839a, "ShortTvViewModel", "loadAdUnlockedEps error: " + thM457exceptionOrNullimpl, false, 4, null);
                    }
                    if (!Intrinsics.c(subject2, this.this$0.f53685g.f())) {
                        lg.a.C0828a.f(lg.a.f68839a, "ShortTvViewModel", "getShortTvInfo,set newSubject:" + this.$subjectId, false, 4, null);
                        this.this$0.f53685g.q(subject2);
                        b0 b0Var9 = this.this$0.D;
                        shortTVFavInfo = subject2.getShortTVFavInfo();
                        if (shortTVFavInfo != null) {
                            boolA = Boxing.a(shortTVFavInfo.getHasFavorite());
                        } else {
                            boolA = null;
                        }
                        b0Var9.q(boolA);
                    }
                    totalEpisode = subject2.getTotalEpisode();
                    dVarS0 = this.this$0.s0();
                    if (dVarS0 != null) {
                        String str1112 = this.$subjectId;
                        this.L$0 = subject2;
                        this.L$1 = null;
                        this.L$2 = null;
                        this.L$3 = null;
                        this.Z$0 = z10;
                        this.I$0 = totalEpisode;
                        this.label = 9;
                        objB = dVarS0.b(str1112, this);
                        if (objB == objF) {
                            return objF;
                        }
                        List list13 = (List) objB;
                        subject = subject2;
                        list = list13;
                    } else {
                        subject = subject2;
                        list = null;
                    }
                    arrayList = new ArrayList();
                    if (z10) {
                        if (subject.getTrailer() == null) {
                        }
                        this.this$0.L.q(Boxing.a(false));
                        Unit unit111 = Unit.f67061a;
                        list2 = arrayList;
                        if (1 <= totalEpisode) {
                            i11 = 1;
                            while (true) {
                                if (list != null) {
                                    it = list.iterator();
                                    do {
                                        if (it.hasNext()) {
                                            next = it.next();
                                        } else {
                                            next = null;
                                        }
                                        shortTVFirstEp = (ShortTVItem) next;
                                    } while (((ShortTVItem) next).getEp() != i11);
                                    shortTVFirstEp = (ShortTVItem) next;
                                } else {
                                    shortTVFirstEp = null;
                                }
                                if (i11 == 1) {
                                    eVar2 = new js.e(this.$subjectId, i11, null, 0, 12, null);
                                    if (shortTVFirstEp != null) {
                                        downloadStatus2 = shortTVFirstEp.getDownloadStatus();
                                    } else {
                                        downloadStatus2 = 0;
                                    }
                                    eVar2.g(downloadStatus2);
                                    if (eVar2.b() != 5) {
                                        shortTVFirstEp = subject.getShortTVFirstEp();
                                    }
                                    eVar2.h(shortTVFirstEp);
                                    list2.add(eVar2);
                                } else {
                                    eVar = new js.e(this.$subjectId, i11, null, 0, 12, null);
                                    if (shortTVFirstEp != null) {
                                        downloadStatus = shortTVFirstEp.getDownloadStatus();
                                    } else {
                                        downloadStatus = 0;
                                    }
                                    eVar.g(downloadStatus);
                                    if (eVar.b() != 5) {
                                        shortTVFirstEp = null;
                                    }
                                    eVar.h(shortTVFirstEp);
                                    list2.add(eVar);
                                }
                                if (i11 != totalEpisode) {
                                    i11++;
                                }
                            }
                        }
                        if (subject.getShortTVFavInfo() == null) {
                            shortTvFavoriteDaoB0 = this.this$0.b0();
                            if (shortTvFavoriteDaoB0 != null) {
                                String str1113 = this.$subjectId;
                                this.L$0 = list2;
                                this.L$1 = subject;
                                this.L$2 = null;
                                this.L$3 = null;
                                this.label = 11;
                                objA = shortTvFavoriteDaoB0.a(str1113, this);
                                if (objA == objF) {
                                    return objF;
                                }
                                shortTvFavoriteStateBean = (ShortTvFavoriteStateBean) objA;
                                if (shortTvFavoriteStateBean != null) {
                                    shortTVFavInfo4 = new ShortTVFavInfo(shortTvFavoriteStateBean.getFavoriteNum(), shortTvFavoriteStateBean.getHasFavorite(), shortTvFavoriteStateBean.getFavoriteTime());
                                }
                            }
                            subject.setShortTVFavInfo(shortTVFavInfo4);
                        }
                        arrayList = list2;
                        this.this$0.f53677a0.put(this.$subjectId + this.$ep, Boxing.d(2));
                        break;
                    } else {
                        num = this.$dataSource;
                        if (num != null) {
                            return Unit.f67061a;
                        }
                        if (list != null) {
                        }
                        lg.a.C0828a.f(lg.a.f68839a, "ShortTvViewModel", "无网，显示下载数据, " + (list != null ? Boxing.d(list.size()) : null), false, 4, null);
                        if (list != null) {
                            str = this.$subjectId;
                            while (r0.hasNext()) {
                                js.e eVar13 = new js.e(str, shortTVItem.getEp(), null, 0, 12, null);
                                eVar13.g(shortTVItem.getDownloadStatus());
                                eVar13.h(shortTVItem);
                                arrayList.add(eVar13);
                            }
                            Unit unit112 = Unit.f67061a;
                        }
                        this.this$0.f53677a0.put(this.$subjectId + this.$ep, Boxing.d(1));
                    }
                    this.this$0.g1(false);
                    this.this$0.f53695q.q(arrayList);
                    return Unit.f67061a;
                    subject2 = subject6;
                    z10 = zE;
                    if (subject2 == null) {
                        this.this$0.g1(false);
                        this.this$0.f53685g.q(null);
                        this.this$0.f53695q.q(CollectionsKt.l());
                        return Unit.f67061a;
                    }
                    ShortTvViewModel shortTvViewModel15 = this.this$0;
                    str2 = this.$subjectId;
                    Result.Companion companion10 = Result.INSTANCE;
                    lg.a.C0828a.r(lg.a.f68839a, "ShortTvViewModel", new String[]{"will loadAdUnlockedEps"}, false, 4, null);
                    shortTvAdUnlockDaoU = shortTvViewModel15.U();
                    if (shortTvAdUnlockDaoU != null) {
                        this.L$0 = subject2;
                        this.L$1 = null;
                        this.L$2 = null;
                        this.L$3 = null;
                        this.Z$0 = z10;
                        this.label = 8;
                        objA3 = shortTvAdUnlockDaoU.a(str2, this);
                        if (objA3 == objF) {
                            return objF;
                        }
                        eVar4 = (com.transsion.shorttv.db.e) objA3;
                        if (eVar4 != null) {
                            unit = null;
                        } else {
                            unit = null;
                        }
                    } else {
                        unit = null;
                    }
                    objM454constructorimpl = Result.m454constructorimpl(unit);
                    thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
                    if (thM457exceptionOrNullimpl != null) {
                        lg.a.C0828a.l(lg.a.f68839a, "ShortTvViewModel", "loadAdUnlockedEps error: " + thM457exceptionOrNullimpl, false, 4, null);
                    }
                    if (!Intrinsics.c(subject2, this.this$0.f53685g.f())) {
                        lg.a.C0828a.f(lg.a.f68839a, "ShortTvViewModel", "getShortTvInfo,set newSubject:" + this.$subjectId, false, 4, null);
                        this.this$0.f53685g.q(subject2);
                        b0 b0Var10 = this.this$0.D;
                        shortTVFavInfo = subject2.getShortTVFavInfo();
                        if (shortTVFavInfo != null) {
                            boolA = Boxing.a(shortTVFavInfo.getHasFavorite());
                        } else {
                            boolA = null;
                        }
                        b0Var10.q(boolA);
                    }
                    totalEpisode = subject2.getTotalEpisode();
                    dVarS0 = this.this$0.s0();
                    if (dVarS0 != null) {
                        String str1114 = this.$subjectId;
                        this.L$0 = subject2;
                        this.L$1 = null;
                        this.L$2 = null;
                        this.L$3 = null;
                        this.Z$0 = z10;
                        this.I$0 = totalEpisode;
                        this.label = 9;
                        objB = dVarS0.b(str1114, this);
                        if (objB == objF) {
                            return objF;
                        }
                        List list14 = (List) objB;
                        subject = subject2;
                        list = list14;
                    } else {
                        subject = subject2;
                        list = null;
                    }
                    arrayList = new ArrayList();
                    if (z10) {
                        if (subject.getTrailer() == null) {
                        }
                        this.this$0.L.q(Boxing.a(false));
                        Unit unit113 = Unit.f67061a;
                        list2 = arrayList;
                        if (1 <= totalEpisode) {
                            i11 = 1;
                            while (true) {
                                if (list != null) {
                                    it = list.iterator();
                                    do {
                                        if (it.hasNext()) {
                                            next = it.next();
                                        } else {
                                            next = null;
                                        }
                                        shortTVFirstEp = (ShortTVItem) next;
                                    } while (((ShortTVItem) next).getEp() != i11);
                                    shortTVFirstEp = (ShortTVItem) next;
                                } else {
                                    shortTVFirstEp = null;
                                }
                                if (i11 == 1) {
                                    eVar2 = new js.e(this.$subjectId, i11, null, 0, 12, null);
                                    if (shortTVFirstEp != null) {
                                        downloadStatus2 = shortTVFirstEp.getDownloadStatus();
                                    } else {
                                        downloadStatus2 = 0;
                                    }
                                    eVar2.g(downloadStatus2);
                                    if (eVar2.b() != 5) {
                                        shortTVFirstEp = subject.getShortTVFirstEp();
                                    }
                                    eVar2.h(shortTVFirstEp);
                                    list2.add(eVar2);
                                } else {
                                    eVar = new js.e(this.$subjectId, i11, null, 0, 12, null);
                                    if (shortTVFirstEp != null) {
                                        downloadStatus = shortTVFirstEp.getDownloadStatus();
                                    } else {
                                        downloadStatus = 0;
                                    }
                                    eVar.g(downloadStatus);
                                    if (eVar.b() != 5) {
                                        shortTVFirstEp = null;
                                    }
                                    eVar.h(shortTVFirstEp);
                                    list2.add(eVar);
                                }
                                if (i11 != totalEpisode) {
                                    i11++;
                                }
                            }
                        }
                        if (subject.getShortTVFavInfo() == null) {
                            shortTvFavoriteDaoB0 = this.this$0.b0();
                            if (shortTvFavoriteDaoB0 != null) {
                                String str1115 = this.$subjectId;
                                this.L$0 = list2;
                                this.L$1 = subject;
                                this.L$2 = null;
                                this.L$3 = null;
                                this.label = 11;
                                objA = shortTvFavoriteDaoB0.a(str1115, this);
                                if (objA == objF) {
                                    return objF;
                                }
                                shortTvFavoriteStateBean = (ShortTvFavoriteStateBean) objA;
                                if (shortTvFavoriteStateBean != null) {
                                    shortTVFavInfo4 = new ShortTVFavInfo(shortTvFavoriteStateBean.getFavoriteNum(), shortTvFavoriteStateBean.getHasFavorite(), shortTvFavoriteStateBean.getFavoriteTime());
                                }
                            }
                            subject.setShortTVFavInfo(shortTVFavInfo4);
                        }
                        arrayList = list2;
                        this.this$0.f53677a0.put(this.$subjectId + this.$ep, Boxing.d(2));
                        break;
                    } else {
                        num = this.$dataSource;
                        if (num != null) {
                            return Unit.f67061a;
                        }
                        if (list != null) {
                        }
                        lg.a.C0828a.f(lg.a.f68839a, "ShortTvViewModel", "无网，显示下载数据, " + (list != null ? Boxing.d(list.size()) : null), false, 4, null);
                        if (list != null) {
                            str = this.$subjectId;
                            while (r0.hasNext()) {
                                js.e eVar14 = new js.e(str, shortTVItem.getEp(), null, 0, 12, null);
                                eVar14.g(shortTVItem.getDownloadStatus());
                                eVar14.h(shortTVItem);
                                arrayList.add(eVar14);
                            }
                            Unit unit114 = Unit.f67061a;
                        }
                        this.this$0.f53677a0.put(this.$subjectId + this.$ep, Boxing.d(1));
                    }
                    this.this$0.g1(false);
                    this.this$0.f53695q.q(arrayList);
                    return Unit.f67061a;
                case 3:
                    zE = this.Z$0;
                    subject5 = (Subject) this.L$3;
                    eVar3 = (js.e) this.L$2;
                    arrayList2 = (List) this.L$1;
                    n0 n0Var6 = (n0) this.L$0;
                    ResultKt.b(obj);
                    n0Var2 = n0Var6;
                    objA2 = obj;
                    shortTvFavoriteStateBean2 = (ShortTvFavoriteStateBean) objA2;
                    if (shortTvFavoriteStateBean2 != null) {
                        shortTVFavInfo2 = new ShortTVFavInfo(shortTvFavoriteStateBean2.getFavoriteNum(), shortTvFavoriteStateBean2.getHasFavorite(), shortTvFavoriteStateBean2.getFavoriteTime());
                    } else {
                        shortTVFavInfo2 = null;
                    }
                    subject5.setShortTVFavInfo(shortTVFavInfo2);
                    arrayList2.add(eVar3);
                    this.this$0.g1(false);
                    this.this$0.f53685g.q(this.$subject);
                    this.this$0.f53695q.q(arrayList2);
                    this.this$0.w0(this.$subjectId, 2);
                    this.this$0.f53677a0.put(this.$subjectId + this.$ep, Boxing.d(0));
                    if (zE) {
                        subject6 = this.$subject;
                        if (subject6 != null) {
                            dVarS1 = this.this$0.s0();
                            if (dVarS1 != null) {
                                String str26 = this.$subjectId;
                                this.L$0 = n0Var2;
                                this.L$1 = null;
                                this.L$2 = null;
                                this.L$3 = null;
                                this.Z$0 = zE;
                                this.label = 7;
                                objK = dVarS1.k(str26, this);
                                if (objK == objF) {
                                    return objF;
                                }
                                subject6 = (Subject) objK;
                            } else {
                                z10 = zE;
                                subject2 = null;
                            }
                        }
                        if (subject2 == null) {
                            this.this$0.g1(false);
                            this.this$0.f53685g.q(null);
                            this.this$0.f53695q.q(CollectionsKt.l());
                            return Unit.f67061a;
                        }
                        ShortTvViewModel shortTvViewModel16 = this.this$0;
                        str2 = this.$subjectId;
                        Result.Companion companion11 = Result.INSTANCE;
                        lg.a.C0828a.r(lg.a.f68839a, "ShortTvViewModel", new String[]{"will loadAdUnlockedEps"}, false, 4, null);
                        shortTvAdUnlockDaoU = shortTvViewModel16.U();
                        if (shortTvAdUnlockDaoU != null) {
                            this.L$0 = subject2;
                            this.L$1 = null;
                            this.L$2 = null;
                            this.L$3 = null;
                            this.Z$0 = z10;
                            this.label = 8;
                            objA3 = shortTvAdUnlockDaoU.a(str2, this);
                            if (objA3 == objF) {
                                return objF;
                            }
                            eVar4 = (com.transsion.shorttv.db.e) objA3;
                            if (eVar4 != null) {
                                unit = null;
                            } else {
                                unit = null;
                            }
                        } else {
                            unit = null;
                        }
                        objM454constructorimpl = Result.m454constructorimpl(unit);
                        thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
                        if (thM457exceptionOrNullimpl != null) {
                            lg.a.C0828a.l(lg.a.f68839a, "ShortTvViewModel", "loadAdUnlockedEps error: " + thM457exceptionOrNullimpl, false, 4, null);
                        }
                        if (!Intrinsics.c(subject2, this.this$0.f53685g.f())) {
                            lg.a.C0828a.f(lg.a.f68839a, "ShortTvViewModel", "getShortTvInfo,set newSubject:" + this.$subjectId, false, 4, null);
                            this.this$0.f53685g.q(subject2);
                            b0 b0Var11 = this.this$0.D;
                            shortTVFavInfo = subject2.getShortTVFavInfo();
                            if (shortTVFavInfo != null) {
                                boolA = Boxing.a(shortTVFavInfo.getHasFavorite());
                            } else {
                                boolA = null;
                            }
                            b0Var11.q(boolA);
                        }
                        totalEpisode = subject2.getTotalEpisode();
                        dVarS0 = this.this$0.s0();
                        if (dVarS0 != null) {
                            String str1116 = this.$subjectId;
                            this.L$0 = subject2;
                            this.L$1 = null;
                            this.L$2 = null;
                            this.L$3 = null;
                            this.Z$0 = z10;
                            this.I$0 = totalEpisode;
                            this.label = 9;
                            objB = dVarS0.b(str1116, this);
                            if (objB == objF) {
                                return objF;
                            }
                            List list15 = (List) objB;
                            subject = subject2;
                            list = list15;
                        } else {
                            subject = subject2;
                            list = null;
                        }
                        arrayList = new ArrayList();
                        if (z10) {
                            if (subject.getTrailer() == null) {
                            }
                            this.this$0.L.q(Boxing.a(false));
                            Unit unit115 = Unit.f67061a;
                            list2 = arrayList;
                            if (1 <= totalEpisode) {
                                i11 = 1;
                                while (true) {
                                    if (list != null) {
                                        it = list.iterator();
                                        do {
                                            if (it.hasNext()) {
                                                next = it.next();
                                            } else {
                                                next = null;
                                            }
                                            shortTVFirstEp = (ShortTVItem) next;
                                        } while (((ShortTVItem) next).getEp() != i11);
                                        shortTVFirstEp = (ShortTVItem) next;
                                    } else {
                                        shortTVFirstEp = null;
                                    }
                                    if (i11 == 1) {
                                        eVar2 = new js.e(this.$subjectId, i11, null, 0, 12, null);
                                        if (shortTVFirstEp != null) {
                                            downloadStatus2 = shortTVFirstEp.getDownloadStatus();
                                        } else {
                                            downloadStatus2 = 0;
                                        }
                                        eVar2.g(downloadStatus2);
                                        if (eVar2.b() != 5) {
                                            shortTVFirstEp = subject.getShortTVFirstEp();
                                        }
                                        eVar2.h(shortTVFirstEp);
                                        list2.add(eVar2);
                                    } else {
                                        eVar = new js.e(this.$subjectId, i11, null, 0, 12, null);
                                        if (shortTVFirstEp != null) {
                                            downloadStatus = shortTVFirstEp.getDownloadStatus();
                                        } else {
                                            downloadStatus = 0;
                                        }
                                        eVar.g(downloadStatus);
                                        if (eVar.b() != 5) {
                                            shortTVFirstEp = null;
                                        }
                                        eVar.h(shortTVFirstEp);
                                        list2.add(eVar);
                                    }
                                    if (i11 != totalEpisode) {
                                        i11++;
                                    }
                                }
                            }
                            if (subject.getShortTVFavInfo() == null) {
                                shortTvFavoriteDaoB0 = this.this$0.b0();
                                if (shortTvFavoriteDaoB0 != null) {
                                    String str1117 = this.$subjectId;
                                    this.L$0 = list2;
                                    this.L$1 = subject;
                                    this.L$2 = null;
                                    this.L$3 = null;
                                    this.label = 11;
                                    objA = shortTvFavoriteDaoB0.a(str1117, this);
                                    if (objA == objF) {
                                        return objF;
                                    }
                                    shortTvFavoriteStateBean = (ShortTvFavoriteStateBean) objA;
                                    if (shortTvFavoriteStateBean != null) {
                                        shortTVFavInfo4 = new ShortTVFavInfo(shortTvFavoriteStateBean.getFavoriteNum(), shortTvFavoriteStateBean.getHasFavorite(), shortTvFavoriteStateBean.getFavoriteTime());
                                    }
                                }
                                subject.setShortTVFavInfo(shortTVFavInfo4);
                            }
                            arrayList = list2;
                            this.this$0.f53677a0.put(this.$subjectId + this.$ep, Boxing.d(2));
                            break;
                        } else {
                            num = this.$dataSource;
                            if (num != null) {
                                return Unit.f67061a;
                            }
                            if (list != null) {
                            }
                            lg.a.C0828a.f(lg.a.f68839a, "ShortTvViewModel", "无网，显示下载数据, " + (list != null ? Boxing.d(list.size()) : null), false, 4, null);
                            if (list != null) {
                                str = this.$subjectId;
                                while (r0.hasNext()) {
                                    js.e eVar15 = new js.e(str, shortTVItem.getEp(), null, 0, 12, null);
                                    eVar15.g(shortTVItem.getDownloadStatus());
                                    eVar15.h(shortTVItem);
                                    arrayList.add(eVar15);
                                }
                                Unit unit116 = Unit.f67061a;
                            }
                            this.this$0.f53677a0.put(this.$subjectId + this.$ep, Boxing.d(1));
                        }
                        this.this$0.g1(false);
                        this.this$0.f53695q.q(arrayList);
                        return Unit.f67061a;
                    }
                    subject7 = this.$subject;
                    if (subject7 != null) {
                        unlockedEps = subject7.getUnlockedEps();
                    } else {
                        unlockedEps = null;
                    }
                    list3 = unlockedEps;
                    if (list3 != null) {
                        break;
                    }
                    lg.a.C0828a.f(lg.a.f68839a, "ShortTvViewModel", "getShortTvInfo,subjectId:" + this.$subjectId, false, 4, null);
                    os.a aVar4 = this.this$0.f53676a;
                    String str27 = this.$subjectId;
                    this.L$0 = n0Var2;
                    this.L$1 = null;
                    this.L$2 = null;
                    this.L$3 = null;
                    this.Z$0 = zE;
                    this.label = 4;
                    objD = os.a.C0875a.d(aVar4, str27, null, this, 2, null);
                    if (objD == objF) {
                        return objF;
                    }
                    baseDto = (BaseDto) objD;
                    z11 = zE;
                    if (baseDto != null) {
                        subject8 = (Subject) baseDto.getData();
                    } else {
                        subject8 = null;
                    }
                    zr.b.f79451a.e(subject8);
                    if (subject8 != null) {
                        subject9 = this.$subject;
                        if (subject9 != null) {
                            ops = subject9.getOps();
                        } else {
                            ops = null;
                        }
                        subject8.setOps(ops);
                        Unit unit117 = Unit.f67061a;
                    }
                    ShortTvViewModel shortTvViewModel17 = this.this$0;
                    String str1118 = this.$subjectId;
                    if (subject8 != null) {
                        shortTVFavInfo3 = subject8.getShortTVFavInfo();
                    } else {
                        shortTVFavInfo3 = null;
                    }
                    shortTvViewModel17.r1(str1118, shortTVFavInfo3);
                    if (subject8 == null) {
                        dVarS2 = this.this$0.s0();
                        if (dVarS2 != null) {
                            String str1119 = this.$subjectId;
                            this.L$0 = n0Var2;
                            this.L$1 = null;
                            this.L$2 = null;
                            this.L$3 = null;
                            this.Z$0 = z11;
                            this.label = 5;
                            objK2 = dVarS2.k(str1119, this);
                            if (objK2 == objF) {
                                return objF;
                            }
                            z13 = z11;
                            n0Var5 = n0Var2;
                            subject8 = (Subject) objK2;
                            z11 = z13;
                        } else {
                            subject8 = null;
                        }
                    }
                    z10 = z11;
                    subject2 = subject8;
                    if (subject2 == null) {
                        this.this$0.g1(false);
                        this.this$0.f53685g.q(null);
                        this.this$0.f53695q.q(CollectionsKt.l());
                        return Unit.f67061a;
                    }
                    ShortTvViewModel shortTvViewModel18 = this.this$0;
                    str2 = this.$subjectId;
                    Result.Companion companion12 = Result.INSTANCE;
                    lg.a.C0828a.r(lg.a.f68839a, "ShortTvViewModel", new String[]{"will loadAdUnlockedEps"}, false, 4, null);
                    shortTvAdUnlockDaoU = shortTvViewModel18.U();
                    if (shortTvAdUnlockDaoU != null) {
                        this.L$0 = subject2;
                        this.L$1 = null;
                        this.L$2 = null;
                        this.L$3 = null;
                        this.Z$0 = z10;
                        this.label = 8;
                        objA3 = shortTvAdUnlockDaoU.a(str2, this);
                        if (objA3 == objF) {
                            return objF;
                        }
                        eVar4 = (com.transsion.shorttv.db.e) objA3;
                        if (eVar4 != null) {
                            unit = null;
                        } else {
                            unit = null;
                        }
                    } else {
                        unit = null;
                    }
                    objM454constructorimpl = Result.m454constructorimpl(unit);
                    thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
                    if (thM457exceptionOrNullimpl != null) {
                        lg.a.C0828a.l(lg.a.f68839a, "ShortTvViewModel", "loadAdUnlockedEps error: " + thM457exceptionOrNullimpl, false, 4, null);
                    }
                    if (!Intrinsics.c(subject2, this.this$0.f53685g.f())) {
                        lg.a.C0828a.f(lg.a.f68839a, "ShortTvViewModel", "getShortTvInfo,set newSubject:" + this.$subjectId, false, 4, null);
                        this.this$0.f53685g.q(subject2);
                        b0 b0Var12 = this.this$0.D;
                        shortTVFavInfo = subject2.getShortTVFavInfo();
                        if (shortTVFavInfo != null) {
                            boolA = Boxing.a(shortTVFavInfo.getHasFavorite());
                        } else {
                            boolA = null;
                        }
                        b0Var12.q(boolA);
                    }
                    totalEpisode = subject2.getTotalEpisode();
                    dVarS0 = this.this$0.s0();
                    if (dVarS0 != null) {
                        String str11110 = this.$subjectId;
                        this.L$0 = subject2;
                        this.L$1 = null;
                        this.L$2 = null;
                        this.L$3 = null;
                        this.Z$0 = z10;
                        this.I$0 = totalEpisode;
                        this.label = 9;
                        objB = dVarS0.b(str11110, this);
                        if (objB == objF) {
                            return objF;
                        }
                        List list16 = (List) objB;
                        subject = subject2;
                        list = list16;
                    } else {
                        subject = subject2;
                        list = null;
                    }
                    arrayList = new ArrayList();
                    if (z10) {
                        if (subject.getTrailer() == null) {
                        }
                        this.this$0.L.q(Boxing.a(false));
                        Unit unit118 = Unit.f67061a;
                        list2 = arrayList;
                        if (1 <= totalEpisode) {
                            i11 = 1;
                            while (true) {
                                if (list != null) {
                                    it = list.iterator();
                                    do {
                                        if (it.hasNext()) {
                                            next = it.next();
                                        } else {
                                            next = null;
                                        }
                                        shortTVFirstEp = (ShortTVItem) next;
                                    } while (((ShortTVItem) next).getEp() != i11);
                                    shortTVFirstEp = (ShortTVItem) next;
                                } else {
                                    shortTVFirstEp = null;
                                }
                                if (i11 == 1) {
                                    eVar2 = new js.e(this.$subjectId, i11, null, 0, 12, null);
                                    if (shortTVFirstEp != null) {
                                        downloadStatus2 = shortTVFirstEp.getDownloadStatus();
                                    } else {
                                        downloadStatus2 = 0;
                                    }
                                    eVar2.g(downloadStatus2);
                                    if (eVar2.b() != 5) {
                                        shortTVFirstEp = subject.getShortTVFirstEp();
                                    }
                                    eVar2.h(shortTVFirstEp);
                                    list2.add(eVar2);
                                } else {
                                    eVar = new js.e(this.$subjectId, i11, null, 0, 12, null);
                                    if (shortTVFirstEp != null) {
                                        downloadStatus = shortTVFirstEp.getDownloadStatus();
                                    } else {
                                        downloadStatus = 0;
                                    }
                                    eVar.g(downloadStatus);
                                    if (eVar.b() != 5) {
                                        shortTVFirstEp = null;
                                    }
                                    eVar.h(shortTVFirstEp);
                                    list2.add(eVar);
                                }
                                if (i11 != totalEpisode) {
                                    i11++;
                                }
                            }
                        }
                        if (subject.getShortTVFavInfo() == null) {
                            shortTvFavoriteDaoB0 = this.this$0.b0();
                            if (shortTvFavoriteDaoB0 != null) {
                                String str11111 = this.$subjectId;
                                this.L$0 = list2;
                                this.L$1 = subject;
                                this.L$2 = null;
                                this.L$3 = null;
                                this.label = 11;
                                objA = shortTvFavoriteDaoB0.a(str11111, this);
                                if (objA == objF) {
                                    return objF;
                                }
                                shortTvFavoriteStateBean = (ShortTvFavoriteStateBean) objA;
                                if (shortTvFavoriteStateBean != null) {
                                    shortTVFavInfo4 = new ShortTVFavInfo(shortTvFavoriteStateBean.getFavoriteNum(), shortTvFavoriteStateBean.getHasFavorite(), shortTvFavoriteStateBean.getFavoriteTime());
                                }
                            }
                            subject.setShortTVFavInfo(shortTVFavInfo4);
                        }
                        arrayList = list2;
                        this.this$0.f53677a0.put(this.$subjectId + this.$ep, Boxing.d(2));
                        break;
                    } else {
                        num = this.$dataSource;
                        if (num != null) {
                            return Unit.f67061a;
                        }
                        if (list != null) {
                        }
                        lg.a.C0828a.f(lg.a.f68839a, "ShortTvViewModel", "无网，显示下载数据, " + (list != null ? Boxing.d(list.size()) : null), false, 4, null);
                        if (list != null) {
                            str = this.$subjectId;
                            while (r0.hasNext()) {
                                js.e eVar16 = new js.e(str, shortTVItem.getEp(), null, 0, 12, null);
                                eVar16.g(shortTVItem.getDownloadStatus());
                                eVar16.h(shortTVItem);
                                arrayList.add(eVar16);
                            }
                            Unit unit119 = Unit.f67061a;
                        }
                        this.this$0.f53677a0.put(this.$subjectId + this.$ep, Boxing.d(1));
                    }
                    this.this$0.g1(false);
                    this.this$0.f53695q.q(arrayList);
                    return Unit.f67061a;
                    subject2 = subject6;
                    z10 = zE;
                    if (subject2 == null) {
                        this.this$0.g1(false);
                        this.this$0.f53685g.q(null);
                        this.this$0.f53695q.q(CollectionsKt.l());
                        return Unit.f67061a;
                    }
                    ShortTvViewModel shortTvViewModel19 = this.this$0;
                    str2 = this.$subjectId;
                    Result.Companion companion13 = Result.INSTANCE;
                    lg.a.C0828a.r(lg.a.f68839a, "ShortTvViewModel", new String[]{"will loadAdUnlockedEps"}, false, 4, null);
                    shortTvAdUnlockDaoU = shortTvViewModel19.U();
                    if (shortTvAdUnlockDaoU != null) {
                        this.L$0 = subject2;
                        this.L$1 = null;
                        this.L$2 = null;
                        this.L$3 = null;
                        this.Z$0 = z10;
                        this.label = 8;
                        objA3 = shortTvAdUnlockDaoU.a(str2, this);
                        if (objA3 == objF) {
                            return objF;
                        }
                        eVar4 = (com.transsion.shorttv.db.e) objA3;
                        if (eVar4 != null) {
                            unit = null;
                        } else {
                            unit = null;
                        }
                    } else {
                        unit = null;
                    }
                    objM454constructorimpl = Result.m454constructorimpl(unit);
                    thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
                    if (thM457exceptionOrNullimpl != null) {
                        lg.a.C0828a.l(lg.a.f68839a, "ShortTvViewModel", "loadAdUnlockedEps error: " + thM457exceptionOrNullimpl, false, 4, null);
                    }
                    if (!Intrinsics.c(subject2, this.this$0.f53685g.f())) {
                        lg.a.C0828a.f(lg.a.f68839a, "ShortTvViewModel", "getShortTvInfo,set newSubject:" + this.$subjectId, false, 4, null);
                        this.this$0.f53685g.q(subject2);
                        b0 b0Var13 = this.this$0.D;
                        shortTVFavInfo = subject2.getShortTVFavInfo();
                        if (shortTVFavInfo != null) {
                            boolA = Boxing.a(shortTVFavInfo.getHasFavorite());
                        } else {
                            boolA = null;
                        }
                        b0Var13.q(boolA);
                    }
                    totalEpisode = subject2.getTotalEpisode();
                    dVarS0 = this.this$0.s0();
                    if (dVarS0 != null) {
                        String str11112 = this.$subjectId;
                        this.L$0 = subject2;
                        this.L$1 = null;
                        this.L$2 = null;
                        this.L$3 = null;
                        this.Z$0 = z10;
                        this.I$0 = totalEpisode;
                        this.label = 9;
                        objB = dVarS0.b(str11112, this);
                        if (objB == objF) {
                            return objF;
                        }
                        List list17 = (List) objB;
                        subject = subject2;
                        list = list17;
                    } else {
                        subject = subject2;
                        list = null;
                    }
                    arrayList = new ArrayList();
                    if (z10) {
                        if (subject.getTrailer() == null) {
                        }
                        this.this$0.L.q(Boxing.a(false));
                        Unit unit1110 = Unit.f67061a;
                        list2 = arrayList;
                        if (1 <= totalEpisode) {
                            i11 = 1;
                            while (true) {
                                if (list != null) {
                                    it = list.iterator();
                                    do {
                                        if (it.hasNext()) {
                                            next = it.next();
                                        } else {
                                            next = null;
                                        }
                                        shortTVFirstEp = (ShortTVItem) next;
                                    } while (((ShortTVItem) next).getEp() != i11);
                                    shortTVFirstEp = (ShortTVItem) next;
                                } else {
                                    shortTVFirstEp = null;
                                }
                                if (i11 == 1) {
                                    eVar2 = new js.e(this.$subjectId, i11, null, 0, 12, null);
                                    if (shortTVFirstEp != null) {
                                        downloadStatus2 = shortTVFirstEp.getDownloadStatus();
                                    } else {
                                        downloadStatus2 = 0;
                                    }
                                    eVar2.g(downloadStatus2);
                                    if (eVar2.b() != 5) {
                                        shortTVFirstEp = subject.getShortTVFirstEp();
                                    }
                                    eVar2.h(shortTVFirstEp);
                                    list2.add(eVar2);
                                } else {
                                    eVar = new js.e(this.$subjectId, i11, null, 0, 12, null);
                                    if (shortTVFirstEp != null) {
                                        downloadStatus = shortTVFirstEp.getDownloadStatus();
                                    } else {
                                        downloadStatus = 0;
                                    }
                                    eVar.g(downloadStatus);
                                    if (eVar.b() != 5) {
                                        shortTVFirstEp = null;
                                    }
                                    eVar.h(shortTVFirstEp);
                                    list2.add(eVar);
                                }
                                if (i11 != totalEpisode) {
                                    i11++;
                                }
                            }
                        }
                        if (subject.getShortTVFavInfo() == null) {
                            shortTvFavoriteDaoB0 = this.this$0.b0();
                            if (shortTvFavoriteDaoB0 != null) {
                                String str11113 = this.$subjectId;
                                this.L$0 = list2;
                                this.L$1 = subject;
                                this.L$2 = null;
                                this.L$3 = null;
                                this.label = 11;
                                objA = shortTvFavoriteDaoB0.a(str11113, this);
                                if (objA == objF) {
                                    return objF;
                                }
                                shortTvFavoriteStateBean = (ShortTvFavoriteStateBean) objA;
                                if (shortTvFavoriteStateBean != null) {
                                    shortTVFavInfo4 = new ShortTVFavInfo(shortTvFavoriteStateBean.getFavoriteNum(), shortTvFavoriteStateBean.getHasFavorite(), shortTvFavoriteStateBean.getFavoriteTime());
                                }
                            }
                            subject.setShortTVFavInfo(shortTVFavInfo4);
                        }
                        arrayList = list2;
                        this.this$0.f53677a0.put(this.$subjectId + this.$ep, Boxing.d(2));
                        break;
                    } else {
                        num = this.$dataSource;
                        if (num != null) {
                            return Unit.f67061a;
                        }
                        if (list != null) {
                        }
                        lg.a.C0828a.f(lg.a.f68839a, "ShortTvViewModel", "无网，显示下载数据, " + (list != null ? Boxing.d(list.size()) : null), false, 4, null);
                        if (list != null) {
                            str = this.$subjectId;
                            while (r0.hasNext()) {
                                js.e eVar17 = new js.e(str, shortTVItem.getEp(), null, 0, 12, null);
                                eVar17.g(shortTVItem.getDownloadStatus());
                                eVar17.h(shortTVItem);
                                arrayList.add(eVar17);
                            }
                            Unit unit1111 = Unit.f67061a;
                        }
                        this.this$0.f53677a0.put(this.$subjectId + this.$ep, Boxing.d(1));
                    }
                    this.this$0.g1(false);
                    this.this$0.f53695q.q(arrayList);
                    return Unit.f67061a;
                case 4:
                    zE = this.Z$0;
                    n0Var4 = (n0) this.L$0;
                    try {
                        ResultKt.b(obj);
                        n0Var2 = n0Var4;
                        objD = obj;
                        baseDto = (BaseDto) objD;
                        z11 = zE;
                    } catch (Exception unused2) {
                        z11 = zE;
                        n0Var2 = n0Var4;
                        baseDto = null;
                    }
                    if (baseDto != null) {
                        subject8 = (Subject) baseDto.getData();
                    } else {
                        subject8 = null;
                    }
                    zr.b.f79451a.e(subject8);
                    if (subject8 != null) {
                        subject9 = this.$subject;
                        if (subject9 != null) {
                            ops = subject9.getOps();
                        } else {
                            ops = null;
                        }
                        subject8.setOps(ops);
                        Unit unit1112 = Unit.f67061a;
                    }
                    ShortTvViewModel shortTvViewModel110 = this.this$0;
                    String str11114 = this.$subjectId;
                    if (subject8 != null) {
                        shortTVFavInfo3 = subject8.getShortTVFavInfo();
                    } else {
                        shortTVFavInfo3 = null;
                    }
                    shortTvViewModel110.r1(str11114, shortTVFavInfo3);
                    if (subject8 == null) {
                        dVarS2 = this.this$0.s0();
                        if (dVarS2 != null) {
                            String str11115 = this.$subjectId;
                            this.L$0 = n0Var2;
                            this.L$1 = null;
                            this.L$2 = null;
                            this.L$3 = null;
                            this.Z$0 = z11;
                            this.label = 5;
                            objK2 = dVarS2.k(str11115, this);
                            if (objK2 == objF) {
                                return objF;
                            }
                            z13 = z11;
                            n0Var5 = n0Var2;
                            subject8 = (Subject) objK2;
                            z11 = z13;
                        } else {
                            subject8 = null;
                        }
                    }
                    z10 = z11;
                    subject2 = subject8;
                    if (subject2 == null) {
                        this.this$0.g1(false);
                        this.this$0.f53685g.q(null);
                        this.this$0.f53695q.q(CollectionsKt.l());
                        return Unit.f67061a;
                    }
                    ShortTvViewModel shortTvViewModel111 = this.this$0;
                    str2 = this.$subjectId;
                    Result.Companion companion14 = Result.INSTANCE;
                    lg.a.C0828a.r(lg.a.f68839a, "ShortTvViewModel", new String[]{"will loadAdUnlockedEps"}, false, 4, null);
                    shortTvAdUnlockDaoU = shortTvViewModel111.U();
                    if (shortTvAdUnlockDaoU != null) {
                        this.L$0 = subject2;
                        this.L$1 = null;
                        this.L$2 = null;
                        this.L$3 = null;
                        this.Z$0 = z10;
                        this.label = 8;
                        objA3 = shortTvAdUnlockDaoU.a(str2, this);
                        if (objA3 == objF) {
                            return objF;
                        }
                        eVar4 = (com.transsion.shorttv.db.e) objA3;
                        if (eVar4 != null) {
                            unit = null;
                        } else {
                            unit = null;
                        }
                    } else {
                        unit = null;
                    }
                    objM454constructorimpl = Result.m454constructorimpl(unit);
                    thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
                    if (thM457exceptionOrNullimpl != null) {
                        lg.a.C0828a.l(lg.a.f68839a, "ShortTvViewModel", "loadAdUnlockedEps error: " + thM457exceptionOrNullimpl, false, 4, null);
                    }
                    if (!Intrinsics.c(subject2, this.this$0.f53685g.f())) {
                        lg.a.C0828a.f(lg.a.f68839a, "ShortTvViewModel", "getShortTvInfo,set newSubject:" + this.$subjectId, false, 4, null);
                        this.this$0.f53685g.q(subject2);
                        b0 b0Var14 = this.this$0.D;
                        shortTVFavInfo = subject2.getShortTVFavInfo();
                        if (shortTVFavInfo != null) {
                            boolA = Boxing.a(shortTVFavInfo.getHasFavorite());
                        } else {
                            boolA = null;
                        }
                        b0Var14.q(boolA);
                    }
                    totalEpisode = subject2.getTotalEpisode();
                    dVarS0 = this.this$0.s0();
                    if (dVarS0 != null) {
                        String str11116 = this.$subjectId;
                        this.L$0 = subject2;
                        this.L$1 = null;
                        this.L$2 = null;
                        this.L$3 = null;
                        this.Z$0 = z10;
                        this.I$0 = totalEpisode;
                        this.label = 9;
                        objB = dVarS0.b(str11116, this);
                        if (objB == objF) {
                            return objF;
                        }
                        List list18 = (List) objB;
                        subject = subject2;
                        list = list18;
                    } else {
                        subject = subject2;
                        list = null;
                    }
                    arrayList = new ArrayList();
                    if (z10) {
                        if (subject.getTrailer() == null) {
                        }
                        this.this$0.L.q(Boxing.a(false));
                        Unit unit1113 = Unit.f67061a;
                        list2 = arrayList;
                        if (1 <= totalEpisode) {
                            i11 = 1;
                            while (true) {
                                if (list != null) {
                                    it = list.iterator();
                                    do {
                                        if (it.hasNext()) {
                                            next = it.next();
                                        } else {
                                            next = null;
                                        }
                                        shortTVFirstEp = (ShortTVItem) next;
                                    } while (((ShortTVItem) next).getEp() != i11);
                                    shortTVFirstEp = (ShortTVItem) next;
                                } else {
                                    shortTVFirstEp = null;
                                }
                                if (i11 == 1) {
                                    eVar2 = new js.e(this.$subjectId, i11, null, 0, 12, null);
                                    if (shortTVFirstEp != null) {
                                        downloadStatus2 = shortTVFirstEp.getDownloadStatus();
                                    } else {
                                        downloadStatus2 = 0;
                                    }
                                    eVar2.g(downloadStatus2);
                                    if (eVar2.b() != 5) {
                                        shortTVFirstEp = subject.getShortTVFirstEp();
                                    }
                                    eVar2.h(shortTVFirstEp);
                                    list2.add(eVar2);
                                } else {
                                    eVar = new js.e(this.$subjectId, i11, null, 0, 12, null);
                                    if (shortTVFirstEp != null) {
                                        downloadStatus = shortTVFirstEp.getDownloadStatus();
                                    } else {
                                        downloadStatus = 0;
                                    }
                                    eVar.g(downloadStatus);
                                    if (eVar.b() != 5) {
                                        shortTVFirstEp = null;
                                    }
                                    eVar.h(shortTVFirstEp);
                                    list2.add(eVar);
                                }
                                if (i11 != totalEpisode) {
                                    i11++;
                                }
                            }
                        }
                        if (subject.getShortTVFavInfo() == null) {
                            shortTvFavoriteDaoB0 = this.this$0.b0();
                            if (shortTvFavoriteDaoB0 != null) {
                                String str11117 = this.$subjectId;
                                this.L$0 = list2;
                                this.L$1 = subject;
                                this.L$2 = null;
                                this.L$3 = null;
                                this.label = 11;
                                objA = shortTvFavoriteDaoB0.a(str11117, this);
                                if (objA == objF) {
                                    return objF;
                                }
                                shortTvFavoriteStateBean = (ShortTvFavoriteStateBean) objA;
                                if (shortTvFavoriteStateBean != null) {
                                    shortTVFavInfo4 = new ShortTVFavInfo(shortTvFavoriteStateBean.getFavoriteNum(), shortTvFavoriteStateBean.getHasFavorite(), shortTvFavoriteStateBean.getFavoriteTime());
                                }
                            }
                            subject.setShortTVFavInfo(shortTVFavInfo4);
                        }
                        arrayList = list2;
                        this.this$0.f53677a0.put(this.$subjectId + this.$ep, Boxing.d(2));
                        break;
                    } else {
                        num = this.$dataSource;
                        if (num != null) {
                            return Unit.f67061a;
                        }
                        if (list != null) {
                        }
                        lg.a.C0828a.f(lg.a.f68839a, "ShortTvViewModel", "无网，显示下载数据, " + (list != null ? Boxing.d(list.size()) : null), false, 4, null);
                        if (list != null) {
                            str = this.$subjectId;
                            while (r0.hasNext()) {
                                js.e eVar18 = new js.e(str, shortTVItem.getEp(), null, 0, 12, null);
                                eVar18.g(shortTVItem.getDownloadStatus());
                                eVar18.h(shortTVItem);
                                arrayList.add(eVar18);
                            }
                            Unit unit1114 = Unit.f67061a;
                        }
                        this.this$0.f53677a0.put(this.$subjectId + this.$ep, Boxing.d(1));
                    }
                    this.this$0.g1(false);
                    this.this$0.f53695q.q(arrayList);
                    return Unit.f67061a;
                case 5:
                    z13 = this.Z$0;
                    n0Var5 = (n0) this.L$0;
                    try {
                        ResultKt.b(obj);
                        objK2 = obj;
                        subject8 = (Subject) objK2;
                        z11 = z13;
                    } catch (Exception e12) {
                        boolean z14 = z13;
                        exc = e12;
                        z12 = z14;
                        exc.printStackTrace();
                        lg.a.C0828a.l(lg.a.f68839a, "ShortTvViewModel", "getShortTvInfo, error:" + exc, false, 4, null);
                        dVarS3 = this.this$0.s0();
                        if (dVarS3 != null) {
                            String str120 = this.$subjectId;
                            this.L$0 = n0Var5;
                            this.L$1 = null;
                            this.L$2 = null;
                            this.L$3 = null;
                            this.Z$0 = z12;
                            this.label = 6;
                            objK3 = dVarS3.k(str120, this);
                            if (objK3 == objF) {
                                return objF;
                            }
                            z11 = z12;
                            subject8 = (Subject) objK3;
                        } else {
                            z11 = z12;
                            subject8 = null;
                        }
                    }
                    z10 = z11;
                    subject2 = subject8;
                    if (subject2 == null) {
                        this.this$0.g1(false);
                        this.this$0.f53685g.q(null);
                        this.this$0.f53695q.q(CollectionsKt.l());
                        return Unit.f67061a;
                    }
                    ShortTvViewModel shortTvViewModel112 = this.this$0;
                    str2 = this.$subjectId;
                    Result.Companion companion15 = Result.INSTANCE;
                    lg.a.C0828a.r(lg.a.f68839a, "ShortTvViewModel", new String[]{"will loadAdUnlockedEps"}, false, 4, null);
                    shortTvAdUnlockDaoU = shortTvViewModel112.U();
                    if (shortTvAdUnlockDaoU != null) {
                        this.L$0 = subject2;
                        this.L$1 = null;
                        this.L$2 = null;
                        this.L$3 = null;
                        this.Z$0 = z10;
                        this.label = 8;
                        objA3 = shortTvAdUnlockDaoU.a(str2, this);
                        if (objA3 == objF) {
                            return objF;
                        }
                        eVar4 = (com.transsion.shorttv.db.e) objA3;
                        if (eVar4 != null) {
                            unit = null;
                        } else {
                            unit = null;
                        }
                    } else {
                        unit = null;
                    }
                    objM454constructorimpl = Result.m454constructorimpl(unit);
                    thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
                    if (thM457exceptionOrNullimpl != null) {
                        lg.a.C0828a.l(lg.a.f68839a, "ShortTvViewModel", "loadAdUnlockedEps error: " + thM457exceptionOrNullimpl, false, 4, null);
                    }
                    if (!Intrinsics.c(subject2, this.this$0.f53685g.f())) {
                        lg.a.C0828a.f(lg.a.f68839a, "ShortTvViewModel", "getShortTvInfo,set newSubject:" + this.$subjectId, false, 4, null);
                        this.this$0.f53685g.q(subject2);
                        b0 b0Var15 = this.this$0.D;
                        shortTVFavInfo = subject2.getShortTVFavInfo();
                        if (shortTVFavInfo != null) {
                            boolA = Boxing.a(shortTVFavInfo.getHasFavorite());
                        } else {
                            boolA = null;
                        }
                        b0Var15.q(boolA);
                    }
                    totalEpisode = subject2.getTotalEpisode();
                    dVarS0 = this.this$0.s0();
                    if (dVarS0 != null) {
                        String str11118 = this.$subjectId;
                        this.L$0 = subject2;
                        this.L$1 = null;
                        this.L$2 = null;
                        this.L$3 = null;
                        this.Z$0 = z10;
                        this.I$0 = totalEpisode;
                        this.label = 9;
                        objB = dVarS0.b(str11118, this);
                        if (objB == objF) {
                            return objF;
                        }
                        List list19 = (List) objB;
                        subject = subject2;
                        list = list19;
                    } else {
                        subject = subject2;
                        list = null;
                    }
                    arrayList = new ArrayList();
                    if (z10) {
                        if (subject.getTrailer() == null) {
                        }
                        this.this$0.L.q(Boxing.a(false));
                        Unit unit1115 = Unit.f67061a;
                        list2 = arrayList;
                        if (1 <= totalEpisode) {
                            i11 = 1;
                            while (true) {
                                if (list != null) {
                                    it = list.iterator();
                                    do {
                                        if (it.hasNext()) {
                                            next = it.next();
                                        } else {
                                            next = null;
                                        }
                                        shortTVFirstEp = (ShortTVItem) next;
                                    } while (((ShortTVItem) next).getEp() != i11);
                                    shortTVFirstEp = (ShortTVItem) next;
                                } else {
                                    shortTVFirstEp = null;
                                }
                                if (i11 == 1) {
                                    eVar2 = new js.e(this.$subjectId, i11, null, 0, 12, null);
                                    if (shortTVFirstEp != null) {
                                        downloadStatus2 = shortTVFirstEp.getDownloadStatus();
                                    } else {
                                        downloadStatus2 = 0;
                                    }
                                    eVar2.g(downloadStatus2);
                                    if (eVar2.b() != 5) {
                                        shortTVFirstEp = subject.getShortTVFirstEp();
                                    }
                                    eVar2.h(shortTVFirstEp);
                                    list2.add(eVar2);
                                } else {
                                    eVar = new js.e(this.$subjectId, i11, null, 0, 12, null);
                                    if (shortTVFirstEp != null) {
                                        downloadStatus = shortTVFirstEp.getDownloadStatus();
                                    } else {
                                        downloadStatus = 0;
                                    }
                                    eVar.g(downloadStatus);
                                    if (eVar.b() != 5) {
                                        shortTVFirstEp = null;
                                    }
                                    eVar.h(shortTVFirstEp);
                                    list2.add(eVar);
                                }
                                if (i11 != totalEpisode) {
                                    i11++;
                                }
                            }
                        }
                        if (subject.getShortTVFavInfo() == null) {
                            shortTvFavoriteDaoB0 = this.this$0.b0();
                            if (shortTvFavoriteDaoB0 != null) {
                                String str11119 = this.$subjectId;
                                this.L$0 = list2;
                                this.L$1 = subject;
                                this.L$2 = null;
                                this.L$3 = null;
                                this.label = 11;
                                objA = shortTvFavoriteDaoB0.a(str11119, this);
                                if (objA == objF) {
                                    return objF;
                                }
                                shortTvFavoriteStateBean = (ShortTvFavoriteStateBean) objA;
                                if (shortTvFavoriteStateBean != null) {
                                    shortTVFavInfo4 = new ShortTVFavInfo(shortTvFavoriteStateBean.getFavoriteNum(), shortTvFavoriteStateBean.getHasFavorite(), shortTvFavoriteStateBean.getFavoriteTime());
                                }
                            }
                            subject.setShortTVFavInfo(shortTVFavInfo4);
                        }
                        arrayList = list2;
                        this.this$0.f53677a0.put(this.$subjectId + this.$ep, Boxing.d(2));
                        break;
                    } else {
                        num = this.$dataSource;
                        if (num != null) {
                            return Unit.f67061a;
                        }
                        if (list != null) {
                        }
                        lg.a.C0828a.f(lg.a.f68839a, "ShortTvViewModel", "无网，显示下载数据, " + (list != null ? Boxing.d(list.size()) : null), false, 4, null);
                        if (list != null) {
                            str = this.$subjectId;
                            while (r0.hasNext()) {
                                js.e eVar19 = new js.e(str, shortTVItem.getEp(), null, 0, 12, null);
                                eVar19.g(shortTVItem.getDownloadStatus());
                                eVar19.h(shortTVItem);
                                arrayList.add(eVar19);
                            }
                            Unit unit1116 = Unit.f67061a;
                        }
                        this.this$0.f53677a0.put(this.$subjectId + this.$ep, Boxing.d(1));
                    }
                    this.this$0.g1(false);
                    this.this$0.f53695q.q(arrayList);
                    return Unit.f67061a;
                case 6:
                    z12 = this.Z$0;
                    ResultKt.b(obj);
                    objK3 = obj;
                    z11 = z12;
                    subject8 = (Subject) objK3;
                    z10 = z11;
                    subject2 = subject8;
                    if (subject2 == null) {
                        this.this$0.g1(false);
                        this.this$0.f53685g.q(null);
                        this.this$0.f53695q.q(CollectionsKt.l());
                        return Unit.f67061a;
                    }
                    ShortTvViewModel shortTvViewModel113 = this.this$0;
                    str2 = this.$subjectId;
                    Result.Companion companion16 = Result.INSTANCE;
                    lg.a.C0828a.r(lg.a.f68839a, "ShortTvViewModel", new String[]{"will loadAdUnlockedEps"}, false, 4, null);
                    shortTvAdUnlockDaoU = shortTvViewModel113.U();
                    if (shortTvAdUnlockDaoU != null) {
                        this.L$0 = subject2;
                        this.L$1 = null;
                        this.L$2 = null;
                        this.L$3 = null;
                        this.Z$0 = z10;
                        this.label = 8;
                        objA3 = shortTvAdUnlockDaoU.a(str2, this);
                        if (objA3 == objF) {
                            return objF;
                        }
                        eVar4 = (com.transsion.shorttv.db.e) objA3;
                        if (eVar4 != null) {
                            unit = null;
                        } else {
                            unit = null;
                        }
                    } else {
                        unit = null;
                    }
                    objM454constructorimpl = Result.m454constructorimpl(unit);
                    thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
                    if (thM457exceptionOrNullimpl != null) {
                        lg.a.C0828a.l(lg.a.f68839a, "ShortTvViewModel", "loadAdUnlockedEps error: " + thM457exceptionOrNullimpl, false, 4, null);
                    }
                    if (!Intrinsics.c(subject2, this.this$0.f53685g.f())) {
                        lg.a.C0828a.f(lg.a.f68839a, "ShortTvViewModel", "getShortTvInfo,set newSubject:" + this.$subjectId, false, 4, null);
                        this.this$0.f53685g.q(subject2);
                        b0 b0Var16 = this.this$0.D;
                        shortTVFavInfo = subject2.getShortTVFavInfo();
                        if (shortTVFavInfo != null) {
                            boolA = Boxing.a(shortTVFavInfo.getHasFavorite());
                        } else {
                            boolA = null;
                        }
                        b0Var16.q(boolA);
                    }
                    totalEpisode = subject2.getTotalEpisode();
                    dVarS0 = this.this$0.s0();
                    if (dVarS0 != null) {
                        String str111110 = this.$subjectId;
                        this.L$0 = subject2;
                        this.L$1 = null;
                        this.L$2 = null;
                        this.L$3 = null;
                        this.Z$0 = z10;
                        this.I$0 = totalEpisode;
                        this.label = 9;
                        objB = dVarS0.b(str111110, this);
                        if (objB == objF) {
                            return objF;
                        }
                        List list110 = (List) objB;
                        subject = subject2;
                        list = list110;
                    } else {
                        subject = subject2;
                        list = null;
                    }
                    arrayList = new ArrayList();
                    if (z10) {
                        if (subject.getTrailer() == null) {
                        }
                        this.this$0.L.q(Boxing.a(false));
                        Unit unit1117 = Unit.f67061a;
                        list2 = arrayList;
                        if (1 <= totalEpisode) {
                            i11 = 1;
                            while (true) {
                                if (list != null) {
                                    it = list.iterator();
                                    do {
                                        if (it.hasNext()) {
                                            next = it.next();
                                        } else {
                                            next = null;
                                        }
                                        shortTVFirstEp = (ShortTVItem) next;
                                    } while (((ShortTVItem) next).getEp() != i11);
                                    shortTVFirstEp = (ShortTVItem) next;
                                } else {
                                    shortTVFirstEp = null;
                                }
                                if (i11 == 1) {
                                    eVar2 = new js.e(this.$subjectId, i11, null, 0, 12, null);
                                    if (shortTVFirstEp != null) {
                                        downloadStatus2 = shortTVFirstEp.getDownloadStatus();
                                    } else {
                                        downloadStatus2 = 0;
                                    }
                                    eVar2.g(downloadStatus2);
                                    if (eVar2.b() != 5) {
                                        shortTVFirstEp = subject.getShortTVFirstEp();
                                    }
                                    eVar2.h(shortTVFirstEp);
                                    list2.add(eVar2);
                                } else {
                                    eVar = new js.e(this.$subjectId, i11, null, 0, 12, null);
                                    if (shortTVFirstEp != null) {
                                        downloadStatus = shortTVFirstEp.getDownloadStatus();
                                    } else {
                                        downloadStatus = 0;
                                    }
                                    eVar.g(downloadStatus);
                                    if (eVar.b() != 5) {
                                        shortTVFirstEp = null;
                                    }
                                    eVar.h(shortTVFirstEp);
                                    list2.add(eVar);
                                }
                                if (i11 != totalEpisode) {
                                    i11++;
                                }
                            }
                        }
                        if (subject.getShortTVFavInfo() == null) {
                            shortTvFavoriteDaoB0 = this.this$0.b0();
                            if (shortTvFavoriteDaoB0 != null) {
                                String str111111 = this.$subjectId;
                                this.L$0 = list2;
                                this.L$1 = subject;
                                this.L$2 = null;
                                this.L$3 = null;
                                this.label = 11;
                                objA = shortTvFavoriteDaoB0.a(str111111, this);
                                if (objA == objF) {
                                    return objF;
                                }
                                shortTvFavoriteStateBean = (ShortTvFavoriteStateBean) objA;
                                if (shortTvFavoriteStateBean != null) {
                                    shortTVFavInfo4 = new ShortTVFavInfo(shortTvFavoriteStateBean.getFavoriteNum(), shortTvFavoriteStateBean.getHasFavorite(), shortTvFavoriteStateBean.getFavoriteTime());
                                }
                            }
                            subject.setShortTVFavInfo(shortTVFavInfo4);
                        }
                        arrayList = list2;
                        this.this$0.f53677a0.put(this.$subjectId + this.$ep, Boxing.d(2));
                        break;
                    } else {
                        num = this.$dataSource;
                        if (num != null) {
                            return Unit.f67061a;
                        }
                        if (list != null) {
                        }
                        lg.a.C0828a.f(lg.a.f68839a, "ShortTvViewModel", "无网，显示下载数据, " + (list != null ? Boxing.d(list.size()) : null), false, 4, null);
                        if (list != null) {
                            str = this.$subjectId;
                            while (r0.hasNext()) {
                                js.e eVar110 = new js.e(str, shortTVItem.getEp(), null, 0, 12, null);
                                eVar110.g(shortTVItem.getDownloadStatus());
                                eVar110.h(shortTVItem);
                                arrayList.add(eVar110);
                            }
                            Unit unit1118 = Unit.f67061a;
                        }
                        this.this$0.f53677a0.put(this.$subjectId + this.$ep, Boxing.d(1));
                    }
                    this.this$0.g1(false);
                    this.this$0.f53695q.q(arrayList);
                    return Unit.f67061a;
                case 7:
                    zE = this.Z$0;
                    ResultKt.b(obj);
                    objK = obj;
                    subject6 = (Subject) objK;
                    subject2 = subject6;
                    z10 = zE;
                    if (subject2 == null) {
                        this.this$0.g1(false);
                        this.this$0.f53685g.q(null);
                        this.this$0.f53695q.q(CollectionsKt.l());
                        return Unit.f67061a;
                    }
                    ShortTvViewModel shortTvViewModel114 = this.this$0;
                    str2 = this.$subjectId;
                    Result.Companion companion17 = Result.INSTANCE;
                    lg.a.C0828a.r(lg.a.f68839a, "ShortTvViewModel", new String[]{"will loadAdUnlockedEps"}, false, 4, null);
                    shortTvAdUnlockDaoU = shortTvViewModel114.U();
                    if (shortTvAdUnlockDaoU != null) {
                        this.L$0 = subject2;
                        this.L$1 = null;
                        this.L$2 = null;
                        this.L$3 = null;
                        this.Z$0 = z10;
                        this.label = 8;
                        objA3 = shortTvAdUnlockDaoU.a(str2, this);
                        if (objA3 == objF) {
                            return objF;
                        }
                        eVar4 = (com.transsion.shorttv.db.e) objA3;
                        if (eVar4 != null) {
                            unit = null;
                        } else {
                            unit = null;
                        }
                    } else {
                        unit = null;
                    }
                    objM454constructorimpl = Result.m454constructorimpl(unit);
                    thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
                    if (thM457exceptionOrNullimpl != null) {
                        lg.a.C0828a.l(lg.a.f68839a, "ShortTvViewModel", "loadAdUnlockedEps error: " + thM457exceptionOrNullimpl, false, 4, null);
                    }
                    if (!Intrinsics.c(subject2, this.this$0.f53685g.f())) {
                        lg.a.C0828a.f(lg.a.f68839a, "ShortTvViewModel", "getShortTvInfo,set newSubject:" + this.$subjectId, false, 4, null);
                        this.this$0.f53685g.q(subject2);
                        b0 b0Var17 = this.this$0.D;
                        shortTVFavInfo = subject2.getShortTVFavInfo();
                        if (shortTVFavInfo != null) {
                            boolA = Boxing.a(shortTVFavInfo.getHasFavorite());
                        } else {
                            boolA = null;
                        }
                        b0Var17.q(boolA);
                    }
                    totalEpisode = subject2.getTotalEpisode();
                    dVarS0 = this.this$0.s0();
                    if (dVarS0 != null) {
                        String str111112 = this.$subjectId;
                        this.L$0 = subject2;
                        this.L$1 = null;
                        this.L$2 = null;
                        this.L$3 = null;
                        this.Z$0 = z10;
                        this.I$0 = totalEpisode;
                        this.label = 9;
                        objB = dVarS0.b(str111112, this);
                        if (objB == objF) {
                            return objF;
                        }
                        List list111 = (List) objB;
                        subject = subject2;
                        list = list111;
                    } else {
                        subject = subject2;
                        list = null;
                    }
                    arrayList = new ArrayList();
                    if (z10) {
                        if (subject.getTrailer() == null) {
                        }
                        this.this$0.L.q(Boxing.a(false));
                        Unit unit1119 = Unit.f67061a;
                        list2 = arrayList;
                        if (1 <= totalEpisode) {
                            i11 = 1;
                            while (true) {
                                if (list != null) {
                                    it = list.iterator();
                                    do {
                                        if (it.hasNext()) {
                                            next = it.next();
                                        } else {
                                            next = null;
                                        }
                                        shortTVFirstEp = (ShortTVItem) next;
                                    } while (((ShortTVItem) next).getEp() != i11);
                                    shortTVFirstEp = (ShortTVItem) next;
                                } else {
                                    shortTVFirstEp = null;
                                }
                                if (i11 == 1) {
                                    eVar2 = new js.e(this.$subjectId, i11, null, 0, 12, null);
                                    if (shortTVFirstEp != null) {
                                        downloadStatus2 = shortTVFirstEp.getDownloadStatus();
                                    } else {
                                        downloadStatus2 = 0;
                                    }
                                    eVar2.g(downloadStatus2);
                                    if (eVar2.b() != 5) {
                                        shortTVFirstEp = subject.getShortTVFirstEp();
                                    }
                                    eVar2.h(shortTVFirstEp);
                                    list2.add(eVar2);
                                } else {
                                    eVar = new js.e(this.$subjectId, i11, null, 0, 12, null);
                                    if (shortTVFirstEp != null) {
                                        downloadStatus = shortTVFirstEp.getDownloadStatus();
                                    } else {
                                        downloadStatus = 0;
                                    }
                                    eVar.g(downloadStatus);
                                    if (eVar.b() != 5) {
                                        shortTVFirstEp = null;
                                    }
                                    eVar.h(shortTVFirstEp);
                                    list2.add(eVar);
                                }
                                if (i11 != totalEpisode) {
                                    i11++;
                                }
                            }
                        }
                        if (subject.getShortTVFavInfo() == null) {
                            shortTvFavoriteDaoB0 = this.this$0.b0();
                            if (shortTvFavoriteDaoB0 != null) {
                                String str111113 = this.$subjectId;
                                this.L$0 = list2;
                                this.L$1 = subject;
                                this.L$2 = null;
                                this.L$3 = null;
                                this.label = 11;
                                objA = shortTvFavoriteDaoB0.a(str111113, this);
                                if (objA == objF) {
                                    return objF;
                                }
                                shortTvFavoriteStateBean = (ShortTvFavoriteStateBean) objA;
                                if (shortTvFavoriteStateBean != null) {
                                    shortTVFavInfo4 = new ShortTVFavInfo(shortTvFavoriteStateBean.getFavoriteNum(), shortTvFavoriteStateBean.getHasFavorite(), shortTvFavoriteStateBean.getFavoriteTime());
                                }
                            }
                            subject.setShortTVFavInfo(shortTVFavInfo4);
                        }
                        arrayList = list2;
                        this.this$0.f53677a0.put(this.$subjectId + this.$ep, Boxing.d(2));
                        break;
                    } else {
                        num = this.$dataSource;
                        if (num != null) {
                            return Unit.f67061a;
                        }
                        if (list != null) {
                        }
                        lg.a.C0828a.f(lg.a.f68839a, "ShortTvViewModel", "无网，显示下载数据, " + (list != null ? Boxing.d(list.size()) : null), false, 4, null);
                        if (list != null) {
                            str = this.$subjectId;
                            while (r0.hasNext()) {
                                js.e eVar111 = new js.e(str, shortTVItem.getEp(), null, 0, 12, null);
                                eVar111.g(shortTVItem.getDownloadStatus());
                                eVar111.h(shortTVItem);
                                arrayList.add(eVar111);
                            }
                            Unit unit11110 = Unit.f67061a;
                        }
                        this.this$0.f53677a0.put(this.$subjectId + this.$ep, Boxing.d(1));
                    }
                    this.this$0.g1(false);
                    this.this$0.f53695q.q(arrayList);
                    return Unit.f67061a;
                case 8:
                    z10 = this.Z$0;
                    subject2 = (Subject) this.L$0;
                    ResultKt.b(obj);
                    objA3 = obj;
                    eVar4 = (com.transsion.shorttv.db.e) objA3;
                    if (eVar4 != null) {
                        unit = null;
                    } else {
                        unit = null;
                    }
                    objM454constructorimpl = Result.m454constructorimpl(unit);
                    thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
                    if (thM457exceptionOrNullimpl != null) {
                        lg.a.C0828a.l(lg.a.f68839a, "ShortTvViewModel", "loadAdUnlockedEps error: " + thM457exceptionOrNullimpl, false, 4, null);
                    }
                    if (!Intrinsics.c(subject2, this.this$0.f53685g.f())) {
                        lg.a.C0828a.f(lg.a.f68839a, "ShortTvViewModel", "getShortTvInfo,set newSubject:" + this.$subjectId, false, 4, null);
                        this.this$0.f53685g.q(subject2);
                        b0 b0Var18 = this.this$0.D;
                        shortTVFavInfo = subject2.getShortTVFavInfo();
                        if (shortTVFavInfo != null) {
                            boolA = Boxing.a(shortTVFavInfo.getHasFavorite());
                        } else {
                            boolA = null;
                        }
                        b0Var18.q(boolA);
                    }
                    totalEpisode = subject2.getTotalEpisode();
                    dVarS0 = this.this$0.s0();
                    if (dVarS0 != null) {
                        String str111114 = this.$subjectId;
                        this.L$0 = subject2;
                        this.L$1 = null;
                        this.L$2 = null;
                        this.L$3 = null;
                        this.Z$0 = z10;
                        this.I$0 = totalEpisode;
                        this.label = 9;
                        objB = dVarS0.b(str111114, this);
                        if (objB == objF) {
                            return objF;
                        }
                        List list112 = (List) objB;
                        subject = subject2;
                        list = list112;
                    } else {
                        subject = subject2;
                        list = null;
                    }
                    arrayList = new ArrayList();
                    if (z10) {
                        if (subject.getTrailer() == null) {
                        }
                        this.this$0.L.q(Boxing.a(false));
                        Unit unit11111 = Unit.f67061a;
                        list2 = arrayList;
                        if (1 <= totalEpisode) {
                            i11 = 1;
                            while (true) {
                                if (list != null) {
                                    it = list.iterator();
                                    do {
                                        if (it.hasNext()) {
                                            next = it.next();
                                        } else {
                                            next = null;
                                        }
                                        shortTVFirstEp = (ShortTVItem) next;
                                    } while (((ShortTVItem) next).getEp() != i11);
                                    shortTVFirstEp = (ShortTVItem) next;
                                } else {
                                    shortTVFirstEp = null;
                                }
                                if (i11 == 1) {
                                    eVar2 = new js.e(this.$subjectId, i11, null, 0, 12, null);
                                    if (shortTVFirstEp != null) {
                                        downloadStatus2 = shortTVFirstEp.getDownloadStatus();
                                    } else {
                                        downloadStatus2 = 0;
                                    }
                                    eVar2.g(downloadStatus2);
                                    if (eVar2.b() != 5) {
                                        shortTVFirstEp = subject.getShortTVFirstEp();
                                    }
                                    eVar2.h(shortTVFirstEp);
                                    list2.add(eVar2);
                                } else {
                                    eVar = new js.e(this.$subjectId, i11, null, 0, 12, null);
                                    if (shortTVFirstEp != null) {
                                        downloadStatus = shortTVFirstEp.getDownloadStatus();
                                    } else {
                                        downloadStatus = 0;
                                    }
                                    eVar.g(downloadStatus);
                                    if (eVar.b() != 5) {
                                        shortTVFirstEp = null;
                                    }
                                    eVar.h(shortTVFirstEp);
                                    list2.add(eVar);
                                }
                                if (i11 != totalEpisode) {
                                    i11++;
                                }
                            }
                        }
                        if (subject.getShortTVFavInfo() == null) {
                            shortTvFavoriteDaoB0 = this.this$0.b0();
                            if (shortTvFavoriteDaoB0 != null) {
                                String str111115 = this.$subjectId;
                                this.L$0 = list2;
                                this.L$1 = subject;
                                this.L$2 = null;
                                this.L$3 = null;
                                this.label = 11;
                                objA = shortTvFavoriteDaoB0.a(str111115, this);
                                if (objA == objF) {
                                    return objF;
                                }
                                shortTvFavoriteStateBean = (ShortTvFavoriteStateBean) objA;
                                if (shortTvFavoriteStateBean != null) {
                                    shortTVFavInfo4 = new ShortTVFavInfo(shortTvFavoriteStateBean.getFavoriteNum(), shortTvFavoriteStateBean.getHasFavorite(), shortTvFavoriteStateBean.getFavoriteTime());
                                }
                            }
                            subject.setShortTVFavInfo(shortTVFavInfo4);
                        }
                        arrayList = list2;
                        this.this$0.f53677a0.put(this.$subjectId + this.$ep, Boxing.d(2));
                        break;
                    } else {
                        num = this.$dataSource;
                        if (num != null) {
                            return Unit.f67061a;
                        }
                        if (list != null) {
                        }
                        lg.a.C0828a.f(lg.a.f68839a, "ShortTvViewModel", "无网，显示下载数据, " + (list != null ? Boxing.d(list.size()) : null), false, 4, null);
                        if (list != null) {
                            str = this.$subjectId;
                            while (r0.hasNext()) {
                                js.e eVar112 = new js.e(str, shortTVItem.getEp(), null, 0, 12, null);
                                eVar112.g(shortTVItem.getDownloadStatus());
                                eVar112.h(shortTVItem);
                                arrayList.add(eVar112);
                            }
                            Unit unit11112 = Unit.f67061a;
                        }
                        this.this$0.f53677a0.put(this.$subjectId + this.$ep, Boxing.d(1));
                    }
                    this.this$0.g1(false);
                    this.this$0.f53695q.q(arrayList);
                    return Unit.f67061a;
                case 9:
                    totalEpisode = this.I$0;
                    z10 = this.Z$0;
                    subject2 = (Subject) this.L$0;
                    ResultKt.b(obj);
                    objB = obj;
                    List list113 = (List) objB;
                    subject = subject2;
                    list = list113;
                    arrayList = new ArrayList();
                    if (z10) {
                        if (subject.getTrailer() == null) {
                        }
                        this.this$0.L.q(Boxing.a(false));
                        Unit unit11113 = Unit.f67061a;
                        list2 = arrayList;
                        if (1 <= totalEpisode) {
                            i11 = 1;
                            while (true) {
                                if (list != null) {
                                    it = list.iterator();
                                    do {
                                        if (it.hasNext()) {
                                            next = it.next();
                                        } else {
                                            next = null;
                                        }
                                        shortTVFirstEp = (ShortTVItem) next;
                                    } while (((ShortTVItem) next).getEp() != i11);
                                    shortTVFirstEp = (ShortTVItem) next;
                                } else {
                                    shortTVFirstEp = null;
                                }
                                if (i11 == 1) {
                                    eVar2 = new js.e(this.$subjectId, i11, null, 0, 12, null);
                                    if (shortTVFirstEp != null) {
                                        downloadStatus2 = shortTVFirstEp.getDownloadStatus();
                                    } else {
                                        downloadStatus2 = 0;
                                    }
                                    eVar2.g(downloadStatus2);
                                    if (eVar2.b() != 5) {
                                        shortTVFirstEp = subject.getShortTVFirstEp();
                                    }
                                    eVar2.h(shortTVFirstEp);
                                    list2.add(eVar2);
                                } else {
                                    eVar = new js.e(this.$subjectId, i11, null, 0, 12, null);
                                    if (shortTVFirstEp != null) {
                                        downloadStatus = shortTVFirstEp.getDownloadStatus();
                                    } else {
                                        downloadStatus = 0;
                                    }
                                    eVar.g(downloadStatus);
                                    if (eVar.b() != 5) {
                                        shortTVFirstEp = null;
                                    }
                                    eVar.h(shortTVFirstEp);
                                    list2.add(eVar);
                                }
                                if (i11 != totalEpisode) {
                                    i11++;
                                }
                            }
                        }
                        if (subject.getShortTVFavInfo() == null) {
                            shortTvFavoriteDaoB0 = this.this$0.b0();
                            if (shortTvFavoriteDaoB0 != null) {
                                String str111116 = this.$subjectId;
                                this.L$0 = list2;
                                this.L$1 = subject;
                                this.L$2 = null;
                                this.L$3 = null;
                                this.label = 11;
                                objA = shortTvFavoriteDaoB0.a(str111116, this);
                                if (objA == objF) {
                                    return objF;
                                }
                                shortTvFavoriteStateBean = (ShortTvFavoriteStateBean) objA;
                                if (shortTvFavoriteStateBean != null) {
                                    shortTVFavInfo4 = new ShortTVFavInfo(shortTvFavoriteStateBean.getFavoriteNum(), shortTvFavoriteStateBean.getHasFavorite(), shortTvFavoriteStateBean.getFavoriteTime());
                                }
                            }
                            subject.setShortTVFavInfo(shortTVFavInfo4);
                        }
                        arrayList = list2;
                        this.this$0.f53677a0.put(this.$subjectId + this.$ep, Boxing.d(2));
                        break;
                    } else {
                        num = this.$dataSource;
                        if (num != null) {
                            return Unit.f67061a;
                        }
                        if (list != null) {
                        }
                        lg.a.C0828a.f(lg.a.f68839a, "ShortTvViewModel", "无网，显示下载数据, " + (list != null ? Boxing.d(list.size()) : null), false, 4, null);
                        if (list != null) {
                            str = this.$subjectId;
                            while (r0.hasNext()) {
                                js.e eVar113 = new js.e(str, shortTVItem.getEp(), null, 0, 12, null);
                                eVar113.g(shortTVItem.getDownloadStatus());
                                eVar113.h(shortTVItem);
                                arrayList.add(eVar113);
                            }
                            Unit unit11114 = Unit.f67061a;
                        }
                        this.this$0.f53677a0.put(this.$subjectId + this.$ep, Boxing.d(1));
                    }
                    this.this$0.g1(false);
                    this.this$0.f53695q.q(arrayList);
                    return Unit.f67061a;
                case 10:
                    totalEpisode = this.I$0;
                    List list20 = (List) this.L$2;
                    list = (List) this.L$1;
                    subject = (Subject) this.L$0;
                    ResultKt.b(obj);
                    arrayList = list20;
                    objI0 = obj;
                    Boxing.a(arrayList.add((js.e) objI0));
                    list2 = arrayList;
                    if (1 <= totalEpisode) {
                        i11 = 1;
                        while (true) {
                            if (list != null) {
                                it = list.iterator();
                                do {
                                    if (it.hasNext()) {
                                        next = it.next();
                                    } else {
                                        next = null;
                                    }
                                    shortTVFirstEp = (ShortTVItem) next;
                                } while (((ShortTVItem) next).getEp() != i11);
                                shortTVFirstEp = (ShortTVItem) next;
                            } else {
                                shortTVFirstEp = null;
                            }
                            if (i11 == 1) {
                                eVar2 = new js.e(this.$subjectId, i11, null, 0, 12, null);
                                if (shortTVFirstEp != null) {
                                    downloadStatus2 = shortTVFirstEp.getDownloadStatus();
                                } else {
                                    downloadStatus2 = 0;
                                }
                                eVar2.g(downloadStatus2);
                                if (eVar2.b() != 5) {
                                    shortTVFirstEp = subject.getShortTVFirstEp();
                                }
                                eVar2.h(shortTVFirstEp);
                                list2.add(eVar2);
                            } else {
                                eVar = new js.e(this.$subjectId, i11, null, 0, 12, null);
                                if (shortTVFirstEp != null) {
                                    downloadStatus = shortTVFirstEp.getDownloadStatus();
                                } else {
                                    downloadStatus = 0;
                                }
                                eVar.g(downloadStatus);
                                if (eVar.b() != 5) {
                                    shortTVFirstEp = null;
                                }
                                eVar.h(shortTVFirstEp);
                                list2.add(eVar);
                            }
                            if (i11 != totalEpisode) {
                                i11++;
                            }
                        }
                    }
                    if (subject.getShortTVFavInfo() == null) {
                        shortTvFavoriteDaoB0 = this.this$0.b0();
                        if (shortTvFavoriteDaoB0 != null) {
                            String str111117 = this.$subjectId;
                            this.L$0 = list2;
                            this.L$1 = subject;
                            this.L$2 = null;
                            this.L$3 = null;
                            this.label = 11;
                            objA = shortTvFavoriteDaoB0.a(str111117, this);
                            if (objA == objF) {
                                return objF;
                            }
                            shortTvFavoriteStateBean = (ShortTvFavoriteStateBean) objA;
                            if (shortTvFavoriteStateBean != null) {
                                shortTVFavInfo4 = new ShortTVFavInfo(shortTvFavoriteStateBean.getFavoriteNum(), shortTvFavoriteStateBean.getHasFavorite(), shortTvFavoriteStateBean.getFavoriteTime());
                            }
                        }
                        subject.setShortTVFavInfo(shortTVFavInfo4);
                    }
                    arrayList = list2;
                    this.this$0.f53677a0.put(this.$subjectId + this.$ep, Boxing.d(2));
                    this.this$0.g1(false);
                    this.this$0.f53695q.q(arrayList);
                    return Unit.f67061a;
                case 11:
                    Subject subject11 = (Subject) this.L$1;
                    list2 = (List) this.L$0;
                    ResultKt.b(obj);
                    subject = subject11;
                    objA = obj;
                    shortTvFavoriteStateBean = (ShortTvFavoriteStateBean) objA;
                    if (shortTvFavoriteStateBean != null) {
                        shortTVFavInfo4 = new ShortTVFavInfo(shortTvFavoriteStateBean.getFavoriteNum(), shortTvFavoriteStateBean.getHasFavorite(), shortTvFavoriteStateBean.getFavoriteTime());
                    }
                    subject.setShortTVFavInfo(shortTVFavInfo4);
                    arrayList = list2;
                    this.this$0.f53677a0.put(this.$subjectId + this.$ep, Boxing.d(2));
                    this.this$0.g1(false);
                    this.this$0.f53695q.q(arrayList);
                    return Unit.f67061a;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } catch (Throwable th2) {
            Result.Companion companion18 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
    }
}
