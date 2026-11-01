package com.google.firebase.sessions.api;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.sync.g;

/* JADX INFO: loaded from: classes4.dex */
public final class FirebaseSessionsDependencies {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final FirebaseSessionsDependencies f32632a = new FirebaseSessionsDependencies();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Map f32633b = Collections.synchronizedMap(new LinkedHashMap());

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final kotlinx.coroutines.sync.a f32634a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private SessionSubscriber f32635b;

        public a(kotlinx.coroutines.sync.a mutex, SessionSubscriber sessionSubscriber) {
            Intrinsics.h(mutex, "mutex");
            this.f32634a = mutex;
            this.f32635b = sessionSubscriber;
        }

        public /* synthetic */ a(kotlinx.coroutines.sync.a aVar, SessionSubscriber sessionSubscriber, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this(aVar, (i11 & 2) != 0 ? null : sessionSubscriber);
        }

        public final kotlinx.coroutines.sync.a a() {
            return this.f32634a;
        }

        public final SessionSubscriber b() {
            return this.f32635b;
        }

        public final void c(SessionSubscriber sessionSubscriber) {
            this.f32635b = sessionSubscriber;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Intrinsics.c(this.f32634a, aVar.f32634a) && Intrinsics.c(this.f32635b, aVar.f32635b);
        }

        public int hashCode() {
            int iHashCode = this.f32634a.hashCode() * 31;
            SessionSubscriber sessionSubscriber = this.f32635b;
            return iHashCode + (sessionSubscriber == null ? 0 : sessionSubscriber.hashCode());
        }

