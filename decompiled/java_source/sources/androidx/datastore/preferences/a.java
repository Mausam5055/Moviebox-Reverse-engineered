package androidx.datastore.preferences;

import android.content.Context;
import java.io.File;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    public static final File a(Context context, String name) {
        Intrinsics.h(context, "<this>");
        Intrinsics.h(name, "name");
        return i1.a.a(context, name + ".preferences_pb");
    }
}
