package com.google.firebase.crashlytics.internal.common;

import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
class b0 implements Thread.UncaughtExceptionHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f31148a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final wb.b f31149b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Thread.UncaughtExceptionHandler f31150c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ob.a f31151d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final AtomicBoolean f31152e = new AtomicBoolean(false);

    interface a {
        void a(wb.b bVar, Thread thread, Throwable th2);
    }

    public b0(a aVar, wb.b bVar, Thread.UncaughtExceptionHandler uncaughtExceptionHandler, ob.a aVar2) {
        this.f31148a = aVar;
        this.f31149b = bVar;
        this.f31150c = uncaughtExceptionHandler;
        this.f31151d = aVar2;
    }

    private boolean b(Thread thread, Throwable th2) {
        if (thread == null) {
            ob.g.f().d("Crashlytics will not record uncaught exception; null thread");
            return false;
        }
        if (th2 == null) {
            ob.g.f().d("Crashlytics will not record uncaught exception; null throwable");
            return false;
        }
        if (!this.f31151d.b()) {
            return true;
        }
        ob.g.f().b("Crashlytics will not record uncaught exception; native crash exists for session.");
        return false;
    }

    boolean a() {
        return this.f31152e.get();
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0037  */
    /* JADX WARN: Undo finally extract visitor
    java.lang.NullPointerException: Cannot invoke "Object.hashCode()" because "this.second" is null
    	at jadx.core.utils.Pair.hashCode(Pair.java:35)
    	at java.base/java.util.HashMap.hash(Unknown Source)
    	at java.base/java.util.HashMap.getNode(Unknown Source)
    	at java.base/java.util.HashMap.containsKey(Unknown Source)
    	at jadx.core.dex.visitors.finaly.traverser.state.TraverserGlobalCommonState.hasBlocksBeenCached(TraverserGlobalCommonState.java:35)
    	at jadx.core.dex.visitors.finaly.traverser.handlers.MergePathActivePathTraverserHandler.handle(MergePathActivePathTraverserHandler.java:174)
    	at jadx.core.dex.visitors.finaly.traverser.handlers.AbstractActivePathTraverserHandler.process(AbstractActivePathTraverserHandler.java:19)
    	at jadx.core.dex.visitors.finaly.traverser.TraverserController.processHandlerImplementations(TraverserController.java:43)
    	at jadx.core.dex.visitors.finaly.traverser.TraverserController.advance(TraverserController.java:156)
    	at jadx.core.dex.visitors.finaly.traverser.TraverserController.process(TraverserController.java:79)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.findCommonInsns(MarkFinallyVisitor.java:404)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.extractFinally(MarkFinallyVisitor.java:284)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.processTryBlock(MarkFinallyVisitor.java:202)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.visit(MarkFinallyVisitor.java:135)
     */
    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th2) {
        this.f31152e.set(true);
        try {
            try {
                if (b(thread, th2)) {
                    this.f31148a.a(this.f31149b, thread, th2);
                } else {
                    ob.g.f().b("Uncaught exception will not be recorded by Crashlytics.");
                }
                if (this.f31150c != null) {
                    ob.g.f().b("Completed exception processing. Invoking default exception handler.");
                    this.f31150c.uncaughtException(thread, th2);
                } else {
                    ob.g.f().b("Completed exception processing, but no default exception handler.");
                    System.exit(1);
                }
            } catch (Exception e11) {
                ob.g.f().e("An error occurred in the uncaught exception handler", e11);
                if (this.f31150c == null) {
                    ob.g.f().b("Completed exception processing, but no default exception handler.");
                    System.exit(1);
                }
            }
            this.f31152e.set(false);
        } catch (Throwable th3) {
            if (this.f31150c != null) {
                ob.g.f().b("Completed exception processing. Invoking default exception handler.");
                this.f31150c.uncaughtException(thread, th2);
            } else {
                ob.g.f().b("Completed exception processing, but no default exception handler.");
                System.exit(1);
            }
            this.f31152e.set(false);
            throw th3;
        }
    }
}
