package androidx.core.os;

import android.os.LocaleList;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
final class p implements k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LocaleList f8173a;

    p(Object obj) {
        this.f8173a = o.a(obj);
    }

    @Override // androidx.core.os.k
    public String a() {
        return this.f8173a.toLanguageTags();
    }

    @Override // androidx.core.os.k
    public Object b() {
        return this.f8173a;
    }

    public boolean equals(Object obj) {
        return this.f8173a.equals(((k) obj).b());
    }

    @Override // androidx.core.os.k
    public Locale get(int i11) {
        return this.f8173a.get(i11);
    }

    public int hashCode() {
        return this.f8173a.hashCode();
    }

    @Override // androidx.core.os.k
    public boolean isEmpty() {
        return this.f8173a.isEmpty();
    }

    @Override // androidx.core.os.k
    public int size() {
        return this.f8173a.size();
    }

    public String toString() {
        return this.f8173a.toString();
    }
}
