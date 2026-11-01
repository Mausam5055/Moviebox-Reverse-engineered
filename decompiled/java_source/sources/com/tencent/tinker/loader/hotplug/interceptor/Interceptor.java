package com.tencent.tinker.loader.hotplug.interceptor;

import com.tencent.tinker.loader.shareutil.ShareTinkerLog;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Interceptor<T_TARGET> {
    private T_TARGET mTarget = null;
    private volatile boolean mInstalled = false;

    protected interface ITinkerHotplugProxy {
    }

    protected T_TARGET decorate(T_TARGET t_target) throws Throwable {
        return t_target;
    }

    protected abstract T_TARGET fetchTarget() throws Throwable;

    protected abstract void inject(T_TARGET t_target) throws Throwable;

    public synchronized void install() throws InterceptFailedException {
        try {
            T_TARGET t_targetFetchTarget = fetchTarget();
            this.mTarget = t_targetFetchTarget;
            T_TARGET t_targetDecorate = decorate(t_targetFetchTarget);
            if (t_targetDecorate != t_targetFetchTarget) {
                inject(t_targetDecorate);
            } else {
                ShareTinkerLog.w("Tinker.Interceptor", "target: " + t_targetFetchTarget + " was already hooked.", new Object[0]);
            }
            this.mInstalled = true;
        } catch (Throwable th2) {
            this.mTarget = null;
            throw new InterceptFailedException(th2);
        }
    }

    public synchronized void uninstall() throws InterceptFailedException {
        if (this.mInstalled) {
            try {
                inject(this.mTarget);
                this.mTarget = null;
                this.mInstalled = false;
            } catch (Throwable th2) {
                throw new InterceptFailedException(th2);
            }
        }
    }
}
