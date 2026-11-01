package ne;

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
    private final int[] f70325a = new int[2];

    private void b(ViewGroup viewGroup, JSONObject jSONObject, a.InterfaceC0849a interfaceC0849a, boolean z10) {
        for (int i11 = 0; i11 < viewGroup.getChildCount(); i11++) {
            interfaceC0849a.a(viewGroup.getChildAt(i11), this, jSONObject, z10);
        }
    }

    private void c(ViewGroup viewGroup, JSONObject jSONObject, a.InterfaceC0849a interfaceC0849a, boolean z10) {
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
                interfaceC0849a.a((View) it2.next(), this, jSONObject, z10);
            }
        }
    }

    @Override // ne.a
    public JSONObject a(View view) {
        if (view == null) {
            return oe.c.c(0, 0, 0, 0);
        }
        int width = view.getWidth();
        int height = view.getHeight();
        view.getLocationOnScreen(this.f70325a);
        int[] iArr = this.f70325a;
        return oe.c.c(iArr[0], iArr[1], width, height);
    }

    @Override // ne.a
    public void a(View view, JSONObject jSONObject, a.InterfaceC0849a interfaceC0849a, boolean z10, boolean z11) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (z10) {
                c(viewGroup, jSONObject, interfaceC0849a, z11);
            } else {
                b(viewGroup, jSONObject, interfaceC0849a, z11);
            }
        }
    }
}
