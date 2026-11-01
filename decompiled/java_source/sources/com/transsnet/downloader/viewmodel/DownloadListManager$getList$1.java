package com.transsnet.downloader.viewmodel;

import android.content.res.Resources;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsnet.downloader.R$string;
import com.transsnet.downloader.manager.DownloadEsHelper;
import java.util.ArrayList;
import java.util.List;
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
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.u0;
import kotlinx.coroutines.y0;
import okhttp3.internal.http2.Settings;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.viewmodel.DownloadListManager$getList$1", f = "DownloadListManager.kt", l = {TmcConstants.NOTIFY_ADDHOME_GUIDE_BOTTOM_SHOW, 85, 88, 91, 92, 97, 155}, m = "invokeSuspend")
final class DownloadListManager$getList$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ boolean $hide;
    final /* synthetic */ boolean $isCompletedRefresh;
    final /* synthetic */ BiddingNativeManager $wrapNativeManager;
    Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ DownloadListManager this$0;

    /* JADX INFO: renamed from: com.transsnet.downloader.viewmodel.DownloadListManager$getList$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.downloader.viewmodel.DownloadListManager$getList$1$1", f = "DownloadListManager.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ List<DownloadBean> $dataUncomplete;
        int label;
        final /* synthetic */ DownloadListManager this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(DownloadListManager downloadListManager, List<DownloadBean> list, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = downloadListManager;
            this.$dataUncomplete = list;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.this$0, this.$dataUncomplete, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            this.this$0.q(this.$dataUncomplete);
            return Unit.f67061a;
        }
    }

    /* JADX INFO: renamed from: com.transsnet.downloader.viewmodel.DownloadListManager$getList$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.downloader.viewmodel.DownloadListManager$getList$1$2", f = "DownloadListManager.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ List<DownloadBean> $dataCompleteAllList;
        int label;
        final /* synthetic */ DownloadListManager this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass2(DownloadListManager downloadListManager, List<? extends DownloadBean> list, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.this$0 = downloadListManager;
            this.$dataCompleteAllList = list;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.this$0, this.$dataCompleteAllList, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            this.this$0.q(this.$dataCompleteAllList);
            return Unit.f67061a;
        }
    }

    /* JADX INFO: renamed from: com.transsnet.downloader.viewmodel.DownloadListManager$getList$1$5, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.downloader.viewmodel.DownloadListManager$getList$1$5", f = "DownloadListManager.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass5 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ List<DownloadBean> $dataList;
        int label;
        final /* synthetic */ DownloadListManager this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass5(DownloadListManager downloadListManager, List<DownloadBean> list, Continuation<? super AnonymousClass5> continuation) {
            super(2, continuation);
            this.this$0 = downloadListManager;
            this.$dataList = list;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass5(this.this$0, this.$dataList, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass5) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            this.this$0.S(this.$dataList);
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadListManager$getList$1(boolean z10, DownloadListManager downloadListManager, boolean z11, BiddingNativeManager biddingNativeManager, Continuation<? super DownloadListManager$getList$1> continuation) {
        super(2, continuation);
        this.$isCompletedRefresh = z10;
        this.this$0 = downloadListManager;
        this.$hide = z11;
        this.$wrapNativeManager = biddingNativeManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadListManager$getList$1(this.$isCompletedRefresh, this.this$0, this.$hide, this.$wrapNativeManager, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DownloadListManager$getList$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x007c A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:23:0x009d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:26:0x00af A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:29:0x00ca A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:30:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:33:0x00df A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:36:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:37:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:39:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:42:0x0114  */
    /* JADX WARN: Code duplicated, block: B:45:0x01ec  */
    /* JADX WARN: Code duplicated, block: B:47:0x01f8  */
    /* JADX WARN: Code duplicated, block: B:50:0x0202  */
    /* JADX WARN: Code duplicated, block: B:54:0x020b A[LOOP:0: B:43:0x01e6->B:54:0x020b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:57:0x0211  */
    /* JADX WARN: Code duplicated, block: B:58:0x0217  */
    /* JADX WARN: Code duplicated, block: B:61:0x0227  */
    /* JADX WARN: Code duplicated, block: B:63:0x022b  */
    /* JADX WARN: Code duplicated, block: B:66:0x0240  */
    /* JADX WARN: Code duplicated, block: B:67:0x0243  */
    /* JADX WARN: Code duplicated, block: B:69:0x030c  */
    /* JADX WARN: Code duplicated, block: B:72:0x031a  */
    /* JADX WARN: Code duplicated, block: B:74:0x03e2  */
    /* JADX WARN: Code duplicated, block: B:75:0x03e7  */
    /* JADX WARN: Code duplicated, block: B:79:0x042d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:80:0x042e  */
    /* JADX WARN: Code duplicated, block: B:83:0x020d A[SYNTHETIC] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objX;
        List list;
        kotlinx.coroutines.i0 i0VarB;
        AnonymousClass1 anonymousClass1;
        Object objB;
        List list2;
        kotlinx.coroutines.i0 i0VarB2;
        AnonymousClass2 anonymousClass2;
        List<DownloadBean> listSubList;
        List list3;
        Object objV;
        List list4;
        List list5;
        ArrayList arrayList;
        List list6;
        a2 a2VarC;
        AnonymousClass5 anonymousClass5;
        List list7;
        int size;
        Ref.BooleanRef booleanRef;
        int size2;
        int i11;
        Object objF = IntrinsicsKt.f();
        switch (this.label) {
            case 0:
                ResultKt.b(obj);
                if (this.$isCompletedRefresh) {
                    this.label = 1;
                    if (u0.a(800L, this) == objF) {
                        return objF;
                    }
                }
                this.this$0.a0(this.$hide);
                DownloadListManager downloadListManager = this.this$0;
                this.label = 2;
                objX = downloadListManager.x(this);
                if (objX == objF) {
                    return objF;
                }
                list = (List) objX;
                this.this$0.G().n(list);
                i0VarB = y0.b();
                anonymousClass1 = new AnonymousClass1(this.this$0, list, null);
                this.L$0 = list;
                this.label = 3;
                if (kotlinx.coroutines.i.g(i0VarB, anonymousClass1, this) == objF) {
                    return objF;
                }
                DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f59419m.a();
                this.L$0 = list;
                this.label = 4;
                objB = DownloadEsHelper.B(downloadEsHelperA, false, this, 1, null);
                if (objB == objF) {
                    return objF;
                }
                list2 = (List) objB;
                i0VarB2 = y0.b();
                anonymousClass2 = new AnonymousClass2(this.this$0, list2, null);
                this.L$0 = list;
                this.L$1 = list2;
                this.label = 5;
                if (kotlinx.coroutines.i.g(i0VarB2, anonymousClass2, this) == objF) {
                    return objF;
                }
                listSubList = list;
                list3 = list2;
                DownloadListManager downloadListManager2 = this.this$0;
                this.L$0 = listSubList;
                this.L$1 = list3;
                this.label = 6;
                objV = downloadListManager2.v(list3, this);
                if (objV == objF) {
                    return objF;
                }
                list4 = (List) objV;
                list5 = listSubList;
                if (!list5.isEmpty()) {
                    this.this$0.T(listSubList, this.$wrapNativeManager);
                } else if (!list4.isEmpty()) {
                    this.this$0.T(list4, this.$wrapNativeManager);
                }
                arrayList = new ArrayList();
                if (!list5.isEmpty()) {
                    String string = Utils.a().getResources().getString(R$string.str_downloading_title);
                    Intrinsics.g(string, "getString(...)");
                    DownloadBean downloadBean = new DownloadBean("title1", "titleRes1", string, "", Boxing.e(0L), null, null, null, null, null, 0L, 0, 0, 0, 0L, 0L, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -32, -1, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
                    downloadBean.setStatus(11);
                    downloadBean.setMore(true);
                    booleanRef = new Ref.BooleanRef();
                    for (DownloadBean downloadBean2 : listSubList) {
                        if (downloadBean2.getAdProvide() != null) {
                            booleanRef.element = true;
                            Unit unit = Unit.f67061a;
                        }
                        if (downloadBean2.getWrapNativeManager() != null) {
                            booleanRef.element = true;
                            Unit unit2 = Unit.f67061a;
                        }
                        if (booleanRef.element) {
                            if (booleanRef.element) {
                                size2 = listSubList.size() - 1;
                            } else {
                                size2 = listSubList.size();
                            }
                            downloadBean.setCount(size2);
                            arrayList.add(downloadBean);
                            if (listSubList.size() > 3) {
                                if (this.$hide) {
                                    listSubList = listSubList.subList(0, 3);
                                }
                                arrayList.addAll(listSubList);
                                Resources resources = Utils.a().getResources();
                                if (this.$hide) {
                                    i11 = com.tn.lib.widget.R$string.player_more;
                                } else {
                                    i11 = com.tn.lib.widget.R$string.player_hide;
                                }
                                String string2 = resources.getString(i11);
                                Intrinsics.g(string2, "getString(...)");
                                DownloadBean downloadBean3 = new DownloadBean("title1", "titleRes3", string2, "", Boxing.e(0L), null, null, null, null, null, 0L, 0, 0, 0, 0L, 0L, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -32, -1, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
                                downloadBean3.setStatus(12);
                                downloadBean3.setMore(this.$hide);
                                arrayList.add(downloadBean3);
                            } else {
                                arrayList.addAll(listSubList);
                            }
                        }
                    }
                    if (booleanRef.element) {
                        size2 = listSubList.size() - 1;
                    } else {
                        size2 = listSubList.size();
                    }
                    downloadBean.setCount(size2);
                    arrayList.add(downloadBean);
                    if (listSubList.size() > 3) {
                        if (this.$hide) {
                            listSubList = listSubList.subList(0, 3);
                        }
                        arrayList.addAll(listSubList);
                        Resources resources2 = Utils.a().getResources();
                        if (this.$hide) {
                            i11 = com.tn.lib.widget.R$string.player_more;
                        } else {
                            i11 = com.tn.lib.widget.R$string.player_hide;
                        }
                        String string3 = resources2.getString(i11);
                        Intrinsics.g(string3, "getString(...)");
                        DownloadBean downloadBean4 = new DownloadBean("title1", "titleRes3", string3, "", Boxing.e(0L), null, null, null, null, null, 0L, 0, 0, 0, 0L, 0L, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -32, -1, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
                        downloadBean4.setStatus(12);
                        downloadBean4.setMore(this.$hide);
                        arrayList.add(downloadBean4);
                    } else {
                        arrayList.addAll(listSubList);
                    }
                }
                list6 = list4;
                if (!list6.isEmpty()) {
                    String string4 = Utils.a().getResources().getString(R$string.str_downloaded_title);
                    Intrinsics.g(string4, "getString(...)");
                    DownloadBean downloadBean5 = new DownloadBean("title2", "titleRes2", string4, "", Boxing.e(0L), null, null, null, null, null, 0L, 0, 0, 0, 0L, 0L, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -32, -1, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
                    downloadBean5.setStatus(11);
                    if (list3 != null) {
                        size = list3.size();
                    } else {
                        size = list4.size();
                    }
                    downloadBean5.setCount(size);
                    arrayList.add(downloadBean5);
                    arrayList.addAll(list6);
                }
                lg.a.C0828a.g(lg.a.f68839a, "get getListByStatus success" + arrayList.size(), false, 2, null);
                this.this$0.s(arrayList);
                a2VarC = y0.c();
                anonymousClass5 = new AnonymousClass5(this.this$0, arrayList, null);
                this.L$0 = arrayList;
                this.L$1 = null;
                this.label = 7;
                if (kotlinx.coroutines.i.g(a2VarC, anonymousClass5, this) == objF) {
                    return objF;
                }
                list7 = arrayList;
                this.this$0.B().n(list7);
                return Unit.f67061a;
            case 1:
                ResultKt.b(obj);
                this.this$0.a0(this.$hide);
                DownloadListManager downloadListManager3 = this.this$0;
                this.label = 2;
                objX = downloadListManager3.x(this);
                if (objX == objF) {
                    return objF;
                }
                list = (List) objX;
                this.this$0.G().n(list);
                i0VarB = y0.b();
                anonymousClass1 = new AnonymousClass1(this.this$0, list, null);
                this.L$0 = list;
                this.label = 3;
                if (kotlinx.coroutines.i.g(i0VarB, anonymousClass1, this) == objF) {
                    return objF;
                }
                DownloadEsHelper downloadEsHelperA2 = DownloadEsHelper.f59419m.a();
                this.L$0 = list;
                this.label = 4;
                objB = DownloadEsHelper.B(downloadEsHelperA2, false, this, 1, null);
                if (objB == objF) {
                    return objF;
                }
                list2 = (List) objB;
                i0VarB2 = y0.b();
                anonymousClass2 = new AnonymousClass2(this.this$0, list2, null);
                this.L$0 = list;
                this.L$1 = list2;
                this.label = 5;
                if (kotlinx.coroutines.i.g(i0VarB2, anonymousClass2, this) == objF) {
                    return objF;
                }
                listSubList = list;
                list3 = list2;
                DownloadListManager downloadListManager4 = this.this$0;
                this.L$0 = listSubList;
                this.L$1 = list3;
                this.label = 6;
                objV = downloadListManager4.v(list3, this);
                if (objV == objF) {
                    return objF;
                }
                list4 = (List) objV;
                list5 = listSubList;
                if (!list5.isEmpty()) {
                    this.this$0.T(listSubList, this.$wrapNativeManager);
                } else if (!list4.isEmpty()) {
                    this.this$0.T(list4, this.$wrapNativeManager);
                }
                arrayList = new ArrayList();
                if (!list5.isEmpty()) {
                    String string5 = Utils.a().getResources().getString(R$string.str_downloading_title);
                    Intrinsics.g(string5, "getString(...)");
                    DownloadBean downloadBean6 = new DownloadBean("title1", "titleRes1", string5, "", Boxing.e(0L), null, null, null, null, null, 0L, 0, 0, 0, 0L, 0L, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -32, -1, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
                    downloadBean6.setStatus(11);
                    downloadBean6.setMore(true);
                    booleanRef = new Ref.BooleanRef();
                    while (r16.hasNext()) {
                        if (downloadBean2.getAdProvide() != null) {
                            booleanRef.element = true;
                            Unit unit3 = Unit.f67061a;
                        }
                        if (downloadBean2.getWrapNativeManager() != null) {
                            booleanRef.element = true;
                            Unit unit4 = Unit.f67061a;
                        }
                        if (booleanRef.element) {
                            if (booleanRef.element) {
                                size2 = listSubList.size() - 1;
                            } else {
                                size2 = listSubList.size();
                            }
                            downloadBean6.setCount(size2);
                            arrayList.add(downloadBean6);
                            if (listSubList.size() > 3) {
                                if (this.$hide) {
                                    listSubList = listSubList.subList(0, 3);
                                }
                                arrayList.addAll(listSubList);
                                Resources resources3 = Utils.a().getResources();
                                if (this.$hide) {
                                    i11 = com.tn.lib.widget.R$string.player_more;
                                } else {
                                    i11 = com.tn.lib.widget.R$string.player_hide;
                                }
                                String string6 = resources3.getString(i11);
                                Intrinsics.g(string6, "getString(...)");
                                DownloadBean downloadBean7 = new DownloadBean("title1", "titleRes3", string6, "", Boxing.e(0L), null, null, null, null, null, 0L, 0, 0, 0, 0L, 0L, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -32, -1, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
                                downloadBean7.setStatus(12);
                                downloadBean7.setMore(this.$hide);
                                arrayList.add(downloadBean7);
                            } else {
                                arrayList.addAll(listSubList);
                            }
                        }
                    }
                    if (booleanRef.element) {
                        size2 = listSubList.size() - 1;
                    } else {
                        size2 = listSubList.size();
                    }
                    downloadBean6.setCount(size2);
                    arrayList.add(downloadBean6);
                    if (listSubList.size() > 3) {
                        if (this.$hide) {
                            listSubList = listSubList.subList(0, 3);
                        }
                        arrayList.addAll(listSubList);
                        Resources resources4 = Utils.a().getResources();
                        if (this.$hide) {
                            i11 = com.tn.lib.widget.R$string.player_more;
                        } else {
                            i11 = com.tn.lib.widget.R$string.player_hide;
                        }
                        String string7 = resources4.getString(i11);
                        Intrinsics.g(string7, "getString(...)");
                        DownloadBean downloadBean8 = new DownloadBean("title1", "titleRes3", string7, "", Boxing.e(0L), null, null, null, null, null, 0L, 0, 0, 0, 0L, 0L, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -32, -1, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
                        downloadBean8.setStatus(12);
                        downloadBean8.setMore(this.$hide);
                        arrayList.add(downloadBean8);
                    } else {
                        arrayList.addAll(listSubList);
                    }
                }
                list6 = list4;
                if (!list6.isEmpty()) {
                    String string8 = Utils.a().getResources().getString(R$string.str_downloaded_title);
                    Intrinsics.g(string8, "getString(...)");
                    DownloadBean downloadBean9 = new DownloadBean("title2", "titleRes2", string8, "", Boxing.e(0L), null, null, null, null, null, 0L, 0, 0, 0, 0L, 0L, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -32, -1, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
                    downloadBean9.setStatus(11);
                    if (list3 != null) {
                        size = list3.size();
                    } else {
                        size = list4.size();
                    }
                    downloadBean9.setCount(size);
                    arrayList.add(downloadBean9);
                    arrayList.addAll(list6);
                }
                lg.a.C0828a.g(lg.a.f68839a, "get getListByStatus success" + arrayList.size(), false, 2, null);
                this.this$0.s(arrayList);
                a2VarC = y0.c();
                anonymousClass5 = new AnonymousClass5(this.this$0, arrayList, null);
                this.L$0 = arrayList;
                this.L$1 = null;
                this.label = 7;
                if (kotlinx.coroutines.i.g(a2VarC, anonymousClass5, this) == objF) {
                    return objF;
                }
                list7 = arrayList;
                this.this$0.B().n(list7);
                return Unit.f67061a;
            case 2:
                ResultKt.b(obj);
                objX = obj;
                list = (List) objX;
                this.this$0.G().n(list);
                i0VarB = y0.b();
                anonymousClass1 = new AnonymousClass1(this.this$0, list, null);
                this.L$0 = list;
                this.label = 3;
                if (kotlinx.coroutines.i.g(i0VarB, anonymousClass1, this) == objF) {
                    return objF;
                }
                DownloadEsHelper downloadEsHelperA3 = DownloadEsHelper.f59419m.a();
                this.L$0 = list;
                this.label = 4;
                objB = DownloadEsHelper.B(downloadEsHelperA3, false, this, 1, null);
                if (objB == objF) {
                    return objF;
                }
                list2 = (List) objB;
                i0VarB2 = y0.b();
                anonymousClass2 = new AnonymousClass2(this.this$0, list2, null);
                this.L$0 = list;
                this.L$1 = list2;
                this.label = 5;
                if (kotlinx.coroutines.i.g(i0VarB2, anonymousClass2, this) == objF) {
                    return objF;
                }
                listSubList = list;
                list3 = list2;
                DownloadListManager downloadListManager5 = this.this$0;
                this.L$0 = listSubList;
                this.L$1 = list3;
                this.label = 6;
                objV = downloadListManager5.v(list3, this);
                if (objV == objF) {
                    return objF;
                }
                list4 = (List) objV;
                list5 = listSubList;
                if (!list5.isEmpty()) {
                    this.this$0.T(listSubList, this.$wrapNativeManager);
                } else if (!list4.isEmpty()) {
                    this.this$0.T(list4, this.$wrapNativeManager);
                }
                arrayList = new ArrayList();
                if (!list5.isEmpty()) {
                    String string9 = Utils.a().getResources().getString(R$string.str_downloading_title);
                    Intrinsics.g(string9, "getString(...)");
                    DownloadBean downloadBean10 = new DownloadBean("title1", "titleRes1", string9, "", Boxing.e(0L), null, null, null, null, null, 0L, 0, 0, 0, 0L, 0L, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -32, -1, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
                    downloadBean10.setStatus(11);
                    downloadBean10.setMore(true);
                    booleanRef = new Ref.BooleanRef();
                    while (r16.hasNext()) {
                        if (downloadBean2.getAdProvide() != null) {
                            booleanRef.element = true;
                            Unit unit5 = Unit.f67061a;
                        }
                        if (downloadBean2.getWrapNativeManager() != null) {
                            booleanRef.element = true;
                            Unit unit6 = Unit.f67061a;
                        }
                        if (booleanRef.element) {
                            if (booleanRef.element) {
                                size2 = listSubList.size() - 1;
                            } else {
                                size2 = listSubList.size();
                            }
                            downloadBean10.setCount(size2);
                            arrayList.add(downloadBean10);
                            if (listSubList.size() > 3) {
                                if (this.$hide) {
                                    listSubList = listSubList.subList(0, 3);
                                }
                                arrayList.addAll(listSubList);
                                Resources resources5 = Utils.a().getResources();
                                if (this.$hide) {
                                    i11 = com.tn.lib.widget.R$string.player_more;
                                } else {
                                    i11 = com.tn.lib.widget.R$string.player_hide;
                                }
                                String string10 = resources5.getString(i11);
                                Intrinsics.g(string10, "getString(...)");
                                DownloadBean downloadBean11 = new DownloadBean("title1", "titleRes3", string10, "", Boxing.e(0L), null, null, null, null, null, 0L, 0, 0, 0, 0L, 0L, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -32, -1, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
                                downloadBean11.setStatus(12);
                                downloadBean11.setMore(this.$hide);
                                arrayList.add(downloadBean11);
                            } else {
                                arrayList.addAll(listSubList);
                            }
                        }
                    }
                    if (booleanRef.element) {
                        size2 = listSubList.size() - 1;
                    } else {
                        size2 = listSubList.size();
                    }
                    downloadBean10.setCount(size2);
                    arrayList.add(downloadBean10);
                    if (listSubList.size() > 3) {
                        if (this.$hide) {
                            listSubList = listSubList.subList(0, 3);
                        }
                        arrayList.addAll(listSubList);
                        Resources resources6 = Utils.a().getResources();
                        if (this.$hide) {
                            i11 = com.tn.lib.widget.R$string.player_more;
                        } else {
                            i11 = com.tn.lib.widget.R$string.player_hide;
                        }
                        String string11 = resources6.getString(i11);
                        Intrinsics.g(string11, "getString(...)");
                        DownloadBean downloadBean12 = new DownloadBean("title1", "titleRes3", string11, "", Boxing.e(0L), null, null, null, null, null, 0L, 0, 0, 0, 0L, 0L, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -32, -1, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
                        downloadBean12.setStatus(12);
                        downloadBean12.setMore(this.$hide);
                        arrayList.add(downloadBean12);
                    } else {
                        arrayList.addAll(listSubList);
                    }
                }
                list6 = list4;
                if (!list6.isEmpty()) {
                    String string12 = Utils.a().getResources().getString(R$string.str_downloaded_title);
                    Intrinsics.g(string12, "getString(...)");
                    DownloadBean downloadBean13 = new DownloadBean("title2", "titleRes2", string12, "", Boxing.e(0L), null, null, null, null, null, 0L, 0, 0, 0, 0L, 0L, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -32, -1, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
                    downloadBean13.setStatus(11);
                    if (list3 != null) {
                        size = list3.size();
                    } else {
                        size = list4.size();
                    }
                    downloadBean13.setCount(size);
                    arrayList.add(downloadBean13);
                    arrayList.addAll(list6);
                }
                lg.a.C0828a.g(lg.a.f68839a, "get getListByStatus success" + arrayList.size(), false, 2, null);
                this.this$0.s(arrayList);
                a2VarC = y0.c();
                anonymousClass5 = new AnonymousClass5(this.this$0, arrayList, null);
                this.L$0 = arrayList;
                this.L$1 = null;
                this.label = 7;
                if (kotlinx.coroutines.i.g(a2VarC, anonymousClass5, this) == objF) {
                    return objF;
                }
                list7 = arrayList;
                this.this$0.B().n(list7);
                return Unit.f67061a;
            case 3:
                list = (List) this.L$0;
                ResultKt.b(obj);
                DownloadEsHelper downloadEsHelperA4 = DownloadEsHelper.f59419m.a();
                this.L$0 = list;
                this.label = 4;
                objB = DownloadEsHelper.B(downloadEsHelperA4, false, this, 1, null);
                if (objB == objF) {
                    return objF;
                }
                list2 = (List) objB;
                i0VarB2 = y0.b();
                anonymousClass2 = new AnonymousClass2(this.this$0, list2, null);
                this.L$0 = list;
                this.L$1 = list2;
                this.label = 5;
                if (kotlinx.coroutines.i.g(i0VarB2, anonymousClass2, this) == objF) {
                    return objF;
                }
                listSubList = list;
                list3 = list2;
                DownloadListManager downloadListManager6 = this.this$0;
                this.L$0 = listSubList;
                this.L$1 = list3;
                this.label = 6;
                objV = downloadListManager6.v(list3, this);
                if (objV == objF) {
                    return objF;
                }
                list4 = (List) objV;
                list5 = listSubList;
                if (!list5.isEmpty()) {
                    this.this$0.T(listSubList, this.$wrapNativeManager);
                } else if (!list4.isEmpty()) {
                    this.this$0.T(list4, this.$wrapNativeManager);
                }
                arrayList = new ArrayList();
                if (!list5.isEmpty()) {
                    String string13 = Utils.a().getResources().getString(R$string.str_downloading_title);
                    Intrinsics.g(string13, "getString(...)");
                    DownloadBean downloadBean14 = new DownloadBean("title1", "titleRes1", string13, "", Boxing.e(0L), null, null, null, null, null, 0L, 0, 0, 0, 0L, 0L, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -32, -1, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
                    downloadBean14.setStatus(11);
                    downloadBean14.setMore(true);
                    booleanRef = new Ref.BooleanRef();
                    while (r16.hasNext()) {
                        if (downloadBean2.getAdProvide() != null) {
                            booleanRef.element = true;
                            Unit unit7 = Unit.f67061a;
                        }
                        if (downloadBean2.getWrapNativeManager() != null) {
                            booleanRef.element = true;
                            Unit unit8 = Unit.f67061a;
                        }
                        if (booleanRef.element) {
                            if (booleanRef.element) {
                                size2 = listSubList.size() - 1;
                            } else {
                                size2 = listSubList.size();
                            }
                            downloadBean14.setCount(size2);
                            arrayList.add(downloadBean14);
                            if (listSubList.size() > 3) {
                                if (this.$hide) {
                                    listSubList = listSubList.subList(0, 3);
                                }
                                arrayList.addAll(listSubList);
                                Resources resources7 = Utils.a().getResources();
                                if (this.$hide) {
                                    i11 = com.tn.lib.widget.R$string.player_more;
                                } else {
                                    i11 = com.tn.lib.widget.R$string.player_hide;
                                }
                                String string14 = resources7.getString(i11);
                                Intrinsics.g(string14, "getString(...)");
                                DownloadBean downloadBean15 = new DownloadBean("title1", "titleRes3", string14, "", Boxing.e(0L), null, null, null, null, null, 0L, 0, 0, 0, 0L, 0L, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -32, -1, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
                                downloadBean15.setStatus(12);
                                downloadBean15.setMore(this.$hide);
                                arrayList.add(downloadBean15);
                            } else {
                                arrayList.addAll(listSubList);
                            }
                        }
                    }
                    if (booleanRef.element) {
                        size2 = listSubList.size() - 1;
                    } else {
                        size2 = listSubList.size();
                    }
                    downloadBean14.setCount(size2);
                    arrayList.add(downloadBean14);
                    if (listSubList.size() > 3) {
                        if (this.$hide) {
                            listSubList = listSubList.subList(0, 3);
                        }
                        arrayList.addAll(listSubList);
                        Resources resources8 = Utils.a().getResources();
                        if (this.$hide) {
                            i11 = com.tn.lib.widget.R$string.player_more;
                        } else {
                            i11 = com.tn.lib.widget.R$string.player_hide;
                        }
                        String string15 = resources8.getString(i11);
                        Intrinsics.g(string15, "getString(...)");
                        DownloadBean downloadBean16 = new DownloadBean("title1", "titleRes3", string15, "", Boxing.e(0L), null, null, null, null, null, 0L, 0, 0, 0, 0L, 0L, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -32, -1, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
                        downloadBean16.setStatus(12);
                        downloadBean16.setMore(this.$hide);
                        arrayList.add(downloadBean16);
                    } else {
                        arrayList.addAll(listSubList);
                    }
                }
                list6 = list4;
                if (!list6.isEmpty()) {
                    String string16 = Utils.a().getResources().getString(R$string.str_downloaded_title);
                    Intrinsics.g(string16, "getString(...)");
                    DownloadBean downloadBean17 = new DownloadBean("title2", "titleRes2", string16, "", Boxing.e(0L), null, null, null, null, null, 0L, 0, 0, 0, 0L, 0L, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -32, -1, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
                    downloadBean17.setStatus(11);
                    if (list3 != null) {
                        size = list3.size();
                    } else {
                        size = list4.size();
                    }
                    downloadBean17.setCount(size);
                    arrayList.add(downloadBean17);
                    arrayList.addAll(list6);
                }
                lg.a.C0828a.g(lg.a.f68839a, "get getListByStatus success" + arrayList.size(), false, 2, null);
                this.this$0.s(arrayList);
                a2VarC = y0.c();
                anonymousClass5 = new AnonymousClass5(this.this$0, arrayList, null);
                this.L$0 = arrayList;
                this.L$1 = null;
                this.label = 7;
                if (kotlinx.coroutines.i.g(a2VarC, anonymousClass5, this) == objF) {
                    return objF;
                }
                list7 = arrayList;
                this.this$0.B().n(list7);
                return Unit.f67061a;
            case 4:
                list = (List) this.L$0;
                ResultKt.b(obj);
                objB = obj;
                list2 = (List) objB;
                i0VarB2 = y0.b();
                anonymousClass2 = new AnonymousClass2(this.this$0, list2, null);
                this.L$0 = list;
                this.L$1 = list2;
                this.label = 5;
                if (kotlinx.coroutines.i.g(i0VarB2, anonymousClass2, this) == objF) {
                    return objF;
                }
                listSubList = list;
                list3 = list2;
                DownloadListManager downloadListManager7 = this.this$0;
                this.L$0 = listSubList;
                this.L$1 = list3;
                this.label = 6;
                objV = downloadListManager7.v(list3, this);
                if (objV == objF) {
                    return objF;
                }
                list4 = (List) objV;
                list5 = listSubList;
                if (!list5.isEmpty()) {
                    this.this$0.T(listSubList, this.$wrapNativeManager);
                } else if (!list4.isEmpty()) {
                    this.this$0.T(list4, this.$wrapNativeManager);
                }
                arrayList = new ArrayList();
                if (!list5.isEmpty()) {
                    String string17 = Utils.a().getResources().getString(R$string.str_downloading_title);
                    Intrinsics.g(string17, "getString(...)");
                    DownloadBean downloadBean18 = new DownloadBean("title1", "titleRes1", string17, "", Boxing.e(0L), null, null, null, null, null, 0L, 0, 0, 0, 0L, 0L, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -32, -1, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
                    downloadBean18.setStatus(11);
                    downloadBean18.setMore(true);
                    booleanRef = new Ref.BooleanRef();
                    while (r16.hasNext()) {
                        if (downloadBean2.getAdProvide() != null) {
                            booleanRef.element = true;
                            Unit unit9 = Unit.f67061a;
                        }
                        if (downloadBean2.getWrapNativeManager() != null) {
                            booleanRef.element = true;
                            Unit unit10 = Unit.f67061a;
                        }
                        if (booleanRef.element) {
                            if (booleanRef.element) {
                                size2 = listSubList.size() - 1;
                            } else {
                                size2 = listSubList.size();
                            }
                            downloadBean18.setCount(size2);
                            arrayList.add(downloadBean18);
                            if (listSubList.size() > 3) {
                                if (this.$hide) {
                                    listSubList = listSubList.subList(0, 3);
                                }
                                arrayList.addAll(listSubList);
                                Resources resources9 = Utils.a().getResources();
                                if (this.$hide) {
                                    i11 = com.tn.lib.widget.R$string.player_more;
                                } else {
                                    i11 = com.tn.lib.widget.R$string.player_hide;
                                }
                                String string18 = resources9.getString(i11);
                                Intrinsics.g(string18, "getString(...)");
                                DownloadBean downloadBean19 = new DownloadBean("title1", "titleRes3", string18, "", Boxing.e(0L), null, null, null, null, null, 0L, 0, 0, 0, 0L, 0L, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -32, -1, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
                                downloadBean19.setStatus(12);
                                downloadBean19.setMore(this.$hide);
                                arrayList.add(downloadBean19);
                            } else {
                                arrayList.addAll(listSubList);
                            }
                        }
                    }
                    if (booleanRef.element) {
                        size2 = listSubList.size() - 1;
                    } else {
                        size2 = listSubList.size();
                    }
                    downloadBean18.setCount(size2);
                    arrayList.add(downloadBean18);
                    if (listSubList.size() > 3) {
                        if (this.$hide) {
                            listSubList = listSubList.subList(0, 3);
                        }
                        arrayList.addAll(listSubList);
                        Resources resources10 = Utils.a().getResources();
                        if (this.$hide) {
                            i11 = com.tn.lib.widget.R$string.player_more;
                        } else {
                            i11 = com.tn.lib.widget.R$string.player_hide;
                        }
                        String string19 = resources10.getString(i11);
                        Intrinsics.g(string19, "getString(...)");
                        DownloadBean downloadBean110 = new DownloadBean("title1", "titleRes3", string19, "", Boxing.e(0L), null, null, null, null, null, 0L, 0, 0, 0, 0L, 0L, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -32, -1, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
                        downloadBean110.setStatus(12);
                        downloadBean110.setMore(this.$hide);
                        arrayList.add(downloadBean110);
                    } else {
                        arrayList.addAll(listSubList);
                    }
                }
                list6 = list4;
                if (!list6.isEmpty()) {
                    String string110 = Utils.a().getResources().getString(R$string.str_downloaded_title);
                    Intrinsics.g(string110, "getString(...)");
                    DownloadBean downloadBean111 = new DownloadBean("title2", "titleRes2", string110, "", Boxing.e(0L), null, null, null, null, null, 0L, 0, 0, 0, 0L, 0L, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -32, -1, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
                    downloadBean111.setStatus(11);
                    if (list3 != null) {
                        size = list3.size();
                    } else {
                        size = list4.size();
                    }
                    downloadBean111.setCount(size);
                    arrayList.add(downloadBean111);
                    arrayList.addAll(list6);
                }
                lg.a.C0828a.g(lg.a.f68839a, "get getListByStatus success" + arrayList.size(), false, 2, null);
                this.this$0.s(arrayList);
                a2VarC = y0.c();
                anonymousClass5 = new AnonymousClass5(this.this$0, arrayList, null);
                this.L$0 = arrayList;
                this.L$1 = null;
                this.label = 7;
                if (kotlinx.coroutines.i.g(a2VarC, anonymousClass5, this) == objF) {
                    return objF;
                }
                list7 = arrayList;
                this.this$0.B().n(list7);
                return Unit.f67061a;
            case 5:
                list3 = (List) this.L$1;
                listSubList = (List) this.L$0;
                ResultKt.b(obj);
                DownloadListManager downloadListManager8 = this.this$0;
                this.L$0 = listSubList;
                this.L$1 = list3;
                this.label = 6;
                objV = downloadListManager8.v(list3, this);
                if (objV == objF) {
                    return objF;
                }
                list4 = (List) objV;
                list5 = listSubList;
                if (!list5.isEmpty()) {
                    this.this$0.T(listSubList, this.$wrapNativeManager);
                } else if (!list4.isEmpty()) {
                    this.this$0.T(list4, this.$wrapNativeManager);
                }
                arrayList = new ArrayList();
                if (!list5.isEmpty()) {
                    String string111 = Utils.a().getResources().getString(R$string.str_downloading_title);
                    Intrinsics.g(string111, "getString(...)");
                    DownloadBean downloadBean112 = new DownloadBean("title1", "titleRes1", string111, "", Boxing.e(0L), null, null, null, null, null, 0L, 0, 0, 0, 0L, 0L, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -32, -1, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
                    downloadBean112.setStatus(11);
                    downloadBean112.setMore(true);
                    booleanRef = new Ref.BooleanRef();
                    while (r16.hasNext()) {
                        if (downloadBean2.getAdProvide() != null) {
                            booleanRef.element = true;
                            Unit unit11 = Unit.f67061a;
                        }
                        if (downloadBean2.getWrapNativeManager() != null) {
                            booleanRef.element = true;
                            Unit unit12 = Unit.f67061a;
                        }
                        if (booleanRef.element) {
                            if (booleanRef.element) {
                                size2 = listSubList.size() - 1;
                            } else {
                                size2 = listSubList.size();
                            }
                            downloadBean112.setCount(size2);
                            arrayList.add(downloadBean112);
                            if (listSubList.size() > 3) {
                                if (this.$hide) {
                                    listSubList = listSubList.subList(0, 3);
                                }
                                arrayList.addAll(listSubList);
                                Resources resources11 = Utils.a().getResources();
                                if (this.$hide) {
                                    i11 = com.tn.lib.widget.R$string.player_more;
                                } else {
                                    i11 = com.tn.lib.widget.R$string.player_hide;
                                }
                                String string112 = resources11.getString(i11);
                                Intrinsics.g(string112, "getString(...)");
                                DownloadBean downloadBean113 = new DownloadBean("title1", "titleRes3", string112, "", Boxing.e(0L), null, null, null, null, null, 0L, 0, 0, 0, 0L, 0L, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -32, -1, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
                                downloadBean113.setStatus(12);
                                downloadBean113.setMore(this.$hide);
                                arrayList.add(downloadBean113);
                            } else {
                                arrayList.addAll(listSubList);
                            }
                        }
                    }
                    if (booleanRef.element) {
                        size2 = listSubList.size() - 1;
                    } else {
                        size2 = listSubList.size();
                    }
                    downloadBean112.setCount(size2);
                    arrayList.add(downloadBean112);
                    if (listSubList.size() > 3) {
                        if (this.$hide) {
                            listSubList = listSubList.subList(0, 3);
                        }
                        arrayList.addAll(listSubList);
                        Resources resources12 = Utils.a().getResources();
                        if (this.$hide) {
                            i11 = com.tn.lib.widget.R$string.player_more;
                        } else {
                            i11 = com.tn.lib.widget.R$string.player_hide;
                        }
                        String string113 = resources12.getString(i11);
                        Intrinsics.g(string113, "getString(...)");
                        DownloadBean downloadBean114 = new DownloadBean("title1", "titleRes3", string113, "", Boxing.e(0L), null, null, null, null, null, 0L, 0, 0, 0, 0L, 0L, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -32, -1, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
                        downloadBean114.setStatus(12);
                        downloadBean114.setMore(this.$hide);
                        arrayList.add(downloadBean114);
                    } else {
                        arrayList.addAll(listSubList);
                    }
                }
                list6 = list4;
                if (!list6.isEmpty()) {
                    String string114 = Utils.a().getResources().getString(R$string.str_downloaded_title);
                    Intrinsics.g(string114, "getString(...)");
                    DownloadBean downloadBean115 = new DownloadBean("title2", "titleRes2", string114, "", Boxing.e(0L), null, null, null, null, null, 0L, 0, 0, 0, 0L, 0L, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -32, -1, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
                    downloadBean115.setStatus(11);
                    if (list3 != null) {
                        size = list3.size();
                    } else {
                        size = list4.size();
                    }
                    downloadBean115.setCount(size);
                    arrayList.add(downloadBean115);
                    arrayList.addAll(list6);
                }
                lg.a.C0828a.g(lg.a.f68839a, "get getListByStatus success" + arrayList.size(), false, 2, null);
                this.this$0.s(arrayList);
                a2VarC = y0.c();
                anonymousClass5 = new AnonymousClass5(this.this$0, arrayList, null);
                this.L$0 = arrayList;
                this.L$1 = null;
                this.label = 7;
                if (kotlinx.coroutines.i.g(a2VarC, anonymousClass5, this) == objF) {
                    return objF;
                }
                list7 = arrayList;
                this.this$0.B().n(list7);
                return Unit.f67061a;
            case 6:
                list3 = (List) this.L$1;
                listSubList = (List) this.L$0;
                ResultKt.b(obj);
                objV = obj;
                list4 = (List) objV;
                list5 = listSubList;
                if (!list5.isEmpty()) {
                    this.this$0.T(listSubList, this.$wrapNativeManager);
                } else if (!list4.isEmpty()) {
                    this.this$0.T(list4, this.$wrapNativeManager);
                }
                arrayList = new ArrayList();
                if (!list5.isEmpty()) {
                    String string115 = Utils.a().getResources().getString(R$string.str_downloading_title);
                    Intrinsics.g(string115, "getString(...)");
                    DownloadBean downloadBean116 = new DownloadBean("title1", "titleRes1", string115, "", Boxing.e(0L), null, null, null, null, null, 0L, 0, 0, 0, 0L, 0L, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -32, -1, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
                    downloadBean116.setStatus(11);
                    downloadBean116.setMore(true);
                    booleanRef = new Ref.BooleanRef();
                    while (r16.hasNext()) {
                        if (downloadBean2.getAdProvide() != null) {
                            booleanRef.element = true;
                            Unit unit13 = Unit.f67061a;
                        }
                        if (downloadBean2.getWrapNativeManager() != null) {
                            booleanRef.element = true;
                            Unit unit14 = Unit.f67061a;
                        }
                        if (booleanRef.element) {
                            if (booleanRef.element) {
                                size2 = listSubList.size() - 1;
                            } else {
                                size2 = listSubList.size();
                            }
                            downloadBean116.setCount(size2);
                            arrayList.add(downloadBean116);
                            if (listSubList.size() > 3) {
                                if (this.$hide) {
                                    listSubList = listSubList.subList(0, 3);
                                }
                                arrayList.addAll(listSubList);
                                Resources resources13 = Utils.a().getResources();
                                if (this.$hide) {
                                    i11 = com.tn.lib.widget.R$string.player_more;
                                } else {
                                    i11 = com.tn.lib.widget.R$string.player_hide;
                                }
                                String string116 = resources13.getString(i11);
                                Intrinsics.g(string116, "getString(...)");
                                DownloadBean downloadBean117 = new DownloadBean("title1", "titleRes3", string116, "", Boxing.e(0L), null, null, null, null, null, 0L, 0, 0, 0, 0L, 0L, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -32, -1, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
                                downloadBean117.setStatus(12);
                                downloadBean117.setMore(this.$hide);
                                arrayList.add(downloadBean117);
                            } else {
                                arrayList.addAll(listSubList);
                            }
                        }
                    }
                    if (booleanRef.element) {
                        size2 = listSubList.size() - 1;
                    } else {
                        size2 = listSubList.size();
                    }
                    downloadBean116.setCount(size2);
                    arrayList.add(downloadBean116);
                    if (listSubList.size() > 3) {
                        if (this.$hide) {
                            listSubList = listSubList.subList(0, 3);
                        }
                        arrayList.addAll(listSubList);
                        Resources resources14 = Utils.a().getResources();
                        if (this.$hide) {
                            i11 = com.tn.lib.widget.R$string.player_more;
                        } else {
                            i11 = com.tn.lib.widget.R$string.player_hide;
                        }
                        String string117 = resources14.getString(i11);
                        Intrinsics.g(string117, "getString(...)");
                        DownloadBean downloadBean118 = new DownloadBean("title1", "titleRes3", string117, "", Boxing.e(0L), null, null, null, null, null, 0L, 0, 0, 0, 0L, 0L, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -32, -1, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
                        downloadBean118.setStatus(12);
                        downloadBean118.setMore(this.$hide);
                        arrayList.add(downloadBean118);
                    } else {
                        arrayList.addAll(listSubList);
                    }
                }
                list6 = list4;
                if (!list6.isEmpty()) {
                    String string118 = Utils.a().getResources().getString(R$string.str_downloaded_title);
                    Intrinsics.g(string118, "getString(...)");
                    DownloadBean downloadBean119 = new DownloadBean("title2", "titleRes2", string118, "", Boxing.e(0L), null, null, null, null, null, 0L, 0, 0, 0, 0L, 0L, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -32, -1, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
                    downloadBean119.setStatus(11);
                    if (list3 != null) {
                        size = list3.size();
                    } else {
                        size = list4.size();
                    }
                    downloadBean119.setCount(size);
                    arrayList.add(downloadBean119);
                    arrayList.addAll(list6);
                }
                lg.a.C0828a.g(lg.a.f68839a, "get getListByStatus success" + arrayList.size(), false, 2, null);
                this.this$0.s(arrayList);
                a2VarC = y0.c();
                anonymousClass5 = new AnonymousClass5(this.this$0, arrayList, null);
                this.L$0 = arrayList;
                this.L$1 = null;
                this.label = 7;
                if (kotlinx.coroutines.i.g(a2VarC, anonymousClass5, this) == objF) {
                    return objF;
                }
                list7 = arrayList;
                this.this$0.B().n(list7);
                return Unit.f67061a;
            case 7:
                list7 = (List) this.L$0;
                ResultKt.b(obj);
                this.this$0.B().n(list7);
                return Unit.f67061a;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
