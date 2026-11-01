package com.vungle.ads.internal.network;

import com.vungle.ads.TpatError;
import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.signals.SignalManager;
import com.vungle.ads.internal.util.o;
import com.vungle.ads.internal.util.p;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.regex.Pattern;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KTypeProjection;
import kotlin.text.Regex;

/* JADX INFO: loaded from: classes7.dex */
public final class h {
    public static final a Companion = new a(null);
    private static final String FAILED_TPATS = "FAILED_TPATS";
    private static final String TAG = "TpatSender";
    private final Executor jobExecutor;
    private final SignalManager signalManager;
    private final com.vungle.ads.internal.persistence.b tpatFilePreferences;
    private final Object tpatLock;
    private final VungleApiClient vungleApiClient;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public h(VungleApiClient vungleApiClient, Executor ioExecutor, Executor jobExecutor, p pathProvider, SignalManager signalManager) {
        Intrinsics.h(vungleApiClient, "vungleApiClient");
        Intrinsics.h(ioExecutor, "ioExecutor");
        Intrinsics.h(jobExecutor, "jobExecutor");
        Intrinsics.h(pathProvider, "pathProvider");
        this.vungleApiClient = vungleApiClient;
        this.jobExecutor = jobExecutor;
        this.signalManager = signalManager;
        this.tpatFilePreferences = com.vungle.ads.internal.persistence.b.Companion.get(ioExecutor, pathProvider, com.vungle.ads.internal.persistence.b.TPAT_FAILED_FILENAME);
        this.tpatLock = new Object();
    }

    public /* synthetic */ h(VungleApiClient vungleApiClient, Executor executor, Executor executor2, p pVar, SignalManager signalManager, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(vungleApiClient, executor, executor2, pVar, (i11 & 16) != 0 ? null : signalManager);
    }

    private final Map<String, c> getStoredTpats() {
        Object objM454constructorimpl;
        String string = this.tpatFilePreferences.getString(FAILED_TPATS);
        if (string != null) {
            try {
                Result.Companion companion = Result.INSTANCE;
                kotlinx.serialization.json.a.C0816a c0816a = kotlinx.serialization.json.a.f68231d;
                f00.c cVarA = c0816a.a();
                KTypeProjection.Companion companion2 = KTypeProjection.INSTANCE;
                kotlinx.serialization.b bVarB = kotlinx.serialization.h.b(cVarA, Reflection.d(Reflection.o(Map.class, companion2.a(Reflection.m(String.class)), companion2.a(Reflection.m(c.class)))));
                Intrinsics.f(bVarB, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
                objM454constructorimpl = Result.m454constructorimpl((Map) c0816a.b(bVarB, string));
            } catch (Throwable th2) {
                Result.Companion companion3 = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
            }
            Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
            if (thM457exceptionOrNullimpl != null) {
                o.Companion.e(TAG, "Failed to decode stored tpats: " + thM457exceptionOrNullimpl);
            }
            if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
                objM454constructorimpl = new LinkedHashMap();
            }
            Map<String, c> map = (Map) objM454constructorimpl;
            if (map != null) {
                return map;
            }
        }
        return new LinkedHashMap();
    }

    private final boolean isPriorityTpat(String str) {
        return Intrinsics.c(str, com.vungle.ads.internal.b.CHECKPOINT_0) || Intrinsics.c(str, com.vungle.ads.internal.b.CLICK_URL) || Intrinsics.c(str, "impression") || Intrinsics.c(str, com.vungle.ads.internal.b.LOAD_AD);
    }

    private final void logTpatError(f fVar, String str, com.vungle.ads.internal.model.e eVar, Sdk$SDKError.Reason reason) {
        String str2 = "tpat key: " + fVar.getTpatKey() + ", error: " + eVar.getDescription() + ", errorIsTerminal: " + eVar.getErrorIsTerminal() + " url: " + str;
        o.Companion.e(TAG, str2);
        new TpatError(reason, str2).setLogEntry$vungle_ads_release(fVar.getLogEntry()).logErrorNoReturnValue$vungle_ads_release();
    }

    private final com.vungle.ads.internal.model.e performPriorityRetry(f fVar, String str) {
        com.vungle.ads.internal.model.e eVarPingTPAT;
        Boolean priorityRetry = fVar.getPriorityRetry();
        int i11 = 0;
        boolean z10 = ConfigManager.INSTANCE.retryPriorityTPATs() && (priorityRetry != null ? priorityRetry.booleanValue() : isPriorityTpat(fVar.getTpatKey()));
        do {
            eVarPingTPAT = this.vungleApiClient.pingTPAT(str, fVar.getHeaders(), fVar.getBody(), fVar.getMethod(), fVar.getLogEntry());
            if (!z10 || eVarPingTPAT == null || !eVarPingTPAT.isRetryCode()) {
                break;
            }
            i11++;
        } while (i11 < fVar.getPriorityRetryCount());
        if (eVarPingTPAT != null) {
            logTpatError(fVar, str, eVarPingTPAT, i11 >= fVar.getPriorityRetryCount() ? Sdk$SDKError.Reason.TPAT_RETRY_FAILED : Sdk$SDKError.Reason.TPAT_ERROR);
        }
        return eVarPingTPAT;
    }

