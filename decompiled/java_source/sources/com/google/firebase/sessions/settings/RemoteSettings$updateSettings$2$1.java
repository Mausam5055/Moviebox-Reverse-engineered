package com.google.firebase.sessions.settings;

import android.util.Log;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
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
import kotlin.jvm.internal.SourceDebugExtension;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "it", "Lorg/json/JSONObject;"}, k = 3, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "com.google.firebase.sessions.settings.RemoteSettings$updateSettings$2$1", f = "RemoteSettings.kt", l = {Sdk$SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE, 128, Sdk$SDKError.Reason.MRAID_JS_WRITE_FAILED_VALUE, Sdk$SDKError.Reason.OMSDK_JS_WRITE_FAILED_VALUE, 134, Sdk$SDKError.Reason.PRIVACY_URL_ERROR_VALUE}, m = "invokeSuspend")
@SourceDebugExtension
final class RemoteSettings$updateSettings$2$1 extends SuspendLambda implements Function2<JSONObject, Continuation<? super Unit>, Object> {
    /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ RemoteSettings this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RemoteSettings$updateSettings$2$1(RemoteSettings remoteSettings, Continuation<? super RemoteSettings$updateSettings$2$1> continuation) {
        super(2, continuation);
        this.this$0 = remoteSettings;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        RemoteSettings$updateSettings$2$1 remoteSettings$updateSettings$2$1 = new RemoteSettings$updateSettings$2$1(this.this$0, continuation);
        remoteSettings$updateSettings$2$1.L$0 = obj;
        return remoteSettings$updateSettings$2$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(JSONObject jSONObject, Continuation<? super Unit> continuation) {
        return ((RemoteSettings$updateSettings$2$1) create(jSONObject, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:45:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:47:0x010d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:50:0x0114  */
    /* JADX WARN: Code duplicated, block: B:52:0x012d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:55:0x0134  */
    /* JADX WARN: Code duplicated, block: B:57:0x014d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:59:0x0151  */
    /* JADX WARN: Code duplicated, block: B:61:0x0154  */
    /* JADX WARN: Code duplicated, block: B:63:0x0170 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:66:0x018e A[RETURN] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v12, types: [T, java.lang.Integer] */
    /* JADX WARN: Type inference failed for: r1v6, types: [T, java.lang.Integer] */
    /* JADX WARN: Type inference failed for: r2v4, types: [T, java.lang.Double] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Ref.ObjectRef objectRef;
        Boolean bool;
        Ref.ObjectRef objectRef2;
        Ref.ObjectRef objectRef3;
        Ref.ObjectRef objectRef4;
        Ref.ObjectRef objectRef5;
        SettingsCache settingsCacheF;
        Integer num;
        SettingsCache settingsCacheF2;
        Double d11;
        Unit unit;
        SettingsCache settingsCacheF3;
        Integer num2;
        SettingsCache settingsCacheF4;
        Integer numD;
        SettingsCache settingsCacheF5;
        Long lE;
        Object objF = IntrinsicsKt.f();
        switch (this.label) {
            case 0:
                ResultKt.b(obj);
                JSONObject jSONObject = (JSONObject) this.L$0;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Fetched settings: ");
                sb2.append(jSONObject);
                Ref.ObjectRef objectRef6 = new Ref.ObjectRef();
                objectRef = new Ref.ObjectRef();
                Ref.ObjectRef objectRef7 = new Ref.ObjectRef();
                if (jSONObject.has("app_quality")) {
                    Object obj2 = jSONObject.get("app_quality");
                    Intrinsics.f(obj2, "null cannot be cast to non-null type org.json.JSONObject");
                    JSONObject jSONObject2 = (JSONObject) obj2;
                    try {
                        bool = jSONObject2.has("sessions_enabled") ? (Boolean) jSONObject2.get("sessions_enabled") : null;
                        try {
                            if (jSONObject2.has("sampling_rate")) {
                                objectRef6.element = (Double) jSONObject2.get("sampling_rate");
                            }
                            if (jSONObject2.has("session_timeout_seconds")) {
                                objectRef.element = (Integer) jSONObject2.get("session_timeout_seconds");
                            }
                            if (jSONObject2.has("cache_duration")) {
                                objectRef7.element = (Integer) jSONObject2.get("cache_duration");
                            }
                        } catch (JSONException e11) {
                            e = e11;
                            Log.e("SessionConfigFetcher", "Error parsing the configs remotely fetched: ", e);
                        }
                    } catch (JSONException e12) {
                        e = e12;
                        bool = null;
                    }
                    break;
                } else {
                    bool = null;
                }
                if (bool != null) {
                    SettingsCache settingsCacheF6 = this.this$0.f();
                    this.L$0 = objectRef6;
                    this.L$1 = objectRef;
                    this.L$2 = objectRef7;
                    this.label = 1;
                    if (settingsCacheF6.n(bool, this) == objF) {
                        return objF;
                    }
                    objectRef4 = objectRef6;
                    objectRef5 = objectRef;
                    objectRef3 = objectRef7;
                    objectRef = objectRef5;
                    objectRef2 = objectRef4;
                } else {
                    objectRef2 = objectRef6;
                    objectRef3 = objectRef7;
                }
                if (((Integer) objectRef.element) != null) {
                    settingsCacheF = this.this$0.f();
                    num = (Integer) objectRef.element;
                    this.L$0 = objectRef2;
                    this.L$1 = objectRef3;
                    this.L$2 = null;
                    this.label = 2;
                    if (settingsCacheF.m(num, this) == objF) {
                        return objF;
                    }
                }
                if (((Double) objectRef2.element) != null) {
                    settingsCacheF2 = this.this$0.f();
                    d11 = (Double) objectRef2.element;
                    this.L$0 = objectRef3;
                    this.L$1 = null;
                    this.L$2 = null;
                    this.label = 3;
                    if (settingsCacheF2.i(d11, this) == objF) {
                        return objF;
                    }
                }
                if (((Integer) objectRef3.element) != null) {
                    settingsCacheF3 = this.this$0.f();
                    num2 = (Integer) objectRef3.element;
                    this.L$0 = null;
                    this.L$1 = null;
                    this.L$2 = null;
                    this.label = 4;
                    if (settingsCacheF3.j(num2, this) == objF) {
                        return objF;
                    }
                    unit = Unit.f67061a;
                } else {
                    unit = null;
                }
                if (unit == null) {
                    settingsCacheF4 = this.this$0.f();
                    numD = Boxing.d(86400);
                    this.L$0 = null;
                    this.L$1 = null;
                    this.L$2 = null;
                    this.label = 5;
                    if (settingsCacheF4.j(numD, this) == objF) {
                        return objF;
                    }
                }
                settingsCacheF5 = this.this$0.f();
                lE = Boxing.e(System.currentTimeMillis());
                this.L$0 = null;
                this.L$1 = null;
                this.L$2 = null;
                this.label = 6;
                if (settingsCacheF5.k(lE, this) == objF) {
                    return objF;
                }
                return Unit.f67061a;
            case 1:
                objectRef3 = (Ref.ObjectRef) this.L$2;
                objectRef5 = (Ref.ObjectRef) this.L$1;
                objectRef4 = (Ref.ObjectRef) this.L$0;
                ResultKt.b(obj);
                objectRef = objectRef5;
                objectRef2 = objectRef4;
                if (((Integer) objectRef.element) != null) {
                    settingsCacheF = this.this$0.f();
                    num = (Integer) objectRef.element;
                    this.L$0 = objectRef2;
                    this.L$1 = objectRef3;
                    this.L$2 = null;
                    this.label = 2;
                    if (settingsCacheF.m(num, this) == objF) {
                        return objF;
                    }
                }
                if (((Double) objectRef2.element) != null) {
                    settingsCacheF2 = this.this$0.f();
                    d11 = (Double) objectRef2.element;
                    this.L$0 = objectRef3;
                    this.L$1 = null;
                    this.L$2 = null;
                    this.label = 3;
                    if (settingsCacheF2.i(d11, this) == objF) {
                        return objF;
                    }
                }
                if (((Integer) objectRef3.element) != null) {
                    settingsCacheF3 = this.this$0.f();
                    num2 = (Integer) objectRef3.element;
                    this.L$0 = null;
                    this.L$1 = null;
                    this.L$2 = null;
                    this.label = 4;
                    if (settingsCacheF3.j(num2, this) == objF) {
                        return objF;
                    }
                    unit = Unit.f67061a;
                } else {
                    unit = null;
                }
                if (unit == null) {
                    settingsCacheF4 = this.this$0.f();
                    numD = Boxing.d(86400);
                    this.L$0 = null;
                    this.L$1 = null;
                    this.L$2 = null;
                    this.label = 5;
                    if (settingsCacheF4.j(numD, this) == objF) {
                        return objF;
                    }
                }
                settingsCacheF5 = this.this$0.f();
                lE = Boxing.e(System.currentTimeMillis());
                this.L$0 = null;
                this.L$1 = null;
                this.L$2 = null;
                this.label = 6;
                if (settingsCacheF5.k(lE, this) == objF) {
                    return objF;
                }
                return Unit.f67061a;
            case 2:
                objectRef3 = (Ref.ObjectRef) this.L$1;
                objectRef2 = (Ref.ObjectRef) this.L$0;
                ResultKt.b(obj);
                if (((Double) objectRef2.element) != null) {
                    settingsCacheF2 = this.this$0.f();
                    d11 = (Double) objectRef2.element;
                    this.L$0 = objectRef3;
                    this.L$1 = null;
                    this.L$2 = null;
                    this.label = 3;
                    if (settingsCacheF2.i(d11, this) == objF) {
                        return objF;
                    }
                }
                if (((Integer) objectRef3.element) != null) {
                    settingsCacheF3 = this.this$0.f();
                    num2 = (Integer) objectRef3.element;
                    this.L$0 = null;
                    this.L$1 = null;
                    this.L$2 = null;
                    this.label = 4;
                    if (settingsCacheF3.j(num2, this) == objF) {
                        return objF;
                    }
                    unit = Unit.f67061a;
                } else {
                    unit = null;
                }
                if (unit == null) {
                    settingsCacheF4 = this.this$0.f();
                    numD = Boxing.d(86400);
                    this.L$0 = null;
                    this.L$1 = null;
                    this.L$2 = null;
                    this.label = 5;
                    if (settingsCacheF4.j(numD, this) == objF) {
                        return objF;
                    }
                }
                settingsCacheF5 = this.this$0.f();
                lE = Boxing.e(System.currentTimeMillis());
                this.L$0 = null;
                this.L$1 = null;
                this.L$2 = null;
                this.label = 6;
                if (settingsCacheF5.k(lE, this) == objF) {
                    return objF;
                }
                return Unit.f67061a;
            case 3:
                objectRef3 = (Ref.ObjectRef) this.L$0;
                ResultKt.b(obj);
                if (((Integer) objectRef3.element) != null) {
                    settingsCacheF3 = this.this$0.f();
                    num2 = (Integer) objectRef3.element;
                    this.L$0 = null;
                    this.L$1 = null;
                    this.L$2 = null;
                    this.label = 4;
                    if (settingsCacheF3.j(num2, this) == objF) {
                        return objF;
                    }
                    unit = Unit.f67061a;
                } else {
                    unit = null;
                }
                if (unit == null) {
                    settingsCacheF4 = this.this$0.f();
                    numD = Boxing.d(86400);
                    this.L$0 = null;
                    this.L$1 = null;
                    this.L$2 = null;
                    this.label = 5;
                    if (settingsCacheF4.j(numD, this) == objF) {
                        return objF;
                    }
                }
                settingsCacheF5 = this.this$0.f();
                lE = Boxing.e(System.currentTimeMillis());
                this.L$0 = null;
                this.L$1 = null;
                this.L$2 = null;
                this.label = 6;
                if (settingsCacheF5.k(lE, this) == objF) {
                    return objF;
                }
                return Unit.f67061a;
            case 4:
                ResultKt.b(obj);
                unit = Unit.f67061a;
                if (unit == null) {
                    settingsCacheF4 = this.this$0.f();
                    numD = Boxing.d(86400);
                    this.L$0 = null;
                    this.L$1 = null;
                    this.L$2 = null;
                    this.label = 5;
                    if (settingsCacheF4.j(numD, this) == objF) {
                        return objF;
                    }
                }
                settingsCacheF5 = this.this$0.f();
                lE = Boxing.e(System.currentTimeMillis());
                this.L$0 = null;
                this.L$1 = null;
                this.L$2 = null;
                this.label = 6;
                if (settingsCacheF5.k(lE, this) == objF) {
                    return objF;
                }
                return Unit.f67061a;
            case 5:
                ResultKt.b(obj);
                settingsCacheF5 = this.this$0.f();
                lE = Boxing.e(System.currentTimeMillis());
                this.L$0 = null;
                this.L$1 = null;
                this.L$2 = null;
                this.label = 6;
                if (settingsCacheF5.k(lE, this) == objF) {
                    return objF;
                }
                return Unit.f67061a;
            case 6:
                ResultKt.b(obj);
                return Unit.f67061a;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
