package com.google.android.material.internal;

import android.widget.Checkable;

/* JADX INFO: loaded from: classes4.dex */
public interface l extends Checkable {

    public interface a {
        void a(Object obj, boolean z10);
    }

    int getId();

    void setInternalOnCheckedChangeListener(a aVar);
}
