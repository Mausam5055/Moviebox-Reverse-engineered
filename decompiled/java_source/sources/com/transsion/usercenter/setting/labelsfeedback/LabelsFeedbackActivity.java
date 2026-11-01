package com.transsion.usercenter.setting.labelsfeedback;

import android.app.Application;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.MotionEvent;
import android.view.View;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.v;
import androidx.recyclerview.widget.ConcatAdapter;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.KeyboardUtils;
import com.bumptech.glide.Glide;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.publish.api.PhotoEntity;
import com.transsion.publish.ui.SelectImageActivity;
import com.transsion.usercenter.R$color;
import com.transsion.usercenter.R$string;
import com.transsion.usercenter.setting.labelsfeedback.model.FBContact;
import com.transsion.usercenter.setting.labelsfeedback.model.FbDataModel;
import com.transsion.usercenter.setting.labelsfeedback.model.FbOption;
import com.transsion.usercenter.setting.labelsfeedback.model.FbOptionList;
import com.transsion.usercenter.setting.labelsfeedback.model.FbTvData;
import com.transsion.usercenter.setting.labelsfeedback.sender.FBSender;
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
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018\u0000 (2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u00042\u00020\u0005:\u0001*B\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u0019\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000e\u0010\u0007J\u000f\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0016\u0010\u0007J\u000f\u0010\u0017\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0017\u0010\u0011J\u000f\u0010\u0018\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0018\u0010\u0011J\u000f\u0010\u0019\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u001b\u0010\u0011J\u000f\u0010\u001d\u001a\u00020\u001cH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0019\u0010\u001f\u001a\u00020\r2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0015¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010\"\u001a\u00020\r2\u0006\u0010!\u001a\u00020\bH\u0014¢\u0006\u0004\b\"\u0010 J\u0017\u0010%\u001a\u00020\r2\u0006\u0010$\u001a\u00020#H\u0016¢\u0006\u0004\b%\u0010&J\u0017\u0010(\u001a\u00020\r2\u0006\u0010$\u001a\u00020'H\u0016¢\u0006\u0004\b(\u0010)J\u0017\u0010*\u001a\u00020\r2\u0006\u0010$\u001a\u00020'H\u0016¢\u0006\u0004\b*\u0010)J\u0017\u0010+\u001a\u00020\r2\u0006\u0010$\u001a\u00020'H\u0016¢\u0006\u0004\b+\u0010)J\u0017\u0010,\u001a\u00020\r2\u0006\u0010$\u001a\u00020'H\u0016¢\u0006\u0004\b,\u0010)J\u001f\u0010/\u001a\u00020\r2\u0006\u0010$\u001a\u00020'2\u0006\u0010.\u001a\u00020-H\u0016¢\u0006\u0004\b/\u00100J)\u00105\u001a\u00020\r2\u0006\u00101\u001a\u00020\u001c2\u0006\u00102\u001a\u00020\u001c2\b\u00104\u001a\u0004\u0018\u000103H\u0014¢\u0006\u0004\b5\u00106R\u001b\u00109\u001a\u00020\u00028BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b*\u00107\u001a\u0004\b8\u0010\u001aR\u0016\u0010;\u001a\u00020\n8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b+\u0010:R\u001b\u0010>\u001a\u00020'8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b/\u00107\u001a\u0004\b<\u0010=R\u001b\u0010A\u001a\u00020#8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b9\u00107\u001a\u0004\b?\u0010@¨\u0006B"}, d2 = {"Lcom/transsion/usercenter/setting/labelsfeedback/LabelsFeedbackActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lfw/e;", "Lcom/transsion/usercenter/setting/labelsfeedback/d;", "Lcom/transsion/usercenter/setting/labelsfeedback/i;", "Lzw/a;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;", "n0", "(Landroid/os/Bundle;)Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;", "", "u0", "", "A0", "()Z", "Lfp/a;", "operationMenu", "m0", "(Lfp/a;)V", "z0", "isStatusDark", "isTranslucent", "t0", "()Lfw/e;", "isChangeStatusBar", "", "statusColor", "()I", "onCreate", "(Landroid/os/Bundle;)V", "outState", "onSaveInstanceState", "Lcom/transsion/usercenter/setting/labelsfeedback/c;", "adaptor", "m", "(Lcom/transsion/usercenter/setting/labelsfeedback/c;)V", "Lcom/transsion/usercenter/setting/labelsfeedback/h;", "e", "(Lcom/transsion/usercenter/setting/labelsfeedback/h;)V", "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, CampaignEx.JSON_KEY_AD_K, "Landroidx/appcompat/widget/AppCompatImageView;", "imageVIew", "c", "(Lcom/transsion/usercenter/setting/labelsfeedback/h;Landroidx/appcompat/widget/AppCompatImageView;)V", "requestCode", "resultCode", "Landroid/content/Intent;", "data", "onActivityResult", "(IILandroid/content/Intent;)V", "Lkotlin/Lazy;", "q0", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;", "model", "r0", "()Lcom/transsion/usercenter/setting/labelsfeedback/h;", "footerAdaptor", "s0", "()Lcom/transsion/usercenter/setting/labelsfeedback/c;", "listAdaptor", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class LabelsFeedbackActivity extends BaseActivity<fw.e> implements d, i, zw.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private FbDataModel model;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final Lazy d = LazyKt.b(new Function0() { // from class: com.transsion.usercenter.setting.labelsfeedback.n
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return LabelsFeedbackActivity.o0(this.f57456a);
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final Lazy footerAdaptor = LazyKt.b(new Function0() { // from class: com.transsion.usercenter.setting.labelsfeedback.o
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return LabelsFeedbackActivity.p0(this.f57457a);
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final Lazy listAdaptor = LazyKt.b(new Function0() { // from class: com.transsion.usercenter.setting.labelsfeedback.p
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return LabelsFeedbackActivity.v0(this.f57458a);
        }
    });

    /* JADX INFO: renamed from: com.transsion.usercenter.setting.labelsfeedback.LabelsFeedbackActivity$onCreate$5, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.usercenter.setting.labelsfeedback.LabelsFeedbackActivity$onCreate$5", f = "LabelsFeedbackActivity.kt", l = {111}, m = "invokeSuspend")
    static final class AnonymousClass5 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass5(Continuation<? super AnonymousClass5> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return LabelsFeedbackActivity.this.new AnonymousClass5(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass5) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            try {
                if (i11 == 0) {
                    ResultKt.b(obj);
                    yw.a aVar = (yw.a) zg.c.f79414e.a().h(yw.a.class);
                    String strA = vg.a.f77324a.a();
                    this.label = 1;
                    obj = aVar.b(strA, this);
                    if (obj == objF) {
                        return objF;
                    }
                } else {
                    if (i11 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                FbOptionList fbOptionList = (FbOptionList) ((BaseDto) obj).getData();
                if (fbOptionList != null) {
                    LabelsFeedbackActivity labelsFeedbackActivity = LabelsFeedbackActivity.this;
                    FbDataModel fbDataModel = labelsFeedbackActivity.model;
                    if (fbDataModel == null) {
                        Intrinsics.z("model");
                        fbDataModel = null;
                    }
                    fbDataModel.setOptions(fbOptionList.getLabelList());
                    labelsFeedbackActivity.s0().notifyDataSetChanged();
                    FbOption.INSTANCE.d(fbOptionList);
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
            return Unit.f67061a;
        }
    }

    private final boolean A0() {
        return false;
    }

    private final void m0(fp.a operationMenu) {
        List listH = operationMenu.h();
        if (listH == null || listH.isEmpty()) {
            return;
        }
        r0().k(((PhotoEntity) listH.get(0)).getLocalPath());
    }

    private final FbDataModel n0(Bundle savedInstanceState) {
        FbDataModel fbDataModel;
        if (savedInstanceState != null && (fbDataModel = (FbDataModel) savedInstanceState.getParcelable("feedback_save_model")) != null) {
            fbDataModel.fillOption(FbOption.INSTANCE.a(this));
            return fbDataModel;
        }
        FbDataModel fbDataModelF = FBSender.f57459a.f();
        if (fbDataModelF != null) {
            fbDataModelF.fillOption(FbOption.INSTANCE.a(this));
            return fbDataModelF;
        }
        String stringExtra = getIntent().getStringExtra("feedback_from_page");
        if (stringExtra == null) {
            stringExtra = "SETTINGS";
        }
        String str = stringExtra;
        String stringExtra2 = getIntent().getStringExtra("subject_id");
        String stringExtra3 = getIntent().getStringExtra("ugc_video_id");
        Parcelable parcelableExtra = getIntent().getParcelableExtra("TV_DATA");
        FbDataModel fbDataModel2 = new FbDataModel(parcelableExtra instanceof FbTvData ? (FbTvData) parcelableExtra : null, str, stringExtra2, new FBContact(null, null, 2, null), null, null, null, null, null, stringExtra3, null, 1520, null);
        fbDataModel2.fillOption(FbOption.INSTANCE.a(this));
        return fbDataModel2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final fw.e o0(LabelsFeedbackActivity labelsFeedbackActivity) {
        return fw.e.c(labelsFeedbackActivity.getLayoutInflater());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final h p0(LabelsFeedbackActivity labelsFeedbackActivity) {
        FbDataModel fbDataModel = labelsFeedbackActivity.model;
        if (fbDataModel == null) {
            Intrinsics.z("model");
            fbDataModel = null;
        }
        return new h(fbDataModel, labelsFeedbackActivity);
    }

    private final fw.e q0() {
        return (fw.e) this.d.getValue();
    }

    private final h r0() {
        return (h) this.footerAdaptor.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final c s0() {
        return (c) this.listAdaptor.getValue();
    }

    private final void u0() {
        KeyboardUtils.d(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final c v0(LabelsFeedbackActivity labelsFeedbackActivity) {
        FbDataModel fbDataModel = labelsFeedbackActivity.model;
        if (fbDataModel == null) {
            Intrinsics.z("model");
            fbDataModel = null;
        }
        c cVar = new c(fbDataModel);
        cVar.l(labelsFeedbackActivity);
        cVar.k(labelsFeedbackActivity);
        return cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean w0(LabelsFeedbackActivity labelsFeedbackActivity, View view, MotionEvent motionEvent) {
        labelsFeedbackActivity.u0();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit x0(LabelsFeedbackActivity labelsFeedbackActivity, fp.a it) {
        Intrinsics.h(it, "it");
        Integer numE = it.e();
        if (numE != null && numE.intValue() == 0) {
            labelsFeedbackActivity.m0(it);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y0(LabelsFeedbackActivity labelsFeedbackActivity, View view) {
        labelsFeedbackActivity.u0();
        labelsFeedbackActivity.z0();
    }

    private final void z0() {
        if (A0() || com.transsion.baseui.util.c.f43504a.a(q0().f62619c.getId(), 1000L)) {
            return;
        }
        FbDataModel fbDataModel = this.model;
        FbDataModel fbDataModel2 = null;
        if (fbDataModel == null) {
            Intrinsics.z("model");
            fbDataModel = null;
        }
        Integer tips = fbDataModel.getTips();
        if (tips != null) {
            uh.b.f76753a.d(tips.intValue());
            return;
        }
        uh.b.f76753a.d(R$string.feedback_tips_send);
        FBSender fBSender = FBSender.f57459a;
        FbDataModel fbDataModel3 = this.model;
        if (fbDataModel3 == null) {
            Intrinsics.z("model");
        } else {
            fbDataModel2 = fbDataModel3;
        }
        Application application = getApplication();
        Intrinsics.g(application, "getApplication(...)");
        fBSender.k(fbDataModel2, application);
        finish();
    }

    @Override // com.transsion.usercenter.setting.labelsfeedback.i
    public void a(h adaptor) {
        Intrinsics.h(adaptor, "adaptor");
        if (A0()) {
            return;
        }
        SelectImageActivity.INSTANCE.a(this, 0, 1, null);
    }

    @Override // com.transsion.usercenter.setting.labelsfeedback.i
    public void b(h adaptor) {
        Intrinsics.h(adaptor, "adaptor");
        AppCompatButton appCompatButton = q0().f62619c;
        FbDataModel fbDataModel = this.model;
        if (fbDataModel == null) {
            Intrinsics.z("model");
            fbDataModel = null;
        }
        appCompatButton.setEnabled(fbDataModel.getCanSubmit());
    }

    @Override // com.transsion.usercenter.setting.labelsfeedback.i
    public void c(h adaptor, AppCompatImageView imageVIew) {
        Intrinsics.h(adaptor, "adaptor");
        Intrinsics.h(imageVIew, "imageVIew");
        FbDataModel fbDataModel = this.model;
        if (fbDataModel == null) {
            Intrinsics.z("model");
            fbDataModel = null;
        }
        String imagePath = fbDataModel.getImagePath();
        if (imagePath != null) {
            Glide.with((FragmentActivity) this).load2(new File(imagePath)).into(imageVIew);
        }
    }

    @Override // com.transsion.usercenter.setting.labelsfeedback.i
    public void e(h adaptor) {
        Intrinsics.h(adaptor, "adaptor");
        u0();
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isChangeStatusBar() {
        return true;
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
    public void k(h adaptor) {
        Intrinsics.h(adaptor, "adaptor");
        Navigator.w(TheRouter.c("/loginapi/select_country"), this, 100, null, 4, null);
    }

    @Override // com.transsion.usercenter.setting.labelsfeedback.d
    public void m(c adaptor) {
        Intrinsics.h(adaptor, "adaptor");
        u0();
        AppCompatButton appCompatButton = q0().f62619c;
        FbDataModel fbDataModel = this.model;
        if (fbDataModel == null) {
            Intrinsics.z("model");
            fbDataModel = null;
        }
        appCompatButton.setEnabled(fbDataModel.getCanSubmit());
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        Serializable serializableExtra;
        super.onActivityResult(requestCode, resultCode, data);
        if (resultCode == -1 && requestCode == 100 && data != null && (serializableExtra = data.getSerializableExtra("countryCode")) != null && (serializableExtra instanceof Country)) {
            r0().j((Country) serializableExtra);
        }
    }

    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.model = n0(savedInstanceState);
        q0().f62620d.setTitleText(R$string.user_setting_feedback);
        RecyclerView recyclerView = q0().f62618b;
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext(), 1, false));
        recyclerView.setAdapter(new ConcatAdapter(new j(), s0(), r0()));
        q0().f62618b.setOnTouchListener(new View.OnTouchListener() { // from class: com.transsion.usercenter.setting.labelsfeedback.k
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return LabelsFeedbackActivity.w0(this.f57450a, view, motionEvent);
            }
        });
        Function1 function1 = new Function1() { // from class: com.transsion.usercenter.setting.labelsfeedback.l
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LabelsFeedbackActivity.x0(this.f57451a, (fp.a) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = fp.a.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(this, name, Lifecycle.State.CREATED, y0.c().q(), false, function1);
        AppCompatButton appCompatButton = q0().f62619c;
        FbDataModel fbDataModel = this.model;
        if (fbDataModel == null) {
            Intrinsics.z("model");
            fbDataModel = null;
        }
        appCompatButton.setEnabled(fbDataModel.getCanSubmit());
        q0().f62619c.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.setting.labelsfeedback.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LabelsFeedbackActivity.y0(this.f57452a, view);
            }
        });
        kotlinx.coroutines.k.d(v.a(this), y0.c(), null, new AnonymousClass5(null), 2, null);
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle outState) {
        Intrinsics.h(outState, "outState");
        FbDataModel fbDataModel = this.model;
        if (fbDataModel == null) {
            Intrinsics.z("model");
            fbDataModel = null;
        }
        outState.putParcelable("feedback_save_model", fbDataModel);
        super.onSaveInstanceState(outState);
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public int statusColor() {
        return R$color.pair_FFFFFF2;
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    /* JADX INFO: renamed from: t0, reason: merged with bridge method [inline-methods] */
    public fw.e getViewBinding() {
        return q0();
    }
}
