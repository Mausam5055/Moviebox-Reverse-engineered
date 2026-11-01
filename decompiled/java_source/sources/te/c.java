package te;

import android.view.View;
import com.iab.omid.library.vungle.adsession.h;
import java.util.ArrayList;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Iterator;
import org.json.JSONObject;
import ue.e;

/* JADX INFO: loaded from: classes5.dex */
public class c implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f76200a;

    public c(a aVar) {
        this.f76200a = aVar;
    }

    @Override // te.a
    public JSONObject a(View view) {
        JSONObject jSONObjectB = ue.c.b(0, 0, 0, 0);
        ue.c.e(jSONObjectB, e.a());
        return jSONObjectB;
    }

    @Override // te.a
    public void a(View view, JSONObject jSONObject, a.InterfaceC0923a interfaceC0923a, boolean z10, boolean z11) {
        Iterator it = b().iterator();
        while (it.hasNext()) {
            interfaceC0923a.a((View) it.next(), this.f76200a, jSONObject, z11);
        }
    }

    ArrayList b() {
        View rootView;
        ArrayList arrayList = new ArrayList();
        com.iab.omid.library.vungle.internal.c cVarE = com.iab.omid.library.vungle.internal.c.e();
        if (cVarE != null) {
            Collection collectionA = cVarE.a();
            IdentityHashMap identityHashMap = new IdentityHashMap((collectionA.size() * 2) + 3);
            Iterator it = collectionA.iterator();
            while (it.hasNext()) {
                View viewL = ((h) it.next()).l();
                if (viewL != null && ue.h.g(viewL) && (rootView = viewL.getRootView()) != null && !identityHashMap.containsKey(rootView)) {
                    identityHashMap.put(rootView, rootView);
                    float fD = ue.h.d(rootView);
                    int size = arrayList.size();
                    while (size > 0 && ue.h.d((View) arrayList.get(size - 1)) > fD) {
                        size--;
                    }
                    arrayList.add(size, rootView);
                }
            }
        }
        return arrayList;
    }
}
