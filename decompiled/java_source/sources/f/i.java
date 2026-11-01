package f;

import android.content.Context;
import android.content.Intent;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class i extends a {
    @Override // f.a
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public Intent a(Context context, String input) {
        Intrinsics.h(context, "context");
        Intrinsics.h(input, "input");
        return h.f62119a.a(new String[]{input});
    }

    @Override // f.a
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public a.C0753a b(Context context, String input) {
        Intrinsics.h(context, "context");
        Intrinsics.h(input, "input");
        if (androidx.core.content.b.checkSelfPermission(context, input) == 0) {
            return new a.C0753a(Boolean.TRUE);
        }
        return null;
    }

    @Override // f.a
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public Boolean c(int i11, Intent intent) {
        if (intent == null || i11 != -1) {
            return Boolean.FALSE;
        }
        int[] intArrayExtra = intent.getIntArrayExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS");
        boolean z10 = false;
        if (intArrayExtra != null) {
            for (int i12 : intArrayExtra) {
                if (i12 == 0) {
                    z10 = true;
                    break;
                }
            }
        }
        return Boolean.valueOf(z10);
    }
}
