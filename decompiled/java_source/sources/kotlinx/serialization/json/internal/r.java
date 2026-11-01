package kotlinx.serialization.json.internal;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class r extends j {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final kotlinx.serialization.json.a f68341c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f68342d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r(h0 writer, kotlinx.serialization.json.a json) {
        super(writer);
        Intrinsics.h(writer, "writer");
        Intrinsics.h(json, "json");
        this.f68341c = json;
    }

    @Override // kotlinx.serialization.json.internal.j
    public void b() {
        n(true);
        this.f68342d++;
    }

    @Override // kotlinx.serialization.json.internal.j
    public void c() {
        n(false);
        j("\n");
        int i11 = this.f68342d;
        for (int i12 = 0; i12 < i11; i12++) {
            j(this.f68341c.e().i());
        }
    }

    @Override // kotlinx.serialization.json.internal.j
    public void o() {
        e(' ');
    }

    @Override // kotlinx.serialization.json.internal.j
    public void p() {
        this.f68342d--;
    }
}
