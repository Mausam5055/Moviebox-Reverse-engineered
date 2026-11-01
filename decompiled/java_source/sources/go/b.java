package go;

import androidx.compose.foundation.e;
import com.transsion.player.longvideo.constants.LongVodPlayerConfigType;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f63913a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f63914b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final LongVodPlayerConfigType f63915c;

    public b() {
        this(false, null, null, 7, null);
    }

    public b(boolean z10, String content, LongVodPlayerConfigType configType) {
        Intrinsics.h(content, "content");
        Intrinsics.h(configType, "configType");
        this.f63913a = z10;
        this.f63914b = content;
        this.f63915c = configType;
    }

    public /* synthetic */ b(boolean z10, String str, LongVodPlayerConfigType longVodPlayerConfigType, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? false : z10, (i11 & 2) != 0 ? "" : str, (i11 & 4) != 0 ? LongVodPlayerConfigType.BITRATE : longVodPlayerConfigType);
    }

    public static /* synthetic */ b b(b bVar, boolean z10, String str, LongVodPlayerConfigType longVodPlayerConfigType, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = bVar.f63913a;
        }
        if ((i11 & 2) != 0) {
            str = bVar.f63914b;
        }
        if ((i11 & 4) != 0) {
            longVodPlayerConfigType = bVar.f63915c;
        }
        return bVar.a(z10, str, longVodPlayerConfigType);
    }

    public final b a(boolean z10, String content, LongVodPlayerConfigType configType) {
        Intrinsics.h(content, "content");
        Intrinsics.h(configType, "configType");
        return new b(z10, content, configType);
    }

    public final LongVodPlayerConfigType c() {
        return this.f63915c;
    }

    public final String d() {
        return this.f63914b;
    }

    public final boolean e() {
        return this.f63913a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f63913a == bVar.f63913a && Intrinsics.c(this.f63914b, bVar.f63914b) && this.f63915c == bVar.f63915c;
    }

    public final void f(boolean z10) {
        this.f63913a = z10;
    }

    public int hashCode() {
        return (((e.a(this.f63913a) * 31) + this.f63914b.hashCode()) * 31) + this.f63915c.hashCode();
    }

    public String toString() {
        return "LongVdPlayerConfigBean(isSelected=" + this.f63913a + ", content=" + this.f63914b + ", configType=" + this.f63915c + ")";
    }
}