    private final void saveStoredTpats(Map<String, c> map) {
        Object objM454constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            com.vungle.ads.internal.persistence.b bVar = this.tpatFilePreferences;
            kotlinx.serialization.json.a.C0816a c0816a = kotlinx.serialization.json.a.f68231d;
            f00.c cVarA = c0816a.a();
            KTypeProjection.Companion companion2 = KTypeProjection.INSTANCE;
            kotlinx.serialization.b bVarB = kotlinx.serialization.h.b(cVarA, Reflection.d(Reflection.o(Map.class, companion2.a(Reflection.m(String.class)), companion2.a(Reflection.m(c.class)))));
            Intrinsics.f(bVarB, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
            bVar.put(FAILED_TPATS, c0816a.c(bVarB, map)).apply();
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
            o.Companion.e(TAG, "Failed to encode the about to storing tpats: " + map);
        }
    }

    public static /* synthetic */ void sendTpat$default(h hVar, f fVar, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        hVar.sendTpat(fVar, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: sendTpat$lambda-1, reason: not valid java name */
    public static final void m412sendTpat$lambda1(h this$0, f request, String urlWithSessionId, boolean z10) {
        c cVar;
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(request, "$request");
        Intrinsics.h(urlWithSessionId, "$urlWithSessionId");
        com.vungle.ads.internal.model.e eVarPerformPriorityRetry = this$0.performPriorityRetry(request, urlWithSessionId);
        if (request.getRegularRetry()) {
            if (eVarPerformPriorityRetry == null || !eVarPerformPriorityRetry.getErrorIsTerminal()) {
                if (eVarPerformPriorityRetry != null || z10) {
                    synchronized (this$0.tpatLock) {
                        try {
                            Map<String, c> storedTpats = this$0.getStoredTpats();
                            c cVar2 = storedTpats.get(request.getUrl());
                            int retryAttempt = cVar2 != null ? cVar2.getRetryAttempt() : 0;
                            if (eVarPerformPriorityRetry == null && retryAttempt > 0) {
                                storedTpats.remove(request.getUrl());
                                this$0.saveStoredTpats(storedTpats);
                            } else if (eVarPerformPriorityRetry != null && retryAttempt >= request.getRegularRetryCount()) {
                                storedTpats.remove(request.getUrl());
                                this$0.saveStoredTpats(storedTpats);
                                this$0.logTpatError(request, urlWithSessionId, eVarPerformPriorityRetry, Sdk$SDKError.Reason.TPAT_RETRY_FAILED);
                            } else if (eVarPerformPriorityRetry != null) {
                                c cVar3 = storedTpats.get(request.getUrl());
                                if (cVar3 == null || (cVar = c.copy$default(cVar3, null, null, null, retryAttempt + 1, 0, null, 55, null)) == null) {
                                    cVar = new c(request.getMethod(), request.getHeaders(), request.getBody(), 1, request.getRegularRetryCount(), request.getTpatKey());
                                }
                                storedTpats.put(request.getUrl(), cVar);
                                this$0.saveStoredTpats(storedTpats);
                            }
                            Unit unit = Unit.f67061a;
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                }
            }
        }
    }

    public final Executor getJobExecutor() {
        return this.jobExecutor;
    }

    public final SignalManager getSignalManager() {
        return this.signalManager;
    }

    public final VungleApiClient getVungleApiClient() {
        return this.vungleApiClient;
    }

    public final String injectSessionIdToUrl(String url) {
        Intrinsics.h(url, "url");
        SignalManager signalManager = this.signalManager;
        String uuid = signalManager != null ? signalManager.getUuid() : null;
        if (uuid == null) {
            uuid = "";
        }
        if (uuid.length() <= 0) {
            return url;
        }
        String strQuote = Pattern.quote(com.vungle.ads.internal.b.SESSION_ID);
        Intrinsics.g(strQuote, "quote(Constants.SESSION_ID)");
        return new Regex(strQuote).replace(url, uuid);
    }

    public final void resendStoredTpats$vungle_ads_release() {
        for (Map.Entry<String, c> entry : getStoredTpats().entrySet()) {
            String key = entry.getKey();
            c value = entry.getValue();
            sendTpat(new f.a(key).regularRetry(true).priorityRetry(false).headers(value.getHeaders()).body(value.getBody()).regularRetryCount(value.getRetryCount()).method(value.getMethod()).tpatKey(value.getTpatKey()).build(), true);
        }
    }

    public final void sendTpat(final f request, final boolean z10) {
        Intrinsics.h(request, "request");
        final String strInjectSessionIdToUrl = injectSessionIdToUrl(request.getUrl());
        this.jobExecutor.execute(new Runnable() { // from class: com.vungle.ads.internal.network.g
            @Override // java.lang.Runnable
            public final void run() {
                h.m412sendTpat$lambda1(this.f60640a, request, strInjectSessionIdToUrl, z10);
            }
        });
    }
}
