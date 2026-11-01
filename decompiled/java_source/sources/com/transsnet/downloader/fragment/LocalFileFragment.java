package com.transsnet.downloader.fragment;

import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tn.lib.view.TitleLayout;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.R$string;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.KotlinNothingValueException;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000;\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\b\u0007*\u0001\u001a\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001fB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0006\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\u0003J\u000f\u0010\b\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\b\u0010\u0003J\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u000f\u0010\u0003J\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0013\u0010\u000bR\u001b\u0010\u0019\u001a\u00020\u00148BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006 "}, d2 = {"Lcom/transsnet/downloader/fragment/LocalFileFragment;", "Lcom/transsnet/downloader/fragment/LocalFileBaseFragment;", "<init>", "()V", "", "initViewData", "initViewModel", "onResume", "onDestroy", "", "getEmptyDescText", "()Ljava/lang/String;", "", "T0", "()Z", "initListener", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "getPageName", "Lcom/transsnet/downloader/manager/g;", CampaignEx.JSON_KEY_AD_K, "Lkotlin/Lazy;", "p1", "()Lcom/transsnet/downloader/manager/g;", "downloadManager", "com/transsnet/downloader/fragment/LocalFileFragment$b", "l", "Lcom/transsnet/downloader/fragment/LocalFileFragment$b;", "downloadListener", "m", "a", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class LocalFileFragment extends LocalFileBaseFragment {

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private final Lazy downloadManager = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.fragment.w6
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return LocalFileFragment.o1();
        }
    });

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private final b downloadListener = new b();

    public static final class b extends lj.a {
        b() {
        }

        @Override // lj.a, lj.m0
        public void e(DownloadBean bean, String str) {
            Intrinsics.h(bean, "bean");
            super.e(bean, str);
            LocalFileFragment.this.loadDefaultData();
        }
    }

    /* JADX INFO: renamed from: com.transsnet.downloader.fragment.LocalFileFragment$initViewModel$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.downloader.fragment.LocalFileFragment$initViewModel$1", f = "LocalFileFragment.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return LocalFileFragment.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                kotlinx.coroutines.flow.y0 y0VarP = LocalFileFragment.this.G0().P();
                final LocalFileFragment localFileFragment = LocalFileFragment.this;
                kotlinx.coroutines.flow.c cVar = new kotlinx.coroutines.flow.c() { // from class: com.transsnet.downloader.fragment.LocalFileFragment.initViewModel.1.1

                    /* JADX INFO: renamed from: com.transsnet.downloader.fragment.LocalFileFragment$initViewModel$1$1$1, reason: invalid class name and collision with other inner class name */
                    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
                    @DebugMetadata(c = "com.transsnet.downloader.fragment.LocalFileFragment$initViewModel$1$1$1", f = "LocalFileFragment.kt", l = {}, m = "invokeSuspend")
                    static final class C06911 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
                        final /* synthetic */ int $it;
                        int label;
                        final /* synthetic */ LocalFileFragment this$0;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        C06911(int i11, LocalFileFragment localFileFragment, Continuation<? super C06911> continuation) {
                            super(2, continuation);
                            this.$it = i11;
                            this.this$0 = localFileFragment;
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                            return new C06911(this.$it, this.this$0, continuation);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
                            return ((C06911) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object obj) throws Throwable {
                            IntrinsicsKt.f();
                            if (this.label != 0) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            ResultKt.b(obj);
                            int i11 = this.$it;
                            if (i11 >= 0) {
                                com.transsnet.downloader.adapter.a aVarF0 = this.this$0.getMAllHistoricalPlayRecordAdapter();
                                if (aVarF0 != null) {
                                    aVarF0.notifyItemChanged(this.$it);
                                }
                                com.transsnet.downloader.viewmodel.a0.f60085a.t("刷新UI index = " + this.$it);
                            } else {
                                com.transsnet.downloader.viewmodel.a0.f60085a.t(" 异常  index = " + i11);
                            }
                            return Unit.f67061a;
                        }
                    }

                    public final Object a(int i12, Continuation continuation) {
                        Object objG = kotlinx.coroutines.i.g(kotlinx.coroutines.y0.c(), new C06911(i12, localFileFragment, null), continuation);
                        return objG == IntrinsicsKt.f() ? objG : Unit.f67061a;
                    }

                    @Override // kotlinx.coroutines.flow.c
                    public /* bridge */ /* synthetic */ Object emit(Object obj2, Continuation continuation) {
                        return a(((Number) obj2).intValue(), continuation);
                    }
                };
                this.label = 1;
                if (y0VarP.a(cVar, this) == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            throw new KotlinNothingValueException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.transsnet.downloader.manager.g o1() {
        return com.transsnet.downloader.manager.p.f59500a.a(Utils.a());
    }

    private final com.transsnet.downloader.manager.g p1() {
        return (com.transsnet.downloader.manager.g) this.downloadManager.getValue();
    }

    @Override // com.transsnet.downloader.fragment.AllHistoricalPlayRecordFragment
    public boolean T0() {
        return true;
    }

    @Override // com.transsnet.downloader.fragment.AllHistoricalPlayRecordFragment, com.transsion.baseui.fragment.PageStatusFragment
    public String getEmptyDescText() {
        String string = getString(R$string.download_no_local_file_tips_2);
        Intrinsics.g(string, "getString(...)");
        return string;
    }

    @Override // com.transsnet.downloader.fragment.AllHistoricalPlayRecordFragment
    public String getPageName() {
        return "file_manager_tab_all";
    }

    @Override // com.transsnet.downloader.fragment.AllHistoricalPlayRecordFragment, com.transsion.baseui.fragment.PageStatusFragment
    public void initListener() {
        super.initListener();
        p1().e(this.downloadListener);
    }

    @Override // com.transsnet.downloader.fragment.LocalFileBaseFragment, com.transsnet.downloader.fragment.AllHistoricalPlayRecordFragment, com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        r6.f fVarH0;
        TitleLayout titleLayout;
        super.initViewData();
        py.s mViewBinding = getMViewBinding();
        if (mViewBinding != null && (titleLayout = mViewBinding.f72909d) != null) {
            titleLayout.setVisibility(8);
        }
        com.transsnet.downloader.adapter.a aVarF0 = getMAllHistoricalPlayRecordAdapter();
        if (aVarF0 == null || (fVarH0 = aVarF0.h0()) == null) {
            return;
        }
        fVarH0.z(false);
    }

    @Override // com.transsnet.downloader.fragment.AllHistoricalPlayRecordFragment, com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        super.initViewModel();
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new AnonymousClass1(null), 3, null);
    }

    @Override // com.transsnet.downloader.fragment.AllHistoricalPlayRecordFragment, com.transsion.baseui.fragment.PageStatusFragment
    public hj.b newLogViewConfig() {
        hj.b bVar = new hj.b(getPageName(), false, 2, null);
        bVar.g().put(TmcConstants.MENU_KEY_PERMISSION, com.transsnet.downloader.viewmodel.a0.f60085a.a() ? "1" : "0");
        bVar.g().put(WebConstants.PAGE_FROM, "");
        return bVar;
    }

    @Override // com.transsnet.downloader.fragment.AllHistoricalPlayRecordFragment, com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        p1().x(this.downloadListener);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
    }
}
