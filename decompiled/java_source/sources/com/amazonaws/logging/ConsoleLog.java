package com.amazonaws.logging;

import java.io.PrintStream;

/* JADX INFO: loaded from: classes2.dex */
public final class ConsoleLog implements Log {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f18428a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private LogFactory.Level f18429b = null;

    public ConsoleLog(String str) {
        this.f18428a = str;
    }

    private LogFactory.Level l() {
        LogFactory.Level level = this.f18429b;
        return level != null ? level : LogFactory.a();
    }

    private void o(LogFactory.Level level, Object obj, Throwable th2) {
        PrintStream printStream = System.out;
        printStream.printf("%s/%s: %s\n", this.f18428a, level.name(), obj);
        if (th2 != null) {
            printStream.println(th2.toString());
        }
    }

    @Override // com.amazonaws.logging.Log
    public void a(Object obj) {
        if (b()) {
            o(LogFactory.Level.DEBUG, obj, null);
        }
    }

    @Override // com.amazonaws.logging.Log
    public boolean b() {
        return l() == null || l().getValue() <= LogFactory.Level.DEBUG.getValue();
    }

    @Override // com.amazonaws.logging.Log
    public boolean c() {
        return l() == null || l().getValue() <= LogFactory.Level.INFO.getValue();
    }

    @Override // com.amazonaws.logging.Log
    public void d(Object obj) {
        if (c()) {
            o(LogFactory.Level.INFO, obj, null);
        }
    }

    @Override // com.amazonaws.logging.Log
    public void e(Object obj, Throwable th2) {
        if (h()) {
            o(LogFactory.Level.ERROR, obj, th2);
        }
    }

    @Override // com.amazonaws.logging.Log
    public void f(Object obj) {
        if (h()) {
            o(LogFactory.Level.ERROR, obj, null);
        }
    }

    @Override // com.amazonaws.logging.Log
    public void g(Object obj, Throwable th2) {
        if (b()) {
            o(LogFactory.Level.DEBUG, obj, th2);
        }
    }

    @Override // com.amazonaws.logging.Log
    public boolean h() {
        return l() == null || l().getValue() <= LogFactory.Level.ERROR.getValue();
    }

    @Override // com.amazonaws.logging.Log
    public void i(Object obj, Throwable th2) {
        if (n()) {
            o(LogFactory.Level.WARN, obj, th2);
        }
    }

    @Override // com.amazonaws.logging.Log
    public void j(Object obj) {
        if (n()) {
            o(LogFactory.Level.WARN, obj, null);
        }
    }

    @Override // com.amazonaws.logging.Log
    public void k(Object obj) {
        if (m()) {
            o(LogFactory.Level.TRACE, obj, null);
        }
    }

    public boolean m() {
        return l() == null || l().getValue() <= LogFactory.Level.TRACE.getValue();
    }

    public boolean n() {
        return l() == null || l().getValue() <= LogFactory.Level.WARN.getValue();
    }
}
