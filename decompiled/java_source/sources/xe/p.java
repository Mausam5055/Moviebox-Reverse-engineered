package xe;

import android.content.Context;
import android.view.OrientationEventListener;
import android.view.WindowManager;

/* JADX INFO: loaded from: classes5.dex */
public class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f78229a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private WindowManager f78230b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private OrientationEventListener f78231c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private o f78232d;

    class a extends OrientationEventListener {
        a(Context context, int i11) {
            super(context, i11);
        }

        @Override // android.view.OrientationEventListener
        public void onOrientationChanged(int i11) {
            int rotation;
            WindowManager windowManager = p.this.f78230b;
            o oVar = p.this.f78232d;
            if (p.this.f78230b == null || oVar == null || (rotation = windowManager.getDefaultDisplay().getRotation()) == p.this.f78229a) {
                return;
            }
            p.this.f78229a = rotation;
            oVar.a(rotation);
        }
    }

    public void e(Context context, o oVar) {
        f();
        Context applicationContext = context.getApplicationContext();
        this.f78232d = oVar;
        this.f78230b = (WindowManager) applicationContext.getSystemService("window");
        a aVar = new a(applicationContext, 3);
        this.f78231c = aVar;
        aVar.enable();
        this.f78229a = this.f78230b.getDefaultDisplay().getRotation();
    }

    public void f() {
        OrientationEventListener orientationEventListener = this.f78231c;
        if (orientationEventListener != null) {
            orientationEventListener.disable();
        }
        this.f78231c = null;
        this.f78230b = null;
        this.f78232d = null;
    }
}
