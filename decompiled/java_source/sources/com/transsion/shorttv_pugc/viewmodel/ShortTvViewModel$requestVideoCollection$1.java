package com.transsion.shorttv_pugc.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.shorttv_pugc.ShorttvModel;
import com.transsion.shorttv_pugc.utils.ShortTvExtKt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntRange;
import kotlinx.coroutines.n0;
import nh.m;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.shorttv_pugc.viewmodel.ShortTvViewModel$requestVideoCollection$1", f = "ShortTvViewModel.kt", l = {255, 256, 259}, m = "invokeSuspend")
@SourceDebugExtension
final class ShortTvViewModel$requestVideoCollection$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $collectionId;
    final /* synthetic */ int $endPosition;
    final /* synthetic */ int $startPosition;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    Object L$6;
    int label;
    final /* synthetic */ ShortTvViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ShortTvViewModel$requestVideoCollection$1(String str, int i11, int i12, ShortTvViewModel shortTvViewModel, Continuation<? super ShortTvViewModel$requestVideoCollection$1> continuation) {
        super(2, continuation);
        this.$collectionId = str;
        this.$startPosition = i11;
        this.$endPosition = i12;
        this.this$0 = shortTvViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        ShortTvViewModel$requestVideoCollection$1 shortTvViewModel$requestVideoCollection$1 = new ShortTvViewModel$requestVideoCollection$1(this.$collectionId, this.$startPosition, this.$endPosition, this.this$0, continuation);
        shortTvViewModel$requestVideoCollection$1.L$0 = obj;
        return shortTvViewModel$requestVideoCollection$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ShortTvViewModel$requestVideoCollection$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:102:0x029c A[Catch: all -> 0x0039, TryCatch #4 {all -> 0x0039, blocks: (B:8:0x0034, B:87:0x0262, B:89:0x026a, B:91:0x0270, B:92:0x0276, B:94:0x027c, B:96:0x0285, B:97:0x0288, B:99:0x0290, B:100:0x0296, B:102:0x029c, B:106:0x02b4, B:108:0x02b8, B:110:0x02c6, B:112:0x02eb, B:114:0x02f1, B:115:0x02f7, B:117:0x02fd, B:121:0x0315, B:123:0x0319, B:125:0x0328, B:124:0x0321, B:128:0x0330, B:134:0x033f, B:15:0x005c, B:69:0x0207, B:71:0x0210, B:72:0x021b, B:74:0x0221, B:76:0x022d, B:77:0x0231, B:80:0x023c, B:82:0x0245, B:84:0x024b, B:79:0x0237, B:18:0x007a), top: B:160:0x0010 }] */
    /* JADX WARN: Code duplicated, block: B:108:0x02b8 A[Catch: all -> 0x0039, TryCatch #4 {all -> 0x0039, blocks: (B:8:0x0034, B:87:0x0262, B:89:0x026a, B:91:0x0270, B:92:0x0276, B:94:0x027c, B:96:0x0285, B:97:0x0288, B:99:0x0290, B:100:0x0296, B:102:0x029c, B:106:0x02b4, B:108:0x02b8, B:110:0x02c6, B:112:0x02eb, B:114:0x02f1, B:115:0x02f7, B:117:0x02fd, B:121:0x0315, B:123:0x0319, B:125:0x0328, B:124:0x0321, B:128:0x0330, B:134:0x033f, B:15:0x005c, B:69:0x0207, B:71:0x0210, B:72:0x021b, B:74:0x0221, B:76:0x022d, B:77:0x0231, B:80:0x023c, B:82:0x0245, B:84:0x024b, B:79:0x0237, B:18:0x007a), top: B:160:0x0010 }] */
    /* JADX WARN: Code duplicated, block: B:110:0x02c6 A[Catch: all -> 0x0039, TryCatch #4 {all -> 0x0039, blocks: (B:8:0x0034, B:87:0x0262, B:89:0x026a, B:91:0x0270, B:92:0x0276, B:94:0x027c, B:96:0x0285, B:97:0x0288, B:99:0x0290, B:100:0x0296, B:102:0x029c, B:106:0x02b4, B:108:0x02b8, B:110:0x02c6, B:112:0x02eb, B:114:0x02f1, B:115:0x02f7, B:117:0x02fd, B:121:0x0315, B:123:0x0319, B:125:0x0328, B:124:0x0321, B:128:0x0330, B:134:0x033f, B:15:0x005c, B:69:0x0207, B:71:0x0210, B:72:0x021b, B:74:0x0221, B:76:0x022d, B:77:0x0231, B:80:0x023c, B:82:0x0245, B:84:0x024b, B:79:0x0237, B:18:0x007a), top: B:160:0x0010 }] */
    /* JADX WARN: Code duplicated, block: B:111:0x02ea  */
    /* JADX WARN: Code duplicated, block: B:114:0x02f1 A[Catch: all -> 0x0039, TryCatch #4 {all -> 0x0039, blocks: (B:8:0x0034, B:87:0x0262, B:89:0x026a, B:91:0x0270, B:92:0x0276, B:94:0x027c, B:96:0x0285, B:97:0x0288, B:99:0x0290, B:100:0x0296, B:102:0x029c, B:106:0x02b4, B:108:0x02b8, B:110:0x02c6, B:112:0x02eb, B:114:0x02f1, B:115:0x02f7, B:117:0x02fd, B:121:0x0315, B:123:0x0319, B:125:0x0328, B:124:0x0321, B:128:0x0330, B:134:0x033f, B:15:0x005c, B:69:0x0207, B:71:0x0210, B:72:0x021b, B:74:0x0221, B:76:0x022d, B:77:0x0231, B:80:0x023c, B:82:0x0245, B:84:0x024b, B:79:0x0237, B:18:0x007a), top: B:160:0x0010 }] */
    /* JADX WARN: Code duplicated, block: B:117:0x02fd A[Catch: all -> 0x0039, TryCatch #4 {all -> 0x0039, blocks: (B:8:0x0034, B:87:0x0262, B:89:0x026a, B:91:0x0270, B:92:0x0276, B:94:0x027c, B:96:0x0285, B:97:0x0288, B:99:0x0290, B:100:0x0296, B:102:0x029c, B:106:0x02b4, B:108:0x02b8, B:110:0x02c6, B:112:0x02eb, B:114:0x02f1, B:115:0x02f7, B:117:0x02fd, B:121:0x0315, B:123:0x0319, B:125:0x0328, B:124:0x0321, B:128:0x0330, B:134:0x033f, B:15:0x005c, B:69:0x0207, B:71:0x0210, B:72:0x021b, B:74:0x0221, B:76:0x022d, B:77:0x0231, B:80:0x023c, B:82:0x0245, B:84:0x024b, B:79:0x0237, B:18:0x007a), top: B:160:0x0010 }] */
    /* JADX WARN: Code duplicated, block: B:123:0x0319 A[Catch: all -> 0x0039, TryCatch #4 {all -> 0x0039, blocks: (B:8:0x0034, B:87:0x0262, B:89:0x026a, B:91:0x0270, B:92:0x0276, B:94:0x027c, B:96:0x0285, B:97:0x0288, B:99:0x0290, B:100:0x0296, B:102:0x029c, B:106:0x02b4, B:108:0x02b8, B:110:0x02c6, B:112:0x02eb, B:114:0x02f1, B:115:0x02f7, B:117:0x02fd, B:121:0x0315, B:123:0x0319, B:125:0x0328, B:124:0x0321, B:128:0x0330, B:134:0x033f, B:15:0x005c, B:69:0x0207, B:71:0x0210, B:72:0x021b, B:74:0x0221, B:76:0x022d, B:77:0x0231, B:80:0x023c, B:82:0x0245, B:84:0x024b, B:79:0x0237, B:18:0x007a), top: B:160:0x0010 }] */
    /* JADX WARN: Code duplicated, block: B:124:0x0321 A[Catch: all -> 0x0039, TryCatch #4 {all -> 0x0039, blocks: (B:8:0x0034, B:87:0x0262, B:89:0x026a, B:91:0x0270, B:92:0x0276, B:94:0x027c, B:96:0x0285, B:97:0x0288, B:99:0x0290, B:100:0x0296, B:102:0x029c, B:106:0x02b4, B:108:0x02b8, B:110:0x02c6, B:112:0x02eb, B:114:0x02f1, B:115:0x02f7, B:117:0x02fd, B:121:0x0315, B:123:0x0319, B:125:0x0328, B:124:0x0321, B:128:0x0330, B:134:0x033f, B:15:0x005c, B:69:0x0207, B:71:0x0210, B:72:0x021b, B:74:0x0221, B:76:0x022d, B:77:0x0231, B:80:0x023c, B:82:0x0245, B:84:0x024b, B:79:0x0237, B:18:0x007a), top: B:160:0x0010 }] */
    /* JADX WARN: Code duplicated, block: B:126:0x032c  */
    /* JADX WARN: Code duplicated, block: B:141:0x035a  */
    /* JADX WARN: Code duplicated, block: B:143:0x0363  */
    /* JADX WARN: Code duplicated, block: B:145:0x0377  */
    /* JADX WARN: Code duplicated, block: B:165:0x02b2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:168:0x0313 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:172:0x022d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:174:0x021b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:71:0x0210 A[Catch: all -> 0x0039, TryCatch #4 {all -> 0x0039, blocks: (B:8:0x0034, B:87:0x0262, B:89:0x026a, B:91:0x0270, B:92:0x0276, B:94:0x027c, B:96:0x0285, B:97:0x0288, B:99:0x0290, B:100:0x0296, B:102:0x029c, B:106:0x02b4, B:108:0x02b8, B:110:0x02c6, B:112:0x02eb, B:114:0x02f1, B:115:0x02f7, B:117:0x02fd, B:121:0x0315, B:123:0x0319, B:125:0x0328, B:124:0x0321, B:128:0x0330, B:134:0x033f, B:15:0x005c, B:69:0x0207, B:71:0x0210, B:72:0x021b, B:74:0x0221, B:76:0x022d, B:77:0x0231, B:80:0x023c, B:82:0x0245, B:84:0x024b, B:79:0x0237, B:18:0x007a), top: B:160:0x0010 }] */
    /* JADX WARN: Code duplicated, block: B:74:0x0221 A[Catch: all -> 0x0039, TryCatch #4 {all -> 0x0039, blocks: (B:8:0x0034, B:87:0x0262, B:89:0x026a, B:91:0x0270, B:92:0x0276, B:94:0x027c, B:96:0x0285, B:97:0x0288, B:99:0x0290, B:100:0x0296, B:102:0x029c, B:106:0x02b4, B:108:0x02b8, B:110:0x02c6, B:112:0x02eb, B:114:0x02f1, B:115:0x02f7, B:117:0x02fd, B:121:0x0315, B:123:0x0319, B:125:0x0328, B:124:0x0321, B:128:0x0330, B:134:0x033f, B:15:0x005c, B:69:0x0207, B:71:0x0210, B:72:0x021b, B:74:0x0221, B:76:0x022d, B:77:0x0231, B:80:0x023c, B:82:0x0245, B:84:0x024b, B:79:0x0237, B:18:0x007a), top: B:160:0x0010 }] */
    /* JADX WARN: Code duplicated, block: B:79:0x0237 A[Catch: all -> 0x0039, TryCatch #4 {all -> 0x0039, blocks: (B:8:0x0034, B:87:0x0262, B:89:0x026a, B:91:0x0270, B:92:0x0276, B:94:0x027c, B:96:0x0285, B:97:0x0288, B:99:0x0290, B:100:0x0296, B:102:0x029c, B:106:0x02b4, B:108:0x02b8, B:110:0x02c6, B:112:0x02eb, B:114:0x02f1, B:115:0x02f7, B:117:0x02fd, B:121:0x0315, B:123:0x0319, B:125:0x0328, B:124:0x0321, B:128:0x0330, B:134:0x033f, B:15:0x005c, B:69:0x0207, B:71:0x0210, B:72:0x021b, B:74:0x0221, B:76:0x022d, B:77:0x0231, B:80:0x023c, B:82:0x0245, B:84:0x024b, B:79:0x0237, B:18:0x007a), top: B:160:0x0010 }] */
    /* JADX WARN: Code duplicated, block: B:86:0x0261 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:94:0x027c A[Catch: all -> 0x0039, TryCatch #4 {all -> 0x0039, blocks: (B:8:0x0034, B:87:0x0262, B:89:0x026a, B:91:0x0270, B:92:0x0276, B:94:0x027c, B:96:0x0285, B:97:0x0288, B:99:0x0290, B:100:0x0296, B:102:0x029c, B:106:0x02b4, B:108:0x02b8, B:110:0x02c6, B:112:0x02eb, B:114:0x02f1, B:115:0x02f7, B:117:0x02fd, B:121:0x0315, B:123:0x0319, B:125:0x0328, B:124:0x0321, B:128:0x0330, B:134:0x033f, B:15:0x005c, B:69:0x0207, B:71:0x0210, B:72:0x021b, B:74:0x0221, B:76:0x022d, B:77:0x0231, B:80:0x023c, B:82:0x0245, B:84:0x024b, B:79:0x0237, B:18:0x007a), top: B:160:0x0010 }] */
    /* JADX WARN: Code duplicated, block: B:96:0x0285 A[Catch: all -> 0x0039, TryCatch #4 {all -> 0x0039, blocks: (B:8:0x0034, B:87:0x0262, B:89:0x026a, B:91:0x0270, B:92:0x0276, B:94:0x027c, B:96:0x0285, B:97:0x0288, B:99:0x0290, B:100:0x0296, B:102:0x029c, B:106:0x02b4, B:108:0x02b8, B:110:0x02c6, B:112:0x02eb, B:114:0x02f1, B:115:0x02f7, B:117:0x02fd, B:121:0x0315, B:123:0x0319, B:125:0x0328, B:124:0x0321, B:128:0x0330, B:134:0x033f, B:15:0x005c, B:69:0x0207, B:71:0x0210, B:72:0x021b, B:74:0x0221, B:76:0x022d, B:77:0x0231, B:80:0x023c, B:82:0x0245, B:84:0x024b, B:79:0x0237, B:18:0x007a), top: B:160:0x0010 }] */
    /* JADX WARN: Code duplicated, block: B:99:0x0290 A[Catch: all -> 0x0039, TryCatch #4 {all -> 0x0039, blocks: (B:8:0x0034, B:87:0x0262, B:89:0x026a, B:91:0x0270, B:92:0x0276, B:94:0x027c, B:96:0x0285, B:97:0x0288, B:99:0x0290, B:100:0x0296, B:102:0x029c, B:106:0x02b4, B:108:0x02b8, B:110:0x02c6, B:112:0x02eb, B:114:0x02f1, B:115:0x02f7, B:117:0x02fd, B:121:0x0315, B:123:0x0319, B:125:0x0328, B:124:0x0321, B:128:0x0330, B:134:0x033f, B:15:0x005c, B:69:0x0207, B:71:0x0210, B:72:0x021b, B:74:0x0221, B:76:0x022d, B:77:0x0231, B:80:0x023c, B:82:0x0245, B:84:0x024b, B:79:0x0237, B:18:0x007a), top: B:160:0x0010 }] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        List list;
        Object objM454constructorimpl;
        ShortTvViewModel shortTvViewModel;
        List list2;
        Object objE;
        ShortTvViewModel shortTvViewModel2;
        List list3;
        Ref.IntRef intRef;
        String str;
        n0 n0Var;
        String[] strArr;
        Object objD;
        String str2;
        ShortTvViewModel shortTvViewModel3;
        Ref.IntRef intRef2;
        ShorttvModel.UGCVideoList uGCVideoList;
        BaseDto baseDto;
        List<ShorttvModel.UGCVideo> items;
        List arrayList;
        st.f fVarO;
        ArrayList arrayList2;
        Iterator<T> it;
        String ugcVideoId;
        ShorttvModel.PlayMultiDto playMultiDto;
        List<ShorttvModel.PlayStreamItem> items2;
        ShorttvModel.PlayStreamItem playStreamItem;
        List<ShorttvModel.UGCVideo> items3;
        Iterator<T> it2;
        Object next;
        ShorttvModel.UGCVideo uGCVideo;
        List listV;
        Iterator it3;
        Object next2;
        ShorttvModel.UGCVideo uGCVideo2;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        int i12 = 0;
        Unit unit = null;
        try {
            try {
                if (i11 == 0) {
                    ResultKt.b(obj);
                    n0 n0Var2 = (n0) this.L$0;
                    String str3 = this.$collectionId;
                    if (str3 == null || str3.length() == 0) {
                        return Unit.f67061a;
                    }
                    Ref.IntRef intRef3 = new Ref.IntRef();
                    int iMax = Math.max(1, this.$startPosition);
                    intRef3.element = iMax;
                    int i13 = this.$endPosition;
                    if ((iMax != 0 || i13 != 0) && iMax <= i13) {
                        lg.a.C0828a.f(lg.a.f68839a, "ShortTvViewModel", "requestVideoCollection, startPosition: " + iMax + ", endPosition: " + i13, false, 4, null);
                        List listZ = this.this$0.z();
                        ArrayList arrayList3 = new ArrayList(CollectionsKt.v(listZ, 10));
                        Iterator it4 = listZ.iterator();
                        while (it4.hasNext()) {
                            arrayList3.add(Boxing.d(((ShorttvModel.UGCVideo) it4.next()).getEp()));
                        }
                        boolean zC = Intrinsics.c(CollectionsKt.W0(arrayList3), CollectionsKt.W0(new IntRange(intRef3.element, i13)));
                        lg.a.C0828a c0828a = lg.a.f68839a;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("isDifferent: ");
                        sb2.append(!zC);
                        lg.a.C0828a.f(c0828a, "ShortTvViewModel", sb2.toString(), false, 4, null);
                        if (zC) {
                            return Unit.f67061a;
                        }
                        if (m.f70474a.e()) {
                            ArrayList arrayList4 = new ArrayList();
                            ShortTvViewModel shortTvViewModel4 = this.this$0;
                            String str4 = this.$collectionId;
                            try {
                                Result.Companion companion = Result.INSTANCE;
                                rt.a aVar = shortTvViewModel4.f54466a;
                                int i14 = intRef3.element;
                                this.L$0 = intRef3;
                                this.L$1 = arrayList4;
                                this.L$2 = shortTvViewModel4;
                                this.L$3 = str4;
                                this.L$4 = n0Var2;
                                this.label = 1;
                                list2 = arrayList4;
                                try {
                                    objE = rt.a.C0909a.e(aVar, str4, i14, i13, 0, 0, null, this, 56, null);
                                    if (objE == objF) {
                                        return objF;
                                    }
                                    shortTvViewModel2 = shortTvViewModel4;
                                    list3 = list2;
                                    intRef = intRef3;
                                    str = str4;
                                    n0Var = n0Var2;
                                } catch (Throwable th2) {
                                    th = th2;
                                    list = list2;
                                    Result.Companion companion2 = Result.INSTANCE;
                                    objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th));
                                    shortTvViewModel = this.this$0;
                                    if (Result.m461isSuccessimpl(objM454constructorimpl)) {
                                        if (list.isEmpty()) {
                                            shortTvViewModel.f54487v.n(TuplesKt.a(ot.b.a.f72098a, shortTvViewModel.v()));
                                            return Unit.f67061a;
                                        }
                                        ShortTvExtKt.u(list, shortTvViewModel.v());
                                        ShortTvExtKt.h(shortTvViewModel.z(), list);
                                        ShortTvExtKt.e(shortTvViewModel.p(), list);
                                        shortTvViewModel.f54487v.n(TuplesKt.a(ot.b.C0876b.f72099a, list));
                                    }
                                    Result.m457exceptionOrNullimpl(objM454constructorimpl);
                                    Result.m453boximpl(objM454constructorimpl);
                                    return Unit.f67061a;
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                list2 = arrayList4;
                                list = list2;
                                Result.Companion companion3 = Result.INSTANCE;
                                objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th));
                                shortTvViewModel = this.this$0;
                                if (Result.m461isSuccessimpl(objM454constructorimpl)) {
                                    if (list.isEmpty()) {
                                        shortTvViewModel.f54487v.n(TuplesKt.a(ot.b.a.f72098a, shortTvViewModel.v()));
                                        return Unit.f67061a;
                                    }
                                    ShortTvExtKt.u(list, shortTvViewModel.v());
                                    ShortTvExtKt.h(shortTvViewModel.z(), list);
                                    ShortTvExtKt.e(shortTvViewModel.p(), list);
                                    shortTvViewModel.f54487v.n(TuplesKt.a(ot.b.C0876b.f72099a, list));
                                }
                                Result.m457exceptionOrNullimpl(objM454constructorimpl);
                                Result.m453boximpl(objM454constructorimpl);
                                return Unit.f67061a;
                            }
                        } else {
                            this.this$0.f54487v.n(TuplesKt.a(ot.b.a.f72098a, this.this$0.v()));
                        }
                        return Unit.f67061a;
                    }
                    return Unit.f67061a;
                }
                if (i11 == 1) {
                    n0 n0Var3 = (n0) this.L$4;
                    String str5 = (String) this.L$3;
                    ShortTvViewModel shortTvViewModel5 = (ShortTvViewModel) this.L$2;
                    List list4 = (List) this.L$1;
                    Ref.IntRef intRef4 = (Ref.IntRef) this.L$0;
                    ResultKt.b(obj);
                    n0Var = n0Var3;
                    str = str5;
                    shortTvViewModel2 = shortTvViewModel5;
                    list3 = list4;
                    objE = obj;
                    intRef = intRef4;
                } else if (i11 == 2) {
                    ShorttvModel.UGCVideoList uGCVideoList2 = (ShorttvModel.UGCVideoList) this.L$5;
                    n0 n0Var4 = (n0) this.L$4;
                    str2 = (String) this.L$3;
                    shortTvViewModel3 = (ShortTvViewModel) this.L$2;
                    list = (List) this.L$1;
                    intRef2 = (Ref.IntRef) this.L$0;
                    ResultKt.b(obj);
                    objD = obj;
                    n0Var = n0Var4;
                    uGCVideoList = uGCVideoList2;
                    baseDto = (BaseDto) objD;
                    items = uGCVideoList.getItems();
                    if (items != null) {
                        arrayList2 = new ArrayList();
                        it = items.iterator();
                        while (it.hasNext()) {
                            ugcVideoId = ((ShorttvModel.UGCVideo) it.next()).getUgcVideoId();
                            if (ugcVideoId != null) {
                                arrayList2.add(ugcVideoId);
                            }
                        }
                        arrayList = CollectionsKt.U0(arrayList2);
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                    } else {
                        arrayList = new ArrayList();
                    }
                    if (!arrayList.isEmpty() && (fVarO = shortTvViewModel3.O()) != null) {
                        this.L$0 = intRef2;
                        this.L$1 = list;
                        this.L$2 = shortTvViewModel3;
                        this.L$3 = str2;
                        this.L$4 = n0Var;
                        this.L$5 = uGCVideoList;
                        this.L$6 = baseDto;
                        this.label = 3;
                        if (fVarO.a(str2, arrayList, this) == objF) {
                            return objF;
                        }
                    }
                } else {
                    if (i11 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    baseDto = (BaseDto) this.L$6;
                    uGCVideoList = (ShorttvModel.UGCVideoList) this.L$5;
                    str2 = (String) this.L$3;
                    shortTvViewModel3 = (ShortTvViewModel) this.L$2;
                    list = (List) this.L$1;
                    intRef2 = (Ref.IntRef) this.L$0;
                    ResultKt.b(obj);
                }
                playMultiDto = (ShorttvModel.PlayMultiDto) baseDto.getData();
                if (playMultiDto != null && (items2 = playMultiDto.getItems()) != null) {
                    for (Object obj2 : items2) {
                        int i15 = i12 + 1;
                        if (i12 < 0) {
                            CollectionsKt.u();
                        }
                        playStreamItem = (ShorttvModel.PlayStreamItem) obj2;
                        items3 = uGCVideoList.getItems();
                        if (items3 != null) {
                            it2 = items3.iterator();
                            do {
                                if (it2.hasNext()) {
                                    next = null;
                                    break;
                                }
                                next = it2.next();
                            } while (!Intrinsics.c(((ShorttvModel.UGCVideo) next).getUgcVideoId(), playStreamItem.getUgcVideoId()));
                            uGCVideo = (ShorttvModel.UGCVideo) next;
                            if (uGCVideo != null) {
                                uGCVideo.overrideCoverByFirstImage(playStreamItem.getFirstImage());
                                if (uGCVideo.getEp() == -1) {
                                    String strQ = shortTvViewModel3.q();
                                    int size = shortTvViewModel3.p().size();
                                    int i16 = intRef2.element;
                                    intRef2.element = i16 + 1;
                                    uGCVideo.setBelongToCollection(new ShorttvModel.UGCVideoCollection(str2, Boxing.d(size), Boxing.d(i16), strQ));
                                }
                                listV = shortTvViewModel3.v();
                                if (listV != null) {
                                    it3 = listV.iterator();
                                    do {
                                        if (it3.hasNext()) {
                                            next2 = null;
                                            break;
                                        }
                                        next2 = it3.next();
                                    } while (!Intrinsics.c(((ShorttvModel.UGCVideo) next2).getUgcVideoId(), uGCVideo.getUgcVideoId()));
                                    uGCVideo2 = (ShorttvModel.UGCVideo) next2;
                                    if (uGCVideo2 != null) {
                                        uGCVideo.setPlayUrl(uGCVideo2.getPlayUrl());
                                    } else {
                                        uGCVideo.setStreams(playStreamItem.getResources());
                                    }
                                } else {
                                    uGCVideo.setStreams(playStreamItem.getResources());
                                }
                                list.add(uGCVideo);
                            }
                        }
                        i12 = i15;
                    }
                    unit = Unit.f67061a;
                }
                objM454constructorimpl = Result.m454constructorimpl(unit);
                shortTvViewModel = this.this$0;
                if (Result.m461isSuccessimpl(objM454constructorimpl)) {
                    if (list.isEmpty()) {
                        shortTvViewModel.f54487v.n(TuplesKt.a(ot.b.a.f72098a, shortTvViewModel.v()));
                        return Unit.f67061a;
                    }
                    ShortTvExtKt.u(list, shortTvViewModel.v());
                    ShortTvExtKt.h(shortTvViewModel.z(), list);
                    ShortTvExtKt.e(shortTvViewModel.p(), list);
                    shortTvViewModel.f54487v.n(TuplesKt.a(ot.b.C0876b.f72099a, list));
                }
                Result.m457exceptionOrNullimpl(objM454constructorimpl);
                Result.m453boximpl(objM454constructorimpl);
                return Unit.f67061a;
                ShorttvModel.UGCVideoList uGCVideoList3 = (ShorttvModel.UGCVideoList) ((BaseDto) objE).getData();
                if (uGCVideoList3 != null) {
                    rt.a aVar2 = shortTvViewModel2.f54466a;
                    List<ShorttvModel.UGCVideo> items4 = uGCVideoList3.getItems();
                    if (items4 != null) {
                        try {
                            List<ShorttvModel.UGCVideo> list5 = items4;
                            ArrayList arrayList5 = new ArrayList(CollectionsKt.v(list5, 10));
                            Iterator<T> it5 = list5.iterator();
                            while (it5.hasNext()) {
                                arrayList5.add(((ShorttvModel.UGCVideo) it5.next()).getUgcVideoId());
                            }
                            strArr = (String[]) arrayList5.toArray(new String[0]);
                        } catch (Throwable th4) {
                            th = th4;
                            list = list3;
                            Result.Companion companion4 = Result.INSTANCE;
                            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th));
                        }
                    } else {
                        strArr = null;
                    }
                    this.L$0 = intRef;
                    this.L$1 = list3;
                    this.L$2 = shortTvViewModel2;
                    this.L$3 = str;
                    this.L$4 = n0Var;
                    this.L$5 = uGCVideoList3;
                    this.label = 2;
                    list2 = list3;
                    objD = rt.a.C0909a.d(aVar2, strArr, null, this, 2, null);
                    if (objD == objF) {
                        return objF;
                    }
                    str2 = str;
                    shortTvViewModel3 = shortTvViewModel2;
                    intRef2 = intRef;
                    uGCVideoList = uGCVideoList3;
                    list = list2;
                    baseDto = (BaseDto) objD;
                    items = uGCVideoList.getItems();
                    if (items != null) {
                        arrayList2 = new ArrayList();
                        it = items.iterator();
                        while (it.hasNext()) {
                            ugcVideoId = ((ShorttvModel.UGCVideo) it.next()).getUgcVideoId();
                            if (ugcVideoId != null) {
                                arrayList2.add(ugcVideoId);
                            }
                        }
                        arrayList = CollectionsKt.U0(arrayList2);
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                    } else {
                        arrayList = new ArrayList();
                    }
                    if (!arrayList.isEmpty()) {
                        this.L$0 = intRef2;
                        this.L$1 = list;
                        this.L$2 = shortTvViewModel3;
                        this.L$3 = str2;
                        this.L$4 = n0Var;
                        this.L$5 = uGCVideoList;
                        this.L$6 = baseDto;
                        this.label = 3;
                        if (fVarO.a(str2, arrayList, this) == objF) {
                            return objF;
                        }
                    }
                    playMultiDto = (ShorttvModel.PlayMultiDto) baseDto.getData();
                    if (playMultiDto != null) {
                        while (r0.hasNext()) {
                            int i17 = i12 + 1;
                            if (i12 < 0) {
                                CollectionsKt.u();
                            }
                            playStreamItem = (ShorttvModel.PlayStreamItem) obj2;
                            items3 = uGCVideoList.getItems();
                            if (items3 != null) {
                                it2 = items3.iterator();
                                do {
                                    if (it2.hasNext()) {
                                        next = null;
                                        break;
                                    }
                                    next = it2.next();
                                } while (!Intrinsics.c(((ShorttvModel.UGCVideo) next).getUgcVideoId(), playStreamItem.getUgcVideoId()));
                                uGCVideo = (ShorttvModel.UGCVideo) next;
                                if (uGCVideo != null) {
                                    uGCVideo.overrideCoverByFirstImage(playStreamItem.getFirstImage());
                                    if (uGCVideo.getEp() == -1) {
                                        String strQ2 = shortTvViewModel3.q();
                                        int size2 = shortTvViewModel3.p().size();
                                        int i18 = intRef2.element;
                                        intRef2.element = i18 + 1;
                                        uGCVideo.setBelongToCollection(new ShorttvModel.UGCVideoCollection(str2, Boxing.d(size2), Boxing.d(i18), strQ2));
                                    }
                                    listV = shortTvViewModel3.v();
                                    if (listV != null) {
                                        it3 = listV.iterator();
                                        do {
                                            if (it3.hasNext()) {
                                                next2 = null;
                                                break;
                                            }
                                            next2 = it3.next();
                                        } while (!Intrinsics.c(((ShorttvModel.UGCVideo) next2).getUgcVideoId(), uGCVideo.getUgcVideoId()));
                                        uGCVideo2 = (ShorttvModel.UGCVideo) next2;
                                        if (uGCVideo2 != null) {
                                            uGCVideo.setPlayUrl(uGCVideo2.getPlayUrl());
                                        } else {
                                            uGCVideo.setStreams(playStreamItem.getResources());
                                        }
                                    } else {
                                        uGCVideo.setStreams(playStreamItem.getResources());
                                    }
                                    list.add(uGCVideo);
                                }
                            }
                            i12 = i17;
                        }
                        unit = Unit.f67061a;
                    }
                } else {
                    list = list3;
                }
                objM454constructorimpl = Result.m454constructorimpl(unit);
            } catch (Throwable th5) {
                th = th5;
                list2 = list3;
                list = list2;
                Result.Companion companion5 = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th));
                shortTvViewModel = this.this$0;
                if (Result.m461isSuccessimpl(objM454constructorimpl)) {
                    if (list.isEmpty()) {
                        shortTvViewModel.f54487v.n(TuplesKt.a(ot.b.a.f72098a, shortTvViewModel.v()));
                        return Unit.f67061a;
                    }
                    ShortTvExtKt.u(list, shortTvViewModel.v());
                    ShortTvExtKt.h(shortTvViewModel.z(), list);
                    ShortTvExtKt.e(shortTvViewModel.p(), list);
                    shortTvViewModel.f54487v.n(TuplesKt.a(ot.b.C0876b.f72099a, list));
                }
                Result.m457exceptionOrNullimpl(objM454constructorimpl);
                Result.m453boximpl(objM454constructorimpl);
                return Unit.f67061a;
            }
        } catch (Throwable th6) {
            th = th6;
        }
        shortTvViewModel = this.this$0;
        if (Result.m461isSuccessimpl(objM454constructorimpl)) {
            if (list.isEmpty()) {
                shortTvViewModel.f54487v.n(TuplesKt.a(ot.b.a.f72098a, shortTvViewModel.v()));
                return Unit.f67061a;
            }
            ShortTvExtKt.u(list, shortTvViewModel.v());
            ShortTvExtKt.h(shortTvViewModel.z(), list);
            ShortTvExtKt.e(shortTvViewModel.p(), list);
            shortTvViewModel.f54487v.n(TuplesKt.a(ot.b.C0876b.f72099a, list));
        }
        Result.m457exceptionOrNullimpl(objM454constructorimpl);
        Result.m453boximpl(objM454constructorimpl);
        return Unit.f67061a;
    }
}
