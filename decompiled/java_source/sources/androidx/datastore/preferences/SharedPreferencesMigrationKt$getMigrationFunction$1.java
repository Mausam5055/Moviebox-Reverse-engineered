package androidx.datastore.preferences;

import androidx.datastore.preferences.core.MutablePreferences;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Landroidx/datastore/migrations/b;", "sharedPrefs", "Landroidx/datastore/preferences/core/c;", "currentData", "<anonymous>", "(Landroidx/datastore/migrations/b;Landroidx/datastore/preferences/core/c;)Landroidx/datastore/preferences/core/c;"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.datastore.preferences.SharedPreferencesMigrationKt$getMigrationFunction$1", f = "SharedPreferencesMigration.android.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension
final class SharedPreferencesMigrationKt$getMigrationFunction$1 extends SuspendLambda implements Function3<androidx.datastore.migrations.b, androidx.datastore.preferences.core.c, Continuation<? super androidx.datastore.preferences.core.c>, Object> {
    /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    int label;

    SharedPreferencesMigrationKt$getMigrationFunction$1(Continuation<? super SharedPreferencesMigrationKt$getMigrationFunction$1> continuation) {
        super(3, continuation);
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(androidx.datastore.migrations.b bVar, androidx.datastore.preferences.core.c cVar, Continuation<? super androidx.datastore.preferences.core.c> continuation) {
        SharedPreferencesMigrationKt$getMigrationFunction$1 sharedPreferencesMigrationKt$getMigrationFunction$1 = new SharedPreferencesMigrationKt$getMigrationFunction$1(continuation);
        sharedPreferencesMigrationKt$getMigrationFunction$1.L$0 = bVar;
        sharedPreferencesMigrationKt$getMigrationFunction$1.L$1 = cVar;
        return sharedPreferencesMigrationKt$getMigrationFunction$1.invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        androidx.datastore.migrations.b bVar = (androidx.datastore.migrations.b) this.L$0;
        androidx.datastore.preferences.core.c cVar = (androidx.datastore.preferences.core.c) this.L$1;
        Set setKeySet = cVar.a().keySet();
        ArrayList arrayList = new ArrayList(CollectionsKt.v(setKeySet, 10));
        Iterator it = setKeySet.iterator();
        while (it.hasNext()) {
            arrayList.add(((androidx.datastore.preferences.core.c.a) it.next()).a());
        }
        Map mapA = bVar.a();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : mapA.entrySet()) {
            if (!arrayList.contains((String) entry.getKey())) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        MutablePreferences mutablePreferencesC = cVar.c();
        for (Map.Entry entry2 : linkedHashMap.entrySet()) {
            String str = (String) entry2.getKey();
            Object value = entry2.getValue();
            if (value instanceof Boolean) {
                mutablePreferencesC.i(androidx.datastore.preferences.core.e.a(str), value);
            } else if (value instanceof Float) {
                mutablePreferencesC.i(androidx.datastore.preferences.core.e.d(str), value);
            } else if (value instanceof Integer) {
                mutablePreferencesC.i(androidx.datastore.preferences.core.e.e(str), value);
            } else if (value instanceof Long) {
                mutablePreferencesC.i(androidx.datastore.preferences.core.e.f(str), value);
            } else if (value instanceof String) {
                mutablePreferencesC.i(androidx.datastore.preferences.core.e.g(str), value);
            } else if (value instanceof Set) {
                androidx.datastore.preferences.core.c.a aVarH = androidx.datastore.preferences.core.e.h(str);
                Intrinsics.f(value, "null cannot be cast to non-null type kotlin.collections.Set<kotlin.String>");
                mutablePreferencesC.i(aVarH, (Set) value);
            }
        }
        return mutablePreferencesC.d();
    }
}
