package com.transsion.athena.data;

import com.transsion.ga.AthenaAnalytics;
import java.lang.ref.SoftReference;

/* JADX INFO: loaded from: classes5.dex */
public class aethna {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f42663a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public SoftReference<AthenaAnalytics.c> f42664b;

    public aethna(String str, AthenaAnalytics.c cVar) {
        this.f42663a = str;
        this.f42664b = new SoftReference<>(cVar);
    }
}
