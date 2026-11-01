package he;

import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class d implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int[] f64427a = new int[2];

    private void b(ViewGroup viewGroup, JSONObject jSONObject, a.InterfaceC0777a interfaceC0777a, boolean z10) {
        for (int i11 = 0; i11 < viewGroup.getChildCount(); i11++) {
            interfaceC0777a.a(viewGroup.getChildAt(i11), this, jSONObject, z10);
        }
    }

    private void c(ViewGroup viewGroup, JSONObject jSONObject, a.InterfaceC0777a interfaceC0777a, boolean z10) {
        HashMap map = new HashMap();
        for (int i11 = 0; i11 < viewGroup.getChildCount(); i11++) {
            View childAt = viewGroup.getChildAt(i11);
            ArrayList arrayList = (ArrayList) map.get(Float.valueOf(childAt.getZ()));
            if (arrayList == null) {
                arrayList = new ArrayList();
                map.put(Float.valueOf(childAt.getZ()), arrayList);
            }
            arrayList.add(childAt);
        }
        ArrayList arrayList2 = new ArrayList(map.keySet());
        Collections.sort(arrayList2);
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            Iterator it2 = ((ArrayList) map.get((Float) it.next())).iterator();
            while (it2.hasNext()) {
                interfaceC0777a.a((View) it2.next(), this, jSONObject, z10);
            }
        }
    }

    @Override // he.a
    public JSONObject a(View view) {
        if (view == null) {
            return ie.c.c(0, 0, 0, 0);
        }
        int width = view.getWidth();
        int height = view.getHeight();
        view.getLocationOnScreen(this.f64427a);
        int[] iArr = this.f64427a;
        return ie.c.c(iArr[0], iArr[1], width, height);
    }

    @Override // he.a
    public void a(View view, JSONObject jSONObject, a.InterfaceC0777a interfaceC0777a, boolean z10, boolean z11) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (z10) {
                c(viewGroup, jSONObject, interfaceC0777a, z11);
            } else {
                b(viewGroup, jSONObject, interfaceC0777a, z11);
            }
        }
    }
}
