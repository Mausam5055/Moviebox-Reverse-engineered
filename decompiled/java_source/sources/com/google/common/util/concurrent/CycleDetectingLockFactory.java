package com.google.common.util.concurrent;

import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Lists;
import com.google.common.collect.MapMaker;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.ConcurrentMap;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes4.dex */
public abstract class CycleDetectingLockFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ConcurrentMap f30997a = new MapMaker().l().i();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final q f30998b = new q(CycleDetectingLockFactory.class);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final ThreadLocal f30999c = new a();

    private static class ExampleStackTrace extends IllegalStateException {
        static final StackTraceElement[] EMPTY_STACK_TRACE = new StackTraceElement[0];
        static final ImmutableSet<String> EXCLUDED_CLASS_NAMES = ImmutableSet.of(CycleDetectingLockFactory.class.getName(), ExampleStackTrace.class.getName(), b.class.getName());

        ExampleStackTrace(b bVar, b bVar2) {
            throw null;
        }
    }

    public enum Policies {
        THROW { // from class: com.google.common.util.concurrent.CycleDetectingLockFactory.Policies.1
            @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.Policies
            public void handlePotentialDeadlock(PotentialDeadlockException potentialDeadlockException) {
                throw potentialDeadlockException;
            }
        },
        WARN { // from class: com.google.common.util.concurrent.CycleDetectingLockFactory.Policies.2
            @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.Policies
            public void handlePotentialDeadlock(PotentialDeadlockException potentialDeadlockException) {
                CycleDetectingLockFactory.f30998b.a().log(Level.SEVERE, "Detected potential deadlock", (Throwable) potentialDeadlockException);
            }
        },
        DISABLED { // from class: com.google.common.util.concurrent.CycleDetectingLockFactory.Policies.3
            @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.Policies
            public void handlePotentialDeadlock(PotentialDeadlockException potentialDeadlockException) {
            }
        };

        /* synthetic */ Policies(a aVar) {
            this();
        }

        public abstract /* synthetic */ void handlePotentialDeadlock(PotentialDeadlockException potentialDeadlockException);
    }

    public static final class PotentialDeadlockException extends ExampleStackTrace {
        private final ExampleStackTrace conflictingStackTrace;

        private PotentialDeadlockException(b bVar, b bVar2, ExampleStackTrace exampleStackTrace) {
            super(bVar, bVar2);
            this.conflictingStackTrace = exampleStackTrace;
            initCause(exampleStackTrace);
        }

        /* synthetic */ PotentialDeadlockException(b bVar, b bVar2, ExampleStackTrace exampleStackTrace, a aVar) {
            this(bVar, bVar2, exampleStackTrace);
        }

        public ExampleStackTrace getConflictingStackTrace() {
            return this.conflictingStackTrace;
        }

        @Override // java.lang.Throwable
        public String getMessage() {
            String message = super.getMessage();
            Objects.requireNonNull(message);
            StringBuilder sb2 = new StringBuilder(message);
            for (Throwable cause = this.conflictingStackTrace; cause != null; cause = cause.getCause()) {
                sb2.append(", ");
                sb2.append(cause.getMessage());
            }
            return sb2.toString();
        }
    }

    class a extends ThreadLocal {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ArrayList initialValue() {
            return Lists.m(3);
        }
    }

    private static class b {
    }
}
