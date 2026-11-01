package com.transsion.transfer.androidasync.future;

/* JADX INFO: loaded from: classes6.dex */
public class n implements com.transsion.transfer.androidasync.future.b {
    boolean cancelled;
    boolean complete;
    private com.transsion.transfer.androidasync.future.a parent;
    public static final com.transsion.transfer.androidasync.future.a COMPLETED = new a();
    public static final com.transsion.transfer.androidasync.future.a CANCELLED = new b();

    class a extends n {
        a() {
            setComplete();
        }
    }

    class b extends n {
        b() {
            cancel();
        }
    }

    @Override // com.transsion.transfer.androidasync.future.a
    public boolean cancel() {
        synchronized (this) {
            try {
                if (this.complete) {
                    return false;
                }
                if (this.cancelled) {
                    return true;
                }
                this.cancelled = true;
                com.transsion.transfer.androidasync.future.a aVar = this.parent;
                this.parent = null;
                if (aVar != null) {
                    aVar.cancel();
                }
                cancelCleanup();
                cleanup();
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    protected void cancelCleanup() {
    }

    protected void cleanup() {
    }

    protected void completeCleanup() {
    }

    @Override // com.transsion.transfer.androidasync.future.a
    public boolean isCancelled() {
        boolean z10;
        com.transsion.transfer.androidasync.future.a aVar;
        synchronized (this) {
            try {
                z10 = this.cancelled || ((aVar = this.parent) != null && aVar.isCancelled());
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return z10;
    }

    public boolean isDone() {
        return this.complete;
    }

    public com.transsion.transfer.androidasync.future.a reset() {
        cancel();
        this.complete = false;
        this.cancelled = false;
        return this;
    }

    public boolean setComplete() {
        synchronized (this) {
            try {
                if (this.cancelled) {
                    return false;
                }
                if (this.complete) {
                    return false;
                }
                this.complete = true;
                this.parent = null;
                completeCleanup();
                cleanup();
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.transsion.transfer.androidasync.future.b
    public boolean setParent(com.transsion.transfer.androidasync.future.a aVar) {
        synchronized (this) {
            try {
                if (isDone()) {
                    return false;
                }
                this.parent = aVar;
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
