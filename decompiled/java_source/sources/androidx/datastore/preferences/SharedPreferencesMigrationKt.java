package androidx.datastore.preferences;

import android.content.Context;
import androidx.datastore.migrations.SharedPreferencesMigration;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class SharedPreferencesMigrationKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Set f8648a = new LinkedHashSet();

    public static final SharedPreferencesMigration a(Context context, String sharedPreferencesName, Set keysToMigrate) {
        Intrinsics.h(context, "context");
        Intrinsics.h(sharedPreferencesName, "sharedPreferencesName");
        Intrinsics.h(keysToMigrate, "keysToMigrate");
        return keysToMigrate == f8648a ? new SharedPreferencesMigration(context, sharedPreferencesName, null, e(keysToMigrate), d(), 4, null) : new SharedPreferencesMigration(context, sharedPreferencesName, keysToMigrate, e(keysToMigrate), d());
    }

    public static /* synthetic */ SharedPreferencesMigration b(Context context, String str, Set set, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            set = f8648a;
        }
        return a(context, str, set);
    }

    public static final Set c() {
        return f8648a;
    }

    private static final Function3 d() {
        return new SharedPreferencesMigrationKt$getMigrationFunction$1(null);
    }

    private static final Function2 e(Set set) {
        return new SharedPreferencesMigrationKt$getShouldRunMigration$1(set, null);
    }
}
