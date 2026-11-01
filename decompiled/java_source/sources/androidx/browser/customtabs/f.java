package androidx.browser.customtabs;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public abstract class f implements ServiceConnection {

    @Nullable
    private Context mApplicationContext;

    class a extends CustomTabsClient {
        a(c.b bVar, ComponentName componentName, Context context) {
            super(bVar, componentName, context);
        }
    }

    @Nullable
    Context getApplicationContext() {
        return this.mApplicationContext;
    }

    public abstract void onCustomTabsServiceConnected(ComponentName componentName, CustomTabsClient customTabsClient);

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(@NonNull ComponentName componentName, @NonNull IBinder iBinder) {
        if (this.mApplicationContext == null) {
            throw new IllegalStateException("Custom Tabs Service connected before an applicationcontext has been provided.");
        }
        onCustomTabsServiceConnected(componentName, new a(c.b.a.Y0(iBinder), componentName, this.mApplicationContext));
    }

    void setApplicationContext(@NonNull Context context) {
        this.mApplicationContext = context;
    }
}
