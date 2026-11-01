package androidx.datastore.preferences;

import android.content.Context;
import androidx.datastore.core.f;
import androidx.datastore.preferences.core.PreferenceDataStoreFactory;
import java.io.File;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.properties.ReadOnlyProperty;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes.dex */
public final class PreferenceDataStoreSingletonDelegate implements ReadOnlyProperty {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f8642a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final j1.b f8643b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Function1 f8644c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final n0 f8645d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Object f8646e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile f f8647f;

    public PreferenceDataStoreSingletonDelegate(String name, j1.b bVar, Function1 produceMigrations, n0 scope) {
        Intrinsics.h(name, "name");
        Intrinsics.h(produceMigrations, "produceMigrations");
        Intrinsics.h(scope, "scope");
        this.f8642a = name;
        this.f8643b = bVar;
        this.f8644c = produceMigrations;
        this.f8645d = scope;
        this.f8646e = new Object();
    }

    @Override // kotlin.properties.ReadOnlyProperty
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public f a(Context thisRef, KProperty property) {
        f fVar;
        Intrinsics.h(thisRef, "thisRef");
        Intrinsics.h(property, "property");
        f fVar2 = this.f8647f;
        if (fVar2 != null) {
            return fVar2;
        }
        synchronized (this.f8646e) {
            try {
                if (this.f8647f == null) {
                    final Context applicationContext = thisRef.getApplicationContext();
                    PreferenceDataStoreFactory preferenceDataStoreFactory = PreferenceDataStoreFactory.f8654a;
                    j1.b bVar = this.f8643b;
                    Function1 function1 = this.f8644c;
                    Intrinsics.g(applicationContext, "applicationContext");
                    this.f8647f = preferenceDataStoreFactory.b(bVar, (List) function1.invoke(applicationContext), this.f8645d, new Function0<File>() { // from class: androidx.datastore.preferences.PreferenceDataStoreSingletonDelegate$getValue$1$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public final File invoke() {
                            Context applicationContext2 = applicationContext;
                            Intrinsics.g(applicationContext2, "applicationContext");
                            return a.a(applicationContext2, this.f8642a);
                        }
                    });
                }
                fVar = this.f8647f;
                Intrinsics.e(fVar);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return fVar;
    }
}
