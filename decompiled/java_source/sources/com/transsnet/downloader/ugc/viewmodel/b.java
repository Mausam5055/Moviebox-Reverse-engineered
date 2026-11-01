package com.transsnet.downloader.ugc.viewmodel;

import androidx.compose.foundation.e;
import androidx.p009lifecycle.t0;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class b extends t0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f59882a = "UGCForYouCacheViewModel";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f59883b = new LinkedHashMap();

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List f59884a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f59885b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f59886c;

        public a() {
            this(null, null, false, 7, null);
        }

        public a(List videos, String str, boolean z10) {
            Intrinsics.h(videos, "videos");
            this.f59884a = videos;
            this.f59885b = str;
            this.f59886c = z10;
        }

        public /* synthetic */ a(List list, String str, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? new ArrayList() : list, (i11 & 2) != 0 ? null : str, (i11 & 4) != 0 ? true : z10);
        }

        public final boolean a() {
            return this.f59886c;
        }

        public final String b() {
            return this.f59885b;
        }

        public final List c() {
            return this.f59884a;
        }

        public final void d(boolean z10) {
            this.f59886c = z10;
        }

        public final void e(String str) {
            this.f59885b = str;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Intrinsics.c(this.f59884a, aVar.f59884a) && Intrinsics.c(this.f59885b, aVar.f59885b) && this.f59886c == aVar.f59886c;
        }

        public int hashCode() {
            int iHashCode = this.f59884a.hashCode() * 31;
            String str = this.f59885b;
            return ((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + e.a(this.f59886c);
        }

        public String toString() {
            return "CacheData(videos=" + this.f59884a + ", nextPage=" + this.f59885b + ", hasMore=" + this.f59886c + ")";
        }
    }

    public final String b(String cacheKey) {
        Intrinsics.h(cacheKey, "cacheKey");
        a aVar = (a) this.f59883b.get(cacheKey);
        if (aVar != null) {
            return aVar.b();
        }
        return null;
    }

    public final List c(String cacheKey) {
        List listC;
        List listR0;
        Intrinsics.h(cacheKey, "cacheKey");
        a aVar = (a) this.f59883b.get(cacheKey);
        return (aVar == null || (listC = aVar.c()) == null || (listR0 = CollectionsKt.R0(listC)) == null) ? CollectionsKt.l() : listR0;
    }

    public final boolean d(String cacheKey) {
        List listC;
        Intrinsics.h(cacheKey, "cacheKey");
        a aVar = (a) this.f59883b.get(cacheKey);
        return (aVar == null || (listC = aVar.c()) == null || !(listC.isEmpty() ^ true)) ? false : true;
    }

    public final boolean e(String cacheKey) {
        Intrinsics.h(cacheKey, "cacheKey");
        a aVar = (a) this.f59883b.get(cacheKey);
        if (aVar != null) {
            return aVar.a();
        }
        return true;
    }

    public final void f(String cacheKey, List videos, String str, boolean z10) {
        Intrinsics.h(cacheKey, "cacheKey");
        Intrinsics.h(videos, "videos");
        Map map = this.f59883b;
        Object aVar = map.get(cacheKey);
        if (aVar == null) {
            aVar = new a(null, null, false, 7, null);
            map.put(cacheKey, aVar);
        }
        a aVar2 = (a) aVar;
        List listC = aVar2.c();
        ArrayList arrayList = new ArrayList();
        Iterator it = listC.iterator();
        while (it.hasNext()) {
            String ugcVideoId = ((UGCVideo) it.next()).getUgcVideoId();
            if (ugcVideoId != null) {
                arrayList.add(ugcVideoId);
            }
        }
        Set setW0 = CollectionsKt.W0(arrayList);
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : videos) {
            UGCVideo uGCVideo = (UGCVideo) obj;
            String ugcVideoId2 = uGCVideo.getUgcVideoId();
            if (ugcVideoId2 != null && ugcVideoId2.length() != 0 && !CollectionsKt.b0(setW0, uGCVideo.getUgcVideoId())) {
                arrayList2.add(obj);
            }
        }
        aVar2.c().addAll(arrayList2);
        aVar2.e(str);
        aVar2.d(z10);
        lg.a.C0828a.f(lg.a.f68839a, this.f59882a, "saveCacheAppend: cacheKey=" + cacheKey + ", newSize=" + arrayList2.size() + ", totalSize=" + aVar2.c().size() + ", hasMore=" + z10, false, 4, null);
    }

    public final void g(String cacheKey, List videos, String str, boolean z10) {
        Intrinsics.h(cacheKey, "cacheKey");
        Intrinsics.h(videos, "videos");
        Map map = this.f59883b;
        Object aVar = map.get(cacheKey);
        if (aVar == null) {
            aVar = new a(null, null, false, 7, null);
            map.put(cacheKey, aVar);
        }
        a aVar2 = (a) aVar;
        aVar2.c().clear();
        aVar2.c().addAll(videos);
        aVar2.e(str);
        aVar2.d(z10);
        lg.a.C0828a.f(lg.a.f68839a, this.f59882a, "saveCacheRefresh: cacheKey=" + cacheKey + ", size=" + videos.size() + ", hasMore=" + z10, false, 4, null);
    }
}
