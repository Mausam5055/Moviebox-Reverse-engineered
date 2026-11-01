package com.vungle.ads.internal.session;

import android.content.Context;
import com.vungle.ads.internal.model.j;
import com.vungle.ads.internal.util.g;
import com.vungle.ads.internal.util.o;
import com.vungle.ads.internal.util.p;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.TimeUnit;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KTypeProjection;
import kotlinx.serialization.h;
import kotlinx.serialization.json.d;
import kotlinx.serialization.json.n;

/* JADX INFO: loaded from: classes7.dex */
public final class UnclosedAdDetector {
    private static final String FILENAME = "unclosed_ad";
    private final Context context;
    private final com.vungle.ads.internal.executor.a executors;
    private File file;
    private final p pathProvider;
    private boolean ready;
    private final String sessionId;
    private final CopyOnWriteArrayList<j> unclosedAdList;
    public static final a Companion = new a(null);
    private static final kotlinx.serialization.json.a json = n.b(null, new Function1<d, Unit>() { // from class: com.vungle.ads.internal.session.UnclosedAdDetector$Companion$json$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((d) obj);
            return Unit.f67061a;
        }

        public final void invoke(d Json) {
            Intrinsics.h(Json, "$this$Json");
            Json.f(true);
            Json.d(true);
            Json.e(false);
            Json.c(true);
        }
    }, 1, null);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public UnclosedAdDetector(Context context, String sessionId, com.vungle.ads.internal.executor.a executors, p pathProvider) {
        Object objM454constructorimpl;
        boolean zM461isSuccessimpl;
        Intrinsics.h(context, "context");
        Intrinsics.h(sessionId, "sessionId");
        Intrinsics.h(executors, "executors");
        Intrinsics.h(pathProvider, "pathProvider");
        this.context = context;
        this.sessionId = sessionId;
        this.executors = executors;
        this.pathProvider = pathProvider;
        this.file = pathProvider.getUnclosedAdFile(FILENAME);
        this.unclosedAdList = new CopyOnWriteArrayList<>();
        if (this.file.exists()) {
            zM461isSuccessimpl = true;
        } else {
            try {
                Result.Companion companion = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl(Boolean.valueOf(this.file.createNewFile()));
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
            }
            Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
            if (thM457exceptionOrNullimpl != null) {
                o.Companion.e("UnclosedAdDetector", "Fail to create unclosed ad file: " + thM457exceptionOrNullimpl.getMessage());
            }
            zM461isSuccessimpl = Result.m461isSuccessimpl(objM454constructorimpl);
        }
        this.ready = zM461isSuccessimpl;
    }

    private final /* synthetic */ <T> T decodeJson(String str) {
        kotlinx.serialization.json.a aVar = json;
        f00.c cVarA = aVar.a();
        Intrinsics.n(6, "T");
        kotlinx.serialization.b bVarB = h.b(cVarA, null);
        Intrinsics.f(bVarB, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
        return (T) aVar.b(bVarB, str);
    }

    private final List<j> readUnclosedAdFromFile() {
        return !this.ready ? CollectionsKt.l() : (List) new com.vungle.ads.internal.executor.b(this.executors.getIoExecutor().submit(new Callable() { // from class: com.vungle.ads.internal.session.a
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return UnclosedAdDetector.m428readUnclosedAdFromFile$lambda4(this.f60659a);
            }
        })).get(1000L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: readUnclosedAdFromFile$lambda-4, reason: not valid java name */
    public static final List m428readUnclosedAdFromFile$lambda4(UnclosedAdDetector this$0) {
        List arrayList;
        Intrinsics.h(this$0, "this$0");
        try {
            String string = g.INSTANCE.readString(this$0.file);
            if (string == null || string.length() == 0) {
                arrayList = new ArrayList();
            } else {
                kotlinx.serialization.json.a aVar = json;
                kotlinx.serialization.b bVarB = h.b(aVar.a(), Reflection.n(List.class, KTypeProjection.INSTANCE.a(Reflection.m(j.class))));
                Intrinsics.f(bVarB, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
                arrayList = (List) aVar.b(bVarB, string);
            }
            return arrayList;
        } catch (Exception e11) {
            o.Companion.e("UnclosedAdDetector", "Fail to read unclosed ad file " + e11.getMessage());
            return new ArrayList();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: retrieveUnclosedAd$lambda-3, reason: not valid java name */
    public static final void m429retrieveUnclosedAd$lambda3(UnclosedAdDetector this$0) {
        Intrinsics.h(this$0, "this$0");
        try {
            g.deleteAndLogIfFailed(this$0.file);
        } catch (Exception e11) {
            o.Companion.e("UnclosedAdDetector", "Fail to delete file " + e11.getMessage());
        }
    }

    private final void writeUnclosedAdToFile(List<j> list) {
        if (this.ready) {
            try {
                kotlinx.serialization.json.a aVar = json;
                kotlinx.serialization.b bVarB = h.b(aVar.a(), Reflection.n(List.class, KTypeProjection.INSTANCE.a(Reflection.m(j.class))));
                Intrinsics.f(bVarB, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
                final String strC = aVar.c(bVarB, list);
                this.executors.getIoExecutor().execute(new Runnable() { // from class: com.vungle.ads.internal.session.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        UnclosedAdDetector.m430writeUnclosedAdToFile$lambda5(this.f60661a, strC);
                    }
                });
            } catch (Throwable th2) {
                o.Companion.e("UnclosedAdDetector", "Fail to write unclosed ad file " + th2.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: writeUnclosedAdToFile$lambda-5, reason: not valid java name */
    public static final void m430writeUnclosedAdToFile$lambda5(UnclosedAdDetector this$0, String jsonContent) {
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(jsonContent, "$jsonContent");
        g.INSTANCE.writeString(this$0.file, jsonContent);
    }

    public final void addUnclosedAd(j ad2) {
        Intrinsics.h(ad2, "ad");
        if (this.ready) {
            ad2.setSessionId(this.sessionId);
            this.unclosedAdList.add(ad2);
            writeUnclosedAdToFile(this.unclosedAdList);
        }
    }

    public final Context getContext() {
        return this.context;
    }

    public final com.vungle.ads.internal.executor.a getExecutors() {
        return this.executors;
    }

    public final p getPathProvider() {
        return this.pathProvider;
    }

    public final void removeUnclosedAd(j ad2) {
        Intrinsics.h(ad2, "ad");
        if (this.ready && this.unclosedAdList.contains(ad2)) {
            this.unclosedAdList.remove(ad2);
            writeUnclosedAdToFile(this.unclosedAdList);
        }
    }

    public final List<j> retrieveUnclosedAd() {
        ArrayList arrayList = new ArrayList();
        if (!this.ready) {
            return arrayList;
        }
        List<j> unclosedAdFromFile = readUnclosedAdFromFile();
        if (unclosedAdFromFile != null) {
            arrayList.addAll(unclosedAdFromFile);
        }
        this.executors.getIoExecutor().execute(new Runnable() { // from class: com.vungle.ads.internal.session.b
            @Override // java.lang.Runnable
            public final void run() {
                UnclosedAdDetector.m429retrieveUnclosedAd$lambda3(this.f60660a);
            }
        });
        return arrayList;
    }
}
