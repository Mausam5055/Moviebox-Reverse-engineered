package androidx.compose.runtime.saveable;

import androidx.compose.runtime.b2;
import java.util.Arrays;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
final class SaveableHolder implements e, b2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private d f3887a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private b f3888b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f3889c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Object f3890d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Object[] f3891e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private b.a f3892f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Function0 f3893g = new Function0<Object>() { // from class: androidx.compose.runtime.saveable.SaveableHolder$valueProvider$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            d dVar = this.this$0.f3887a;
            SaveableHolder saveableHolder = this.this$0;
            Object obj = saveableHolder.f3890d;
            if (obj != null) {
                return dVar.a(saveableHolder, obj);
            }
            throw new IllegalArgumentException("Value should be initialized");
        }
    };

    public SaveableHolder(d dVar, b bVar, String str, Object obj, Object[] objArr) {
        this.f3887a = dVar;
        this.f3888b = bVar;
        this.f3889c = str;
        this.f3890d = obj;
        this.f3891e = objArr;
    }

    private final void e() {
        b bVar = this.f3888b;
        if (this.f3892f == null) {
            if (bVar != null) {
                RememberSaveableKt.d(bVar, this.f3893g.invoke());
                this.f3892f = bVar.b(this.f3889c, this.f3893g);
                return;
            }
            return;
        }
        throw new IllegalArgumentException(("entry(" + this.f3892f + ") is not null").toString());
    }

    @Override // androidx.compose.runtime.saveable.e
    public boolean a(Object obj) {
        b bVar = this.f3888b;
        return bVar == null || bVar.a(obj);
    }

    public final Object d(Object[] objArr) {
        if (Arrays.equals(objArr, this.f3891e)) {
            return this.f3890d;
        }
        return null;
    }

    public final void f(d dVar, b bVar, String str, Object obj, Object[] objArr) {
        boolean z10;
        boolean z11 = true;
        if (this.f3888b != bVar) {
            this.f3888b = bVar;
            z10 = true;
        } else {
            z10 = false;
        }
        if (Intrinsics.c(this.f3889c, str)) {
            z11 = z10;
        } else {
            this.f3889c = str;
        }
        this.f3887a = dVar;
        this.f3890d = obj;
        this.f3891e = objArr;
        b.a aVar = this.f3892f;
        if (aVar == null || !z11) {
            return;
        }
        if (aVar != null) {
            aVar.unregister();
        }
        this.f3892f = null;
        e();
    }

    @Override // androidx.compose.runtime.b2
    public void onAbandoned() {
        b.a aVar = this.f3892f;
        if (aVar != null) {
            aVar.unregister();
        }
    }

    @Override // androidx.compose.runtime.b2
    public void onForgotten() {
        b.a aVar = this.f3892f;
        if (aVar != null) {
            aVar.unregister();
        }
    }

    @Override // androidx.compose.runtime.b2
    public void onRemembered() {
        e();
    }
}
