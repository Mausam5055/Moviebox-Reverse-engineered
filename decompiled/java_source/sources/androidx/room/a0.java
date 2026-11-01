package androidx.room;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes2.dex */
abstract /* synthetic */ class a0 {
    public static final void a(RoomDatabase roomDatabase, c configuration) {
        Intrinsics.h(roomDatabase, "<this>");
        Intrinsics.h(configuration, "configuration");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Set setB = roomDatabase.B();
        int size = configuration.f14588s.size();
        boolean[] zArr = new boolean[size];
        Iterator it = setB.iterator();
        while (true) {
            int i11 = -1;
            if (!it.hasNext()) {
                int size2 = configuration.f14588s.size() - 1;
                if (size2 >= 0) {
                    while (true) {
                        int i12 = size2 - 1;
                        if (size2 >= size || !zArr[size2]) {
                            throw new IllegalArgumentException("Unexpected auto migration specs found. Annotate AutoMigrationSpec implementation with @ProvidedAutoMigrationSpec annotation or remove this spec from the builder.");
                        }
                        if (i12 < 0) {
                            break;
                        } else {
                            size2 = i12;
                        }
                    }
                }
                for (y3.c cVar : roomDatabase.n(linkedHashMap)) {
                    if (!configuration.f14573d.c(cVar.f78823a, cVar.f78824b)) {
                        configuration.f14573d.a(cVar);
                    }
                }
                return;
            }
            KClass kClass = (KClass) it.next();
            int size3 = configuration.f14588s.size() - 1;
            if (size3 >= 0) {
                while (true) {
                    int i13 = size3 - 1;
                    if (kClass.d(configuration.f14588s.get(size3))) {
                        zArr[size3] = true;
                        i11 = size3;
                        break;
                    } else if (i13 < 0) {
                        break;
                    } else {
                        size3 = i13;
                    }
                }
            }
            if (i11 < 0) {
                throw new IllegalArgumentException(("A required auto migration spec (" + kClass.f() + ") is missing in the database configuration.").toString());
            }
            linkedHashMap.put(kClass, configuration.f14588s.get(i11));
        }
    }

    public static final void b(Set migrationStartAndEndVersions, Set migrationsNotRequiredFrom) {
        Intrinsics.h(migrationStartAndEndVersions, "migrationStartAndEndVersions");
        Intrinsics.h(migrationsNotRequiredFrom, "migrationsNotRequiredFrom");
        if (migrationStartAndEndVersions.isEmpty()) {
            return;
        }
        Iterator it = migrationStartAndEndVersions.iterator();
        while (it.hasNext()) {
            int iIntValue = ((Number) it.next()).intValue();
            if (migrationsNotRequiredFrom.contains(Integer.valueOf(iIntValue))) {
                throw new IllegalArgumentException(("Inconsistency detected. A Migration was supplied to addMigration() that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(). Start version is: " + iIntValue).toString());
            }
        }
    }

    public static final void c(RoomDatabase roomDatabase, c configuration) {
        Intrinsics.h(roomDatabase, "<this>");
        Intrinsics.h(configuration, "configuration");
        Map mapE = roomDatabase.E();
        boolean[] zArr = new boolean[configuration.f14587r.size()];
        for (Map.Entry entry : mapE.entrySet()) {
            KClass kClass = (KClass) entry.getKey();
            for (KClass kClass2 : (List) entry.getValue()) {
                int size = configuration.f14587r.size() - 1;
                if (size < 0) {
                    size = -1;
                    break;
                }
                while (true) {
                    int i11 = size - 1;
                    if (kClass2.d(configuration.f14587r.get(size))) {
                        zArr[size] = true;
                        break;
                    } else {
                        if (i11 < 0) {
                            size = -1;
                            break;
                        }
                        size = i11;
                    }
                }
                if (size < 0) {
                    throw new IllegalArgumentException(("A required type converter (" + kClass2.f() + ") for " + kClass.f() + " is missing in the database configuration.").toString());
                }
                roomDatabase.h(kClass2, configuration.f14587r.get(size));
            }
        }
        int size2 = configuration.f14587r.size() - 1;
        if (size2 < 0) {
            return;
        }
        while (true) {
            int i12 = size2 - 1;
            if (!zArr[size2]) {
                throw new IllegalArgumentException("Unexpected type converter " + configuration.f14587r.get(size2) + ". Annotate TypeConverter class with @ProvidedTypeConverter annotation or remove this converter from the builder.");
            }
            if (i12 < 0) {
                return;
            } else {
                size2 = i12;
            }
        }
    }
}
