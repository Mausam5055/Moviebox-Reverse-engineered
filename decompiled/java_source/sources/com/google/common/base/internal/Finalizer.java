package com.google.common.base.internal;

import java.lang.ref.PhantomReference;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes4.dex */
public class Finalizer implements Runnable {
    private static final String FINALIZABLE_REFERENCE = "com.google.common.base.FinalizableReference";
    private static final Constructor<Thread> bigThreadConstructor;
    private static final Field inheritableThreadLocals;
    private static final Logger logger = Logger.getLogger(Finalizer.class.getName());
    private final WeakReference<Class<?>> finalizableReferenceClassReference;
    private final PhantomReference<Object> frqReference;
    private final ReferenceQueue<Object> queue;

    static {
        Constructor<Thread> bigThreadConstructor2 = getBigThreadConstructor();
        bigThreadConstructor = bigThreadConstructor2;
        inheritableThreadLocals = bigThreadConstructor2 == null ? getInheritableThreadLocalsField() : null;
    }

    private Finalizer(Class<?> cls, ReferenceQueue<Object> referenceQueue, PhantomReference<Object> phantomReference) {
        this.queue = referenceQueue;
        this.finalizableReferenceClassReference = new WeakReference<>(cls);
        this.frqReference = phantomReference;
    }

    private boolean cleanUp(Reference<?> reference) {
        Reference<? extends Object> referencePoll;
        Method finalizeReferentMethod = getFinalizeReferentMethod();
        if (finalizeReferentMethod == null || !finalizeReference(reference, finalizeReferentMethod)) {
            return false;
        }
        do {
            referencePoll = this.queue.poll();
            if (referencePoll == null) {
                return true;
            }
        } while (finalizeReference(referencePoll, finalizeReferentMethod));
        return false;
    }

    private boolean finalizeReference(Reference<?> reference, Method method) {
        reference.clear();
        if (reference == this.frqReference) {
            return false;
        }
        try {
            method.invoke(reference, null);
            return true;
        } catch (Throwable th2) {
            logger.log(Level.SEVERE, "Error cleaning up after reference.", th2);
            return true;
        }
    }

    private static Constructor<Thread> getBigThreadConstructor() {
        try {
            return Thread.class.getConstructor(ThreadGroup.class, Runnable.class, String.class, Long.TYPE, Boolean.TYPE);
        } catch (Throwable unused) {
            return null;
        }
    }

    private Method getFinalizeReferentMethod() {
        Class<?> cls = this.finalizableReferenceClassReference.get();
        if (cls == null) {
            return null;
        }
        try {
            return cls.getMethod("finalizeReferent", null);
        } catch (NoSuchMethodException e11) {
            throw new AssertionError(e11);
        }
    }

    private static Field getInheritableThreadLocalsField() {
        try {
            Field declaredField = Thread.class.getDeclaredField("inheritableThreadLocals");
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable unused) {
            logger.log(Level.INFO, "Couldn't access Thread.inheritableThreadLocals. Reference finalizer threads will inherit thread local values.");
            return null;
        }
    }

    public static void startFinalizer(Class<?> cls, ReferenceQueue<Object> referenceQueue, PhantomReference<Object> phantomReference) {
        cls.getName();
        throw new IllegalArgumentException("Expected com.google.common.base.FinalizableReference.");
    }

    @Override // java.lang.Runnable
    public void run() {
        while (cleanUp(this.queue.remove())) {
        }
    }
}
