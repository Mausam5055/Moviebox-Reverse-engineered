package com.google.common.util.concurrent;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public abstract class l extends k implements r {

    public static abstract class a extends l {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final r f31034a;

        protected a(r rVar) {
            this.f31034a = (r) com.google.common.base.m.o(rVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.util.concurrent.k
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public final r l() {
            return this.f31034a;
        }
    }

    protected l() {
    }

    @Override // com.google.common.util.concurrent.r
    public void addListener(Runnable runnable, Executor executor) {
        delegate().addListener(runnable, executor);
    }

    /* JADX INFO: renamed from: m */
    protected abstract r delegate();
}
