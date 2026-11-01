package f;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public class b extends a {
    @Override // f.a
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public Intent a(Context context, String input) {
        Intrinsics.h(context, "context");
        Intrinsics.h(input, "input");
        Intent type = new Intent("android.intent.action.GET_CONTENT").addCategory("android.intent.category.OPENABLE").setType(input);
        Intrinsics.g(type, "Intent(Intent.ACTION_GET…          .setType(input)");
        return type;
    }

    @Override // f.a
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public final a.C0753a b(Context context, String input) {
        Intrinsics.h(context, "context");
        Intrinsics.h(input, "input");
        return null;
    }

    @Override // f.a
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final Uri c(int i11, Intent intent) {
        if (i11 != -1) {
            intent = null;
        }
        if (intent != null) {
            return intent.getData();
        }
        return null;
    }
}
