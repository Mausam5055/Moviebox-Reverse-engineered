package com.transsnet.downloader.lottery;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.p009lifecycle.LifecycleCoroutineScope;
import androidx.p009lifecycle.v;
import com.cloud.tmc.integration.event.EventConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.bean.lottery.LotteryUserActivityInfoPriceItemsBean;
import com.transsion.bean.lottery.LotteryUserInfoEntity;
import com.transsion.bean.lottery.LotteryUserInfoInfoBean;
import com.transsion.commercializationapi.ITaskCenterApi;
import com.transsnet.downloader.R$string;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;
import ok.c;
import py.i1;
import ti.p;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 !2\u00020\u0001:\u0001\u0015B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\r\u0010\u0013\u001a\u00020\r¢\u0006\u0004\b\u0013\u0010\u000fR\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0016\u0010\u001a\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001c\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u0019R\u0014\u0010 \u001a\u00020\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001f¨\u0006\""}, d2 = {"Lcom/transsnet/downloader/lottery/LotteryTipView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "getClassTag", "()Ljava/lang/String;", "", "getLotteryUserInfoEntity", "()V", "", "e", "()Z", "onFragmentResume", "Lcom/transsion/bean/lottery/LotteryUserInfoEntity;", "a", "Lcom/transsion/bean/lottery/LotteryUserInfoEntity;", "lotteryUserInfoEntity", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Z", "isRequesting", "c", "isCountryEnable", "Lpy/i1;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lpy/i1;", "binding", "Companion", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class LotteryTipView extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private LotteryUserInfoEntity lotteryUserInfoEntity;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private boolean isRequesting;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private boolean isCountryEnable;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final i1 binding;

    /* JADX INFO: renamed from: com.transsnet.downloader.lottery.LotteryTipView$getLotteryUserInfoEntity$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.downloader.lottery.LotteryTipView$getLotteryUserInfoEntity$1", f = "LotteryTipView.kt", l = {111}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        Object L$0;
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return LotteryTipView.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        /* JADX WARN: Code duplicated, block: B:18:0x0052  */
        /* JADX WARN: Code duplicated, block: B:23:0x0065  */
        /* JADX WARN: Code duplicated, block: B:25:0x0068  */
        /* JADX WARN: Code duplicated, block: B:26:0x008c  */
        /* JADX WARN: Code duplicated, block: B:32:0x00ac  */
        /* JADX WARN: Code duplicated, block: B:35:0x00b5  */
        /* JADX WARN: Code duplicated, block: B:36:0x00be  */
        /* JADX WARN: Instruction removed from duplicated block: B:25:0x0068, please report this as an issue */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            LotteryTipView lotteryTipView;
            LotteryUserInfoEntity lotteryUserInfoEntity;
            LotteryTipView lotteryTipView2;
            Context context;
            LotteryTipView lotteryTipView3;
            LotteryUserInfoEntity lotteryUserInfoEntity2;
            int size;
            LotteryUserInfoEntity lotteryUserInfoEntity3;
            String activityId;
            LotteryUserInfoEntity lotteryUserInfoEntity4;
            LotteryUserInfoInfoBean info;
            LotteryUserInfoInfoBean info2;
            List<LotteryUserActivityInfoPriceItemsBean> priceItems;
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            String activityId2 = null;
            if (i11 == 0) {
                ResultKt.b(obj);
                lotteryTipView = LotteryTipView.this;
                ITaskCenterApi iTaskCenterApi = (ITaskCenterApi) TheRouter.d(ITaskCenterApi.class, new Object[0]);
                if (iTaskCenterApi != null) {
                    this.L$0 = lotteryTipView;
                    this.label = 1;
                    Object objE = iTaskCenterApi.e(this);
                    if (objE == objF) {
                        return objF;
                    }
                    lotteryTipView2 = lotteryTipView;
                    obj = objE;
                } else {
                    lotteryUserInfoEntity = null;
                }
                lotteryTipView.lotteryUserInfoEntity = lotteryUserInfoEntity;
                LotteryTipView.this.isRequesting = false;
                context = LotteryTipView.this.getContext();
                if (context != null) {
                    lotteryTipView3 = LotteryTipView.this;
                    lotteryUserInfoEntity2 = lotteryTipView3.lotteryUserInfoEntity;
                    if (lotteryUserInfoEntity2 != null || (priceItems = lotteryUserInfoEntity2.getPriceItems()) == null) {
                        size = 0;
                    } else {
                        size = priceItems.size();
                    }
                    if (size > 0) {
                        String string = androidx.core.content.b.getString(context, R$string.lottery_unclaimed_rewards);
                        Intrinsics.g(string, "getString(...)");
                        lotteryTipView3.binding.f72765d.setText(string + size);
                    } else {
                        lotteryTipView3.binding.f72765d.setText(androidx.core.content.b.getString(context, R$string.lottery_win_big_prizes));
                    }
                    lotteryUserInfoEntity3 = lotteryTipView3.lotteryUserInfoEntity;
                    if (lotteryUserInfoEntity3 != null || (info2 = lotteryUserInfoEntity3.getInfo()) == null) {
                        activityId = null;
                    } else {
                        activityId = info2.getActivityId();
                    }
                    if (Intrinsics.c(activityId, "0")) {
                        lotteryTipView3.isCountryEnable = false;
                        lotteryTipView3.setVisibility(8);
                    } else {
                        lotteryTipView3.setVisibility(0);
                    }
                    c cVar = c.f71034a;
                    String classTag = lotteryTipView3.getClassTag();
                    lotteryUserInfoEntity4 = lotteryTipView3.lotteryUserInfoEntity;
                    if (lotteryUserInfoEntity4 != null && (info = lotteryUserInfoEntity4.getInfo()) != null) {
                        activityId2 = info.getActivityId();
                    }
                    cVar.a(classTag + " --> getLotteryUserInfoEntity() --> size = " + size + " --> activityId = " + activityId2);
                }
                return Unit.f67061a;
            }
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            lotteryTipView2 = (LotteryTipView) this.L$0;
            ResultKt.b(obj);
            LotteryTipView lotteryTipView4 = lotteryTipView2;
            lotteryUserInfoEntity = (LotteryUserInfoEntity) obj;
            lotteryTipView = lotteryTipView4;
            lotteryTipView.lotteryUserInfoEntity = lotteryUserInfoEntity;
            LotteryTipView.this.isRequesting = false;
            context = LotteryTipView.this.getContext();
            if (context != null) {
                lotteryTipView3 = LotteryTipView.this;
                lotteryUserInfoEntity2 = lotteryTipView3.lotteryUserInfoEntity;
                if (lotteryUserInfoEntity2 != null) {
                    size = 0;
                } else {
                    size = 0;
                }
                if (size > 0) {
                    String string2 = androidx.core.content.b.getString(context, R$string.lottery_unclaimed_rewards);
                    Intrinsics.g(string2, "getString(...)");
                    lotteryTipView3.binding.f72765d.setText(string2 + size);
                } else {
                    lotteryTipView3.binding.f72765d.setText(androidx.core.content.b.getString(context, R$string.lottery_win_big_prizes));
                }
                lotteryUserInfoEntity3 = lotteryTipView3.lotteryUserInfoEntity;
                if (lotteryUserInfoEntity3 != null) {
                    activityId = null;
                } else {
                    activityId = null;
                }
                if (Intrinsics.c(activityId, "0")) {
                    lotteryTipView3.isCountryEnable = false;
                    lotteryTipView3.setVisibility(8);
                } else {
                    lotteryTipView3.setVisibility(0);
                }
                c cVar2 = c.f71034a;
                String classTag2 = lotteryTipView3.getClassTag();
                lotteryUserInfoEntity4 = lotteryTipView3.lotteryUserInfoEntity;
                if (lotteryUserInfoEntity4 != null) {
                    activityId2 = info.getActivityId();
                }
                cVar2.a(classTag2 + " --> getLotteryUserInfoEntity() --> size = " + size + " --> activityId = " + activityId2);
            }
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public LotteryTipView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public LotteryTipView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public LotteryTipView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        this.isCountryEnable = true;
        i1 i1VarC = i1.c(LayoutInflater.from(context), this, true);
        Intrinsics.g(i1VarC, "inflate(...)");
        this.binding = i1VarC;
        i1VarC.f72763b.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.lottery.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LotteryTipView.c(this.f59417a, view);
            }
        });
        i1VarC.f72764c.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.lottery.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LotteryTipView.d(this.f59418a, view);
            }
        });
    }

    public /* synthetic */ LotteryTipView(Context context, AttributeSet attributeSet, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(LotteryTipView lotteryTipView, View view) {
        List<LotteryUserActivityInfoPriceItemsBean> priceItems;
        lotteryTipView.setVisibility(8);
        LotteryUserInfoEntity lotteryUserInfoEntity = lotteryTipView.lotteryUserInfoEntity;
        if (((lotteryUserInfoEntity == null || (priceItems = lotteryUserInfoEntity.getPriceItems()) == null) ? 0 : priceItems.size()) > 0) {
            com.transsion.baselib.report.launch.b.f43370a.b().putString("lottery_tip_close_date", p.f76266a.c());
            c.f71034a.a(lotteryTipView.getClassTag() + " --> ivClose 点击，有未领取奖品，当天不再展示");
            return;
        }
        Calendar calendar = Calendar.getInstance();
        calendar.add(6, 7);
        com.transsion.baselib.report.launch.b.f43370a.b().putString("lottery_tip_close_7day_expire_date", new SimpleDateFormat("yyyy-MM-dd", Locale.US).format(calendar.getTime()));
        c.f71034a.a(lotteryTipView.getClassTag() + " --> ivClose 点击，无未领取奖品，7天内不再展示");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(LotteryTipView lotteryTipView, View view) {
        Navigator.x(TheRouter.c("/rewards/center").K(EventConstants.KEY_SOURCE, "LotteryTipView"), null, null, 3, null);
        c.f71034a.a(lotteryTipView.getClassTag() + " --> 点击之后置空数据，因为不确定用户是否会领取奖品，重新进入需要重新加载数据");
        lotteryTipView.lotteryUserInfoEntity = null;
    }

    private final boolean e() {
        List<LotteryUserActivityInfoPriceItemsBean> priceItems;
        if (!this.isCountryEnable) {
            c.f71034a.a(getClassTag() + " --> isRequest() --> 当前国家不支持");
            return false;
        }
        LotteryUserInfoEntity lotteryUserInfoEntity = this.lotteryUserInfoEntity;
        if (((lotteryUserInfoEntity == null || (priceItems = lotteryUserInfoEntity.getPriceItems()) == null) ? 0 : priceItems.size()) > 0) {
            c.f71034a.a(getClassTag() + " --> isRequest() --> 已经有数据了");
            return false;
        }
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f43370a;
        String string = bVar.b().getString("lottery_tip_close_7day_expire_date", "");
        if (!(string == null || string.length() == 0) && new SimpleDateFormat("yyyy-MM-dd", Locale.US).format(Calendar.getInstance().getTime()).compareTo(string) < 0) {
            c.f71034a.a(getClassTag() + " --> isRequest() --> 7天自然日内不再展示");
            return false;
        }
        if (TextUtils.equals(p.f76266a.c(), bVar.b().getString("lottery_tip_close_date", ""))) {
            c.f71034a.a(getClassTag() + " --> onFragmentResume() --> 1天最多展示一次");
            return false;
        }
        if (!this.isRequesting) {
            this.isRequesting = true;
            return true;
        }
        c.f71034a.a(getClassTag() + " --> isRequest() --> 正在请求中");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getClassTag() {
        String simpleName = LotteryTipView.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    private final void getLotteryUserInfoEntity() {
        LifecycleCoroutineScope lifecycleCoroutineScopeA;
        Context context = getContext();
        AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
        if (appCompatActivity == null || (lifecycleCoroutineScopeA = v.a(appCompatActivity)) == null) {
            return;
        }
        k.d(lifecycleCoroutineScopeA, null, null, new AnonymousClass1(null), 3, null);
    }

    public final void onFragmentResume() {
        c.f71034a.a(getClassTag() + " --> onFragmentResume() --> 请求未领取奖品数据");
        if (e()) {
            getLotteryUserInfoEntity();
        }
    }
}
