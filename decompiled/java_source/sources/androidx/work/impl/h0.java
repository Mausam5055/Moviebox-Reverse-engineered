package androidx.work.impl;

import android.content.Context;
import java.io.File;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes2.dex */
public final class h0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final h0 f15686a = new h0();

    private h0() {
    }

    public static final void c(Context context) {
        Intrinsics.h(context, "context");
        h0 h0Var = f15686a;
        if (h0Var.b(context).exists()) {
            androidx.work.t.e().a(i0.f15689a, "Migrating WorkDatabase to the no-backup directory");
            for (Map.Entry entry : h0Var.d(context).entrySet()) {
                File file = (File) entry.getKey();
                File file2 = (File) entry.getValue();
                if (file.exists()) {
                    if (file2.exists()) {
                        androidx.work.t.e().k(i0.f15689a, "Over-writing contents of " + file2);
                    }
                    androidx.work.t.e().a(i0.f15689a, file.renameTo(file2) ? "Migrated " + file + "to " + file2 : "Renaming " + file + " to " + file2 + " failed");
                }
            }
        }
    }

    public final File a(Context context) {
        Intrinsics.h(context, "context");
        File noBackupFilesDir = context.getNoBackupFilesDir();
        Intrinsics.g(noBackupFilesDir, "getNoBackupFilesDir(...)");
        return noBackupFilesDir;
    }

    public final File b(Context context) {
        Intrinsics.h(context, "context");
        File databasePath = context.getDatabasePath("androidx.work.workdb");
        Intrinsics.g(databasePath, "getDatabasePath(...)");
        return databasePath;
    }

    public final Map d(Context context) {
        Intrinsics.h(context, "context");
        File fileB = b(context);
        File fileA = a(context);
        String[] strArr = i0.f15690b;
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.f(MapsKt.e(strArr.length), 16));
        for (String str : strArr) {
            Pair pairA = TuplesKt.a(new File(fileB.getPath() + str), new File(fileA.getPath() + str));
            linkedHashMap.put(pairA.getFirst(), pairA.getSecond());
        }
        return MapsKt.p(linkedHashMap, TuplesKt.a(fileB, fileA));
    }
}
