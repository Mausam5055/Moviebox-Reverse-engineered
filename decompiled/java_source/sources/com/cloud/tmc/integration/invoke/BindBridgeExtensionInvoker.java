package com.cloud.tmc.integration.invoke;

import androidx.annotation.Nullable;
import androidx.collection.y0;
import com.cloud.tmc.kernel.annotation.AutoCallback;
import com.cloud.tmc.kernel.bridge.NativeCallContext;
import com.cloud.tmc.kernel.bridge.extension.BridgeResponse;
import com.cloud.tmc.kernel.bridge.extension.annotation.Bindable;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingApiContext;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingExecutor;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingId;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingNode;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingParam;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingRequest;
import com.cloud.tmc.kernel.bridge.extension.annotation.ParamRequired;
import com.cloud.tmc.kernel.bridge.extension.bind.ApiContextBinder;
import com.cloud.tmc.kernel.bridge.extension.bind.Binder;
import com.cloud.tmc.kernel.bridge.extension.bind.CallbackBinder;
import com.cloud.tmc.kernel.bridge.extension.bind.ExecutorBinder;
import com.cloud.tmc.kernel.bridge.extension.bind.IdBinder;
import com.cloud.tmc.kernel.bridge.extension.bind.NodeBinder;
import com.cloud.tmc.kernel.bridge.extension.bind.ParamBinder;
import com.cloud.tmc.kernel.bridge.extension.bind.RequestBinder;
import com.cloud.tmc.kernel.extension.DefaultBridgeCallback;
import com.cloud.tmc.kernel.extension.RequiredParamNotFoundException;
import com.cloud.tmc.kernel.helper.BridgeResponseHelper;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.model.ApiContext;
import com.cloud.tmc.kernel.node.Node;
import com.cloud.tmc.kernel.utils.NodeAwareUtils;
import com.google.gson.JsonObject;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class BindBridgeExtensionInvoker extends ExtensionInvoker {
    public static final String TAG = "TmcEngine:BridgeExtensionInvoker";
    private ApiContext mApiContext;
    private final BridgeResponseHelper mBridgeResponseHelper;
    private String mCallId;
    private JsonObject mRequestParams;

    public BindBridgeExtensionInvoker(Node node, NativeCallContext nativeCallContext, BridgeResponseHelper bridgeResponseHelper) {
        this(node, nativeCallContext, bridgeResponseHelper, null);
    }

    public BindBridgeExtensionInvoker(Node node, NativeCallContext nativeCallContext, BridgeResponseHelper bridgeResponseHelper, @Nullable ApiContext apiContext) {
        super(node, null);
        this.mBridgeResponseHelper = bridgeResponseHelper;
        this.mRequestParams = nativeCallContext.getParams();
        this.mCallId = nativeCallContext.getId();
        this.mApiContext = apiContext;
    }

    private Object buildActionMethodParam(Class cls, Annotation[] annotationArr) {
        Binder idBinder;
        Annotation annotation = (annotationArr == null || annotationArr.length <= 0) ? null : annotationArr[0];
        if (annotation instanceof BindingParam) {
            idBinder = new ParamBinder(this.mRequestParams);
        } else if (annotation instanceof BindingRequest) {
            idBinder = new RequestBinder(this.mRequestParams);
        } else if (annotation instanceof BindingCallback) {
            idBinder = new CallbackBinder(this.mBridgeResponseHelper);
        } else if (annotation instanceof BindingExecutor) {
            idBinder = new ExecutorBinder();
        } else if (annotation instanceof BindingNode) {
            idBinder = new NodeBinder(this.targetNode);
        } else if (annotation instanceof BindingApiContext) {
            idBinder = new ApiContextBinder(this.mApiContext);
        } else {
            idBinder = annotation instanceof BindingId ? new IdBinder(this.mCallId) : null;
        }
        Object objBind = idBinder != null ? idBinder.bind(cls, annotation) : null;
        if (objBind == null && cls.isPrimitive()) {
            return 0;
        }
        return objBind;
    }

    private y0 initParamAnnotation(Method method) {
        y0 y0Var = new y0();
        if (method == null) {
            return y0Var;
        }
        Class<?>[] parameterTypes = method.getParameterTypes();
        Annotation[][] parameterAnnotations = method.getParameterAnnotations();
        if (parameterTypes != null && parameterTypes.length != 0) {
            for (int i11 = 0; i11 < parameterTypes.length; i11++) {
                Annotation[] annotationArr = parameterAnnotations[i11];
                if (annotationArr != null) {
                    ArrayList arrayList = new ArrayList();
                    for (Annotation annotation : annotationArr) {
                        if (annotation != null && annotation.annotationType() != null && annotation.annotationType().getAnnotation(Bindable.class) != null) {
                            arrayList.add(annotation);
                        }
                    }
                    if (arrayList.size() > 0) {
                        y0Var.l(i11, (Annotation[]) arrayList.toArray(new Annotation[arrayList.size()]));
                    }
                }
            }
        }
        return y0Var;
    }

    @Override // com.cloud.tmc.integration.invoke.ExtensionInvoker
    protected ExtensionInvoker.InvokeResult onInvoke(Object obj, Method method, Object[] objArr) throws Throwable {
        JsonObject jsonObject;
        if (method.getAnnotation(ParamRequired.class) != null && ((jsonObject = this.mRequestParams) == null || jsonObject.size() == 0)) {
            new DefaultBridgeCallback(this.mBridgeResponseHelper, false).sendBridgeResponse(BridgeResponse.INVALID_PARAM);
            return ExtensionInvoker.InvokeResult.decide(null);
        }
        int length = method.getParameterTypes().length;
        Object[] objArr2 = new Object[length];
        y0 y0VarInitParamAnnotation = initParamAnnotation(method);
        for (int i11 = 0; i11 < length; i11++) {
            try {
                objArr2[i11] = buildActionMethodParam(method.getParameterTypes()[i11], (Annotation[]) y0VarInitParamAnnotation.f(i11));
            } catch (RequiredParamNotFoundException e11) {
                new DefaultBridgeCallback(this.mBridgeResponseHelper, false).sendBridgeResponse(new BridgeResponse.Error(2, e11.getMessage()));
                return ExtensionInvoker.InvokeResult.decide(null);
            }
        }
        try {
            NodeAwareUtils.handleSetNode(this.targetNode, this.targetExtensions.get(0));
            this.mBridgeResponseHelper.setTargetExtension(this.targetExtensions.get(0));
            Object objProceed = proceed(this.targetExtensions, obj, method, objArr2);
            if (method.getAnnotation(AutoCallback.class) != null) {
                if (objProceed == null) {
                    TmcLogger.w("AutoCallback but got null!!! " + this.targetExtensions.get(0) + " method: " + method);
                    new DefaultBridgeCallback(this.mBridgeResponseHelper, false).sendBridgeResponse(BridgeResponse.SUCCESS);
                    return ExtensionInvoker.InvokeResult.decide(null);
                }
                if (objProceed instanceof BridgeResponse) {
                    new DefaultBridgeCallback(this.mBridgeResponseHelper, false).sendBridgeResponse((BridgeResponse) objProceed);
                } else if (objProceed instanceof JsonObject) {
                    new DefaultBridgeCallback(this.mBridgeResponseHelper, false).sendJSONResponse((JsonObject) objProceed);
                } else {
                    new DefaultBridgeCallback(this.mBridgeResponseHelper, false).sendBridgeResponse(new BridgeResponse.Error(2, "method " + method.getName() + " return type not recognized " + objProceed.getClass().getName()));
                }
            }
            return ExtensionInvoker.InvokeResult.decide(objProceed);
        } catch (InvokeException e12) {
            TmcLogger.e(TAG, "Java exception happened!\nExtension: " + this.targetExtensions.get(0) + "\nMethod: " + method, e12);
            new DefaultBridgeCallback(this.mBridgeResponseHelper, false).sendBridgeResponse(new BridgeResponse.Error(6, "Java exception happen in method: " + method + " message: " + e12.getMessage()));
            return ExtensionInvoker.InvokeResult.decide(null);
        }
    }
}
