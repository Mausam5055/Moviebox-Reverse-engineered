package com.transsnet.downloader.fragment;

import androidx.fragment.app.FragmentActivity;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.therouter.TheRouter;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.commercializationapi.ITaskCenterApi;
import com.transsion.memberapi.IPremiumApi;
import com.transsion.memberapi.MemberCheckResult;
import com.transsion.memberapi.PremiumConsumeRequestBean;
import com.transsion.memberapi.PremiumV2CheckAccessDto;
import com.transsion.memberapi.PremiumV2CheckAccessRequestBean;
import com.transsion.moviedetailapi.bean.Subject;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.tools.zip.UnixStat;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.fragment.DownloadReDetectorGroupMainFragment$initView$4$2", f = "DownloadReDetectorGroupMainFragment.kt", l = {TTAdConstant.AD_ID_IS_NULL_CODE}, m = "invokeSuspend")
@SourceDebugExtension
final class DownloadReDetectorGroupMainFragment$initView$4$2 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ DownloadReDetectorGroupMainFragment this$0;

    public static final class a implements ok.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ DownloadReDetectorGroupMainFragment f58925a;

        a(DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment) {
            this.f58925a = downloadReDetectorGroupMainFragment;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit c(DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment) {
            downloadReDetectorGroupMainFragment.T1();
            return Unit.f67061a;
        }

        @Override // ok.b
        public void a(boolean z10) {
            ok.b.a.a(this, z10);
        }

        @Override // ok.b
        public void onFail() {
        }

        @Override // ok.b
        public void onSuccess() {
            FragmentActivity activity = this.f58925a.getActivity();
            if (activity != null) {
                final DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment = this.f58925a;
                Subject subject = downloadReDetectorGroupMainFragment.subject;
                if (subject != null) {
                    com.transsnet.downloader.manager.f.f59478a.a().j(activity, subject, new Function0() { // from class: com.transsnet.downloader.fragment.y2
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return DownloadReDetectorGroupMainFragment$initView$4$2.a.c(downloadReDetectorGroupMainFragment);
                        }
                    });
                }
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadReDetectorGroupMainFragment$initView$4$2(DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment, Continuation<? super DownloadReDetectorGroupMainFragment$initView$4$2> continuation) {
        super(2, continuation);
        this.this$0 = downloadReDetectorGroupMainFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit g(final DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment, PremiumV2CheckAccessDto premiumV2CheckAccessDto) {
        ITaskCenterApi iTaskCenterApi;
        String genre;
        Subject subject;
        if (premiumV2CheckAccessDto != null ? Intrinsics.c(premiumV2CheckAccessDto.getHasAccess(), Boolean.TRUE) : false) {
            FragmentActivity activity = downloadReDetectorGroupMainFragment.getActivity();
            if (activity != null && (subject = downloadReDetectorGroupMainFragment.subject) != null) {
                com.transsnet.downloader.manager.f.f59478a.a().j(activity, subject, new Function0() { // from class: com.transsnet.downloader.fragment.x2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return DownloadReDetectorGroupMainFragment$initView$4$2.h(downloadReDetectorGroupMainFragment);
                    }
                });
            }
            PremiumConsumeRequestBean premiumConsumeRequestBean = new PremiumConsumeRequestBean("subject_download", "free_download_count", null, null);
            IPremiumApi iPremiumApi = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
            if (iPremiumApi != null) {
                iPremiumApi.s(premiumConsumeRequestBean);
            }
        } else {
            String action = premiumV2CheckAccessDto != null ? premiumV2CheckAccessDto.getAction() : null;
            if (Intrinsics.c(action, PremiumV2CheckAccessDto.ACTION_ACCESS_ACTION_VIP)) {
                com.transsion.baselib.helper.f.f43269a.f(downloadReDetectorGroupMainFragment.pageFrom, downloadReDetectorGroupMainFragment.interceptTypeSceneId, downloadReDetectorGroupMainFragment.traceId, downloadReDetectorGroupMainFragment.curSubjectId, 0);
                IPremiumApi iPremiumApi2 = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
                if (iPremiumApi2 != null) {
                    iPremiumApi2.j(downloadReDetectorGroupMainFragment.pageFrom, downloadReDetectorGroupMainFragment.traceId, downloadReDetectorGroupMainFragment.interceptTypeSceneId, downloadReDetectorGroupMainFragment.curSubjectId);
                }
            } else if (Intrinsics.c(action, PremiumV2CheckAccessDto.ACTION_ACCESS_ACTION_LOTTERY) && (iTaskCenterApi = (ITaskCenterApi) TheRouter.d(ITaskCenterApi.class, new Object[0])) != null) {
                Subject subject2 = downloadReDetectorGroupMainFragment.subject;
                if (subject2 == null || (genre = subject2.getGenre()) == null) {
                    genre = "";
                }
                iTaskCenterApi.d(genre, new MemberCheckResult(null, null, null, null, null, null, null, null, null, null, null, null, premiumV2CheckAccessDto.getPopup(), UnixStat.PERM_MASK, null), new a(downloadReDetectorGroupMainFragment));
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit h(DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment) {
        downloadReDetectorGroupMainFragment.T1();
        return Unit.f67061a;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadReDetectorGroupMainFragment$initView$4$2(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DownloadReDetectorGroupMainFragment$initView$4$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            ArrayList arrayList = new ArrayList();
            Iterator it = this.this$0.checkedList.iterator();
            while (it.hasNext()) {
                arrayList.add(Boxing.d(((DownloadBean) it.next()).getEp()));
            }
            IPremiumApi iPremiumApi = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
            if (iPremiumApi != null) {
                Subject subject = this.this$0.subject;
                PremiumV2CheckAccessRequestBean premiumV2CheckAccessRequestBean = new PremiumV2CheckAccessRequestBean(subject != null ? subject.getSubjectId() : null, "subject_download", "free_download_count", null, null, null, arrayList, this.this$0.currentResolution, 56, null);
                final DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment = this.this$0;
                Function1 function1 = new Function1() { // from class: com.transsnet.downloader.fragment.w2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        return DownloadReDetectorGroupMainFragment$initView$4$2.g(downloadReDetectorGroupMainFragment, (PremiumV2CheckAccessDto) obj2);
                    }
                };
                this.label = 1;
                if (iPremiumApi.q(premiumV2CheckAccessRequestBean, function1, this) == objF) {
                    return objF;
                }
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return Unit.f67061a;
    }
}