        public String toString() {
            return "Dependency(mutex=" + this.f32634a + ", subscriber=" + this.f32635b + ')';
        }
    }

    private FirebaseSessionsDependencies() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void a(SessionSubscriber.Name subscriberName) {
        Intrinsics.h(subscriberName, "subscriberName");
        if (subscriberName == SessionSubscriber.Name.PERFORMANCE) {
            throw new IllegalArgumentException("Incompatible versions of Firebase Perf and Firebase Sessions.\nA safe combination would be:\n  firebase-sessions:1.1.0\n  firebase-crashlytics:18.5.0\n  firebase-perf:20.5.0\nFor more information contact Firebase Support.");
        }
        Map dependencies = f32633b;
        if (dependencies.containsKey(subscriberName)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Dependency ");
            sb2.append(subscriberName);
            sb2.append(" already added.");
            return;
        }
        Intrinsics.g(dependencies, "dependencies");
        dependencies.put(subscriberName, new a(g.a(true), null, 2, 0 == true ? 1 : 0));
        StringBuilder sb3 = new StringBuilder();
        sb3.append("Dependency to ");
        sb3.append(subscriberName);
        sb3.append(" added.");
    }

    private final a b(SessionSubscriber.Name name) {
        Map dependencies = f32633b;
        Intrinsics.g(dependencies, "dependencies");
        Object obj = dependencies.get(name);
        if (obj != null) {
            Intrinsics.g(obj, "dependencies.getOrElse(s…load time.\"\n      )\n    }");
            return (a) obj;
        }
        throw new IllegalStateException("Cannot get dependency " + name + ". Dependencies should be added at class load time.");
    }

    public static final void e(SessionSubscriber subscriber) {
        Intrinsics.h(subscriber, "subscriber");
        SessionSubscriber.Name nameB = subscriber.b();
        a aVarB = f32632a.b(nameB);
        if (aVarB.b() != null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Subscriber ");
            sb2.append(nameB);
            sb2.append(" already registered.");
            return;
        }
        aVarB.c(subscriber);
        StringBuilder sb3 = new StringBuilder();
        sb3.append("Subscriber ");
        sb3.append(nameB);
        sb3.append(" registered.");
        kotlinx.coroutines.sync.a.C0814a.c(aVarB.a(), null, 1, null);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0071  */
    /* JADX WARN: Code duplicated, block: B:19:0x00a0 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:20:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x00a1 -> B:27:0x00a2). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object c(kotlin.coroutines.Continuation r11) {
        /*
            r10 = this;
            boolean r0 = r11 instanceof com.google.firebase.sessions.api.FirebaseSessionsDependencies$getRegisteredSubscribers$1
            if (r0 == 0) goto L13
            r0 = r11
            com.google.firebase.sessions.api.FirebaseSessionsDependencies$getRegisteredSubscribers$1 r0 = (com.google.firebase.sessions.api.FirebaseSessionsDependencies$getRegisteredSubscribers$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.google.firebase.sessions.api.FirebaseSessionsDependencies$getRegisteredSubscribers$1 r0 = new com.google.firebase.sessions.api.FirebaseSessionsDependencies$getRegisteredSubscribers$1
            r0.<init>(r10, r11)
        L18:
            java.lang.Object r11 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.f()
            int r2 = r0.label
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L48
            if (r2 != r3) goto L40
            java.lang.Object r2 = r0.L$5
            java.lang.Object r5 = r0.L$4
            java.util.Map r5 = (java.util.Map) r5
            java.lang.Object r6 = r0.L$3
            kotlinx.coroutines.sync.a r6 = (kotlinx.coroutines.sync.a) r6
            java.lang.Object r7 = r0.L$2
            com.google.firebase.sessions.api.SessionSubscriber$Name r7 = (com.google.firebase.sessions.api.SessionSubscriber.Name) r7
            java.lang.Object r8 = r0.L$1
            java.util.Iterator r8 = (java.util.Iterator) r8
            java.lang.Object r9 = r0.L$0
            java.util.Map r9 = (java.util.Map) r9
            kotlin.ResultKt.b(r11)
            goto La2
        L40:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r0)
            throw r11
        L48:
            kotlin.ResultKt.b(r11)
            java.util.Map r11 = com.google.firebase.sessions.api.FirebaseSessionsDependencies.f32633b
            java.lang.String r2 = "dependencies"
            kotlin.jvm.internal.Intrinsics.g(r11, r2)
            java.util.LinkedHashMap r2 = new java.util.LinkedHashMap
            int r5 = r11.size()
            int r5 = kotlin.collections.MapsKt.e(r5)
            r2.<init>(r5)
            java.util.Set r11 = r11.entrySet()
            java.lang.Iterable r11 = (java.lang.Iterable) r11
            java.util.Iterator r11 = r11.iterator()
            r8 = r11
            r5 = r2
        L6b:
            boolean r11 = r8.hasNext()
            if (r11 == 0) goto Lb5
            java.lang.Object r11 = r8.next()
            java.util.Map$Entry r11 = (java.util.Map.Entry) r11
            java.lang.Object r2 = r11.getKey()
            java.lang.Object r6 = r11.getKey()
            r7 = r6
            com.google.firebase.sessions.api.SessionSubscriber$Name r7 = (com.google.firebase.sessions.api.SessionSubscriber.Name) r7
            java.lang.Object r11 = r11.getValue()
            com.google.firebase.sessions.api.FirebaseSessionsDependencies$a r11 = (com.google.firebase.sessions.api.FirebaseSessionsDependencies.a) r11
            kotlinx.coroutines.sync.a r6 = r11.a()
            r0.L$0 = r5
            r0.L$1 = r8
            r0.L$2 = r7
            r0.L$3 = r6
            r0.L$4 = r5
            r0.L$5 = r2
            r0.label = r3
            java.lang.Object r11 = r6.h(r4, r0)
            if (r11 != r1) goto La1
            return r1
        La1:
            r9 = r5
        La2:
            com.google.firebase.sessions.api.FirebaseSessionsDependencies r11 = com.google.firebase.sessions.api.FirebaseSessionsDependencies.f32632a     // Catch: java.lang.Throwable -> Lb0
            com.google.firebase.sessions.api.SessionSubscriber r11 = r11.d(r7)     // Catch: java.lang.Throwable -> Lb0
            r6.unlock(r4)
            r5.put(r2, r11)
            r5 = r9
            goto L6b
        Lb0:
            r11 = move-exception
            r6.unlock(r4)
            throw r11
        Lb5:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.sessions.api.FirebaseSessionsDependencies.c(kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final SessionSubscriber d(SessionSubscriber.Name subscriberName) {
        Intrinsics.h(subscriberName, "subscriberName");
        SessionSubscriber sessionSubscriberB = b(subscriberName).b();
        if (sessionSubscriberB != null) {
            return sessionSubscriberB;
        }
        throw new IllegalStateException("Subscriber " + subscriberName + " has not been registered.");
    }
}
