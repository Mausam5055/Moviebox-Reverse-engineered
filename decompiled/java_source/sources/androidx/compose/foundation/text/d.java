package androidx.compose.foundation.text;

import com.mbridge.msdk.playercommon.exoplayer2.extractor.ogg.DefaultOggSeeker;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f3201a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f3202b;

    public d() {
        this(0, 1, null);
    }

    public d(int i11) {
        this.f3201a = i11;
    }

    public /* synthetic */ d(int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? DefaultOggSeeker.MATCH_BYTE_RANGE : i11);
    }

    public final void a() {
        this.f3202b = true;
    }
}
