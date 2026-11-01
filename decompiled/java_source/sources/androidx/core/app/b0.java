package androidx.core.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes.dex */
public final class b0 implements Iterable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ArrayList f8065a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f8066b;

    public interface a {
        Intent getSupportParentActivityIntent();
    }

    private b0(Context context) {
        this.f8066b = context;
    }

    public static b0 f(Context context) {
        return new b0(context);
    }

    public b0 a(Intent intent) {
        this.f8065a.add(intent);
        return this;
    }

    public b0 b(Intent intent) {
        ComponentName component = intent.getComponent();
        if (component == null) {
            component = intent.resolveActivity(this.f8066b.getPackageManager());
        }
        if (component != null) {
            e(component);
        }
        a(intent);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b0 c(Activity activity) {
        Intent supportParentActivityIntent = activity instanceof a ? ((a) activity).getSupportParentActivityIntent() : null;
        if (supportParentActivityIntent == null) {
            supportParentActivityIntent = n.a(activity);
        }
        if (supportParentActivityIntent != null) {
            ComponentName component = supportParentActivityIntent.getComponent();
            if (component == null) {
                component = supportParentActivityIntent.resolveActivity(this.f8066b.getPackageManager());
            }
            e(component);
            a(supportParentActivityIntent);
        }
        return this;
    }

    public b0 e(ComponentName componentName) {
        int size = this.f8065a.size();
        try {
            Intent intentB = n.b(this.f8066b, componentName);
            while (intentB != null) {
                this.f8065a.add(size, intentB);
                intentB = n.b(this.f8066b, intentB.getComponent());
            }
            return this;
        } catch (PackageManager.NameNotFoundException e11) {
            Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
            throw new IllegalArgumentException(e11);
        }
    }

    public void g() {
        h(null);
    }

    public void h(Bundle bundle) {
        if (this.f8065a.isEmpty()) {
            throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
        }
        Intent[] intentArr = (Intent[]) this.f8065a.toArray(new Intent[0]);
        intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
        if (androidx.core.content.b.startActivities(this.f8066b, intentArr, bundle)) {
            return;
        }
        Intent intent = new Intent(intentArr[intentArr.length - 1]);
        intent.addFlags(ASTNode.DEOP);
        this.f8066b.startActivity(intent);
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return this.f8065a.iterator();
    }
}
