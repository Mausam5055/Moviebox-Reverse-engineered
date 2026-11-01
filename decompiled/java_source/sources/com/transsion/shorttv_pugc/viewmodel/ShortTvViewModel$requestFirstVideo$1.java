package com.transsion.shorttv_pugc.viewmodel;

import com.transsion.shorttv_pugc.ShorttvModel;
import com.transsion.shorttv_pugc.bean.ShortTvInnerPlayBean;
import com.transsion.shorttv_pugc.utils.ShortTvExtKt;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
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
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.k;
import kotlinx.coroutines.l2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.r0;
import nh.m;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.shorttv_pugc.viewmodel.ShortTvViewModel$requestFirstVideo$1", f = "ShortTvViewModel.kt", l = {146, 156, 160, 161, 164}, m = "invokeSuspend")
@SourceDebugExtension
final class ShortTvViewModel$requestFirstVideo$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $collectionId;
    final /* synthetic */ String $subjectId;
    final /* synthetic */ String $ugcVideoId;
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ ShortTvViewModel this$0;

    /* JADX INFO: renamed from: com.transsion.shorttv_pugc.viewmodel.ShortTvViewModel$requestFirstVideo$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/n0;", "Lkotlin/Result;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)Lkotlin/Result;"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.shorttv_pugc.viewmodel.ShortTvViewModel$requestFirstVideo$1$2", f = "ShortTvViewModel.kt", l = {179, 180, 184}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function2<n0, Continuation<? super Result<? extends Unit>>, Object> {
        final /* synthetic */ String $collectionId;
        final /* synthetic */ ShorttvModel.UGCVideo $downloadVideo;
        final /* synthetic */ String $subjectId;
        final /* synthetic */ Ref.ObjectRef<ShorttvModel.UGCVideo> $ugcVideo;
        final /* synthetic */ Ref.ObjectRef<String> $ugcVideoIdMutable;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;
        final /* synthetic */ ShortTvViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(Ref.ObjectRef<ShorttvModel.UGCVideo> objectRef, ShortTvViewModel shortTvViewModel, Ref.ObjectRef<String> objectRef2, String str, String str2, ShorttvModel.UGCVideo uGCVideo, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$ugcVideo = objectRef;
            this.this$0 = shortTvViewModel;
            this.$ugcVideoIdMutable = objectRef2;
            this.$collectionId = str;
            this.$subjectId = str2;
            this.$downloadVideo = uGCVideo;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$ugcVideo, this.this$0, this.$ugcVideoIdMutable, this.$collectionId, this.$subjectId, this.$downloadVideo, continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Result<Unit>> continuation) {
            return ((AnonymousClass2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        /* JADX WARN: Code duplicated, block: B:101:0x028a  */
        /* JADX WARN: Code duplicated, block: B:106:0x0234 A[EDGE_INSN: B:106:0x0234->B:92:0x0234 BREAK  A[LOOP:0: B:87:0x01ce->B:91:0x0232], SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:31:0x00f7 A[Catch: all -> 0x0031, TryCatch #0 {all -> 0x0031, blocks: (B:8:0x0028, B:47:0x0133, B:49:0x0137, B:54:0x0147, B:55:0x014a, B:57:0x0153, B:59:0x0159, B:61:0x0169, B:62:0x0177, B:64:0x0184, B:66:0x018a, B:69:0x0196, B:71:0x019c, B:72:0x019f, B:75:0x01a7, B:83:0x01bc, B:79:0x01b0, B:81:0x01b6, B:84:0x01bf, B:87:0x01ce, B:89:0x01db, B:91:0x0232, B:92:0x0234, B:93:0x025d, B:15:0x0050, B:29:0x00f1, B:31:0x00f7, B:33:0x00ff, B:35:0x0105, B:37:0x010b, B:39:0x0111, B:41:0x0117, B:43:0x011d, B:18:0x006a, B:25:0x00db, B:21:0x0088), top: B:104:0x000c }] */
        /* JADX WARN: Code duplicated, block: B:37:0x010b A[Catch: all -> 0x0031, TryCatch #0 {all -> 0x0031, blocks: (B:8:0x0028, B:47:0x0133, B:49:0x0137, B:54:0x0147, B:55:0x014a, B:57:0x0153, B:59:0x0159, B:61:0x0169, B:62:0x0177, B:64:0x0184, B:66:0x018a, B:69:0x0196, B:71:0x019c, B:72:0x019f, B:75:0x01a7, B:83:0x01bc, B:79:0x01b0, B:81:0x01b6, B:84:0x01bf, B:87:0x01ce, B:89:0x01db, B:91:0x0232, B:92:0x0234, B:93:0x025d, B:15:0x0050, B:29:0x00f1, B:31:0x00f7, B:33:0x00ff, B:35:0x0105, B:37:0x010b, B:39:0x0111, B:41:0x0117, B:43:0x011d, B:18:0x006a, B:25:0x00db, B:21:0x0088), top: B:104:0x000c }] */
        /* JADX WARN: Code duplicated, block: B:42:0x011c  */
        /* JADX WARN: Code duplicated, block: B:45:0x012f A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:46:0x0130  */
        /* JADX WARN: Code duplicated, block: B:49:0x0137 A[Catch: all -> 0x0031, TryCatch #0 {all -> 0x0031, blocks: (B:8:0x0028, B:47:0x0133, B:49:0x0137, B:54:0x0147, B:55:0x014a, B:57:0x0153, B:59:0x0159, B:61:0x0169, B:62:0x0177, B:64:0x0184, B:66:0x018a, B:69:0x0196, B:71:0x019c, B:72:0x019f, B:75:0x01a7, B:83:0x01bc, B:79:0x01b0, B:81:0x01b6, B:84:0x01bf, B:87:0x01ce, B:89:0x01db, B:91:0x0232, B:92:0x0234, B:93:0x025d, B:15:0x0050, B:29:0x00f1, B:31:0x00f7, B:33:0x00ff, B:35:0x0105, B:37:0x010b, B:39:0x0111, B:41:0x0117, B:43:0x011d, B:18:0x006a, B:25:0x00db, B:21:0x0088), top: B:104:0x000c }] */
        /* JADX WARN: Code duplicated, block: B:51:0x0140  */
        /* JADX WARN: Code duplicated, block: B:52:0x0143  */
        /* JADX WARN: Code duplicated, block: B:57:0x0153 A[Catch: all -> 0x0031, TryCatch #0 {all -> 0x0031, blocks: (B:8:0x0028, B:47:0x0133, B:49:0x0137, B:54:0x0147, B:55:0x014a, B:57:0x0153, B:59:0x0159, B:61:0x0169, B:62:0x0177, B:64:0x0184, B:66:0x018a, B:69:0x0196, B:71:0x019c, B:72:0x019f, B:75:0x01a7, B:83:0x01bc, B:79:0x01b0, B:81:0x01b6, B:84:0x01bf, B:87:0x01ce, B:89:0x01db, B:91:0x0232, B:92:0x0234, B:93:0x025d, B:15:0x0050, B:29:0x00f1, B:31:0x00f7, B:33:0x00ff, B:35:0x0105, B:37:0x010b, B:39:0x0111, B:41:0x0117, B:43:0x011d, B:18:0x006a, B:25:0x00db, B:21:0x0088), top: B:104:0x000c }] */
        /* JADX WARN: Code duplicated, block: B:58:0x0158  */
        /* JADX WARN: Code duplicated, block: B:61:0x0169 A[Catch: all -> 0x0031, TryCatch #0 {all -> 0x0031, blocks: (B:8:0x0028, B:47:0x0133, B:49:0x0137, B:54:0x0147, B:55:0x014a, B:57:0x0153, B:59:0x0159, B:61:0x0169, B:62:0x0177, B:64:0x0184, B:66:0x018a, B:69:0x0196, B:71:0x019c, B:72:0x019f, B:75:0x01a7, B:83:0x01bc, B:79:0x01b0, B:81:0x01b6, B:84:0x01bf, B:87:0x01ce, B:89:0x01db, B:91:0x0232, B:92:0x0234, B:93:0x025d, B:15:0x0050, B:29:0x00f1, B:31:0x00f7, B:33:0x00ff, B:35:0x0105, B:37:0x010b, B:39:0x0111, B:41:0x0117, B:43:0x011d, B:18:0x006a, B:25:0x00db, B:21:0x0088), top: B:104:0x000c }] */
        /* JADX WARN: Code duplicated, block: B:64:0x0184 A[Catch: all -> 0x0031, TryCatch #0 {all -> 0x0031, blocks: (B:8:0x0028, B:47:0x0133, B:49:0x0137, B:54:0x0147, B:55:0x014a, B:57:0x0153, B:59:0x0159, B:61:0x0169, B:62:0x0177, B:64:0x0184, B:66:0x018a, B:69:0x0196, B:71:0x019c, B:72:0x019f, B:75:0x01a7, B:83:0x01bc, B:79:0x01b0, B:81:0x01b6, B:84:0x01bf, B:87:0x01ce, B:89:0x01db, B:91:0x0232, B:92:0x0234, B:93:0x025d, B:15:0x0050, B:29:0x00f1, B:31:0x00f7, B:33:0x00ff, B:35:0x0105, B:37:0x010b, B:39:0x0111, B:41:0x0117, B:43:0x011d, B:18:0x006a, B:25:0x00db, B:21:0x0088), top: B:104:0x000c }] */
        /* JADX WARN: Code duplicated, block: B:68:0x0194 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:69:0x0196 A[Catch: all -> 0x0031, TryCatch #0 {all -> 0x0031, blocks: (B:8:0x0028, B:47:0x0133, B:49:0x0137, B:54:0x0147, B:55:0x014a, B:57:0x0153, B:59:0x0159, B:61:0x0169, B:62:0x0177, B:64:0x0184, B:66:0x018a, B:69:0x0196, B:71:0x019c, B:72:0x019f, B:75:0x01a7, B:83:0x01bc, B:79:0x01b0, B:81:0x01b6, B:84:0x01bf, B:87:0x01ce, B:89:0x01db, B:91:0x0232, B:92:0x0234, B:93:0x025d, B:15:0x0050, B:29:0x00f1, B:31:0x00f7, B:33:0x00ff, B:35:0x0105, B:37:0x010b, B:39:0x0111, B:41:0x0117, B:43:0x011d, B:18:0x006a, B:25:0x00db, B:21:0x0088), top: B:104:0x000c }] */
        /* JADX WARN: Code duplicated, block: B:70:0x019b  */
        /* JADX WARN: Code duplicated, block: B:74:0x01a5  */
        /* JADX WARN: Code duplicated, block: B:75:0x01a7 A[Catch: all -> 0x0031, TryCatch #0 {all -> 0x0031, blocks: (B:8:0x0028, B:47:0x0133, B:49:0x0137, B:54:0x0147, B:55:0x014a, B:57:0x0153, B:59:0x0159, B:61:0x0169, B:62:0x0177, B:64:0x0184, B:66:0x018a, B:69:0x0196, B:71:0x019c, B:72:0x019f, B:75:0x01a7, B:83:0x01bc, B:79:0x01b0, B:81:0x01b6, B:84:0x01bf, B:87:0x01ce, B:89:0x01db, B:91:0x0232, B:92:0x0234, B:93:0x025d, B:15:0x0050, B:29:0x00f1, B:31:0x00f7, B:33:0x00ff, B:35:0x0105, B:37:0x010b, B:39:0x0111, B:41:0x0117, B:43:0x011d, B:18:0x006a, B:25:0x00db, B:21:0x0088), top: B:104:0x000c }] */
        /* JADX WARN: Code duplicated, block: B:79:0x01b0 A[Catch: all -> 0x0031, TryCatch #0 {all -> 0x0031, blocks: (B:8:0x0028, B:47:0x0133, B:49:0x0137, B:54:0x0147, B:55:0x014a, B:57:0x0153, B:59:0x0159, B:61:0x0169, B:62:0x0177, B:64:0x0184, B:66:0x018a, B:69:0x0196, B:71:0x019c, B:72:0x019f, B:75:0x01a7, B:83:0x01bc, B:79:0x01b0, B:81:0x01b6, B:84:0x01bf, B:87:0x01ce, B:89:0x01db, B:91:0x0232, B:92:0x0234, B:93:0x025d, B:15:0x0050, B:29:0x00f1, B:31:0x00f7, B:33:0x00ff, B:35:0x0105, B:37:0x010b, B:39:0x0111, B:41:0x0117, B:43:0x011d, B:18:0x006a, B:25:0x00db, B:21:0x0088), top: B:104:0x000c }] */
        /* JADX WARN: Code duplicated, block: B:81:0x01b6 A[Catch: all -> 0x0031, TryCatch #0 {all -> 0x0031, blocks: (B:8:0x0028, B:47:0x0133, B:49:0x0137, B:54:0x0147, B:55:0x014a, B:57:0x0153, B:59:0x0159, B:61:0x0169, B:62:0x0177, B:64:0x0184, B:66:0x018a, B:69:0x0196, B:71:0x019c, B:72:0x019f, B:75:0x01a7, B:83:0x01bc, B:79:0x01b0, B:81:0x01b6, B:84:0x01bf, B:87:0x01ce, B:89:0x01db, B:91:0x0232, B:92:0x0234, B:93:0x025d, B:15:0x0050, B:29:0x00f1, B:31:0x00f7, B:33:0x00ff, B:35:0x0105, B:37:0x010b, B:39:0x0111, B:41:0x0117, B:43:0x011d, B:18:0x006a, B:25:0x00db, B:21:0x0088), top: B:104:0x000c }] */
        /* JADX WARN: Code duplicated, block: B:82:0x01bb  */
        /* JADX WARN: Code duplicated, block: B:86:0x01cd  */
        /* JADX WARN: Code duplicated, block: B:89:0x01db A[Catch: all -> 0x0031, TryCatch #0 {all -> 0x0031, blocks: (B:8:0x0028, B:47:0x0133, B:49:0x0137, B:54:0x0147, B:55:0x014a, B:57:0x0153, B:59:0x0159, B:61:0x0169, B:62:0x0177, B:64:0x0184, B:66:0x018a, B:69:0x0196, B:71:0x019c, B:72:0x019f, B:75:0x01a7, B:83:0x01bc, B:79:0x01b0, B:81:0x01b6, B:84:0x01bf, B:87:0x01ce, B:89:0x01db, B:91:0x0232, B:92:0x0234, B:93:0x025d, B:15:0x0050, B:29:0x00f1, B:31:0x00f7, B:33:0x00ff, B:35:0x0105, B:37:0x010b, B:39:0x0111, B:41:0x0117, B:43:0x011d, B:18:0x006a, B:25:0x00db, B:21:0x0088), top: B:104:0x000c }] */
        /* JADX WARN: Code duplicated, block: B:91:0x0232 A[Catch: all -> 0x0031, LOOP:0: B:87:0x01ce->B:91:0x0232, LOOP_END, TryCatch #0 {all -> 0x0031, blocks: (B:8:0x0028, B:47:0x0133, B:49:0x0137, B:54:0x0147, B:55:0x014a, B:57:0x0153, B:59:0x0159, B:61:0x0169, B:62:0x0177, B:64:0x0184, B:66:0x018a, B:69:0x0196, B:71:0x019c, B:72:0x019f, B:75:0x01a7, B:83:0x01bc, B:79:0x01b0, B:81:0x01b6, B:84:0x01bf, B:87:0x01ce, B:89:0x01db, B:91:0x0232, B:92:0x0234, B:93:0x025d, B:15:0x0050, B:29:0x00f1, B:31:0x00f7, B:33:0x00ff, B:35:0x0105, B:37:0x010b, B:39:0x0111, B:41:0x0117, B:43:0x011d, B:18:0x006a, B:25:0x00db, B:21:0x0088), top: B:104:0x000c }] */
        /* JADX WARN: Code duplicated, block: B:98:0x0278  */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objM454constructorimpl;
            ShortTvViewModel shortTvViewModel;
            Ref.ObjectRef<ShorttvModel.UGCVideo> objectRef;
            Throwable thM457exceptionOrNullimpl;
            ShortTvViewModel shortTvViewModel2;
            Object objI;
            ShorttvModel.UGCVideo uGCVideo;
            r0 r0Var;
            Ref.ObjectRef<ShorttvModel.UGCVideo> objectRef2;
            ShorttvModel.PlayStreamItem playStreamItem;
            Ref.ObjectRef<ShorttvModel.UGCVideo> objectRef3;
            T t11;
            List listV;
            st.c cVarL;
            ShortTvViewModel shortTvViewModel3;
            ShorttvModel.UGCVideo uGCVideo2;
            String collectionId;
            Object objB;
            ShorttvModel.UGCVideo uGCVideo3;
            ShortTvViewModel shortTvViewModel4;
            ShorttvModel.UGCVideoCollection belongToCollection;
            List listU0;
            ShorttvModel.FirstImage firstImage;
            ShorttvModel.UGCVideoCollection belongToCollection2;
            ShorttvModel.UGCVideoCollection belongToCollection3;
            Integer videoNum;
            int iIntValue;
            ShorttvModel.UGCVideo uGCVideo4;
            ShorttvModel.UGCVideo uGCVideo5;
            int i11;
            ShorttvModel.UGCVideo uGCVideo6;
            ShorttvModel.UGCVideo uGCVideo7;
            String playUrl;
            String playUrl2;
            List<ShorttvModel.StreamInfo> resources;
            List list;
            Object objF = IntrinsicsKt.f();
            int i12 = this.label;
            try {
                if (i12 != 0) {
                    if (i12 == 1) {
                        r0 r0Var2 = (r0) this.L$3;
                        ShorttvModel.UGCVideo uGCVideo8 = (ShorttvModel.UGCVideo) this.L$2;
                        ShortTvViewModel shortTvViewModel5 = (ShortTvViewModel) this.L$1;
                        Ref.ObjectRef<ShorttvModel.UGCVideo> objectRef4 = (Ref.ObjectRef) this.L$0;
                        ResultKt.b(obj);
                        r0Var = r0Var2;
                        shortTvViewModel2 = shortTvViewModel5;
                        objectRef2 = objectRef4;
                        uGCVideo = uGCVideo8;
                        objI = obj;
                    } else {
                        if (i12 == 2) {
                            objectRef2 = (Ref.ObjectRef) this.L$4;
                            ShorttvModel.PlayStreamItem playStreamItem2 = (ShorttvModel.PlayStreamItem) this.L$3;
                            ShorttvModel.UGCVideo uGCVideo9 = (ShorttvModel.UGCVideo) this.L$2;
                            ShortTvViewModel shortTvViewModel6 = (ShortTvViewModel) this.L$1;
                            objectRef3 = (Ref.ObjectRef) this.L$0;
                            ResultKt.b(obj);
                            shortTvViewModel2 = shortTvViewModel6;
                            uGCVideo = uGCVideo9;
                            playStreamItem = playStreamItem2;
                            t11 = obj;
                            objectRef2.element = t11;
                            if (objectRef3.element != null) {
                                listV = shortTvViewModel2.v();
                                if (listV != null || listV.isEmpty()) {
                                    cVarL = shortTvViewModel2.L();
                                    if (cVarL != null) {
                                        uGCVideo2 = objectRef3.element;
                                        if (uGCVideo2 != null || (belongToCollection = uGCVideo2.getBelongToCollection()) == null) {
                                            collectionId = null;
                                        } else {
                                            collectionId = belongToCollection.getCollectionId();
                                        }
                                        this.L$0 = objectRef3;
                                        this.L$1 = shortTvViewModel2;
                                        this.L$2 = uGCVideo;
                                        this.L$3 = playStreamItem;
                                        this.L$4 = shortTvViewModel2;
                                        this.label = 3;
                                        objB = cVarL.b(collectionId, this);
                                        if (objB == objF) {
                                            return objF;
                                        }
                                        uGCVideo3 = uGCVideo;
                                        shortTvViewModel4 = shortTvViewModel2;
                                        shortTvViewModel3 = shortTvViewModel4;
                                    } else {
                                        shortTvViewModel3 = shortTvViewModel2;
                                    }
                                    shortTvViewModel4 = shortTvViewModel2;
                                    listU0 = null;
                                    shortTvViewModel2 = shortTvViewModel3;
                                    shortTvViewModel4.f0(listU0);
                                    ShorttvModel.UGCVideo uGCVideo10 = objectRef3.element;
                                    Intrinsics.e(uGCVideo10);
                                    ShorttvModel.UGCVideo uGCVideo11 = uGCVideo10;
                                    if (playStreamItem != null) {
                                        firstImage = playStreamItem.getFirstImage();
                                    } else {
                                        firstImage = null;
                                    }
                                    uGCVideo11.overrideCoverByFirstImage(firstImage);
                                    ShorttvModel.UGCVideo uGCVideo12 = objectRef3.element;
                                    Intrinsics.e(uGCVideo12);
                                    belongToCollection2 = uGCVideo12.getBelongToCollection();
                                    if (belongToCollection2 != null) {
                                        shortTvViewModel2.e0(belongToCollection2.getCollectionId());
                                        shortTvViewModel2.d0(belongToCollection2.getCollectionName());
                                    }
                                    ShorttvModel.UGCVideo uGCVideo13 = objectRef3.element;
                                    Intrinsics.e(uGCVideo13);
                                    belongToCollection3 = uGCVideo13.getBelongToCollection();
                                    if (belongToCollection3 != null && (videoNum = belongToCollection3.getVideoNum()) != null) {
                                        iIntValue = videoNum.intValue();
                                        uGCVideo4 = objectRef3.element;
                                        if (uGCVideo4 != null) {
                                            if (playStreamItem != null) {
                                                resources = playStreamItem.getResources();
                                            } else {
                                                resources = null;
                                            }
                                            uGCVideo4.setStreams(resources);
                                        }
                                        uGCVideo5 = objectRef3.element;
                                        if (uGCVideo5 != null) {
                                            if (uGCVideo != null || (playUrl2 = uGCVideo.getPlayUrl()) == null) {
                                                uGCVideo7 = objectRef3.element;
                                                if (uGCVideo7 != null) {
                                                    playUrl = uGCVideo7.getPlayUrl();
                                                } else {
                                                    playUrl = null;
                                                }
                                            } else {
                                                playUrl = playUrl2;
                                            }
                                            uGCVideo5.setPlayUrl(playUrl);
                                        }
                                        List listZ = shortTvViewModel2.z();
                                        ShorttvModel.UGCVideo uGCVideo14 = objectRef3.element;
                                        Intrinsics.e(uGCVideo14);
                                        listZ.add(uGCVideo14);
                                        if (1 <= iIntValue) {
                                            i11 = 1;
                                            while (true) {
                                                uGCVideo6 = objectRef3.element;
                                                Intrinsics.e(uGCVideo6);
                                                if (i11 != uGCVideo6.getEp()) {
                                                    shortTvViewModel2.p().add(new ShorttvModel.UGCVideo(null, null, null, null, null, null, null, null, null, null, null, null, null, null, new ShorttvModel.UGCVideoCollection(null, null, Boxing.d(i11), null, 11, null), null, null, null, null, null, 0, false, null, false, 16760831, null));
                                                }
                                                if (i11 == iIntValue) {
                                                    break;
                                                }
                                                i11++;
                                            }
                                        }
                                        List listP = shortTvViewModel2.p();
                                        ShorttvModel.UGCVideo uGCVideo15 = objectRef3.element;
                                        Intrinsics.e(uGCVideo15);
                                        int iD = ShortTvExtKt.d(uGCVideo15.getEp());
                                        ShorttvModel.UGCVideo uGCVideo16 = objectRef3.element;
                                        Intrinsics.e(uGCVideo16);
                                        listP.add(iD, uGCVideo16);
                                        ShorttvModel.UGCVideo uGCVideo17 = objectRef3.element;
                                        Intrinsics.e(uGCVideo17);
                                        shortTvViewModel2.c0(uGCVideo17.getEp());
                                    }
                                } else {
                                    ShorttvModel.UGCVideo uGCVideo18 = objectRef3.element;
                                    Intrinsics.e(uGCVideo18);
                                    ShorttvModel.UGCVideo uGCVideo19 = uGCVideo18;
                                    if (playStreamItem != null) {
                                        firstImage = playStreamItem.getFirstImage();
                                    } else {
                                        firstImage = null;
                                    }
                                    uGCVideo19.overrideCoverByFirstImage(firstImage);
                                    ShorttvModel.UGCVideo uGCVideo110 = objectRef3.element;
                                    Intrinsics.e(uGCVideo110);
                                    belongToCollection2 = uGCVideo110.getBelongToCollection();
                                    if (belongToCollection2 != null) {
                                        shortTvViewModel2.e0(belongToCollection2.getCollectionId());
                                        shortTvViewModel2.d0(belongToCollection2.getCollectionName());
                                    }
                                    ShorttvModel.UGCVideo uGCVideo111 = objectRef3.element;
                                    Intrinsics.e(uGCVideo111);
                                    belongToCollection3 = uGCVideo111.getBelongToCollection();
                                    if (belongToCollection3 != null) {
                                        iIntValue = videoNum.intValue();
                                        uGCVideo4 = objectRef3.element;
                                        if (uGCVideo4 != null) {
                                            if (playStreamItem != null) {
                                                resources = playStreamItem.getResources();
                                            } else {
                                                resources = null;
                                            }
                                            uGCVideo4.setStreams(resources);
                                        }
                                        uGCVideo5 = objectRef3.element;
                                        if (uGCVideo5 != null) {
                                            if (uGCVideo != null) {
                                                uGCVideo7 = objectRef3.element;
                                                if (uGCVideo7 != null) {
                                                    playUrl = uGCVideo7.getPlayUrl();
                                                } else {
                                                    playUrl = null;
                                                }
                                            } else {
                                                uGCVideo7 = objectRef3.element;
                                                if (uGCVideo7 != null) {
                                                    playUrl = uGCVideo7.getPlayUrl();
                                                } else {
                                                    playUrl = null;
                                                }
                                            }
                                            uGCVideo5.setPlayUrl(playUrl);
                                        }
                                        List listZ2 = shortTvViewModel2.z();
                                        ShorttvModel.UGCVideo uGCVideo112 = objectRef3.element;
                                        Intrinsics.e(uGCVideo112);
                                        listZ2.add(uGCVideo112);
                                        if (1 <= iIntValue) {
                                            i11 = 1;
                                            while (true) {
                                                uGCVideo6 = objectRef3.element;
                                                Intrinsics.e(uGCVideo6);
                                                if (i11 != uGCVideo6.getEp()) {
                                                    shortTvViewModel2.p().add(new ShorttvModel.UGCVideo(null, null, null, null, null, null, null, null, null, null, null, null, null, null, new ShorttvModel.UGCVideoCollection(null, null, Boxing.d(i11), null, 11, null), null, null, null, null, null, 0, false, null, false, 16760831, null));
                                                }
                                                if (i11 == iIntValue) {
                                                    break;
                                                    break;
                                                }
                                                i11++;
                                            }
                                        }
                                        List listP2 = shortTvViewModel2.p();
                                        ShorttvModel.UGCVideo uGCVideo113 = objectRef3.element;
                                        Intrinsics.e(uGCVideo113);
                                        int iD2 = ShortTvExtKt.d(uGCVideo113.getEp());
                                        ShorttvModel.UGCVideo uGCVideo114 = objectRef3.element;
                                        Intrinsics.e(uGCVideo114);
                                        listP2.add(iD2, uGCVideo114);
                                        ShorttvModel.UGCVideo uGCVideo115 = objectRef3.element;
                                        Intrinsics.e(uGCVideo115);
                                        shortTvViewModel2.c0(uGCVideo115.getEp());
                                    }
                                }
                            }
                            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
                            shortTvViewModel = this.this$0;
                            objectRef = this.$ugcVideo;
                            if (Result.m461isSuccessimpl(objM454constructorimpl)) {
                                shortTvViewModel.f54485t.n(objectRef.element);
                            }
                            thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
                            if (thM457exceptionOrNullimpl != null) {
                                thM457exceptionOrNullimpl.printStackTrace();
                            }
                            return Result.m453boximpl(objM454constructorimpl);
                        }
                        if (i12 != 3) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        shortTvViewModel4 = (ShortTvViewModel) this.L$4;
                        ShorttvModel.PlayStreamItem playStreamItem3 = (ShorttvModel.PlayStreamItem) this.L$3;
                        uGCVideo3 = (ShorttvModel.UGCVideo) this.L$2;
                        shortTvViewModel3 = (ShortTvViewModel) this.L$1;
                        Ref.ObjectRef<ShorttvModel.UGCVideo> objectRef5 = (Ref.ObjectRef) this.L$0;
                        ResultKt.b(obj);
                        objectRef3 = objectRef5;
                        playStreamItem = playStreamItem3;
                        objB = obj;
                    }
                    list = (List) objB;
                    if (list != null) {
                        listU0 = CollectionsKt.U0(list);
                        uGCVideo = uGCVideo3;
                    } else {
                        shortTvViewModel2 = shortTvViewModel4;
                        uGCVideo = uGCVideo3;
                        shortTvViewModel4 = shortTvViewModel2;
                        listU0 = null;
                    }
                    shortTvViewModel2 = shortTvViewModel3;
                    shortTvViewModel4.f0(listU0);
                    ShorttvModel.UGCVideo uGCVideo116 = objectRef3.element;
                    Intrinsics.e(uGCVideo116);
                    ShorttvModel.UGCVideo uGCVideo117 = uGCVideo116;
                    if (playStreamItem != null) {
                        firstImage = playStreamItem.getFirstImage();
                    } else {
                        firstImage = null;
                    }
                    uGCVideo117.overrideCoverByFirstImage(firstImage);
                    ShorttvModel.UGCVideo uGCVideo118 = objectRef3.element;
                    Intrinsics.e(uGCVideo118);
                    belongToCollection2 = uGCVideo118.getBelongToCollection();
                    if (belongToCollection2 != null) {
                        shortTvViewModel2.e0(belongToCollection2.getCollectionId());
                        shortTvViewModel2.d0(belongToCollection2.getCollectionName());
                    }
                    ShorttvModel.UGCVideo uGCVideo119 = objectRef3.element;
                    Intrinsics.e(uGCVideo119);
                    belongToCollection3 = uGCVideo119.getBelongToCollection();
                    if (belongToCollection3 != null) {
                        iIntValue = videoNum.intValue();
                        uGCVideo4 = objectRef3.element;
                        if (uGCVideo4 != null) {
                            if (playStreamItem != null) {
                                resources = playStreamItem.getResources();
                            } else {
                                resources = null;
                            }
                            uGCVideo4.setStreams(resources);
                        }
                        uGCVideo5 = objectRef3.element;
                        if (uGCVideo5 != null) {
                            if (uGCVideo != null) {
                                uGCVideo7 = objectRef3.element;
                                if (uGCVideo7 != null) {
                                    playUrl = uGCVideo7.getPlayUrl();
                                } else {
                                    playUrl = null;
                                }
                            } else {
                                uGCVideo7 = objectRef3.element;
                                if (uGCVideo7 != null) {
                                    playUrl = uGCVideo7.getPlayUrl();
                                } else {
                                    playUrl = null;
                                }
                            }
                            uGCVideo5.setPlayUrl(playUrl);
                        }
                        List listZ3 = shortTvViewModel2.z();
                        ShorttvModel.UGCVideo uGCVideo1110 = objectRef3.element;
                        Intrinsics.e(uGCVideo1110);
                        listZ3.add(uGCVideo1110);
                        if (1 <= iIntValue) {
                            i11 = 1;
                            while (true) {
                                uGCVideo6 = objectRef3.element;
                                Intrinsics.e(uGCVideo6);
                                if (i11 != uGCVideo6.getEp()) {
                                    shortTvViewModel2.p().add(new ShorttvModel.UGCVideo(null, null, null, null, null, null, null, null, null, null, null, null, null, null, new ShorttvModel.UGCVideoCollection(null, null, Boxing.d(i11), null, 11, null), null, null, null, null, null, 0, false, null, false, 16760831, null));
                                }
                                if (i11 == iIntValue) {
                                    break;
                                    break;
                                }
                                i11++;
                            }
                        }
                        List listP3 = shortTvViewModel2.p();
                        ShorttvModel.UGCVideo uGCVideo1111 = objectRef3.element;
                        Intrinsics.e(uGCVideo1111);
                        int iD3 = ShortTvExtKt.d(uGCVideo1111.getEp());
                        ShorttvModel.UGCVideo uGCVideo1112 = objectRef3.element;
                        Intrinsics.e(uGCVideo1112);
                        listP3.add(iD3, uGCVideo1112);
                        ShorttvModel.UGCVideo uGCVideo1113 = objectRef3.element;
                        Intrinsics.e(uGCVideo1113);
                        shortTvViewModel2.c0(uGCVideo1113.getEp());
                    }
                    objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
                    shortTvViewModel = this.this$0;
                    objectRef = this.$ugcVideo;
                    if (Result.m461isSuccessimpl(objM454constructorimpl)) {
                        shortTvViewModel.f54485t.n(objectRef.element);
                    }
                    thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
                    if (thM457exceptionOrNullimpl != null) {
                        thM457exceptionOrNullimpl.printStackTrace();
                    }
                    return Result.m453boximpl(objM454constructorimpl);
                }
                ResultKt.b(obj);
                n0 n0Var = (n0) this.L$0;
                Ref.ObjectRef<ShorttvModel.UGCVideo> objectRef6 = this.$ugcVideo;
                shortTvViewModel2 = this.this$0;
                Ref.ObjectRef<String> objectRef7 = this.$ugcVideoIdMutable;
                String str = this.$collectionId;
                String str2 = this.$subjectId;
                ShorttvModel.UGCVideo uGCVideo20 = this.$downloadVideo;
                Result.Companion companion = Result.INSTANCE;
                r0 r0VarB = k.b(n0Var, null, null, new ShortTvViewModel$requestFirstVideo$1$2$1$streamDeferred$1(shortTvViewModel2, objectRef7, null), 3, null);
                r0 r0VarB2 = k.b(n0Var, null, null, new ShortTvViewModel$requestFirstVideo$1$2$1$ugcVideoDeferred$1(objectRef7, shortTvViewModel2, str, str2, null), 3, null);
                this.L$0 = objectRef6;
                this.L$1 = shortTvViewModel2;
                this.L$2 = uGCVideo20;
                this.L$3 = r0VarB2;
                this.label = 1;
                objI = r0VarB.i(this);
                if (objI == objF) {
                    return objF;
                }
                uGCVideo = uGCVideo20;
                r0Var = r0VarB2;
                objectRef2 = objectRef6;
                playStreamItem = (ShorttvModel.PlayStreamItem) objI;
                this.L$0 = objectRef2;
                this.L$1 = shortTvViewModel2;
                this.L$2 = uGCVideo;
                this.L$3 = playStreamItem;
                this.L$4 = objectRef2;
                this.label = 2;
                Object objI2 = r0Var.i(this);
                if (objI2 == objF) {
                    return objF;
                }
                objectRef3 = objectRef2;
                t11 = objI2;
                objectRef2.element = t11;
                if (objectRef3.element != null) {
                    listV = shortTvViewModel2.v();
                    if (listV != null) {
                    }
                    cVarL = shortTvViewModel2.L();
                    if (cVarL != null) {
                        uGCVideo2 = objectRef3.element;
                        if (uGCVideo2 != null) {
                            collectionId = null;
                        } else {
                            collectionId = null;
                        }
                        this.L$0 = objectRef3;
                        this.L$1 = shortTvViewModel2;
                        this.L$2 = uGCVideo;
                        this.L$3 = playStreamItem;
                        this.L$4 = shortTvViewModel2;
                        this.label = 3;
                        objB = cVarL.b(collectionId, this);
                        if (objB == objF) {
                            return objF;
                        }
                        uGCVideo3 = uGCVideo;
                        shortTvViewModel4 = shortTvViewModel2;
                        shortTvViewModel3 = shortTvViewModel4;
                        list = (List) objB;
                        if (list != null) {
                            listU0 = CollectionsKt.U0(list);
                            uGCVideo = uGCVideo3;
                        } else {
                            shortTvViewModel2 = shortTvViewModel4;
                            uGCVideo = uGCVideo3;
                        }
                        shortTvViewModel2 = shortTvViewModel3;
                        shortTvViewModel4.f0(listU0);
                        ShorttvModel.UGCVideo uGCVideo1114 = objectRef3.element;
                        Intrinsics.e(uGCVideo1114);
                        ShorttvModel.UGCVideo uGCVideo1115 = uGCVideo1114;
                        if (playStreamItem != null) {
                            firstImage = playStreamItem.getFirstImage();
                        } else {
                            firstImage = null;
                        }
                        uGCVideo1115.overrideCoverByFirstImage(firstImage);
                        ShorttvModel.UGCVideo uGCVideo1116 = objectRef3.element;
                        Intrinsics.e(uGCVideo1116);
                        belongToCollection2 = uGCVideo1116.getBelongToCollection();
                        if (belongToCollection2 != null) {
                            shortTvViewModel2.e0(belongToCollection2.getCollectionId());
                            shortTvViewModel2.d0(belongToCollection2.getCollectionName());
                        }
                        ShorttvModel.UGCVideo uGCVideo1117 = objectRef3.element;
                        Intrinsics.e(uGCVideo1117);
                        belongToCollection3 = uGCVideo1117.getBelongToCollection();
                        if (belongToCollection3 != null) {
                            iIntValue = videoNum.intValue();
                            uGCVideo4 = objectRef3.element;
                            if (uGCVideo4 != null) {
                                if (playStreamItem != null) {
                                    resources = playStreamItem.getResources();
                                } else {
                                    resources = null;
                                }
                                uGCVideo4.setStreams(resources);
                            }
                            uGCVideo5 = objectRef3.element;
                            if (uGCVideo5 != null) {
                                if (uGCVideo != null) {
                                    uGCVideo7 = objectRef3.element;
                                    if (uGCVideo7 != null) {
                                        playUrl = uGCVideo7.getPlayUrl();
                                    } else {
                                        playUrl = null;
                                    }
                                } else {
                                    uGCVideo7 = objectRef3.element;
                                    if (uGCVideo7 != null) {
                                        playUrl = uGCVideo7.getPlayUrl();
                                    } else {
                                        playUrl = null;
                                    }
                                }
                                uGCVideo5.setPlayUrl(playUrl);
                            }
                            List listZ4 = shortTvViewModel2.z();
                            ShorttvModel.UGCVideo uGCVideo1118 = objectRef3.element;
                            Intrinsics.e(uGCVideo1118);
                            listZ4.add(uGCVideo1118);
                            if (1 <= iIntValue) {
                                i11 = 1;
                                while (true) {
                                    uGCVideo6 = objectRef3.element;
                                    Intrinsics.e(uGCVideo6);
                                    if (i11 != uGCVideo6.getEp()) {
                                        shortTvViewModel2.p().add(new ShorttvModel.UGCVideo(null, null, null, null, null, null, null, null, null, null, null, null, null, null, new ShorttvModel.UGCVideoCollection(null, null, Boxing.d(i11), null, 11, null), null, null, null, null, null, 0, false, null, false, 16760831, null));
                                    }
                                    if (i11 == iIntValue) {
                                        break;
                                        break;
                                    }
                                    i11++;
                                }
                            }
                            List listP4 = shortTvViewModel2.p();
                            ShorttvModel.UGCVideo uGCVideo1119 = objectRef3.element;
                            Intrinsics.e(uGCVideo1119);
                            int iD4 = ShortTvExtKt.d(uGCVideo1119.getEp());
                            ShorttvModel.UGCVideo uGCVideo11110 = objectRef3.element;
                            Intrinsics.e(uGCVideo11110);
                            listP4.add(iD4, uGCVideo11110);
                            ShorttvModel.UGCVideo uGCVideo11111 = objectRef3.element;
                            Intrinsics.e(uGCVideo11111);
                            shortTvViewModel2.c0(uGCVideo11111.getEp());
                        }
                    } else {
                        shortTvViewModel3 = shortTvViewModel2;
                    }
                    shortTvViewModel4 = shortTvViewModel2;
                    listU0 = null;
                    shortTvViewModel2 = shortTvViewModel3;
                    shortTvViewModel4.f0(listU0);
                    ShorttvModel.UGCVideo uGCVideo11112 = objectRef3.element;
                    Intrinsics.e(uGCVideo11112);
                    ShorttvModel.UGCVideo uGCVideo11113 = uGCVideo11112;
                    if (playStreamItem != null) {
                        firstImage = playStreamItem.getFirstImage();
                    } else {
                        firstImage = null;
                    }
                    uGCVideo11113.overrideCoverByFirstImage(firstImage);
                    ShorttvModel.UGCVideo uGCVideo11114 = objectRef3.element;
                    Intrinsics.e(uGCVideo11114);
                    belongToCollection2 = uGCVideo11114.getBelongToCollection();
                    if (belongToCollection2 != null) {
                        shortTvViewModel2.e0(belongToCollection2.getCollectionId());
                        shortTvViewModel2.d0(belongToCollection2.getCollectionName());
                    }
                    ShorttvModel.UGCVideo uGCVideo11115 = objectRef3.element;
                    Intrinsics.e(uGCVideo11115);
                    belongToCollection3 = uGCVideo11115.getBelongToCollection();
                    if (belongToCollection3 != null) {
                        iIntValue = videoNum.intValue();
                        uGCVideo4 = objectRef3.element;
                        if (uGCVideo4 != null) {
                            if (playStreamItem != null) {
                                resources = playStreamItem.getResources();
                            } else {
                                resources = null;
                            }
                            uGCVideo4.setStreams(resources);
                        }
                        uGCVideo5 = objectRef3.element;
                        if (uGCVideo5 != null) {
                            if (uGCVideo != null) {
                                uGCVideo7 = objectRef3.element;
                                if (uGCVideo7 != null) {
                                    playUrl = uGCVideo7.getPlayUrl();
                                } else {
                                    playUrl = null;
                                }
                            } else {
                                uGCVideo7 = objectRef3.element;
                                if (uGCVideo7 != null) {
                                    playUrl = uGCVideo7.getPlayUrl();
                                } else {
                                    playUrl = null;
                                }
                            }
                            uGCVideo5.setPlayUrl(playUrl);
                        }
                        List listZ5 = shortTvViewModel2.z();
                        ShorttvModel.UGCVideo uGCVideo11116 = objectRef3.element;
                        Intrinsics.e(uGCVideo11116);
                        listZ5.add(uGCVideo11116);
                        if (1 <= iIntValue) {
                            i11 = 1;
                            while (true) {
                                uGCVideo6 = objectRef3.element;
                                Intrinsics.e(uGCVideo6);
                                if (i11 != uGCVideo6.getEp()) {
                                    shortTvViewModel2.p().add(new ShorttvModel.UGCVideo(null, null, null, null, null, null, null, null, null, null, null, null, null, null, new ShorttvModel.UGCVideoCollection(null, null, Boxing.d(i11), null, 11, null), null, null, null, null, null, 0, false, null, false, 16760831, null));
                                }
                                if (i11 == iIntValue) {
                                    break;
                                    break;
                                }
                                i11++;
                            }
                        }
                        List listP5 = shortTvViewModel2.p();
                        ShorttvModel.UGCVideo uGCVideo11117 = objectRef3.element;
                        Intrinsics.e(uGCVideo11117);
                        int iD5 = ShortTvExtKt.d(uGCVideo11117.getEp());
                        ShorttvModel.UGCVideo uGCVideo11118 = objectRef3.element;
                        Intrinsics.e(uGCVideo11118);
                        listP5.add(iD5, uGCVideo11118);
                        ShorttvModel.UGCVideo uGCVideo11119 = objectRef3.element;
                        Intrinsics.e(uGCVideo11119);
                        shortTvViewModel2.c0(uGCVideo11119.getEp());
                    }
                }
                objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
                shortTvViewModel = this.this$0;
                objectRef = this.$ugcVideo;
                if (Result.m461isSuccessimpl(objM454constructorimpl)) {
                    shortTvViewModel.f54485t.n(objectRef.element);
                }
                thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
                if (thM457exceptionOrNullimpl != null) {
                    thM457exceptionOrNullimpl.printStackTrace();
                }
                return Result.m453boximpl(objM454constructorimpl);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ShortTvViewModel$requestFirstVideo$1(String str, ShortTvViewModel shortTvViewModel, String str2, String str3, Continuation<? super ShortTvViewModel$requestFirstVideo$1> continuation) {
        super(2, continuation);
        this.$ugcVideoId = str;
        this.this$0 = shortTvViewModel;
        this.$collectionId = str2;
        this.$subjectId = str3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ShortTvViewModel$requestFirstVideo$1(this.$ugcVideoId, this.this$0, this.$collectionId, this.$subjectId, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ShortTvViewModel$requestFirstVideo$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:105:0x012f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:25:0x009c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:26:0x009e  */
    /* JADX WARN: Code duplicated, block: B:27:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:30:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:32:0x00af  */
    /* JADX WARN: Code duplicated, block: B:35:0x00c2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:36:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:37:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:39:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:41:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:43:0x00e2 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:44:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:47:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:48:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:49:0x00f8 A[PHI: r2 r7
  0x00f8: PHI (r2v5 kotlin.jvm.internal.Ref$ObjectRef) = (r2v2 kotlin.jvm.internal.Ref$ObjectRef), (r2v14 kotlin.jvm.internal.Ref$ObjectRef) binds: [B:40:0x00d2, B:48:0x00f3] A[DONT_GENERATE, DONT_INLINE]
  0x00f8: PHI (r7v10 com.transsion.shorttv_pugc.viewmodel.ShortTvViewModel) = 
  (r7v5 com.transsion.shorttv_pugc.viewmodel.ShortTvViewModel)
  (r7v20 com.transsion.shorttv_pugc.viewmodel.ShortTvViewModel)
 binds: [B:40:0x00d2, B:48:0x00f3] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:51:0x0102 A[PHI: r2
  0x0102: PHI (r2v7 kotlin.jvm.internal.Ref$ObjectRef) = (r2v2 kotlin.jvm.internal.Ref$ObjectRef), (r2v12 kotlin.jvm.internal.Ref$ObjectRef) binds: [B:38:0x00ca, B:50:0x00fe] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:53:0x010f  */
    /* JADX WARN: Code duplicated, block: B:56:0x011b  */
    /* JADX WARN: Code duplicated, block: B:63:0x0135  */
    /* JADX WARN: Code duplicated, block: B:66:0x0142  */
    /* JADX WARN: Code duplicated, block: B:68:0x0154 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:69:0x0155  */
    /* JADX WARN: Code duplicated, block: B:71:0x015d  */
    /* JADX WARN: Code duplicated, block: B:73:0x0165  */
    /* JADX WARN: Code duplicated, block: B:75:0x016d  */
    /* JADX WARN: Code duplicated, block: B:77:0x017d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:79:0x0184  */
    /* JADX WARN: Code duplicated, block: B:81:0x0189  */
    /* JADX WARN: Code duplicated, block: B:83:0x0191  */
    /* JADX WARN: Code duplicated, block: B:84:0x0197 A[PHI: r5
  0x0197: PHI (r5v12 com.transsion.shorttv_pugc.ShorttvModel$UGCVideo) = (r5v11 com.transsion.shorttv_pugc.ShorttvModel$UGCVideo), (r5v17 com.transsion.shorttv_pugc.ShorttvModel$UGCVideo) binds: [B:80:0x0187, B:83:0x0191] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:85:0x019a  */
    /* JADX WARN: Code duplicated, block: B:86:0x019e  */
    /* JADX WARN: Code duplicated, block: B:89:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:91:0x01c5 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:92:0x01c6  */
    /* JADX WARN: Code duplicated, block: B:96:0x01cc  */
    /* JADX WARN: Code duplicated, block: B:97:0x01ce  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r9v9, types: [T, java.lang.String] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Ref.ObjectRef objectRef;
        ShortTvInnerPlayBean shortTvInnerPlayBean;
        Object objC;
        String collectionId;
        ShortTvViewModel shortTvViewModel;
        st.c cVarL;
        Object objB;
        Ref.ObjectRef objectRef2;
        ShortTvViewModel shortTvViewModel2;
        String ugcVideoId;
        List listU0;
        Ref.ObjectRef objectRef3;
        List listV;
        st.c cVarL2;
        ShorttvModel.UGCVideo uGCVideo;
        Ref.ObjectRef objectRef4;
        Ref.ObjectRef objectRef5;
        Object objE;
        Iterator it;
        Object next;
        ShorttvModel.UGCVideo uGCVideo2;
        Ref.ObjectRef objectRef6;
        List list;
        st.c cVarL3;
        Ref.ObjectRef objectRef7;
        Ref.ObjectRef objectRef8;
        Object objE2;
        AnonymousClass2 anonymousClass2;
        ShorttvModel.UGCVideo uGCVideo3;
        List listV2;
        List listV3;
        List listI0;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            objectRef = new Ref.ObjectRef();
            objectRef.element = this.$ugcVideoId;
            st.f fVarO = this.this$0.O();
            if (fVarO != null) {
                String str = (String) objectRef.element;
                this.L$0 = objectRef;
                this.label = 1;
                objC = fVarO.c(str, this);
                if (objC == objF) {
                    return objF;
                }
            } else {
                shortTvInnerPlayBean = null;
            }
            if (this.this$0.U()) {
                if (shortTvInnerPlayBean != null) {
                    ugcVideoId = shortTvInnerPlayBean.getUgcVideoId();
                } else {
                    ugcVideoId = null;
                }
                if (!Intrinsics.c(ugcVideoId, this.$ugcVideoId)) {
                    shortTvInnerPlayBean = null;
                }
            }
            if (shortTvInnerPlayBean != null) {
                objectRef.element = shortTvInnerPlayBean.getUgcVideoId();
                this.this$0.f54483r.q(shortTvInnerPlayBean);
            }
            collectionId = this.$collectionId;
            if (collectionId == null) {
                if (shortTvInnerPlayBean != null) {
                    collectionId = shortTvInnerPlayBean.getCollectionId();
                } else {
                    collectionId = null;
                }
            }
            if (collectionId == null) {
                objectRef3 = new Ref.ObjectRef();
                listV = this.this$0.v();
                if (listV != null) {
                    it = listV.iterator();
                    do {
                        if (!it.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it.next();
                    } while (!Intrinsics.c(((ShorttvModel.UGCVideo) next).getUgcVideoId(), objectRef.element));
                    uGCVideo2 = (ShorttvModel.UGCVideo) next;
                    if (uGCVideo2 != null) {
                        objectRef6 = objectRef;
                        objectRef5 = objectRef3;
                        uGCVideo = uGCVideo2;
                    }
                }
                cVarL2 = this.this$0.L();
                if (cVarL2 != null) {
                    String str2 = (String) objectRef.element;
                    this.L$0 = objectRef;
                    this.L$1 = objectRef3;
                    this.L$2 = null;
                    this.label = 3;
                    objE = cVarL2.e(str2, this);
                    if (objE == objF) {
                        return objF;
                    }
                    objectRef4 = objectRef;
                    objectRef5 = objectRef3;
                    uGCVideo = (ShorttvModel.UGCVideo) objE;
                } else {
                    uGCVideo = null;
                    objectRef4 = objectRef;
                    objectRef5 = objectRef3;
                }
                if (uGCVideo == null) {
                    cVarL3 = this.this$0.L();
                    if (cVarL3 != null) {
                        String str3 = this.$ugcVideoId;
                        this.L$0 = objectRef4;
                        this.L$1 = objectRef5;
                        this.L$2 = null;
                        this.label = 4;
                        objE2 = cVarL3.e(str3, this);
                        if (objE2 == objF) {
                            return objF;
                        }
                        uGCVideo = (ShorttvModel.UGCVideo) objE2;
                        objectRef7 = objectRef5;
                        objectRef8 = objectRef4;
                    } else {
                        objectRef7 = objectRef5;
                        objectRef8 = objectRef4;
                        uGCVideo = null;
                    }
                    if (uGCVideo != null) {
                        objectRef6 = objectRef8;
                        objectRef5 = objectRef7;
                    } else {
                        listV2 = this.this$0.v();
                        if (listV2 != null) {
                            uGCVideo = (ShorttvModel.UGCVideo) CollectionsKt.k0(listV2);
                            objectRef6 = objectRef8;
                            objectRef5 = objectRef7;
                        } else {
                            objectRef6 = objectRef8;
                            objectRef5 = objectRef7;
                            uGCVideo = null;
                        }
                    }
                } else {
                    objectRef6 = objectRef4;
                }
            } else {
                shortTvViewModel = this.this$0;
                cVarL = shortTvViewModel.L();
                if (cVarL != null) {
                    this.L$0 = objectRef;
                    this.L$1 = collectionId;
                    this.L$2 = shortTvViewModel;
                    this.label = 2;
                    objB = cVarL.b(collectionId, this);
                    if (objB == objF) {
                        return objF;
                    }
                    objectRef2 = objectRef;
                    shortTvViewModel2 = shortTvViewModel;
                    list = (List) objB;
                    if (list != null) {
                        listU0 = CollectionsKt.U0(list);
                    } else {
                        Ref.ObjectRef objectRef9 = objectRef2;
                        shortTvViewModel = shortTvViewModel2;
                        objectRef = objectRef9;
                        listU0 = null;
                        ShortTvViewModel shortTvViewModel3 = shortTvViewModel;
                        objectRef2 = objectRef;
                        shortTvViewModel2 = shortTvViewModel3;
                    }
                } else {
                    listU0 = null;
                    ShortTvViewModel shortTvViewModel4 = shortTvViewModel;
                    objectRef2 = objectRef;
                    shortTvViewModel2 = shortTvViewModel4;
                }
                shortTvViewModel2.f0(listU0);
                objectRef = objectRef2;
                objectRef3 = new Ref.ObjectRef();
                listV = this.this$0.v();
                if (listV != null) {
                    it = listV.iterator();
                    do {
                        if (!it.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it.next();
                    } while (!Intrinsics.c(((ShorttvModel.UGCVideo) next).getUgcVideoId(), objectRef.element));
                    uGCVideo2 = (ShorttvModel.UGCVideo) next;
                    if (uGCVideo2 != null) {
                        objectRef6 = objectRef;
                        objectRef5 = objectRef3;
                        uGCVideo = uGCVideo2;
                    }
                }
                cVarL2 = this.this$0.L();
                if (cVarL2 != null) {
                    String str4 = (String) objectRef.element;
                    this.L$0 = objectRef;
                    this.L$1 = objectRef3;
                    this.L$2 = null;
                    this.label = 3;
                    objE = cVarL2.e(str4, this);
                    if (objE == objF) {
                        return objF;
                    }
                    objectRef4 = objectRef;
                    objectRef5 = objectRef3;
                    uGCVideo = (ShorttvModel.UGCVideo) objE;
                } else {
                    uGCVideo = null;
                    objectRef4 = objectRef;
                    objectRef5 = objectRef3;
                }
                if (uGCVideo == null) {
                    cVarL3 = this.this$0.L();
                    if (cVarL3 != null) {
                        String str5 = this.$ugcVideoId;
                        this.L$0 = objectRef4;
                        this.L$1 = objectRef5;
                        this.L$2 = null;
                        this.label = 4;
                        objE2 = cVarL3.e(str5, this);
                        if (objE2 == objF) {
                            return objF;
                        }
                        uGCVideo = (ShorttvModel.UGCVideo) objE2;
                        objectRef7 = objectRef5;
                        objectRef8 = objectRef4;
                    } else {
                        objectRef7 = objectRef5;
                        objectRef8 = objectRef4;
                        uGCVideo = null;
                    }
                    if (uGCVideo != null) {
                        objectRef6 = objectRef8;
                        objectRef5 = objectRef7;
                    } else {
                        listV2 = this.this$0.v();
                        if (listV2 != null) {
                            uGCVideo = (ShorttvModel.UGCVideo) CollectionsKt.k0(listV2);
                            objectRef6 = objectRef8;
                            objectRef5 = objectRef7;
                        } else {
                            objectRef6 = objectRef8;
                            objectRef5 = objectRef7;
                            uGCVideo = null;
                        }
                    }
                } else {
                    objectRef6 = objectRef4;
                }
            }
            if (m.f70474a.e()) {
                anonymousClass2 = new AnonymousClass2(objectRef5, this.this$0, objectRef6, this.$collectionId, this.$subjectId, uGCVideo, null);
                this.L$0 = objectRef5;
                this.L$1 = uGCVideo;
                this.L$2 = null;
                this.label = 5;
                if (l2.c(anonymousClass2, this) == objF) {
                    return objF;
                }
                uGCVideo3 = uGCVideo;
                uGCVideo = uGCVideo3;
            }
            if (objectRef5.element == 0) {
                if (uGCVideo != null) {
                    Boxing.a(this.this$0.p().addAll(listI0));
                }
                this.this$0.f54485t.n(uGCVideo);
            }
            return Unit.f67061a;
        }
        if (i11 == 1) {
            objectRef = (Ref.ObjectRef) this.L$0;
            ResultKt.b(obj);
            objC = obj;
        } else {
            if (i11 == 2) {
                shortTvViewModel2 = (ShortTvViewModel) this.L$2;
                Ref.ObjectRef objectRef10 = (Ref.ObjectRef) this.L$0;
                ResultKt.b(obj);
                objectRef2 = objectRef10;
                objB = obj;
                list = (List) objB;
                if (list != null) {
                    listU0 = CollectionsKt.U0(list);
                } else {
                    Ref.ObjectRef objectRef11 = objectRef2;
                    shortTvViewModel = shortTvViewModel2;
                    objectRef = objectRef11;
                    listU0 = null;
                    ShortTvViewModel shortTvViewModel5 = shortTvViewModel;
                    objectRef2 = objectRef;
                    shortTvViewModel2 = shortTvViewModel5;
                }
                shortTvViewModel2.f0(listU0);
                objectRef = objectRef2;
                objectRef3 = new Ref.ObjectRef();
                listV = this.this$0.v();
                if (listV != null) {
                    it = listV.iterator();
                    do {
                        if (!it.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it.next();
                    } while (!Intrinsics.c(((ShorttvModel.UGCVideo) next).getUgcVideoId(), objectRef.element));
                    uGCVideo2 = (ShorttvModel.UGCVideo) next;
                    if (uGCVideo2 != null) {
                        objectRef6 = objectRef;
                        objectRef5 = objectRef3;
                        uGCVideo = uGCVideo2;
                    }
                    if (m.f70474a.e()) {
                        anonymousClass2 = new AnonymousClass2(objectRef5, this.this$0, objectRef6, this.$collectionId, this.$subjectId, uGCVideo, null);
                        this.L$0 = objectRef5;
                        this.L$1 = uGCVideo;
                        this.L$2 = null;
                        this.label = 5;
                        if (l2.c(anonymousClass2, this) == objF) {
                            return objF;
                        }
                        uGCVideo3 = uGCVideo;
                    }
                    if (objectRef5.element == 0) {
                        if (uGCVideo != null) {
                            Boxing.a(this.this$0.p().addAll(listI0));
                        }
                        this.this$0.f54485t.n(uGCVideo);
                    }
                    return Unit.f67061a;
                }
                cVarL2 = this.this$0.L();
                if (cVarL2 != null) {
                    String str6 = (String) objectRef.element;
                    this.L$0 = objectRef;
                    this.L$1 = objectRef3;
                    this.L$2 = null;
                    this.label = 3;
                    objE = cVarL2.e(str6, this);
                    if (objE == objF) {
                        return objF;
                    }
                    objectRef4 = objectRef;
                    objectRef5 = objectRef3;
                    uGCVideo = (ShorttvModel.UGCVideo) objE;
                } else {
                    uGCVideo = null;
                    objectRef4 = objectRef;
                    objectRef5 = objectRef3;
                }
                if (uGCVideo == null) {
                    cVarL3 = this.this$0.L();
                    if (cVarL3 != null) {
                        String str7 = this.$ugcVideoId;
                        this.L$0 = objectRef4;
                        this.L$1 = objectRef5;
                        this.L$2 = null;
                        this.label = 4;
                        objE2 = cVarL3.e(str7, this);
                        if (objE2 == objF) {
                            return objF;
                        }
                        uGCVideo = (ShorttvModel.UGCVideo) objE2;
                        objectRef7 = objectRef5;
                        objectRef8 = objectRef4;
                    } else {
                        objectRef7 = objectRef5;
                        objectRef8 = objectRef4;
                        uGCVideo = null;
                    }
                    if (uGCVideo != null) {
                        objectRef6 = objectRef8;
                        objectRef5 = objectRef7;
                    } else {
                        listV2 = this.this$0.v();
                        if (listV2 != null) {
                            uGCVideo = (ShorttvModel.UGCVideo) CollectionsKt.k0(listV2);
                            objectRef6 = objectRef8;
                            objectRef5 = objectRef7;
                        } else {
                            objectRef6 = objectRef8;
                            objectRef5 = objectRef7;
                            uGCVideo = null;
                        }
                    }
                } else {
                    objectRef6 = objectRef4;
                }
                if (m.f70474a.e()) {
                    anonymousClass2 = new AnonymousClass2(objectRef5, this.this$0, objectRef6, this.$collectionId, this.$subjectId, uGCVideo, null);
                    this.L$0 = objectRef5;
                    this.L$1 = uGCVideo;
                    this.L$2 = null;
                    this.label = 5;
                    if (l2.c(anonymousClass2, this) == objF) {
                        return objF;
                    }
                    uGCVideo3 = uGCVideo;
                }
                if (objectRef5.element == 0) {
                    if (uGCVideo != null) {
                        Boxing.a(this.this$0.p().addAll(listI0));
                    }
                    this.this$0.f54485t.n(uGCVideo);
                }
                return Unit.f67061a;
            }
            if (i11 == 3) {
                objectRef5 = (Ref.ObjectRef) this.L$1;
                Ref.ObjectRef objectRef12 = (Ref.ObjectRef) this.L$0;
                ResultKt.b(obj);
                objectRef4 = objectRef12;
                objE = obj;
                uGCVideo = (ShorttvModel.UGCVideo) objE;
                if (uGCVideo == null) {
                    cVarL3 = this.this$0.L();
                    if (cVarL3 != null) {
                        String str8 = this.$ugcVideoId;
                        this.L$0 = objectRef4;
                        this.L$1 = objectRef5;
                        this.L$2 = null;
                        this.label = 4;
                        objE2 = cVarL3.e(str8, this);
                        if (objE2 == objF) {
                            return objF;
                        }
                        uGCVideo = (ShorttvModel.UGCVideo) objE2;
                        objectRef7 = objectRef5;
                        objectRef8 = objectRef4;
                    } else {
                        objectRef7 = objectRef5;
                        objectRef8 = objectRef4;
                        uGCVideo = null;
                    }
                    if (uGCVideo != null) {
                        objectRef6 = objectRef8;
                        objectRef5 = objectRef7;
                    } else {
                        listV2 = this.this$0.v();
                        if (listV2 != null) {
                            uGCVideo = (ShorttvModel.UGCVideo) CollectionsKt.k0(listV2);
                            objectRef6 = objectRef8;
                            objectRef5 = objectRef7;
                        } else {
                            objectRef6 = objectRef8;
                            objectRef5 = objectRef7;
                            uGCVideo = null;
                        }
                    }
                } else {
                    objectRef6 = objectRef4;
                }
                if (m.f70474a.e()) {
                    anonymousClass2 = new AnonymousClass2(objectRef5, this.this$0, objectRef6, this.$collectionId, this.$subjectId, uGCVideo, null);
                    this.L$0 = objectRef5;
                    this.L$1 = uGCVideo;
                    this.L$2 = null;
                    this.label = 5;
                    if (l2.c(anonymousClass2, this) == objF) {
                        return objF;
                    }
                    uGCVideo3 = uGCVideo;
                }
                if (objectRef5.element == 0) {
                    if (uGCVideo != null) {
                        Boxing.a(this.this$0.p().addAll(listI0));
                    }
                    this.this$0.f54485t.n(uGCVideo);
                }
                return Unit.f67061a;
            }
            if (i11 == 4) {
                objectRef5 = (Ref.ObjectRef) this.L$1;
                Ref.ObjectRef objectRef13 = (Ref.ObjectRef) this.L$0;
                ResultKt.b(obj);
                objectRef4 = objectRef13;
                objE2 = obj;
                uGCVideo = (ShorttvModel.UGCVideo) objE2;
                objectRef7 = objectRef5;
                objectRef8 = objectRef4;
                if (uGCVideo != null) {
                    objectRef6 = objectRef8;
                    objectRef5 = objectRef7;
                } else {
                    listV2 = this.this$0.v();
                    if (listV2 != null) {
                        uGCVideo = (ShorttvModel.UGCVideo) CollectionsKt.k0(listV2);
                        objectRef6 = objectRef8;
                        objectRef5 = objectRef7;
                    } else {
                        objectRef6 = objectRef8;
                        objectRef5 = objectRef7;
                        uGCVideo = null;
                    }
                }
                if (m.f70474a.e()) {
                    anonymousClass2 = new AnonymousClass2(objectRef5, this.this$0, objectRef6, this.$collectionId, this.$subjectId, uGCVideo, null);
                    this.L$0 = objectRef5;
                    this.L$1 = uGCVideo;
                    this.L$2 = null;
                    this.label = 5;
                    if (l2.c(anonymousClass2, this) == objF) {
                        return objF;
                    }
                    uGCVideo3 = uGCVideo;
                }
                if (objectRef5.element == 0) {
                    if (uGCVideo != null && (listV3 = this.this$0.v()) != null && (listI0 = CollectionsKt.I0(listV3, new Comparator() { // from class: com.transsion.shorttv_pugc.viewmodel.ShortTvViewModel$requestFirstVideo$1$invokeSuspend$$inlined$sortedBy$1
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // java.util.Comparator
                        public final int compare(T t11, T t12) {
                            return ComparisonsKt.d(Integer.valueOf(((ShorttvModel.UGCVideo) t11).getEp()), Integer.valueOf(((ShorttvModel.UGCVideo) t12).getEp()));
                        }
                    })) != null) {
                        Boxing.a(this.this$0.p().addAll(listI0));
                    }
                    this.this$0.f54485t.n(uGCVideo);
                }
                return Unit.f67061a;
            }
            if (i11 != 5) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            uGCVideo3 = (ShorttvModel.UGCVideo) this.L$1;
            objectRef5 = (Ref.ObjectRef) this.L$0;
            ResultKt.b(obj);
        }
        uGCVideo = uGCVideo3;
        if (objectRef5.element == 0) {
            if (uGCVideo != null) {
                Boxing.a(this.this$0.p().addAll(listI0));
            }
            this.this$0.f54485t.n(uGCVideo);
        }
        return Unit.f67061a;
        shortTvInnerPlayBean = (ShortTvInnerPlayBean) objC;
        if (this.this$0.U()) {
            if (shortTvInnerPlayBean != null) {
                ugcVideoId = shortTvInnerPlayBean.getUgcVideoId();
            } else {
                ugcVideoId = null;
            }
            if (!Intrinsics.c(ugcVideoId, this.$ugcVideoId)) {
                shortTvInnerPlayBean = null;
            }
        }
        if (shortTvInnerPlayBean != null) {
            objectRef.element = shortTvInnerPlayBean.getUgcVideoId();
            this.this$0.f54483r.q(shortTvInnerPlayBean);
        }
        collectionId = this.$collectionId;
        if (collectionId == null) {
            if (shortTvInnerPlayBean != null) {
                collectionId = shortTvInnerPlayBean.getCollectionId();
            } else {
                collectionId = null;
            }
        }
        if (collectionId == null) {
            objectRef3 = new Ref.ObjectRef();
            listV = this.this$0.v();
            if (listV != null) {
                it = listV.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!Intrinsics.c(((ShorttvModel.UGCVideo) next).getUgcVideoId(), objectRef.element));
                uGCVideo2 = (ShorttvModel.UGCVideo) next;
                if (uGCVideo2 != null) {
                    objectRef6 = objectRef;
                    objectRef5 = objectRef3;
                    uGCVideo = uGCVideo2;
                }
            }
            cVarL2 = this.this$0.L();
            if (cVarL2 != null) {
                String str9 = (String) objectRef.element;
                this.L$0 = objectRef;
                this.L$1 = objectRef3;
                this.L$2 = null;
                this.label = 3;
                objE = cVarL2.e(str9, this);
                if (objE == objF) {
                    return objF;
                }
                objectRef4 = objectRef;
                objectRef5 = objectRef3;
                uGCVideo = (ShorttvModel.UGCVideo) objE;
            } else {
                uGCVideo = null;
                objectRef4 = objectRef;
                objectRef5 = objectRef3;
            }
            if (uGCVideo == null) {
                cVarL3 = this.this$0.L();
                if (cVarL3 != null) {
                    String str10 = this.$ugcVideoId;
                    this.L$0 = objectRef4;
                    this.L$1 = objectRef5;
                    this.L$2 = null;
                    this.label = 4;
                    objE2 = cVarL3.e(str10, this);
                    if (objE2 == objF) {
                        return objF;
                    }
                    uGCVideo = (ShorttvModel.UGCVideo) objE2;
                    objectRef7 = objectRef5;
                    objectRef8 = objectRef4;
                } else {
                    objectRef7 = objectRef5;
                    objectRef8 = objectRef4;
                    uGCVideo = null;
                }
                if (uGCVideo != null) {
                    objectRef6 = objectRef8;
                    objectRef5 = objectRef7;
                } else {
                    listV2 = this.this$0.v();
                    if (listV2 != null) {
                        uGCVideo = (ShorttvModel.UGCVideo) CollectionsKt.k0(listV2);
                        objectRef6 = objectRef8;
                        objectRef5 = objectRef7;
                    } else {
                        objectRef6 = objectRef8;
                        objectRef5 = objectRef7;
                        uGCVideo = null;
                    }
                }
            } else {
                objectRef6 = objectRef4;
            }
        } else {
            shortTvViewModel = this.this$0;
            cVarL = shortTvViewModel.L();
            if (cVarL != null) {
                this.L$0 = objectRef;
                this.L$1 = collectionId;
                this.L$2 = shortTvViewModel;
                this.label = 2;
                objB = cVarL.b(collectionId, this);
                if (objB == objF) {
                    return objF;
                }
                objectRef2 = objectRef;
                shortTvViewModel2 = shortTvViewModel;
                list = (List) objB;
                if (list != null) {
                    listU0 = CollectionsKt.U0(list);
                } else {
                    Ref.ObjectRef objectRef14 = objectRef2;
                    shortTvViewModel = shortTvViewModel2;
                    objectRef = objectRef14;
                    listU0 = null;
                    ShortTvViewModel shortTvViewModel6 = shortTvViewModel;
                    objectRef2 = objectRef;
                    shortTvViewModel2 = shortTvViewModel6;
                }
            } else {
                listU0 = null;
                ShortTvViewModel shortTvViewModel7 = shortTvViewModel;
                objectRef2 = objectRef;
                shortTvViewModel2 = shortTvViewModel7;
            }
            shortTvViewModel2.f0(listU0);
            objectRef = objectRef2;
            objectRef3 = new Ref.ObjectRef();
            listV = this.this$0.v();
            if (listV != null) {
                it = listV.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!Intrinsics.c(((ShorttvModel.UGCVideo) next).getUgcVideoId(), objectRef.element));
                uGCVideo2 = (ShorttvModel.UGCVideo) next;
                if (uGCVideo2 != null) {
                    objectRef6 = objectRef;
                    objectRef5 = objectRef3;
                    uGCVideo = uGCVideo2;
                }
            }
            cVarL2 = this.this$0.L();
            if (cVarL2 != null) {
                String str11 = (String) objectRef.element;
                this.L$0 = objectRef;
                this.L$1 = objectRef3;
                this.L$2 = null;
                this.label = 3;
                objE = cVarL2.e(str11, this);
                if (objE == objF) {
                    return objF;
                }
                objectRef4 = objectRef;
                objectRef5 = objectRef3;
                uGCVideo = (ShorttvModel.UGCVideo) objE;
            } else {
                uGCVideo = null;
                objectRef4 = objectRef;
                objectRef5 = objectRef3;
            }
            if (uGCVideo == null) {
                cVarL3 = this.this$0.L();
                if (cVarL3 != null) {
                    String str12 = this.$ugcVideoId;
                    this.L$0 = objectRef4;
                    this.L$1 = objectRef5;
                    this.L$2 = null;
                    this.label = 4;
                    objE2 = cVarL3.e(str12, this);
                    if (objE2 == objF) {
                        return objF;
                    }
                    uGCVideo = (ShorttvModel.UGCVideo) objE2;
                    objectRef7 = objectRef5;
                    objectRef8 = objectRef4;
                } else {
                    objectRef7 = objectRef5;
                    objectRef8 = objectRef4;
                    uGCVideo = null;
                }
                if (uGCVideo != null) {
                    objectRef6 = objectRef8;
                    objectRef5 = objectRef7;
                } else {
                    listV2 = this.this$0.v();
                    if (listV2 != null) {
                        uGCVideo = (ShorttvModel.UGCVideo) CollectionsKt.k0(listV2);
                        objectRef6 = objectRef8;
                        objectRef5 = objectRef7;
                    } else {
                        objectRef6 = objectRef8;
                        objectRef5 = objectRef7;
                        uGCVideo = null;
                    }
                }
            } else {
                objectRef6 = objectRef4;
            }
        }
        if (m.f70474a.e()) {
            anonymousClass2 = new AnonymousClass2(objectRef5, this.this$0, objectRef6, this.$collectionId, this.$subjectId, uGCVideo, null);
            this.L$0 = objectRef5;
            this.L$1 = uGCVideo;
            this.L$2 = null;
            this.label = 5;
            if (l2.c(anonymousClass2, this) == objF) {
                return objF;
            }
            uGCVideo3 = uGCVideo;
            uGCVideo = uGCVideo3;
        }
        if (objectRef5.element == 0) {
            if (uGCVideo != null) {
                Boxing.a(this.this$0.p().addAll(listI0));
            }
            this.this$0.f54485t.n(uGCVideo);
        }
        return Unit.f67061a;
    }
}
