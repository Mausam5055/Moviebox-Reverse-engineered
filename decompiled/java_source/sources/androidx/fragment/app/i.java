package androidx.fragment.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import androidx.core.app.ActivityCompat;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
public abstract class i extends f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Activity f9433a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f9434b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Handler f9435c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f9436d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final FragmentManager f9437e;

    i(Activity activity, Context context, Handler handler, int i11) {
        this.f9437e = new q();
        this.f9433a = activity;
        this.f9434b = (Context) androidx.core.util.i.h(context, "context == null");
        this.f9435c = (Handler) androidx.core.util.i.h(handler, "handler == null");
        this.f9436d = i11;
    }

    i(FragmentActivity fragmentActivity) {
        this(fragmentActivity, fragmentActivity, new Handler(), 0);
    }

    Activity e() {
        return this.f9433a;
    }

    Context f() {
        return this.f9434b;
    }

    public Handler g() {
        return this.f9435c;
    }

    public abstract void h(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    public abstract Object i();

    public abstract LayoutInflater j();

    public void k(Fragment fragment, String[] strArr, int i11) {
    }

    public abstract boolean l(String str);

    public void m(Fragment fragment, Intent intent, int i11, Bundle bundle) {
        if (i11 != -1) {
            throw new IllegalStateException("Starting activity with a requestCode requires a FragmentActivity host");
        }
        androidx.core.content.b.startActivity(this.f9434b, intent, bundle);
    }

    public void n(Fragment fragment, IntentSender intentSender, int i11, Intent intent, int i12, int i13, int i14, Bundle bundle) {
        if (i11 != -1) {
            throw new IllegalStateException("Starting intent sender with a requestCode requires a FragmentActivity host");
        }
        ActivityCompat.l(this.f9433a, intentSender, i11, intent, i12, i13, i14, bundle);
    }

    public abstract void o();
}
