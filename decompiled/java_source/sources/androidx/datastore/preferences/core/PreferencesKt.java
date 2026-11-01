package androidx.datastore.preferences.core;

import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public abstract class PreferencesKt {
    public static final Object a(androidx.datastore.core.f fVar, Function2 function2, Continuation continuation) {
        return fVar.a(new PreferencesKt$edit$2(function2, null), continuation);
    }
}
