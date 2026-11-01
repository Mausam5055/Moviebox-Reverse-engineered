package np;

import android.view.View;
import android.view.inputmethod.InputMethodManager;

/* JADX INFO: loaded from: classes6.dex */
public class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f70523a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f70524b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f70525c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f70526d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f70527e = false;

    public static void a(View view) {
        InputMethodManager inputMethodManager;
        if (view == null || (inputMethodManager = (InputMethodManager) view.getContext().getSystemService("input_method")) == null) {
            return;
        }
        inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
    }
}
