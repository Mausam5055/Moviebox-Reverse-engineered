package kb;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzdy;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.f;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes5.dex */
public class b implements kb.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile kb.a f66753c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AppMeasurementSdk f66754a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Map f66755b;

    class a implements kb.a.InterfaceC0809a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ String f66756a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final /* synthetic */ b f66757b;

        a(b bVar, String str) {
            this.f66756a = str;
            this.f66757b = bVar;
        }
    }

    private b(AppMeasurementSdk appMeasurementSdk) {
        Preconditions.checkNotNull(appMeasurementSdk);
        this.f66754a = appMeasurementSdk;
        this.f66755b = new ConcurrentHashMap();
    }

    public static kb.a h(f fVar, Context context, fc.d dVar) {
        Preconditions.checkNotNull(fVar);
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(dVar);
        Preconditions.checkNotNull(context.getApplicationContext());
        if (f66753c == null) {
            synchronized (b.class) {
                try {
                    if (f66753c == null) {
                        Bundle bundle = new Bundle(1);
                        if (fVar.u()) {
                            dVar.a(com.google.firebase.b.class, new Executor() { // from class: kb.c
                                @Override // java.util.concurrent.Executor
                                public final void execute(Runnable runnable) {
                                    runnable.run();
                                }
                            }, new fc.b() { // from class: kb.d
                                @Override // fc.b
                                public final void a(fc.a aVar) {
                                    b.i(aVar);
                                }
                            });
                            bundle.putBoolean("dataCollectionDefaultEnabled", fVar.t());
                        }
                        f66753c = new b(zzdy.zza(context, (String) null, (String) null, (String) null, bundle).zzb());
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f66753c;
    }

    static /* synthetic */ void i(fc.a aVar) {
        throw null;
    }

    private final boolean j(String str) {
        return (str.isEmpty() || !this.f66755b.containsKey(str) || this.f66755b.get(str) == null) ? false : true;
    }

    @Override // kb.a
    public kb.a.InterfaceC0809a a(String str, kb.a.b bVar) {
        Object fVar;
        Preconditions.checkNotNull(bVar);
        if (!com.google.firebase.analytics.connector.internal.a.j(str) || j(str)) {
            return null;
        }
        AppMeasurementSdk appMeasurementSdk = this.f66754a;
        if (AppMeasurement.FIAM_ORIGIN.equals(str)) {
            fVar = new com.google.firebase.analytics.connector.internal.d(appMeasurementSdk, bVar);
        } else {
            fVar = "clx".equals(str) ? new com.google.firebase.analytics.connector.internal.f(appMeasurementSdk, bVar) : null;
        }
        if (fVar == null) {
            return null;
        }
        this.f66755b.put(str, fVar);
        return new a(this, str);
    }

    @Override // kb.a
    public void b(String str, String str2, Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        if (com.google.firebase.analytics.connector.internal.a.j(str) && com.google.firebase.analytics.connector.internal.a.e(str2, bundle) && com.google.firebase.analytics.connector.internal.a.g(str, str2, bundle)) {
            com.google.firebase.analytics.connector.internal.a.d(str, str2, bundle);
            this.f66754a.logEvent(str, str2, bundle);
        }
    }

    @Override // kb.a
    public void c(String str, String str2, Object obj) {
        if (com.google.firebase.analytics.connector.internal.a.j(str) && com.google.firebase.analytics.connector.internal.a.f(str, str2)) {
            this.f66754a.setUserProperty(str, str2, obj);
        }
    }

    @Override // kb.a
    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        if (str2 == null || com.google.firebase.analytics.connector.internal.a.e(str2, bundle)) {
            this.f66754a.clearConditionalUserProperty(str, str2, bundle);
        }
    }

    @Override // kb.a
    public void d(kb.a.c cVar) {
        if (com.google.firebase.analytics.connector.internal.a.h(cVar)) {
            this.f66754a.setConditionalUserProperty(com.google.firebase.analytics.connector.internal.a.a(cVar));
        }
    }

    @Override // kb.a
    public Map e(boolean z10) {
        return this.f66754a.getUserProperties(null, null, z10);
    }

    @Override // kb.a
    public int f(String str) {
        return this.f66754a.getMaxUserProperties(str);
    }

    @Override // kb.a
    public List g(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        Iterator<Bundle> it = this.f66754a.getConditionalUserProperties(str, str2).iterator();
        while (it.hasNext()) {
            arrayList.add(com.google.firebase.analytics.connector.internal.a.c(it.next()));
        }
        return arrayList;
    }
}
