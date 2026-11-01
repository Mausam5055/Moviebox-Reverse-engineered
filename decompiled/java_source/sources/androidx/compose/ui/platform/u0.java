package androidx.compose.ui.platform;

import java.util.Map;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
public final class u0 implements androidx.compose.runtime.saveable.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Function0 f5863a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ androidx.compose.runtime.saveable.b f5864b;

    public u0(androidx.compose.runtime.saveable.b bVar, Function0 function0) {
        this.f5863a = function0;
        this.f5864b = bVar;
    }

    @Override // androidx.compose.runtime.saveable.b
    public boolean a(Object obj) {
        return this.f5864b.a(obj);
    }

    @Override // androidx.compose.runtime.saveable.b
    public androidx.compose.runtime.saveable.b.a b(String str, Function0 function0) {
        return this.f5864b.b(str, function0);
    }

    public final void c() {
        this.f5863a.invoke();
    }

    @Override // androidx.compose.runtime.saveable.b
    public Map e() {
        return this.f5864b.e();
    }

    @Override // androidx.compose.runtime.saveable.b
    public Object f(String str) {
        return this.f5864b.f(str);
    }
}
