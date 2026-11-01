package com.transsion.postdetail.ui.activity;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.postdetail.R$string;
import com.transsion.postdetail.bean.NegativeFeedbackRequest;
import com.transsion.postdetail.bean.ReportReason;
import com.transsion.postdetail.helper.NegativeFeedbackHelper;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Regex;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.postdetail.ui.activity.PostFeedbackInputActivity$onSubmit$1", f = "PostFeedbackInputActivity.kt", l = {174, 195}, m = "invokeSuspend")
@SourceDebugExtension
final class PostFeedbackInputActivity$onSubmit$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ ReportReason $selectedReason;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ PostFeedbackInputActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PostFeedbackInputActivity$onSubmit$1(PostFeedbackInputActivity postFeedbackInputActivity, ReportReason reportReason, Continuation<? super PostFeedbackInputActivity$onSubmit$1> continuation) {
        super(2, continuation);
        this.this$0 = postFeedbackInputActivity;
        this.$selectedReason = reportReason;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        PostFeedbackInputActivity$onSubmit$1 postFeedbackInputActivity$onSubmit$1 = new PostFeedbackInputActivity$onSubmit$1(this.this$0, this.$selectedReason, continuation);
        postFeedbackInputActivity$onSubmit$1.L$0 = obj;
        return postFeedbackInputActivity$onSubmit$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PostFeedbackInputActivity$onSubmit$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:44:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:47:0x00eb A[Catch: all -> 0x001c, TryCatch #1 {all -> 0x001c, blocks: (B:6:0x0015, B:62:0x0146, B:39:0x00b4, B:41:0x00ca, B:45:0x00d3, B:47:0x00eb, B:49:0x00f4, B:51:0x0102, B:59:0x012a, B:55:0x0115), top: B:79:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:55:0x0115 A[Catch: all -> 0x001c, TryCatch #1 {all -> 0x001c, blocks: (B:6:0x0015, B:62:0x0146, B:39:0x00b4, B:41:0x00ca, B:45:0x00d3, B:47:0x00eb, B:49:0x00f4, B:51:0x0102, B:59:0x012a, B:55:0x0115), top: B:79:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:57:0x0127  */
    /* JADX WARN: Code duplicated, block: B:58:0x0128  */
    /* JADX WARN: Code duplicated, block: B:61:0x0145 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:67:0x015f  */
    /* JADX WARN: Code duplicated, block: B:69:0x0188  */
    /* JADX WARN: Code duplicated, block: B:72:0x0195  */
    /* JADX WARN: Code duplicated, block: B:76:0x01ae  */
    /* JADX WARN: Instruction removed from duplicated block: B:67:0x015f, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:76:0x01ae, please report this as an issue */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objM454constructorimpl;
        Object objM454constructorimpl2;
        String str;
        PostFeedbackInputActivity postFeedbackInputActivity;
        String stringExtra;
        String str2;
        List listE;
        String whole;
        String phone;
        String str3;
        Object objB;
        PostFeedbackInputActivity postFeedbackInputActivity2;
        PostFeedbackInputActivity postFeedbackInputActivity3;
        Throwable thM457exceptionOrNullimpl;
        String stringExtra2;
        String stringExtra3;
        Object objH0;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            try {
                if (i11 != 0) {
                    if (i11 == 1) {
                        ResultKt.b(obj);
                        objH0 = obj;
                    } else {
                        if (i11 != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.b(obj);
                        objB = obj;
                    }
                    objM454constructorimpl = Result.m454constructorimpl((BaseDto) objB);
                    postFeedbackInputActivity2 = this.this$0;
                    if (Result.m461isSuccessimpl(objM454constructorimpl)) {
                        lg.a.f68839a.c("PostFeedbackInputActivity", "postNegativeFeedback success: code=" + ((BaseDto) objM454constructorimpl).getCode(), true);
                        stringExtra2 = postFeedbackInputActivity2.getIntent().getStringExtra("extra_submit_toast_text");
                        if (stringExtra2 != null) {
                            com.transsion.baseui.util.m.d(stringExtra2);
                        }
                        stringExtra3 = postFeedbackInputActivity2.getIntent().getStringExtra("extra_post_id");
                        if (stringExtra3 != null) {
                            ty.b.f76417a.a().e(stringExtra3);
                        }
                        NegativeFeedbackHelper.f48849a.j(stringExtra3);
                        postFeedbackInputActivity2.finish();
                    }
                    postFeedbackInputActivity3 = this.this$0;
                    thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
                    if (thM457exceptionOrNullimpl != null) {
                        lg.a.f68839a.i("PostFeedbackInputActivity", "postNegativeFeedback error: " + thM457exceptionOrNullimpl.getMessage(), true);
                        com.transsion.baseui.util.m.e(R$string.post_feedback_fail);
                        postFeedbackInputActivity3.u0().f75493b.setEnabled(true);
                        postFeedbackInputActivity3.finish();
                    }
                    return Unit.f67061a;
                }
                ResultKt.b(obj);
                n0 n0Var = (n0) this.L$0;
                if (this.this$0.v0().getImagePath() != null) {
                    PostFeedbackInputActivity postFeedbackInputActivity4 = this.this$0;
                    Result.Companion companion = Result.INSTANCE;
                    String imagePath = postFeedbackInputActivity4.v0().getImagePath();
                    Intrinsics.e(imagePath);
                    this.L$0 = n0Var;
                    this.label = 1;
                    objH0 = postFeedbackInputActivity4.H0(imagePath, this);
                    if (objH0 == objF) {
                        return objF;
                    }
                } else {
                    str = null;
                }
                postFeedbackInputActivity = this.this$0;
                ReportReason reportReason = this.$selectedReason;
                Result.Companion companion2 = Result.INSTANCE;
                String stringExtra4 = postFeedbackInputActivity.getIntent().getStringExtra("extra_post_id");
                stringExtra = postFeedbackInputActivity.getIntent().getStringExtra("extra_author_id");
                if (stringExtra != null || stringExtra.length() <= 0) {
                    str2 = null;
                } else {
                    str2 = stringExtra;
                }
                String stringExtra5 = postFeedbackInputActivity.getIntent().getStringExtra("extra_action_type");
                String reportReasonId = reportReason.getReportReasonId();
                String content = postFeedbackInputActivity.v0().getContent();
                if (str != null) {
                    listE = CollectionsKt.e(str);
                } else {
                    listE = null;
                }
                whole = postFeedbackInputActivity.v0().getContact().getWhole();
                if (whole != null || (phone = new Regex("^[A-Z]+ ").replace(whole, "")) == null) {
                    phone = postFeedbackInputActivity.v0().getContact().getPhone();
                    if (phone.length() > 0) {
                        str3 = phone;
                    } else {
                        str3 = null;
                    }
                } else {
                    str3 = phone;
                }
                NegativeFeedbackRequest negativeFeedbackRequest = new NegativeFeedbackRequest(stringExtra4, str2, stringExtra5, reportReasonId, content, listE, str3);
                xo.b bVarY0 = postFeedbackInputActivity.y0();
                this.L$0 = null;
                this.label = 2;
                objB = xo.b.a.b(bVarY0, null, negativeFeedbackRequest, this, 1, null);
                if (objB == objF) {
                    return objF;
                }
                objM454constructorimpl = Result.m454constructorimpl((BaseDto) objB);
                postFeedbackInputActivity2 = this.this$0;
                if (Result.m461isSuccessimpl(objM454constructorimpl)) {
                    lg.a.f68839a.c("PostFeedbackInputActivity", "postNegativeFeedback success: code=" + ((BaseDto) objM454constructorimpl).getCode(), true);
                    stringExtra2 = postFeedbackInputActivity2.getIntent().getStringExtra("extra_submit_toast_text");
                    if (stringExtra2 != null) {
                        com.transsion.baseui.util.m.d(stringExtra2);
                    }
                    stringExtra3 = postFeedbackInputActivity2.getIntent().getStringExtra("extra_post_id");
                    if (stringExtra3 != null) {
                        ty.b.f76417a.a().e(stringExtra3);
                    }
                    NegativeFeedbackHelper.f48849a.j(stringExtra3);
                    postFeedbackInputActivity2.finish();
                }
                postFeedbackInputActivity3 = this.this$0;
                thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
                if (thM457exceptionOrNullimpl != null) {
                    lg.a.f68839a.i("PostFeedbackInputActivity", "postNegativeFeedback error: " + thM457exceptionOrNullimpl.getMessage(), true);
                    com.transsion.baseui.util.m.e(R$string.post_feedback_fail);
                    postFeedbackInputActivity3.u0().f75493b.setEnabled(true);
                    postFeedbackInputActivity3.finish();
                }
                return Unit.f67061a;
                objM454constructorimpl2 = Result.m454constructorimpl((String) objH0);
            } catch (Throwable th2) {
                Result.Companion companion3 = Result.INSTANCE;
                objM454constructorimpl2 = Result.m454constructorimpl(ResultKt.a(th2));
            }
            if (Result.m460isFailureimpl(objM454constructorimpl2)) {
                lg.a.C0828a c0828a = lg.a.f68839a;
                Throwable thM457exceptionOrNullimpl2 = Result.m457exceptionOrNullimpl(objM454constructorimpl2);
                c0828a.i("PostFeedbackInputActivity", "upload image failed: " + (thM457exceptionOrNullimpl2 != null ? thM457exceptionOrNullimpl2.getMessage() : null), true);
                this.this$0.u0().f75493b.setEnabled(true);
                return Unit.f67061a;
            }
            if (Result.m460isFailureimpl(objM454constructorimpl2)) {
                objM454constructorimpl2 = null;
            }
            str = (String) objM454constructorimpl2;
            postFeedbackInputActivity = this.this$0;
            ReportReason reportReason2 = this.$selectedReason;
            Result.Companion companion4 = Result.INSTANCE;
            String stringExtra6 = postFeedbackInputActivity.getIntent().getStringExtra("extra_post_id");
            stringExtra = postFeedbackInputActivity.getIntent().getStringExtra("extra_author_id");
            if (stringExtra != null) {
                str2 = null;
            } else {
                str2 = null;
            }
            String stringExtra7 = postFeedbackInputActivity.getIntent().getStringExtra("extra_action_type");
            String reportReasonId2 = reportReason2.getReportReasonId();
            String content2 = postFeedbackInputActivity.v0().getContent();
            if (str != null) {
                listE = CollectionsKt.e(str);
            } else {
                listE = null;
            }
            whole = postFeedbackInputActivity.v0().getContact().getWhole();
            if (whole != null) {
                phone = postFeedbackInputActivity.v0().getContact().getPhone();
                if (phone.length() > 0) {
                    str3 = phone;
                } else {
                    str3 = null;
                }
            } else {
                phone = postFeedbackInputActivity.v0().getContact().getPhone();
                if (phone.length() > 0) {
                    str3 = phone;
                } else {
                    str3 = null;
                }
            }
            NegativeFeedbackRequest negativeFeedbackRequest2 = new NegativeFeedbackRequest(stringExtra6, str2, stringExtra7, reportReasonId2, content2, listE, str3);
            xo.b bVarY1 = postFeedbackInputActivity.y0();
            this.L$0 = null;
            this.label = 2;
            objB = xo.b.a.b(bVarY1, null, negativeFeedbackRequest2, this, 1, null);
            if (objB == objF) {
                return objF;
            }
            objM454constructorimpl = Result.m454constructorimpl((BaseDto) objB);
            postFeedbackInputActivity2 = this.this$0;
            if (Result.m461isSuccessimpl(objM454constructorimpl)) {
                lg.a.f68839a.c("PostFeedbackInputActivity", "postNegativeFeedback success: code=" + ((BaseDto) objM454constructorimpl).getCode(), true);
                stringExtra2 = postFeedbackInputActivity2.getIntent().getStringExtra("extra_submit_toast_text");
                if (stringExtra2 != null) {
                    com.transsion.baseui.util.m.d(stringExtra2);
                }
                stringExtra3 = postFeedbackInputActivity2.getIntent().getStringExtra("extra_post_id");
                if (stringExtra3 != null) {
                    ty.b.f76417a.a().e(stringExtra3);
                }
                NegativeFeedbackHelper.f48849a.j(stringExtra3);
                postFeedbackInputActivity2.finish();
            }
            postFeedbackInputActivity3 = this.this$0;
            thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
            if (thM457exceptionOrNullimpl != null) {
                lg.a.f68839a.i("PostFeedbackInputActivity", "postNegativeFeedback error: " + thM457exceptionOrNullimpl.getMessage(), true);
                com.transsion.baseui.util.m.e(R$string.post_feedback_fail);
                postFeedbackInputActivity3.u0().f75493b.setEnabled(true);
                postFeedbackInputActivity3.finish();
            }
            return Unit.f67061a;
        } catch (Throwable th3) {
            Result.Companion companion5 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th3));
        }
    }
}
