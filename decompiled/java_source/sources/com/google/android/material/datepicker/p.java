package com.google.android.material.datepicker;

import androidx.fragment.app.Fragment;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes4.dex */
abstract class p extends Fragment {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final LinkedHashSet f28908a = new LinkedHashSet();

    p() {
    }

    boolean V(o oVar) {
        return this.f28908a.add(oVar);
    }

    void W() {
        this.f28908a.clear();
    }
}
