package com.cloud.tmc.kernel.coreimpl;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.cloud.tmc.kernel.engine.EngineRouter;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.render.IRender;
import com.cloud.tmc.kernel.utils.CollectionUtils;
import com.cloud.tmc.kernel.worker.JSI;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Stack;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes3.dex */
public class DefaultEngineRouter implements EngineRouter {
    private static final String TAG = "TmcEngine:" + DefaultEngineRouter.class.getSimpleName();
    private Map<String, List<EngineRouter.IRenderInitListener>> mIRenderInitListeners;
    private final Object mLock = new Object();
    private final Map<String, JSI> registeredWorker = new ConcurrentHashMap();
    private final Stack<JSI> workerStack = new Stack<>();
    private final Map<String, IRender> registerIRender = new ConcurrentHashMap();
    private final Stack<IRender> renderStack = new Stack<>();

    private void onIRenderInit(IRender iRender) {
        if (iRender != null) {
            String renderId = iRender.getRenderId();
            if (TextUtils.isEmpty(renderId)) {
                return;
            }
            synchronized (this.mLock) {
                try {
                    if (!CollectionUtils.isEmpty(this.mIRenderInitListeners)) {
                        List<EngineRouter.IRenderInitListener> list = this.mIRenderInitListeners.get(renderId);
                        if (!CollectionUtils.isEmpty(list)) {
                            Iterator<EngineRouter.IRenderInitListener> it = list.iterator();
                            while (it.hasNext()) {
                                it.next().onIRenderInit(iRender);
                            }
                        }
                        this.mIRenderInitListeners.remove(renderId);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    @Override // com.cloud.tmc.kernel.engine.EngineRouter
    public void destroy() {
        Collection<JSI> collectionValues = this.registeredWorker.values();
        Iterator<JSI> it = collectionValues.iterator();
        while (it.hasNext()) {
            it.next().destroy();
        }
        this.registeredWorker.clear();
        this.registerIRender.clear();
        this.renderStack.clear();
        collectionValues.clear();
        this.workerStack.clear();
        synchronized (this.mLock) {
            try {
                Map<String, List<EngineRouter.IRenderInitListener>> map = this.mIRenderInitListeners;
                if (map != null) {
                    map.clear();
                }
                this.mIRenderInitListeners = null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.cloud.tmc.kernel.engine.EngineRouter
    public List<IRender> getRegisteredRender() {
        ArrayList arrayList;
        synchronized (this.renderStack) {
            arrayList = new ArrayList(this.renderStack);
        }
        return arrayList;
    }

    @Override // com.cloud.tmc.kernel.engine.EngineRouter
    public IRender getRenderById(String str) {
        synchronized (this.renderStack) {
            try {
                if (!TextUtils.isEmpty(str)) {
                    return this.registerIRender.get(str);
                }
                if (this.renderStack.size() <= 0) {
                    return null;
                }
                return this.renderStack.peek();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.cloud.tmc.kernel.engine.EngineRouter
    public IRender getTopRender() {
        if (this.renderStack.size() > 0) {
            return this.renderStack.peek();
        }
        return null;
    }

    @Override // com.cloud.tmc.kernel.engine.EngineRouter
    @Nullable
    public JSI getWorkerById(String str) {
        synchronized (this.workerStack) {
            try {
                if (!TextUtils.isEmpty(str)) {
                    return this.registeredWorker.get(str);
                }
                if (this.workerStack.size() <= 0) {
                    return null;
                }
                return this.workerStack.peek();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.cloud.tmc.kernel.engine.EngineRouter
    public void registerRender(String str, IRender iRender) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        synchronized (this.renderStack) {
            try {
                if (this.registerIRender.containsKey(str)) {
                    TmcLogger.d(TAG, "DefaultEngineRouter has sample worker " + str);
                } else {
                    this.registerIRender.put(str, iRender);
                    this.renderStack.push(iRender);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        onIRenderInit(iRender);
    }

    @Override // com.cloud.tmc.kernel.engine.EngineRouter
    public void registerRenderInitListener(String str, EngineRouter.IRenderInitListener iRenderInitListener) {
        synchronized (this.mLock) {
            try {
                if (this.mIRenderInitListeners == null) {
                    this.mIRenderInitListeners = new HashMap();
                }
                if (!this.mIRenderInitListeners.containsKey(str)) {
                    this.mIRenderInitListeners.put(str, new LinkedList());
                }
                this.mIRenderInitListeners.get(str).add(iRenderInitListener);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.cloud.tmc.kernel.engine.EngineRouter
    public void registerWorker(JSI jsi) {
        if (jsi == null) {
            return;
        }
        registerWorker(jsi.getWorkerId(), jsi);
    }

    @Override // com.cloud.tmc.kernel.engine.EngineRouter
    public void registerWorker(String str, JSI jsi) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        synchronized (this.workerStack) {
            try {
                if (this.registeredWorker.containsKey(str)) {
                    TmcLogger.d(TAG, "DefaultEngineRouter has sample worker " + str);
                } else {
                    this.registeredWorker.put(str, jsi);
                    this.workerStack.push(jsi);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.cloud.tmc.kernel.engine.EngineRouter
    public void resetRenderToTop(IRender iRender) {
        TmcLogger.d(TAG, "resetIRenderToTop: " + iRender);
        if (iRender == null) {
            return;
        }
        synchronized (this.renderStack) {
            try {
                if (this.renderStack.remove(iRender)) {
                    this.renderStack.push(iRender);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.cloud.tmc.kernel.engine.EngineRouter
    public void unRegisterRender(String str) {
        TmcLogger.d(TAG, "unRegisterIRender: " + str);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        synchronized (this.renderStack) {
            try {
                IRender iRender = this.registerIRender.get(str);
                if (iRender != null) {
                    this.registerIRender.remove(str);
                    this.renderStack.remove(iRender);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.cloud.tmc.kernel.engine.EngineRouter
    public void unRegisterWorker(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        synchronized (this.workerStack) {
            try {
                TmcLogger.d(TAG, "unRegisterWorker: " + str);
                JSI jsi = this.registeredWorker.get(str);
                if (jsi != null) {
                    this.registeredWorker.remove(str);
                    this.workerStack.remove(jsi);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
