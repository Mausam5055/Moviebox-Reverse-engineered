package com.cloud.hisavana.sdk;

import android.os.Bundle;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class l4 implements c4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected a f22625a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected volatile int f22626b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected int f22627c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected int f22628d;

    public interface a {
        void a(TaErrorCode taErrorCode, Bundle bundle);

        void a(List list);

        void b(List list, Bundle bundle);

        void c(TaErrorCode taErrorCode, Bundle bundle);
    }

    public int b() {
        return this.f22626b;
    }

    public void c(int i11) {
        this.f22628d = i11;
    }

    public void d(a aVar) {
        this.f22625a = aVar;
    }

    public void e(int i11) {
        this.f22627c = i11;
    }
}
