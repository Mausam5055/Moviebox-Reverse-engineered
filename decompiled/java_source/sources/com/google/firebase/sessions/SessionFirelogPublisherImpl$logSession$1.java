package com.google.firebase.sessions;

import com.google.firebase.sessions.api.FirebaseSessionsDependencies;
import com.google.firebase.sessions.settings.SessionsSettings;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "com.google.firebase.sessions.SessionFirelogPublisherImpl$logSession$1", f = "SessionFirelogPublisher.kt", l = {63, 64, 70}, m = "invokeSuspend")
final class SessionFirelogPublisherImpl$logSession$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ t $sessionDetails;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    int label;
    final /* synthetic */ SessionFirelogPublisherImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SessionFirelogPublisherImpl$logSession$1(SessionFirelogPublisherImpl sessionFirelogPublisherImpl, t tVar, Continuation<? super SessionFirelogPublisherImpl$logSession$1> continuation) {
        super(2, continuation);
        this.this$0 = sessionFirelogPublisherImpl;
        this.$sessionDetails = tVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SessionFirelogPublisherImpl$logSession$1(this.this$0, this.$sessionDetails, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((SessionFirelogPublisherImpl$logSession$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0095 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:23:0x0096  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        InstallationId installationId;
        SessionFirelogPublisherImpl sessionFirelogPublisherImpl;
        v vVar;
        com.google.firebase.f fVar;
        t tVar;
        SessionsSettings sessionsSettings;
        Object objC;
        v vVar2;
        SessionFirelogPublisherImpl sessionFirelogPublisherImpl2;
        SessionsSettings sessionsSettings2;
        com.google.firebase.f fVar2;
        t tVar2;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 != 0) {
            if (i11 == 1) {
                ResultKt.b(obj);
            } else if (i11 == 2) {
                ResultKt.b(obj);
                installationId = (InstallationId) obj;
                sessionFirelogPublisherImpl = this.this$0;
                vVar = v.f32736a;
                fVar = sessionFirelogPublisherImpl.f32597b;
                tVar = this.$sessionDetails;
                sessionsSettings = this.this$0.f32599d;
                FirebaseSessionsDependencies firebaseSessionsDependencies = FirebaseSessionsDependencies.f32632a;
                this.L$0 = installationId;
                this.L$1 = sessionFirelogPublisherImpl;
                this.L$2 = vVar;
                this.L$3 = fVar;
                this.L$4 = tVar;
                this.L$5 = sessionsSettings;
                this.label = 3;
                objC = firebaseSessionsDependencies.c(this);
                if (objC == objF) {
                    return objF;
                }
                vVar2 = vVar;
                sessionFirelogPublisherImpl2 = sessionFirelogPublisherImpl;
                sessionsSettings2 = sessionsSettings;
                fVar2 = fVar;
                obj = objC;
                tVar2 = tVar;
            } else {
                if (i11 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                SessionsSettings sessionsSettings3 = (SessionsSettings) this.L$5;
                t tVar3 = (t) this.L$4;
                com.google.firebase.f fVar3 = (com.google.firebase.f) this.L$3;
                v vVar3 = (v) this.L$2;
                SessionFirelogPublisherImpl sessionFirelogPublisherImpl3 = (SessionFirelogPublisherImpl) this.L$1;
                installationId = (InstallationId) this.L$0;
                ResultKt.b(obj);
                sessionFirelogPublisherImpl2 = sessionFirelogPublisherImpl3;
                sessionsSettings2 = sessionsSettings3;
                vVar2 = vVar3;
                tVar2 = tVar3;
                fVar2 = fVar3;
            }
            sessionFirelogPublisherImpl2.g(vVar2.a(fVar2, tVar2, sessionsSettings2, (Map) obj, installationId.b(), installationId.a()));
            return Unit.f67061a;
        }
        ResultKt.b(obj);
        SessionFirelogPublisherImpl sessionFirelogPublisherImpl4 = this.this$0;
        this.label = 1;
        obj = sessionFirelogPublisherImpl4.i(this);
        if (obj == objF) {
            return objF;
        }
        if (((Boolean) obj).booleanValue()) {
            InstallationId.Companion companion = InstallationId.f32578c;
            jc.e eVar = this.this$0.f32598c;
            this.label = 2;
            obj = companion.a(eVar, this);
            if (obj == objF) {
                return objF;
            }
            installationId = (InstallationId) obj;
            sessionFirelogPublisherImpl = this.this$0;
            vVar = v.f32736a;
            fVar = sessionFirelogPublisherImpl.f32597b;
            tVar = this.$sessionDetails;
            sessionsSettings = this.this$0.f32599d;
            FirebaseSessionsDependencies firebaseSessionsDependencies2 = FirebaseSessionsDependencies.f32632a;
            this.L$0 = installationId;
            this.L$1 = sessionFirelogPublisherImpl;
            this.L$2 = vVar;
            this.L$3 = fVar;
            this.L$4 = tVar;
            this.L$5 = sessionsSettings;
            this.label = 3;
            objC = firebaseSessionsDependencies2.c(this);
            if (objC == objF) {
                return objF;
            }
            vVar2 = vVar;
            sessionFirelogPublisherImpl2 = sessionFirelogPublisherImpl;
            sessionsSettings2 = sessionsSettings;
            fVar2 = fVar;
            obj = objC;
            tVar2 = tVar;
            sessionFirelogPublisherImpl2.g(vVar2.a(fVar2, tVar2, sessionsSettings2, (Map) obj, installationId.b(), installationId.a()));
        }
        return Unit.f67061a;
    }
}
