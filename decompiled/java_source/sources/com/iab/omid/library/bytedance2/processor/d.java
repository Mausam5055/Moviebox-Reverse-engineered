package com.iab.omid.library.bytedance2.processor;

import android.annotation.TargetApi;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class d implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int[] f33469a = new int[2];

    private void a(ViewGroup viewGroup, JSONObject jSONObject, a.InterfaceC0455a interfaceC0455a, boolean z10) {
        for (int i11 = 0; i11 < viewGroup.getChildCount(); i11++) {
            interfaceC0455a.a(viewGroup.getChildAt(i11), this, jSONObject, z10);
        }
    }

    @TargetApi(21)
    private void b(ViewGroup viewGroup, JSONObject jSONObject, a.InterfaceC0455a interfaceC0455a, boolean z10) {
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
                interfaceC0455a.a((View) it2.next(), this, jSONObject, z10);
            }
        }
    }

    @Override // com.iab.omid.library.bytedance2.processor.a
    public JSONObject a(View view) {
        if (view == null) {
            return com.iab.omid.library.bytedance2.utils.c.a(0, 0, 0, 0);
        }
        int width = view.getWidth();
        int height = view.getHeight();
        view.getLocationOnScreen(this.f33469a);
        int[] iArr = this.f33469a;
        return com.iab.omid.library.bytedance2.utils.c.a(iArr[0], iArr[1], width, height);
    }

    @Override // com.iab.omid.library.bytedance2.processor.a
    public void a(View view, JSONObject jSONObject, a.InterfaceC0455a interfaceC0455a, boolean z10, boolean z11) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (z10) {
                b(viewGroup, jSONObject, interfaceC0455a, z11);
            } else {
                a(viewGroup, jSONObject, interfaceC0455a, z11);
            }
        }
    }
}
