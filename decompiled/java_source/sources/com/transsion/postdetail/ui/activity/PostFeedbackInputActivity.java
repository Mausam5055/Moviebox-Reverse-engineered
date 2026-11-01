package com.transsion.postdetail.ui.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.v;
import androidx.recyclerview.widget.ConcatAdapter;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.KeyboardUtils;
import com.bumptech.glide.Glide;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.postdetail.R$string;
import com.transsion.postdetail.bean.ReportConfig;
import com.transsion.postdetail.bean.ReportReason;
import com.transsion.publish.api.PhotoEntity;
import com.transsion.publish.ui.SelectImageActivity;
import com.transsion.upload.bean.UploadFileType;
import com.transsion.upload.bean.UploadTstTokenStorageType;
import com.transsion.usercenter.setting.labelsfeedback.model.FBContact;
import com.transsion.usercenter.setting.labelsfeedback.model.FbDataModel;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.loginapi.bean.Country;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.io.Serializable;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.SafeContinuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 >2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\u001aB\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\u0005J\u0018\u0010\n\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0082@¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0011\u0010\u0010J\u0019\u0010\u0014\u001a\u00020\u00062\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0017¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u001a\u0010\u0019J\u0017\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u001b\u0010\u0019J\u0017\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u001c\u0010\u0019J\u001f\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\u001dH\u0016¢\u0006\u0004\b\u001f\u0010 J)\u0010&\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020!2\u0006\u0010#\u001a\u00020!2\b\u0010%\u001a\u0004\u0018\u00010$H\u0014¢\u0006\u0004\b&\u0010'R\u001b\u0010,\u001a\u00020(8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010)\u001a\u0004\b*\u0010+R\u001b\u0010.\u001a\u00020\u00028BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010)\u001a\u0004\b-\u0010\rR\u0018\u00101\u001a\u0004\u0018\u00010/8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u00100R\u001b\u00105\u001a\u0002028BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b.\u0010)\u001a\u0004\b3\u00104R\u001b\u00108\u001a\u00020\u00168BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010)\u001a\u0004\b6\u00107R\u001b\u0010=\u001a\u0002098BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b:\u0010)\u001a\u0004\b;\u0010<¨\u0006?"}, d2 = {"Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lso/e;", "Lcom/transsion/usercenter/setting/labelsfeedback/i;", "<init>", "()V", "", "D0", "", "imagePath", "H0", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "z0", "()Lso/e;", "", "isStatusDark", "()Z", "isTranslucent", "Landroid/os/Bundle;", "savedInstanceState", "initView", "(Landroid/os/Bundle;)V", "Lcom/transsion/usercenter/setting/labelsfeedback/h;", "adaptor", "e", "(Lcom/transsion/usercenter/setting/labelsfeedback/h;)V", "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, CampaignEx.JSON_KEY_AD_K, "Landroidx/appcompat/widget/AppCompatImageView;", "imageVIew", "c", "(Lcom/transsion/usercenter/setting/labelsfeedback/h;Landroidx/appcompat/widget/AppCompatImageView;)V", "", "requestCode", "resultCode", "Landroid/content/Intent;", "data", "onActivityResult", "(IILandroid/content/Intent;)V", "Lxo/b;", "Lkotlin/Lazy;", "y0", "()Lxo/b;", NotificationCompat.CATEGORY_SERVICE, "u0", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/postdetail/bean/ReportConfig;", "Lcom/transsion/postdetail/bean/ReportConfig;", "reportConfig", "Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;", "v0", "()Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;", "fbModel", "w0", "()Lcom/transsion/usercenter/setting/labelsfeedback/h;", "footerAdapter", "Lcom/transsion/postdetail/ui/adapter/h;", "f", "x0", "()Lcom/transsion/postdetail/ui/adapter/h;", "reasonAdapter", "g", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class PostFeedbackInputActivity extends BaseActivity<so.e> implements com.transsion.usercenter.setting.labelsfeedback.i {

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private ReportConfig reportConfig;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final Lazy service = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.ui.activity.h
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return PostFeedbackInputActivity.G0();
        }
    });

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final Lazy d = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.ui.activity.i
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return PostFeedbackInputActivity.r0(this.f49383a);
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final Lazy fbModel = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.ui.activity.j
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return PostFeedbackInputActivity.s0();
        }
    });

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final Lazy footerAdapter = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.ui.activity.k
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return PostFeedbackInputActivity.t0(this.f49384a);
        }
    });

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private final Lazy reasonAdapter = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.ui.activity.l
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return PostFeedbackInputActivity.E0(this.f49385a);
        }
    });

    public static final class b implements cw.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f49374a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Continuation f49375b;

        b(Continuation continuation) {
            this.f49375b = continuation;
        }

        @Override // cw.a
        public void a(String localFilePath, long j11, long j12) {
            Intrinsics.h(localFilePath, "localFilePath");
        }

        @Override // cw.a
        public void b(String localFilePath, String url, String bucket) {
            Intrinsics.h(localFilePath, "localFilePath");
            Intrinsics.h(url, "url");
            Intrinsics.h(bucket, "bucket");
            if (this.f49374a) {
                return;
            }
            this.f49375b.resumeWith(Result.m454constructorimpl(url));
            this.f49374a = true;
        }

        @Override // cw.a
        public void c(String str, String str2, String str3, UploadTstTokenStorageType uploadTstTokenStorageType) {
            if (this.f49374a) {
                return;
            }
            Continuation continuation = this.f49375b;
            Result.Companion companion = Result.INSTANCE;
            continuation.resumeWith(Result.m454constructorimpl(ResultKt.a(new Exception("upload image failed: " + str2))));
            this.f49374a = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit A0(PostFeedbackInputActivity postFeedbackInputActivity, fp.a it) {
        List listH;
        PhotoEntity photoEntity;
        String localPath;
        Intrinsics.h(it, "it");
        Integer numE = it.e();
        if (numE != null && numE.intValue() == 0 && (listH = it.h()) != null && (photoEntity = (PhotoEntity) CollectionsKt.k0(listH)) != null && (localPath = photoEntity.getLocalPath()) != null) {
            postFeedbackInputActivity.w0().k(localPath);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B0(PostFeedbackInputActivity postFeedbackInputActivity, View view) {
        KeyboardUtils.d(postFeedbackInputActivity);
        postFeedbackInputActivity.D0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean C0(PostFeedbackInputActivity postFeedbackInputActivity, View view, MotionEvent motionEvent) {
        KeyboardUtils.d(postFeedbackInputActivity);
        return false;
    }

    private final void D0() {
        List<ReportReason> reasons;
        Integer numH = x0().h();
        if (numH != null) {
            int iIntValue = numH.intValue();
            ReportConfig reportConfig = this.reportConfig;
            ReportReason reportReason = (reportConfig == null || (reasons = reportConfig.getReasons()) == null) ? null : (ReportReason) CollectionsKt.l0(reasons, iIntValue);
            if (reportReason != null) {
                u0().f75493b.setEnabled(false);
                kotlinx.coroutines.k.d(v.a(this), null, null, new PostFeedbackInputActivity$onSubmit$1(this, reportReason, null), 3, null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.transsion.postdetail.ui.adapter.h E0(final PostFeedbackInputActivity postFeedbackInputActivity) {
        ReportConfig reportConfig = postFeedbackInputActivity.reportConfig;
        List<ReportReason> reasons = reportConfig != null ? reportConfig.getReasons() : null;
        if (reasons == null) {
            reasons = CollectionsKt.l();
        }
        com.transsion.postdetail.ui.adapter.h hVar = new com.transsion.postdetail.ui.adapter.h(reasons);
        hVar.m(new Function1() { // from class: com.transsion.postdetail.ui.activity.m
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PostFeedbackInputActivity.F0(this.f49386a, (ReportReason) obj);
            }
        });
        return hVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit F0(PostFeedbackInputActivity postFeedbackInputActivity, ReportReason reportReason) {
        postFeedbackInputActivity.u0().f75493b.setEnabled(reportReason != null);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final xo.b G0() {
        return (xo.b) zg.c.f79414e.a().h(xo.b.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object H0(String str, Continuation continuation) throws Throwable {
        SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt.c(continuation));
        cw.c.f60931a.f(str, UploadFileType.OBJECT_NAME_IMAGE, true, new b(safeContinuation));
        Object objA = safeContinuation.a();
        if (objA == IntrinsicsKt.f()) {
            DebugProbesKt.c(continuation);
        }
        return objA;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final so.e r0(PostFeedbackInputActivity postFeedbackInputActivity) {
        return so.e.c(postFeedbackInputActivity.getLayoutInflater());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final FbDataModel s0() {
        return new FbDataModel(null, "report", null, new FBContact(null, null, 2, null), null, null, null, null, null, null, null, 2032, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.transsion.usercenter.setting.labelsfeedback.h t0(PostFeedbackInputActivity postFeedbackInputActivity) {
        return new com.transsion.usercenter.setting.labelsfeedback.h(postFeedbackInputActivity.v0(), postFeedbackInputActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final so.e u0() {
        return (so.e) this.d.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final FbDataModel v0() {
        return (FbDataModel) this.fbModel.getValue();
    }

    private final com.transsion.usercenter.setting.labelsfeedback.h w0() {
        return (com.transsion.usercenter.setting.labelsfeedback.h) this.footerAdapter.getValue();
    }

    private final com.transsion.postdetail.ui.adapter.h x0() {
        return (com.transsion.postdetail.ui.adapter.h) this.reasonAdapter.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final xo.b y0() {
        return (xo.b) this.service.getValue();
    }

    @Override // com.transsion.usercenter.setting.labelsfeedback.i
    public void a(com.transsion.usercenter.setting.labelsfeedback.h adaptor) {
        Intrinsics.h(adaptor, "adaptor");
        SelectImageActivity.INSTANCE.a(this, 0, 1, null);
    }

    @Override // com.transsion.usercenter.setting.labelsfeedback.i
    public void b(com.transsion.usercenter.setting.labelsfeedback.h adaptor) {
        Intrinsics.h(adaptor, "adaptor");
    }

    @Override // com.transsion.usercenter.setting.labelsfeedback.i
    public void c(com.transsion.usercenter.setting.labelsfeedback.h adaptor, AppCompatImageView imageVIew) {
        Intrinsics.h(adaptor, "adaptor");
        Intrinsics.h(imageVIew, "imageVIew");
        String imagePath = v0().getImagePath();
        if (imagePath != null) {
            Glide.with((FragmentActivity) this).load2(new File(imagePath)).into(imageVIew);
        }
    }

    @Override // com.transsion.usercenter.setting.labelsfeedback.i
    public void e(com.transsion.usercenter.setting.labelsfeedback.h adaptor) {
        Intrinsics.h(adaptor, "adaptor");
        KeyboardUtils.d(this);
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public void initView(Bundle savedInstanceState) {
        String stringExtra = getIntent().getStringExtra("extra_report_config_json");
        this.reportConfig = stringExtra != null ? (ReportConfig) new Gson().fromJson(stringExtra, new TypeToken<ReportConfig>() { // from class: com.transsion.postdetail.ui.activity.PostFeedbackInputActivity$initView$1$type$1
        }.getType()) : null;
        u0().f75495d.setTitleText(R$string.post_feedback_report);
        RecyclerView recyclerView = u0().f75494c;
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext(), 1, false));
        ReportConfig reportConfig = this.reportConfig;
        recyclerView.setAdapter(new ConcatAdapter(new com.transsion.postdetail.ui.adapter.d(reportConfig != null ? reportConfig.getTitle() : null), x0(), w0()));
        u0().f75494c.setOnTouchListener(new View.OnTouchListener() { // from class: com.transsion.postdetail.ui.activity.e
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return PostFeedbackInputActivity.C0(this.f49379a, view, motionEvent);
            }
        });
        Function1 function1 = new Function1() { // from class: com.transsion.postdetail.ui.activity.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PostFeedbackInputActivity.A0(this.f49380a, (fp.a) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = fp.a.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(this, name, Lifecycle.State.CREATED, y0.c().q(), false, function1);
        u0().f75493b.setEnabled(false);
        u0().f75493b.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ui.activity.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PostFeedbackInputActivity.B0(this.f49382a, view);
            }
        });
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isStatusDark() {
        return true;
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isTranslucent() {
        return true;
    }

    @Override // com.transsion.usercenter.setting.labelsfeedback.i
    public void k(com.transsion.usercenter.setting.labelsfeedback.h adaptor) {
        Intrinsics.h(adaptor, "adaptor");
        Navigator.w(TheRouter.c("/loginapi/select_country"), this, 100, null, 4, null);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        Serializable serializableExtra;
        super.onActivityResult(requestCode, resultCode, data);
        if (resultCode == -1 && requestCode == 100 && data != null && (serializableExtra = data.getSerializableExtra("countryCode")) != null && (serializableExtra instanceof Country)) {
            w0().j((Country) serializableExtra);
        }
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    /* JADX INFO: renamed from: z0, reason: merged with bridge method [inline-methods] */
    public so.e getViewBinding() {
        return u0();
    }
}
