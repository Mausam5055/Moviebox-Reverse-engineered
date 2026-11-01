package ao;

import com.cloud.tmc.kernel.utils.UrlUtils;
import com.transsion.player.mediasession.MediaItem;
import com.transsion.player.p007enum.PlayMimeType;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f16078a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f16079b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f16080c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private PlayMimeType f16081d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final MediaItem f16082e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f16083f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Lazy f16084g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f16085h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f16086i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f16087j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Map f16088k;

    public e(String str, String url, int i11, PlayMimeType mimeType, MediaItem mediaItem) {
        Intrinsics.h(url, "url");
        Intrinsics.h(mimeType, "mimeType");
        this.f16078a = str;
        this.f16079b = url;
        this.f16080c = i11;
        this.f16081d = mimeType;
        this.f16082e = mediaItem;
        this.f16084g = LazyKt.b(new Function0() { // from class: ao.d
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return e.o(this.f16077a);
            }
        });
    }

    public /* synthetic */ e(String str, String str2, int i11, PlayMimeType playMimeType, MediaItem mediaItem, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i12 & 4) != 0 ? -1 : i11, (i12 & 8) != 0 ? PlayMimeType.DEFAULT : playMimeType, (i12 & 16) != 0 ? null : mediaItem);
    }

    private final String b() {
        int iO0 = StringsKt.o0(this.f16079b, UrlUtils.QUESTION_MARK, 0, false, 6, null);
        if (iO0 < 0) {
            return oo.d.f71072a.a(this.f16079b);
        }
        oo.d.a aVar = oo.d.f71072a;
        String strSubstring = this.f16079b.substring(0, iO0);
        Intrinsics.g(strSubstring, "substring(...)");
        return aVar.a(strSubstring);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String o(e eVar) {
        return eVar.b();
    }

    public final boolean c() {
        return this.f16085h;
    }

    public final Map d() {
        return this.f16088k;
    }

    public final String e() {
        return this.f16078a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return Intrinsics.c(this.f16078a, eVar.f16078a) && Intrinsics.c(this.f16079b, eVar.f16079b) && this.f16080c == eVar.f16080c && this.f16081d == eVar.f16081d && Intrinsics.c(this.f16082e, eVar.f16082e);
    }

    public final boolean f() {
        return this.f16087j;
    }

    public final String g() {
        return (String) this.f16084g.getValue();
    }

    public final String h() {
        return this.f16083f;
    }

    public int hashCode() {
        String str = this.f16078a;
        int iHashCode = (((((((str == null ? 0 : str.hashCode()) * 31) + this.f16079b.hashCode()) * 31) + this.f16080c) * 31) + this.f16081d.hashCode()) * 31;
        MediaItem mediaItem = this.f16082e;
        return iHashCode + (mediaItem != null ? mediaItem.hashCode() : 0);
    }

    public final MediaItem i() {
        return this.f16082e;
    }

    public final PlayMimeType j() {
        return this.f16081d;
    }

    public final String k() {
        return this.f16079b;
    }

    public final int l() {
        return this.f16080c;
    }

    public final boolean m() {
        return this.f16086i;
    }

    public final boolean n() {
        PlayMimeType playMimeType = this.f16081d;
        return playMimeType == PlayMimeType.DASH || playMimeType == PlayMimeType.HLS || StringsKt.c0(this.f16079b, ".mpd", false, 2, null) || StringsKt.c0(this.f16079b, ".m3u8", false, 2, null);
    }

    public final void p(boolean z10) {
        this.f16085h = z10;
    }

    public final void q(Map map) {
        this.f16088k = map;
    }

    public final void r(boolean z10) {
        this.f16087j = z10;
    }

    public final void s(boolean z10) {
        this.f16086i = z10;
    }

    public final void t(String str) {
        this.f16083f = str;
    }

    public String toString() {
        return "MediaSource(id=" + this.f16078a + ", url=" + this.f16079b + ", weights=" + this.f16080c + ", mimeType=" + this.f16081d + ", mediaItem=" + this.f16082e + ")";
    }

    public final void u(PlayMimeType playMimeType) {
        Intrinsics.h(playMimeType, "<set-?>");
        this.f16081d = playMimeType;
    }
}
