package androidx.media3.exoplayer.hls.playlist;

import android.net.Uri;
import androidx.media3.common.StreamKey;
import androidx.media3.common.r;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class d extends c2.d {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final d f11932n = new d("", Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), null, Collections.emptyList(), false, Collections.emptyMap(), Collections.emptyList());

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List f11933d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f11934e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f11935f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final List f11936g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List f11937h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List f11938i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final r f11939j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final List f11940k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Map f11941l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final List f11942m;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Uri f11943a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final r f11944b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f11945c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final String f11946d;

        public a(Uri uri, r rVar, String str, String str2) {
            this.f11943a = uri;
            this.f11944b = rVar;
            this.f11945c = str;
            this.f11946d = str2;
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Uri f11947a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final r f11948b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f11949c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final String f11950d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f11951e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final String f11952f;

        public b(Uri uri, r rVar, String str, String str2, String str3, String str4) {
            this.f11947a = uri;
            this.f11948b = rVar;
            this.f11949c = str;
            this.f11950d = str2;
            this.f11951e = str3;
            this.f11952f = str4;
        }

        public static b b(Uri uri) {
            return new b(uri, new r.b().f0("0").U(MimeTypes.APPLICATION_M3U8).N(), null, null, null, null);
        }

        public b a(r rVar) {
            return new b(this.f11947a, rVar, this.f11949c, this.f11950d, this.f11951e, this.f11952f);
        }
    }

    public d(String str, List list, List list2, List list3, List list4, List list5, List list6, r rVar, List list7, boolean z10, Map map, List list8) {
        super(str, list, z10);
        this.f11933d = Collections.unmodifiableList(e(list2, list3, list4, list5, list6));
        this.f11934e = Collections.unmodifiableList(list2);
        this.f11935f = Collections.unmodifiableList(list3);
        this.f11936g = Collections.unmodifiableList(list4);
        this.f11937h = Collections.unmodifiableList(list5);
        this.f11938i = Collections.unmodifiableList(list6);
        this.f11939j = rVar;
        this.f11940k = list7 != null ? Collections.unmodifiableList(list7) : null;
        this.f11941l = Collections.unmodifiableMap(map);
        this.f11942m = Collections.unmodifiableList(list8);
    }

    private static void a(List list, List list2) {
        for (int i11 = 0; i11 < list.size(); i11++) {
            Uri uri = ((a) list.get(i11)).f11943a;
            if (uri != null && !list2.contains(uri)) {
                list2.add(uri);
            }
        }
    }

    private static List c(List list, int i11, List list2) {
        ArrayList arrayList = new ArrayList(list2.size());
        for (int i12 = 0; i12 < list.size(); i12++) {
            Object obj = list.get(i12);
            for (int i13 = 0; i13 < list2.size(); i13++) {
                StreamKey streamKey = (StreamKey) list2.get(i13);
                if (streamKey.groupIndex == i11 && streamKey.streamIndex == i12) {
                    arrayList.add(obj);
                    break;
                }
            }
        }
        return arrayList;
    }

    public static d d(String str) {
        return new d("", Collections.emptyList(), Collections.singletonList(b.b(Uri.parse(str))), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), null, null, false, Collections.emptyMap(), Collections.emptyList());
    }

    private static List e(List list, List list2, List list3, List list4, List list5) {
        ArrayList arrayList = new ArrayList();
        for (int i11 = 0; i11 < list.size(); i11++) {
            Uri uri = ((b) list.get(i11)).f11947a;
            if (!arrayList.contains(uri)) {
                arrayList.add(uri);
            }
        }
        a(list2, arrayList);
        a(list3, arrayList);
        a(list4, arrayList);
        a(list5, arrayList);
        return arrayList;
    }

    @Override // androidx.media3.exoplayer.offline.q
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public d copy(List list) {
        return new d(this.f16984a, this.f16985b, c(this.f11934e, 0, list), Collections.emptyList(), c(this.f11936g, 1, list), c(this.f11937h, 2, list), Collections.emptyList(), this.f11939j, this.f11940k, this.f16986c, this.f11941l, this.f11942m);
    }
}
