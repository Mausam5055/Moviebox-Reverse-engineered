package com.google.firebase.datastorage;

import android.content.Context;
import android.os.Process;
import android.util.Log;
import androidx.datastore.core.CorruptionException;
import androidx.datastore.core.f;
import androidx.datastore.preferences.PreferenceDataStoreDelegateKt;
import androidx.datastore.preferences.SharedPreferencesMigrationKt;
import androidx.datastore.preferences.core.d;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference2Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.properties.ReadOnlyProperty;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.j;

/* JADX INFO: loaded from: classes4.dex */
public final class JavaDataStorage {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final /* synthetic */ KProperty[] f31808f = {Reflection.j(new PropertyReference2Impl(JavaDataStorage.class, "dataStore", "getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;", 0))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f31809a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f31810b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ThreadLocal f31811c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ReadOnlyProperty f31812d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final f f31813e;

    public JavaDataStorage(Context context, String name) {
        Intrinsics.h(context, "context");
        Intrinsics.h(name, "name");
        this.f31809a = context;
        this.f31810b = name;
        this.f31811c = new ThreadLocal();
        this.f31812d = PreferenceDataStoreDelegateKt.b(name, new j1.b(new Function1() { // from class: com.google.firebase.datastorage.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return JavaDataStorage.e(this.f31814a, (CorruptionException) obj);
            }
        }), new Function1() { // from class: com.google.firebase.datastorage.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return JavaDataStorage.f(this.f31815a, (Context) obj);
            }
        }, null, 8, null);
        this.f31813e = i(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final androidx.datastore.preferences.core.c e(JavaDataStorage javaDataStorage, CorruptionException ex2) {
        Intrinsics.h(ex2, "ex");
        Log.w(Reflection.b(JavaDataStorage.class).g(), "CorruptionException in " + javaDataStorage.f31810b + " DataStore running in process " + Process.myPid(), ex2);
        return d.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List f(JavaDataStorage javaDataStorage, Context it) {
        Intrinsics.h(it, "it");
        return CollectionsKt.e(SharedPreferencesMigrationKt.b(it, javaDataStorage.f31810b, null, 4, null));
    }

    private final f i(Context context) {
        return (f) this.f31812d.a(context, f31808f[0]);
    }

    public final androidx.datastore.preferences.core.c g(Function1 transform) {
        Intrinsics.h(transform, "transform");
        return (androidx.datastore.preferences.core.c) j.b(null, new JavaDataStorage$editSync$1(this, transform, null), 1, null);
    }

    public final Map h() {
        return (Map) j.b(null, new JavaDataStorage$getAllSync$1(this, null), 1, null);
    }

    public final Object j(androidx.datastore.preferences.core.c.a key, Object obj) {
        Intrinsics.h(key, "key");
        return j.b(null, new JavaDataStorage$getSync$1(this, key, obj, null), 1, null);
    }

    public final androidx.datastore.preferences.core.c k(androidx.datastore.preferences.core.c.a key, Object obj) {
        Intrinsics.h(key, "key");
        return (androidx.datastore.preferences.core.c) j.b(null, new JavaDataStorage$putSync$1(this, key, obj, null), 1, null);
    }
}
