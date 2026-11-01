package com.apm.insight.runtime;

import androidx.annotation.Nullable;
import com.apm.insight.entity.Header;

/* JADX INFO: loaded from: classes2.dex */
public class e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final e f19795b = new e() { // from class: com.apm.insight.runtime.e.1

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Header f19797a = null;

        @Override // com.apm.insight.runtime.e
        @Nullable
        public final Object b(String str) {
            if (this.f19797a == null) {
                this.f19797a = Header.b(com.apm.insight.e.g());
            }
            return this.f19797a.f().opt(str);
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private e f19796a;

    e() {
        this(f19795b);
    }

    private e(e eVar) {
        this.f19796a = eVar;
    }

    @Nullable
    public Object a(String str) {
        e eVar = this.f19796a;
        if (eVar != null) {
            return eVar.a(str);
        }
        return null;
    }

    @Nullable
    public Object b(String str) {
        e eVar = this.f19796a;
        if (eVar != null) {
            return eVar.b(str);
        }
        return null;
    }
}
