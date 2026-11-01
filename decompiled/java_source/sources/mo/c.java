package mo;

import com.google.common.collect.ImmutableList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ImmutableList f69668a;

    /* JADX WARN: Multi-variable type inference failed */
    public c() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public c(ImmutableList groups) {
        Intrinsics.h(groups, "groups");
        this.f69668a = groups;
    }

    public /* synthetic */ c(ImmutableList immutableList, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? ImmutableList.of() : immutableList);
    }

    public final ImmutableList a() {
        return this.f69668a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof c) && Intrinsics.c(this.f69668a, ((c) obj).f69668a);
    }

    public int hashCode() {
        return this.f69668a.hashCode();
    }

    public String toString() {
        return "TnTracks(groups=" + this.f69668a + ")";
    }
}
