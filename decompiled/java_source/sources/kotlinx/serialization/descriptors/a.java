package kotlinx.serialization.descriptors;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f68041a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List f68042b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List f68043c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Set f68044d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List f68045e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List f68046f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final List f68047g;

    public a(String serialName) {
        Intrinsics.h(serialName, "serialName");
        this.f68041a = serialName;
        this.f68042b = CollectionsKt.l();
        this.f68043c = new ArrayList();
        this.f68044d = new HashSet();
        this.f68045e = new ArrayList();
        this.f68046f = new ArrayList();
        this.f68047g = new ArrayList();
    }

    public static /* synthetic */ void b(a aVar, String str, f fVar, List list, boolean z10, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            list = CollectionsKt.l();
        }
        if ((i11 & 8) != 0) {
            z10 = false;
        }
        aVar.a(str, fVar, list, z10);
    }

    public final void a(String elementName, f descriptor, List annotations, boolean z10) {
        Intrinsics.h(elementName, "elementName");
        Intrinsics.h(descriptor, "descriptor");
        Intrinsics.h(annotations, "annotations");
        if (!this.f68044d.add(elementName)) {
            throw new IllegalArgumentException(("Element with name '" + elementName + "' is already registered").toString());
        }
        this.f68043c.add(elementName);
        this.f68045e.add(descriptor);
        this.f68046f.add(annotations);
        this.f68047g.add(Boolean.valueOf(z10));
    }

    public final List c() {
        return this.f68042b;
    }

    public final List d() {
        return this.f68046f;
    }

    public final List e() {
        return this.f68045e;
    }

    public final List f() {
        return this.f68043c;
    }

    public final List g() {
        return this.f68047g;
    }

    public final void h(List list) {
        Intrinsics.h(list, "<set-?>");
        this.f68042b = list;
    }
}
