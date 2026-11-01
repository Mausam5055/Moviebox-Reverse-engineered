package he;

import android.view.View;
import com.iab.omid.library.hisavana.adsession.h;
import ie.e;
import ie.i;
import java.util.ArrayList;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Iterator;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class c implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f64426a;

    public c(a aVar) {
        this.f64426a = aVar;
    }

    @Override // he.a
    public JSONObject a(View view) {
        JSONObject jSONObjectC = ie.c.c(0, 0, 0, 0);
        ie.c.e(jSONObjectC, e.a());
        return jSONObjectC;
    }

    @Override // he.a
    public void a(View view, JSONObject jSONObject, a.InterfaceC0777a interfaceC0777a, boolean z10, boolean z11) {
        Iterator it = b().iterator();
        while (it.hasNext()) {
            interfaceC0777a.a((View) it.next(), this.f64426a, jSONObject, z11);
        }
    }

    ArrayList b() {
        View rootView;
        ArrayList arrayList = new ArrayList();
        com.iab.omid.library.hisavana.internal.c cVarE = com.iab.omid.library.hisavana.internal.c.e();
        if (cVarE != null) {
            Collection collectionA = cVarE.a();
            IdentityHashMap identityHashMap = new IdentityHashMap((collectionA.size() * 2) + 3);
            Iterator it = collectionA.iterator();
            while (it.hasNext()) {
                View viewM = ((h) it.next()).m();
                if (viewM != null && i.g(viewM) && (rootView = viewM.getRootView()) != null && !identityHashMap.containsKey(rootView)) {
                    identityHashMap.put(rootView, rootView);
                    float fD = i.d(rootView);
                    int size = arrayList.size();
                    while (size > 0 && i.d((View) arrayList.get(size - 1)) > fD) {
                        size--;
                    }
                    arrayList.add(size, rootView);
                }
            }
        }
        return arrayList;
    }
}
