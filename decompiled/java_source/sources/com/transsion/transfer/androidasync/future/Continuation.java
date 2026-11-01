package com.transsion.transfer.androidasync.future;

import java.util.LinkedList;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes6.dex */
public class Continuation extends n implements bv.c, Runnable, com.transsion.transfer.androidasync.future.a {
    bv.a callback;
    Runnable cancelCallback;
    private boolean inNext;
    LinkedList<bv.c> mCallbacks;
    boolean started;
    private boolean waiting;

    class a implements bv.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f55209a;

        a() {
        }

        @Override // bv.a
        public void g(Exception exc) {
            if (this.f55209a) {
                return;
            }
            this.f55209a = true;
            Continuation.this.waiting = false;
            if (exc == null) {
                Continuation.this.next();
            } else {
                Continuation.this.reportCompleted(exc);
            }
        }
    }

    class b implements bv.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ c f55211a;

        b(c cVar) {
            this.f55211a = cVar;
        }

        @Override // bv.c
        public void onContinue(Continuation continuation, bv.a aVar) throws ExecutionException, InterruptedException {
            this.f55211a.get();
            aVar.g(null);
        }
    }

    public Continuation() {
        this(null);
    }

    public Continuation(bv.a aVar) {
        this(aVar, null);
    }

    public Continuation(bv.a aVar, Runnable runnable) {
        this.mCallbacks = new LinkedList<>();
        this.cancelCallback = runnable;
        this.callback = aVar;
    }

    private bv.c hook(bv.c cVar) {
        if (cVar instanceof com.transsion.transfer.androidasync.future.b) {
            ((com.transsion.transfer.androidasync.future.b) cVar).setParent(this);
        }
        return cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void next() {
        if (this.inNext) {
            return;
        }
        while (this.mCallbacks.size() > 0 && !this.waiting && !isDone() && !isCancelled()) {
            bv.c cVarRemove = this.mCallbacks.remove();
            try {
                try {
                    this.inNext = true;
                    this.waiting = true;
                    cVarRemove.onContinue(this, wrap());
                } catch (Exception e11) {
                    reportCompleted(e11);
                }
                this.inNext = false;
            } catch (Throwable th2) {
                this.inNext = false;
                throw th2;
            }
        }
        if (this.waiting || isDone() || isCancelled()) {
            return;
        }
        reportCompleted(null);
    }

    private bv.a wrap() {
        return new a();
    }

    public Continuation add(bv.c cVar) {
        this.mCallbacks.add(hook(cVar));
        return this;
    }

    public Continuation add(c cVar) {
        cVar.setParent(this);
        add(new b(cVar));
        return this;
    }

    @Override // com.transsion.transfer.androidasync.future.n, com.transsion.transfer.androidasync.future.a
    public boolean cancel() {
        if (!super.cancel()) {
            return false;
        }
        Runnable runnable = this.cancelCallback;
        if (runnable == null) {
            return true;
        }
        runnable.run();
        return true;
    }

    public bv.a getCallback() {
        return this.callback;
    }

    public Runnable getCancelCallback() {
        return this.cancelCallback;
    }

    public Continuation insert(bv.c cVar) {
        this.mCallbacks.add(0, hook(cVar));
        return this;
    }

    @Override // bv.c
    public void onContinue(Continuation continuation, bv.a aVar) throws Exception {
        setCallback(aVar);
        start();
    }

    void reportCompleted(Exception exc) {
        bv.a aVar;
        if (setComplete() && (aVar = this.callback) != null) {
            aVar.g(exc);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        start();
    }

    public void setCallback(bv.a aVar) {
        this.callback = aVar;
    }

    public void setCancelCallback(final com.transsion.transfer.androidasync.future.a aVar) {
        if (aVar == null) {
            this.cancelCallback = null;
        } else {
            this.cancelCallback = new Runnable() { // from class: com.transsion.transfer.androidasync.future.Continuation.1
                @Override // java.lang.Runnable
                public void run() {
                    aVar.cancel();
                }
            };
        }
    }

    public void setCancelCallback(Runnable runnable) {
        this.cancelCallback = runnable;
    }

    public Continuation start() {
        if (this.started) {
            throw new IllegalStateException("already started");
        }
        this.started = true;
        next();
        return this;
    }
}
