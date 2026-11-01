package com.transsion.usercenter.setting.labelsfeedback.sender;

import android.content.Context;
import androidx.work.CoroutineWorker;
import androidx.work.WorkerParameters;
import androidx.work.s;
import com.blankj.utilcode.util.o;
import com.cloud.config.utils.CommonUtils;
import com.google.android.material.timepicker.TimeModel;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.upload.bean.UploadFileType;
import com.transsion.upload.bean.UploadTstTokenStorageType;
import com.transsion.upload.log.UploadLoggerManager;
import com.transsion.usercenter.setting.feedback.bean.FeedbackEntity;
import com.transsion.usercenter.setting.labelsfeedback.model.FbDataModel;
import com.transsion.usercenter.setting.labelsfeedback.model.FbTvData;
import com.transsnet.loginapi.ILoginApi;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.SafeContinuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.StringCompanionObject;
import okhttp3.RequestBody;
import zg.c;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J$\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\n2\u0006\u0010\t\u001a\u00020\bH\u0082@¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\r\u001a\u00020\bH\u0082@¢\u0006\u0004\b\r\u0010\u000eJ:\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u00142\b\u0010\u000f\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0010\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u00112\b\u0010\u0013\u001a\u0004\u0018\u00010\bH\u0082@¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u0019\u001a\u00020\u0018H\u0096@¢\u0006\u0004\b\u0019\u0010\u000e¨\u0006\u001a"}, d2 = {"Lcom/transsion/usercenter/setting/labelsfeedback/sender/FbSenderWorker;", "Landroidx/work/CoroutineWorker;", "Landroid/content/Context;", "appContext", "Landroidx/work/WorkerParameters;", "workerParams", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "", "imagePath", "Lkotlin/Pair;", "s", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "t", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "imageUrl", "logId", "Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;", "model", "tempBucket", "Lcom/tn/lib/net/bean/BaseDto;", "Lcom/transsion/usercenter/setting/feedback/bean/FeedbackEntity;", CampaignEx.JSON_KEY_AD_R, "(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroidx/work/s$a;", "n", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class FbSenderWorker extends CoroutineWorker {

    public static final class a implements cw.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f57465a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Continuation f57466b;

        a(Continuation continuation) {
            this.f57466b = continuation;
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
            if (this.f57465a) {
                return;
            }
            Continuation continuation = this.f57466b;
            Result.Companion companion = Result.INSTANCE;
            continuation.resumeWith(Result.m454constructorimpl(new Pair(url, bucket)));
            this.f57465a = true;
        }

        @Override // cw.a
        public void c(String str, String str2, String str3, UploadTstTokenStorageType uploadTstTokenStorageType) {
            if (this.f57465a) {
                return;
            }
            Continuation continuation = this.f57466b;
            Result.Companion companion = Result.INSTANCE;
            continuation.resumeWith(Result.m454constructorimpl(ResultKt.a(new Error("unable to upload log"))));
            this.f57465a = true;
        }
    }

    public static final class b implements cw.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f57467a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Continuation f57468b;

        b(Continuation continuation) {
            this.f57468b = continuation;
        }

        @Override // cw.a
        public void a(String uploadKey, long j11, long j12) {
            Intrinsics.h(uploadKey, "uploadKey");
        }

        @Override // cw.a
        public void b(String uploadKey, String url, String bucket) {
            Intrinsics.h(uploadKey, "uploadKey");
            Intrinsics.h(url, "url");
            Intrinsics.h(bucket, "bucket");
            if (this.f57467a) {
                return;
            }
            this.f57468b.resumeWith(Result.m454constructorimpl(uploadKey));
            this.f57467a = true;
        }

        @Override // cw.a
        public void c(String str, String str2, String str3, UploadTstTokenStorageType uploadTstTokenStorageType) {
            if (this.f57467a) {
                return;
            }
            Continuation continuation = this.f57468b;
            Result.Companion companion = Result.INSTANCE;
            continuation.resumeWith(Result.m454constructorimpl(ResultKt.a(new Error("unable to upload log"))));
            this.f57467a = true;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FbSenderWorker(Context appContext, WorkerParameters workerParams) {
        super(appContext, workerParams);
        Intrinsics.h(appContext, "appContext");
        Intrinsics.h(workerParams, "workerParams");
    }

    private final Object r(String str, String str2, FbDataModel fbDataModel, String str3, Continuation continuation) {
        UserInfo userInfoI;
        ILoginApi iLoginApi = (ILoginApi) TheRouter.d(ILoginApi.class, new Object[0]);
        String userId = (iLoginApi == null || (userInfoI = iLoginApi.i()) == null) ? null : userInfoI.getUserId();
        JsonObject jsonObject = new JsonObject();
        if (userId == null) {
            userId = "0";
        }
        jsonObject.addProperty(CommonUtils.PARAM_UID, userId);
        jsonObject.addProperty("content", fbDataModel.getContent());
        if (str != null) {
            JsonArray jsonArray = new JsonArray();
            jsonArray.add(str);
            jsonObject.add("imageUrl", jsonArray);
        }
        jsonObject.addProperty("email", "");
        String whole = fbDataModel.getContact().getWhole();
        if (whole != null) {
            jsonObject.addProperty("whatsApp", whole);
        }
        jsonObject.addProperty("pageName", fbDataModel.getPageName());
        String ugcVideoId = fbDataModel.getUgcVideoId();
        if (ugcVideoId != null) {
            jsonObject.addProperty("ugcVideoId", ugcVideoId);
        }
        String subjectId = fbDataModel.getSubjectId();
        if (subjectId != null) {
            jsonObject.addProperty("subjectId", subjectId);
        }
        FbTvData tv2 = fbDataModel.getTv();
        if (tv2 != null) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
            String str4 = String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Arrays.copyOf(new Object[]{Boxing.d(tv2.getSeason())}, 1));
            Intrinsics.g(str4, "format(...)");
            String str5 = String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Arrays.copyOf(new Object[]{Boxing.d(tv2.getEpisode())}, 1));
            Intrinsics.g(str5, "format(...)");
            jsonObject.addProperty("season", "S" + str4 + "  E" + str5);
        }
        jsonObject.addProperty("logId", str2);
        Integer selectedId = fbDataModel.getSelectedId();
        jsonObject.addProperty("label", Boxing.d(selectedId != null ? selectedId.intValue() : -1));
        jsonObject.addProperty("tempBucket", str3);
        bh.b.a aVar = bh.b.f16471a;
        String string = jsonObject.toString();
        Intrinsics.g(string, "toString(...)");
        RequestBody requestBodyA = aVar.a(string);
        if (requestBodyA != null) {
            return ((yw.a) c.f79414e.a().h(yw.a.class)).c(vg.a.f77324a.a(), requestBodyA, continuation);
        }
        throw new Error("can not find feedback body");
    }

    private final Object s(String str, Continuation continuation) throws Throwable {
        SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt.c(continuation));
        cw.c.f60931a.f(str, UploadFileType.OBJECT_NAME_IMAGE, true, new a(safeContinuation));
        Object objA = safeContinuation.a();
        if (objA == IntrinsicsKt.f()) {
            DebugProbesKt.c(continuation);
        }
        return objA;
    }

    private final Object t(Continuation continuation) throws Throwable {
        SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt.c(continuation));
        UploadLoggerManager.f56636a.k(new b(safeContinuation));
        Object objA = safeContinuation.a();
        if (objA == IntrinsicsKt.f()) {
            DebugProbesKt.c(continuation);
        }
        return objA;
    }

    /* JADX WARN: Code duplicated, block: B:48:0x0106 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:49:0x0107  */
    /* JADX WARN: Code duplicated, block: B:52:0x0127 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:55:0x0132 A[Catch: Exception -> 0x0038, TryCatch #0 {Exception -> 0x0038, blocks: (B:15:0x0033, B:53:0x0128, B:55:0x0132, B:57:0x0138, B:22:0x004f, B:50:0x010a, B:25:0x0064, B:44:0x00e8, B:46:0x00f6, B:28:0x007d, B:40:0x00c9, B:34:0x00a3, B:36:0x00b3), top: B:62:0x0029 }] */
    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v12, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r15v18, types: [T, java.lang.Object] */
    @Override // androidx.work.CoroutineWorker
    public Object n(Continuation continuation) throws Throwable {
        FbSenderWorker$doWork$1 fbSenderWorker$doWork$1;
        FbDataModel fbDataModel;
        Ref.ObjectRef objectRef;
        Ref.ObjectRef objectRef2;
        String imagePath;
        Ref.ObjectRef objectRef3;
        Ref.ObjectRef objectRef4;
        FbDataModel fbDataModel2;
        Ref.ObjectRef objectRef5;
        Ref.ObjectRef objectRef6;
        Ref.ObjectRef objectRef7;
        FbDataModel fbDataModel3;
        Object objT;
        FbDataModel fbDataModel4;
        Ref.ObjectRef objectRef8;
        FeedbackEntity feedbackEntity;
        if (continuation instanceof FbSenderWorker$doWork$1) {
            fbSenderWorker$doWork$1 = (FbSenderWorker$doWork$1) continuation;
            int i11 = fbSenderWorker$doWork$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                fbSenderWorker$doWork$1.label = i11 - Integer.MIN_VALUE;
            } else {
                fbSenderWorker$doWork$1 = new FbSenderWorker$doWork$1(this, continuation);
            }
        } else {
            fbSenderWorker$doWork$1 = new FbSenderWorker$doWork$1(this, continuation);
        }
        FbSenderWorker$doWork$1 fbSenderWorker$doWork$2 = fbSenderWorker$doWork$1;
        Object objS = fbSenderWorker$doWork$2.result;
        Object objF = IntrinsicsKt.f();
        int i12 = fbSenderWorker$doWork$2.label;
        try {
            if (i12 == 0) {
                ResultKt.b(objS);
                fbDataModel = (FbDataModel) o.d(e().g("key_work_data"), FbDataModel.class);
                if (fbDataModel == null) {
                    s.a aVarA = s.a.a();
                    Intrinsics.g(aVarA, "failure(...)");
                    return aVarA;
                }
                objectRef = new Ref.ObjectRef();
                objectRef2 = new Ref.ObjectRef();
                imagePath = fbDataModel.getImagePath();
                if (imagePath != null) {
                    fbSenderWorker$doWork$2.L$0 = fbDataModel;
                    fbSenderWorker$doWork$2.L$1 = objectRef;
                    fbSenderWorker$doWork$2.L$2 = objectRef2;
                    fbSenderWorker$doWork$2.L$3 = imagePath;
                    fbSenderWorker$doWork$2.L$4 = objectRef;
                    fbSenderWorker$doWork$2.label = 1;
                    Object objS2 = s(imagePath, fbSenderWorker$doWork$2);
                    if (objS2 == objF) {
                        return objF;
                    }
                    fbDataModel2 = fbDataModel;
                    objS = objS2;
                    objectRef5 = objectRef;
                } else {
                    objectRef3 = objectRef;
                    objectRef4 = objectRef2;
                }
                fbSenderWorker$doWork$2.L$0 = fbDataModel;
                fbSenderWorker$doWork$2.L$1 = objectRef3;
                fbSenderWorker$doWork$2.L$2 = objectRef4;
                fbSenderWorker$doWork$2.L$3 = null;
                fbSenderWorker$doWork$2.label = 3;
                objT = t(fbSenderWorker$doWork$2);
                if (objT == objF) {
                    return objF;
                }
                fbDataModel4 = fbDataModel;
                objS = objT;
                objectRef8 = objectRef3;
                String str = (String) objectRef8.element;
                String str2 = (String) objectRef4.element;
                fbSenderWorker$doWork$2.L$0 = null;
                fbSenderWorker$doWork$2.L$1 = null;
                fbSenderWorker$doWork$2.L$2 = null;
                fbSenderWorker$doWork$2.label = 4;
                objS = r(str, (String) objS, fbDataModel4, str2, fbSenderWorker$doWork$2);
                if (objS == objF) {
                    return objF;
                }
                feedbackEntity = (FeedbackEntity) ((BaseDto) objS).getData();
                if (feedbackEntity != null) {
                    s.a aVarC = s.a.c();
                    Intrinsics.g(aVarC, "success(...)");
                    return aVarC;
                }
                s.a aVarA2 = s.a.a();
                Intrinsics.g(aVarA2, "failure(...)");
                return aVarA2;
            }
            if (i12 == 1) {
                objectRef = (Ref.ObjectRef) fbSenderWorker$doWork$2.L$4;
                String str3 = (String) fbSenderWorker$doWork$2.L$3;
                Ref.ObjectRef objectRef9 = (Ref.ObjectRef) fbSenderWorker$doWork$2.L$2;
                objectRef5 = (Ref.ObjectRef) fbSenderWorker$doWork$2.L$1;
                fbDataModel2 = (FbDataModel) fbSenderWorker$doWork$2.L$0;
                ResultKt.b(objS);
                imagePath = str3;
                objectRef2 = objectRef9;
            } else if (i12 == 2) {
                objectRef6 = (Ref.ObjectRef) fbSenderWorker$doWork$2.L$3;
                objectRef7 = (Ref.ObjectRef) fbSenderWorker$doWork$2.L$2;
                objectRef3 = (Ref.ObjectRef) fbSenderWorker$doWork$2.L$1;
                fbDataModel3 = (FbDataModel) fbSenderWorker$doWork$2.L$0;
                ResultKt.b(objS);
                objectRef6.element = ((Pair) objS).getSecond();
                objectRef4 = objectRef7;
                fbDataModel = fbDataModel3;
                fbSenderWorker$doWork$2.L$0 = fbDataModel;
                fbSenderWorker$doWork$2.L$1 = objectRef3;
                fbSenderWorker$doWork$2.L$2 = objectRef4;
                fbSenderWorker$doWork$2.L$3 = null;
                fbSenderWorker$doWork$2.label = 3;
                objT = t(fbSenderWorker$doWork$2);
                if (objT == objF) {
                    return objF;
                }
                fbDataModel4 = fbDataModel;
                objS = objT;
                objectRef8 = objectRef3;
                String str4 = (String) objectRef8.element;
                String str5 = (String) objectRef4.element;
                fbSenderWorker$doWork$2.L$0 = null;
                fbSenderWorker$doWork$2.L$1 = null;
                fbSenderWorker$doWork$2.L$2 = null;
                fbSenderWorker$doWork$2.label = 4;
                objS = r(str4, (String) objS, fbDataModel4, str5, fbSenderWorker$doWork$2);
                if (objS == objF) {
                    return objF;
                }
            } else if (i12 == 3) {
                objectRef4 = (Ref.ObjectRef) fbSenderWorker$doWork$2.L$2;
                objectRef8 = (Ref.ObjectRef) fbSenderWorker$doWork$2.L$1;
                fbDataModel4 = (FbDataModel) fbSenderWorker$doWork$2.L$0;
                ResultKt.b(objS);
                String str6 = (String) objectRef8.element;
                String str7 = (String) objectRef4.element;
                fbSenderWorker$doWork$2.L$0 = null;
                fbSenderWorker$doWork$2.L$1 = null;
                fbSenderWorker$doWork$2.L$2 = null;
                fbSenderWorker$doWork$2.label = 4;
                objS = r(str6, (String) objS, fbDataModel4, str7, fbSenderWorker$doWork$2);
                if (objS == objF) {
                    return objF;
                }
            } else {
                if (i12 != 4) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(objS);
            }
            feedbackEntity = (FeedbackEntity) ((BaseDto) objS).getData();
            if (feedbackEntity != null && feedbackEntity.getResult()) {
                s.a aVarC2 = s.a.c();
                Intrinsics.g(aVarC2, "success(...)");
                return aVarC2;
            }
            s.a aVarA3 = s.a.a();
            Intrinsics.g(aVarA3, "failure(...)");
            return aVarA3;
            objectRef.element = ((Pair) objS).getFirst();
            fbSenderWorker$doWork$2.L$0 = fbDataModel2;
            fbSenderWorker$doWork$2.L$1 = objectRef5;
            fbSenderWorker$doWork$2.L$2 = objectRef2;
            fbSenderWorker$doWork$2.L$3 = objectRef2;
            fbSenderWorker$doWork$2.L$4 = null;
            fbSenderWorker$doWork$2.label = 2;
            objS = s(imagePath, fbSenderWorker$doWork$2);
            if (objS == objF) {
                return objF;
            }
            objectRef6 = objectRef2;
            objectRef7 = objectRef6;
            objectRef3 = objectRef5;
            fbDataModel3 = fbDataModel2;
            objectRef6.element = ((Pair) objS).getSecond();
            objectRef4 = objectRef7;
            fbDataModel = fbDataModel3;
            fbSenderWorker$doWork$2.L$0 = fbDataModel;
            fbSenderWorker$doWork$2.L$1 = objectRef3;
            fbSenderWorker$doWork$2.L$2 = objectRef4;
            fbSenderWorker$doWork$2.L$3 = null;
            fbSenderWorker$doWork$2.label = 3;
            objT = t(fbSenderWorker$doWork$2);
            if (objT == objF) {
                return objF;
            }
            fbDataModel4 = fbDataModel;
            objS = objT;
            objectRef8 = objectRef3;
            String str8 = (String) objectRef8.element;
            String str9 = (String) objectRef4.element;
            fbSenderWorker$doWork$2.L$0 = null;
            fbSenderWorker$doWork$2.L$1 = null;
            fbSenderWorker$doWork$2.L$2 = null;
            fbSenderWorker$doWork$2.label = 4;
            objS = r(str8, (String) objS, fbDataModel4, str9, fbSenderWorker$doWork$2);
            if (objS == objF) {
                return objF;
            }
            feedbackEntity = (FeedbackEntity) ((BaseDto) objS).getData();
            if (feedbackEntity != null) {
                s.a aVarC3 = s.a.c();
                Intrinsics.g(aVarC3, "success(...)");
                return aVarC3;
            }
            s.a aVarA4 = s.a.a();
            Intrinsics.g(aVarA4, "failure(...)");
            return aVarA4;
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }
}
