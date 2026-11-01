package org.mvel2.optimizers.dynamic;

import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import n10.b;
import n10.c;
import n10.d;
import n10.e;
import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.optimizers.AbstractOptimizer;
import org.mvel2.optimizers.a;
import org.mvel2.optimizers.impl.asm.ASMAccessorOptimizer;

/* JADX INFO: loaded from: classes7.dex */
public class DynamicOptimizer extends AbstractOptimizer implements a {
    public static final int COLLECTION = 2;
    public static final int OBJ_CREATION = 3;
    public static final int REGULAR_ACCESSOR = 0;
    public static final int SET_ACCESSOR = 1;
    private static volatile b classLoader = null;
    private static ReadWriteLock lock = null;
    public static int maximumTenure = 1500;
    private static final Object oLock = new Object();
    private static Lock readLock = null;
    public static int tenuringThreshold = 50;
    public static long timeSpan = 100;
    public static int totalRecycled;
    private static volatile boolean useSafeClassloading;
    private static Lock writeLock;
    private a firstStage = org.mvel2.optimizers.b.b(org.mvel2.optimizers.b.f71995b);

    static {
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        lock = reentrantReadWriteLock;
        readLock = reentrantReadWriteLock.readLock();
        writeLock = lock.writeLock();
    }

    private static void _init() {
        b bVar = new b(Thread.currentThread().getContextClassLoader(), maximumTenure);
        classLoader = bVar;
        ASMAccessorOptimizer.setMVELClassLoader(bVar);
    }

    public static void enforceTenureLimit() {
        writeLock.lock();
        try {
            if (classLoader.d()) {
                classLoader.b();
                totalRecycled = classLoader.c();
                _init();
            }
        } finally {
            writeLock.unlock();
        }
    }

    public static boolean isOverloaded() {
        return classLoader.d();
    }

    @Override // org.mvel2.optimizers.a
    public Class getEgressType() {
        return this.firstStage.getEgressType();
    }

    @Override // org.mvel2.optimizers.a
    public Object getResultOptPass() {
        return this.firstStage.getResultOptPass();
    }

    @Override // org.mvel2.optimizers.a
    public void init() {
        _init();
    }

    @Override // org.mvel2.optimizers.a
    public boolean isLiteralOnly() {
        return this.firstStage.isLiteralOnly();
    }

    @Override // org.mvel2.optimizers.a
    public org.mvel2.compiler.a optimizeAccessor(ParserContext parserContext, char[] cArr, int i11, int i12, Object obj, Object obj2, VariableResolverFactory variableResolverFactory, boolean z10, Class cls) throws Throwable {
        readLock.lock();
        try {
            parserContext.optimizationNotify();
            try {
                n10.a aVarE = classLoader.e(new d(parserContext, cArr, i11, i12, 0, this.firstStage.optimizeAccessor(parserContext, cArr, i11, i12, obj, obj2, variableResolverFactory, z10, cls)));
                readLock.unlock();
                return aVarE;
            } catch (Throwable th2) {
                th = th2;
                readLock.unlock();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // org.mvel2.optimizers.a
    public org.mvel2.compiler.a optimizeCollection(ParserContext parserContext, Object obj, Class cls, char[] cArr, int i11, int i12, Object obj2, Object obj3, VariableResolverFactory variableResolverFactory) throws Throwable {
        readLock.lock();
        try {
            try {
                n10.a aVarE = classLoader.e(new c(parserContext, obj, cls, cArr, i11, i12, 2, this.firstStage.optimizeCollection(parserContext, obj, cls, cArr, i11, i12, obj2, obj3, variableResolverFactory)));
                readLock.unlock();
                return aVarE;
            } catch (Throwable th2) {
                th = th2;
                readLock.unlock();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // org.mvel2.optimizers.a
    public org.mvel2.compiler.a optimizeObjectCreation(ParserContext parserContext, char[] cArr, int i11, int i12, Object obj, Object obj2, VariableResolverFactory variableResolverFactory) throws Throwable {
        readLock.lock();
        try {
            try {
                n10.a aVarE = classLoader.e(new d(parserContext, cArr, i11, i12, 3, this.firstStage.optimizeObjectCreation(parserContext, cArr, i11, i12, obj, obj2, variableResolverFactory)));
                readLock.unlock();
                return aVarE;
            } catch (Throwable th2) {
                th = th2;
                readLock.unlock();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // org.mvel2.optimizers.a
    public org.mvel2.compiler.a optimizeSetAccessor(ParserContext parserContext, char[] cArr, int i11, int i12, Object obj, Object obj2, VariableResolverFactory variableResolverFactory, boolean z10, Object obj3, Class cls) throws Throwable {
        readLock.lock();
        try {
            try {
                n10.a aVarE = classLoader.e(new e(parserContext, cArr, i11, i12, this.firstStage.optimizeSetAccessor(parserContext, cArr, i11, i12, obj, obj2, variableResolverFactory, z10, obj3, cls)));
                readLock.unlock();
                return aVarE;
            } catch (Throwable th2) {
                th = th2;
                readLock.unlock();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
