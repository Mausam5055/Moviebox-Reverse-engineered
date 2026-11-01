package androidx.datastore.preferences.core;

import androidx.datastore.core.g;
import androidx.datastore.core.okio.OkioStorage;
import androidx.datastore.core.s;
import java.io.File;
import java.util.List;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import okio.FileSystem;
import okio.Path;

/* JADX INFO: loaded from: classes.dex */
public final class PreferenceDataStoreFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final PreferenceDataStoreFactory f8654a = new PreferenceDataStoreFactory();

    private PreferenceDataStoreFactory() {
    }

    public final androidx.datastore.core.f a(s storage, j1.b bVar, List migrations, n0 scope) {
        Intrinsics.h(storage, "storage");
        Intrinsics.h(migrations, "migrations");
        Intrinsics.h(scope, "scope");
        return new PreferenceDataStore(g.f8593a.a(storage, bVar, migrations, scope));
    }

    public final androidx.datastore.core.f b(j1.b bVar, List migrations, n0 scope, final Function0 produceFile) {
        Intrinsics.h(migrations, "migrations");
        Intrinsics.h(scope, "scope");
        Intrinsics.h(produceFile, "produceFile");
        return new PreferenceDataStore(a(new OkioStorage(FileSystem.SYSTEM, f.f8657a, null, new Function0<Path>() { // from class: androidx.datastore.preferences.core.PreferenceDataStoreFactory$create$delegate$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Path invoke() {
                File file = (File) produceFile.invoke();
                if (Intrinsics.c(FilesKt.w(file), "preferences_pb")) {
                    Path.Companion companion = Path.INSTANCE;
                    File absoluteFile = file.getAbsoluteFile();
                    Intrinsics.g(absoluteFile, "file.absoluteFile");
                    return Path.Companion.get$default(companion, absoluteFile, false, 1, (Object) null);
                }
                throw new IllegalStateException(("File extension for file: " + file + " does not match required extension for Preferences file: preferences_pb").toString());
            }
        }, 4, null), bVar, migrations, scope));
    }
}
