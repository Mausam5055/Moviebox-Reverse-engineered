package com.google.firebase.sessions;

import android.util.Log;
import com.google.android.gms.tasks.Task;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class InstallationId {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Companion f32578c = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f32579a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f32580b;

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r10v17 */
        /* JADX WARN: Type inference failed for: r10v4 */
        /* JADX WARN: Type inference failed for: r10v5, types: [jc.e] */
        /* JADX WARN: Type inference failed for: r9v0, types: [java.lang.Object, jc.e] */
        /* JADX WARN: Type inference failed for: r9v1 */
        /* JADX WARN: Type inference failed for: r9v14 */
        /* JADX WARN: Type inference failed for: r9v15 */
        /* JADX WARN: Type inference failed for: r9v16 */
        /* JADX WARN: Type inference failed for: r9v17 */
        /* JADX WARN: Type inference failed for: r9v18 */
        /* JADX WARN: Type inference failed for: r9v19 */
        /* JADX WARN: Type inference failed for: r9v2 */
        /* JADX WARN: Type inference failed for: r9v5, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r9v6 */
        /* JADX WARN: Type inference failed for: r9v7 */
        public final Object a(jc.e eVar, Continuation continuation) throws Throwable {
            InstallationId$Companion$create$1 installationId$Companion$create$1;
            ?? r11;
            String str;
            ?? r12;
            if (continuation instanceof InstallationId$Companion$create$1) {
                installationId$Companion$create$1 = (InstallationId$Companion$create$1) continuation;
                int i11 = installationId$Companion$create$1.label;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    installationId$Companion$create$1.label = i11 - Integer.MIN_VALUE;
                } else {
                    installationId$Companion$create$1 = new InstallationId$Companion$create$1(this, continuation);
                }
            } else {
                installationId$Companion$create$1 = new InstallationId$Companion$create$1(this, continuation);
            }
            Object objA = installationId$Companion$create$1.result;
            Object objF = IntrinsicsKt.f();
            int i12 = installationId$Companion$create$1.label;
            String str2 = "";
            try {
                try {
                    if (i12 != 0) {
                        if (i12 == 1) {
                            jc.e eVar2 = (jc.e) installationId$Companion$create$1.L$0;
                            ResultKt.b(objA);
                            eVar = eVar2;
                        } else {
                            if (i12 != 2) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            String str3 = (String) installationId$Companion$create$1.L$0;
                            ResultKt.b(objA);
                            eVar = str3;
                        }
                        Intrinsics.g(objA, "{\n          firebaseInst…ions.id.await()\n        }");
                        str2 = (String) objA;
                        r12 = eVar;
                        return new InstallationId(str2, r12, null);
                    }
                    ResultKt.b(objA);
                    Task taskA = eVar.a(false);
                    Intrinsics.g(taskA, "firebaseInstallations.getToken(false)");
                    installationId$Companion$create$1.L$0 = eVar;
                    installationId$Companion$create$1.label = 1;
                    objA = c00.b.a(taskA, installationId$Companion$create$1);
                    eVar = eVar;
                    if (objA == objF) {
                        return objF;
                    }
                    String strB = ((com.google.firebase.installations.f) objA).b();
                    Intrinsics.g(strB, "{\n          firebaseInst…).await().token\n        }");
                    r11 = eVar;
                    str = strB;
                } catch (Exception e11) {
                    Log.w("InstallationId", "Error getting authentication token.", e11);
                    r11 = eVar;
                    str = "";
                }
                Task id2 = r11.getId();
                Intrinsics.g(id2, "firebaseInstallations.id");
                installationId$Companion$create$1.L$0 = str;
                installationId$Companion$create$1.label = 2;
                objA = c00.b.a(id2, installationId$Companion$create$1);
                eVar = str;
                if (objA == objF) {
                    return objF;
                }
                Intrinsics.g(objA, "{\n          firebaseInst…ions.id.await()\n        }");
                str2 = (String) objA;
                r12 = eVar;
            } catch (Exception e12) {
                Log.w("InstallationId", "Error getting Firebase installation id .", e12);
                r12 = eVar;
            }
            return new InstallationId(str2, r12, null);
        }
    }

    private InstallationId(String str, String str2) {
        this.f32579a = str;
        this.f32580b = str2;
    }

    public /* synthetic */ InstallationId(String str, String str2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2);
    }

    public final String a() {
        return this.f32580b;
    }

    public final String b() {
        return this.f32579a;
    }
}
