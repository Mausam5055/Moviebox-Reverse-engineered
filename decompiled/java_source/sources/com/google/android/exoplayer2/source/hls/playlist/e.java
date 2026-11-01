package com.google.android.exoplayer2.source.hls.playlist;

import android.net.Uri;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.offline.StreamKey;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class e extends y9.d {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final e f26165n = new e("", Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), null, Collections.emptyList(), false, Collections.emptyMap(), Collections.emptyList());

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List f26166d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f26167e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f26168f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final List f26169g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List f26170h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List f26171i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final o1 f26172j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final List f26173k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Map f26174l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final List f26175m;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Uri f26176a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final o1 f26177b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f26178c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final String f26179d;

        public a(Uri uri, o1 o1Var, String str, String str2) {
            this.f26176a = uri;
            this.f26177b = o1Var;
            this.f26178c = str;
            this.f26179d = str2;
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Uri f26180a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final o1 f26181b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f26182c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final String f26183d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f26184e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final String f26185f;

        public b(Uri uri, o1 o1Var, String str, String str2, String str3, String str4) {
            this.f26180a = uri;
            this.f26181b = o1Var;
            this.f26182c = str;
            this.f26183d = str2;
            this.f26184e = str3;
            this.f26185f = str4;
        }

        public static b b(Uri uri) {
            return new b(uri, new o1.b().S("0").K(MimeTypes.APPLICATION_M3U8).E(), null, null, null, null);
        }

        public b a(o1 o1Var) {
            return new b(this.f26180a, o1Var, this.f26182c, this.f26183d, this.f26184e, this.f26185f);
        }
    }

    public e(String str, List list, List list2, List list3, List list4, List list5, List list6, o1 o1Var, List list7, boolean z10, Map map, List list8) {
        super(str, list, z10);
        this.f26166d = Collections.unmodifiableList(e(list2, list3, list4, list5, list6));
        this.f26167e = Collections.unmodifiableList(list2);
        this.f26168f = Collections.unmodifiableList(list3);
        this.f26169g = Collections.unmodifiableList(list4);
        this.f26170h = Collections.unmodifiableList(list5);
        this.f26171i = Collections.unmodifiableList(list6);
        this.f26172j = o1Var;
        this.f26173k = list7 != null ? Collections.unmodifiableList(list7) : null;
        this.f26174l = Collections.unmodifiableMap(map);
        this.f26175m = Collections.unmodifiableList(list8);
    }

    private static void a(List list, List list2) {
        for (int i11 = 0; i11 < list.size(); i11++) {
            Uri uri = ((a) list.get(i11)).f26176a;
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

    public static e d(String str) {
        return new e("", Collections.emptyList(), Collections.singletonList(b.b(Uri.parse(str))), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), null, null, false, Collections.emptyMap(), Collections.emptyList());
    }

    private static List e(List list, List list2, List list3, List list4, List list5) {
        ArrayList arrayList = new ArrayList();
        for (int i11 = 0; i11 < list.size(); i11++) {
            Uri uri = ((b) list.get(i11)).f26180a;
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

    @Override // com.google.android.exoplayer2.offline.c
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public e copy(List list) {
        return new e(this.f78950a, this.f78951b, c(this.f26167e, 0, list), Collections.emptyList(), c(this.f26169g, 1, list), c(this.f26170h, 2, list), Collections.emptyList(), this.f26172j, this.f26173k, this.f78952c, this.f26174l, this.f26175m);
    }
}
