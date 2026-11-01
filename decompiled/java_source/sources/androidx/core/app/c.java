package androidx.core.app;

import android.app.Activity;
import android.app.ActivityOptions;
import android.content.Context;
import android.os.Bundle;
import android.util.Pair;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public abstract class c {

    private static class a extends c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ActivityOptions f8067a;

        a(ActivityOptions activityOptions) {
            this.f8067a = activityOptions;
        }

        @Override // androidx.core.app.c
        public Bundle c() {
            return this.f8067a.toBundle();
        }
    }

    protected c() {
    }

    public static c a(Context context, int i11, int i12) {
        return new a(ActivityOptions.makeCustomAnimation(context, i11, i12));
    }

    public static c b(Activity activity, androidx.core.util.e... eVarArr) {
        Pair[] pairArr;
        if (eVarArr != null) {
            pairArr = new Pair[eVarArr.length];
            for (int i11 = 0; i11 < eVarArr.length; i11++) {
                androidx.core.util.e eVar = eVarArr[i11];
                pairArr[i11] = Pair.create((View) eVar.f8267a, (String) eVar.f8268b);
            }
        } else {
            pairArr = null;
        }
        return new a(ActivityOptions.makeSceneTransitionAnimation(activity, pairArr));
    }

    public abstract Bundle c();
}
