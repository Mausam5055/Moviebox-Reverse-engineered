package ne;

import android.view.View;
import com.iab.omid.library.mmadbridge.adsession.h;
import java.util.ArrayList;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Iterator;
import oe.e;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class c implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f70324a;

    public c(a aVar) {
        this.f70324a = aVar;
    }

    @Override // ne.a
    public JSONObject a(View view) {
        JSONObject jSONObjectC = oe.c.c(0, 0, 0, 0);
        oe.c.e(jSONObjectC, e.a());
        return jSONObjectC;
    }

    @Override // ne.a
    public void a(View view, JSONObject jSONObject, a.InterfaceC0849a interfaceC0849a, boolean z10, boolean z11) {
        Iterator it = b().iterator();
        while (it.hasNext()) {
            interfaceC0849a.a((View) it.next(), this.f70324a, jSONObject, z11);
        }
    }

    ArrayList b() {
        View rootView;
        ArrayList arrayList = new ArrayList();
        com.iab.omid.library.mmadbridge.internal.c cVarE = com.iab.omid.library.mmadbridge.internal.c.e();
        if (cVarE != null) {
            Collection collectionA = cVarE.a();
            IdentityHashMap identityHashMap = new IdentityHashMap((collectionA.size() * 2) + 3);
            Iterator it = collectionA.iterator();
            while (it.hasNext()) {
                View viewN = ((h) it.next()).n();
                if (viewN != null && oe.h.g(viewN) && (rootView = viewN.getRootView()) != null && !identityHashMap.containsKey(rootView)) {
                    identityHashMap.put(rootView, rootView);
                    float fD = oe.h.d(rootView);
                    int size = arrayList.size();
                    while (size > 0 && oe.h.d((View) arrayList.get(size - 1)) > fD) {
                        size--;
                    }
                    arrayList.add(size, rootView);
                }
            }
        }
        return arrayList;
    }
}
