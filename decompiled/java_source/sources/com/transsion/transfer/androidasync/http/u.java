package com.transsion.transfer.androidasync.http;

import android.text.TextUtils;
import com.cloud.tmc.kernel.utils.UrlUtils;

/* JADX INFO: loaded from: classes6.dex */
public class u implements w, Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f55518a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f55519b;

    public u(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Name may not be null");
        }
        this.f55518a = str;
        this.f55519b = str2;
    }

    public Object clone() {
        return super.clone();
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof w)) {
            return false;
        }
        u uVar = (u) obj;
        return this.f55518a.equals(uVar.f55518a) && TextUtils.equals(this.f55519b, uVar.f55519b);
    }

    @Override // com.transsion.transfer.androidasync.http.w
    public String getName() {
        return this.f55518a;
    }

    @Override // com.transsion.transfer.androidasync.http.w
    public String getValue() {
        return this.f55519b;
    }

    public int hashCode() {
        return this.f55518a.hashCode() ^ this.f55519b.hashCode();
    }

    public String toString() {
        return this.f55518a + UrlUtils.EQUAL_MARK + this.f55519b;
    }
}
