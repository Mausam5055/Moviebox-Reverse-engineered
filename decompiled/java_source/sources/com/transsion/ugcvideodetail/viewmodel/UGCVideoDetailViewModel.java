package com.transsion.ugcvideodetail.viewmodel;

import android.app.Application;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import com.blankj.utilcode.util.Utils;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.video.UGCCollectionVideoGroupDao;
import com.transsion.baselib.db.video.UGCVideoDetailPlayDao;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoPlayInfo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoPlayStream;
import com.transsnet.downloader.manager.DownloadEsHelper;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;

/* JADX INFO: loaded from: classes6.dex */
public class UGCVideoDetailViewModel extends t0 {
    public static final a H = new a(null);
    private String A;
    private int B;
    private int C;
    private final b0 D;
    private final LiveData E;
    private final b0 F;
    private final LiveData G;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f56439a;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f56444f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f56445g;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final b0 f56449k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final LiveData f56450l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final b0 f56451m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final b0 f56452n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final LiveData f56453o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final b0 f56454p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final LiveData f56455q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final b0 f56456r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final b0 f56457s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final LiveData f56458t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final b0 f56459u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final LiveData f56460v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final b0 f56461w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final LiveData f56462x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private String f56463y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final Set f56464z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f56440b = LazyKt.b(new Function0() { // from class: com.transsion.ugcvideodetail.viewmodel.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return UGCVideoDetailViewModel.x();
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Lazy f56441c = LazyKt.b(new Function0() { // from class: com.transsion.ugcvideodetail.viewmodel.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return UGCVideoDetailViewModel.Z();
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f56442d = LazyKt.b(new Function0() { // from class: com.transsion.ugcvideodetail.viewmodel.e
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return UGCVideoDetailViewModel.w();
        }
    });

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f56443e = "";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final b0 f56446h = new b0();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final b0 f56447i = new b0();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final b0 f56448j = new b0();

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List f56465a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f56466b;

        public b(List videos, String str) {
            Intrinsics.h(videos, "videos");
            this.f56465a = videos;
            this.f56466b = str;
        }

        public final String a() {
            return this.f56466b;
        }

        public final List b() {
            return this.f56465a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return Intrinsics.c(this.f56465a, bVar.f56465a) && Intrinsics.c(this.f56466b, bVar.f56466b);
        }

        public int hashCode() {
            int iHashCode = this.f56465a.hashCode() * 31;
            String str = this.f56466b;
            return iHashCode + (str == null ? 0 : str.hashCode());
        }

        public String toString() {
            return "ReplacePlayListData(videos=" + this.f56465a + ", clickedVideoId=" + this.f56466b + ")";
        }
    }

    public UGCVideoDetailViewModel() {
        b0 b0Var = new b0();
        this.f56449k = b0Var;
        this.f56450l = b0Var;
        this.f56451m = new b0();
        b0 b0Var2 = new b0();
        this.f56452n = b0Var2;
        this.f56453o = b0Var2;
        b0 b0Var3 = new b0();
        this.f56454p = b0Var3;
        this.f56455q = b0Var3;
        this.f56456r = new b0();
        b0 b0Var4 = new b0();
        this.f56457s = b0Var4;
        this.f56458t = b0Var4;
        b0 b0Var5 = new b0();
        this.f56459u = b0Var5;
        this.f56460v = b0Var5;
        b0 b0Var6 = new b0();
        this.f56461w = b0Var6;
        this.f56462x = b0Var6;
        this.f56464z = new LinkedHashSet();
        b0 b0Var7 = new b0();
        this.D = b0Var7;
        this.E = b0Var7;
        b0 b0Var8 = new b0();
        this.F = b0Var8;
        this.G = b0Var8;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final rv.a F() {
        return (rv.a) this.f56440b.getValue();
    }

    private final void V(String str, String str2) {
        k.d(u0.a(this), null, null, new UGCVideoDetailViewModel$getVideoDetail$1(this, str, str2, null), 3, null);
    }

    private final void W(String str) {
        k.d(u0.a(this), null, null, new UGCVideoDetailViewModel$getVideoDetailBySubject$1(this, str, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final UGCVideoDetailPlayDao Z() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).C1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean k0(String str, int i11, int i12) {
        int i13;
        int i14;
        if (!Intrinsics.c(str, this.A) || (i13 = this.B) <= 0 || (i14 = this.C) <= 0 || i11 < i13 || i12 > i14) {
            return true;
        }
        lg.a.C0828a.f(lg.a.f68839a, "UGCVideoDetailViewModel", "PlayList range already covered: requested[" + i11 + "-" + i12 + "], loaded[" + i13 + "-" + i14 + "]", false, 4, null);
        return false;
    }

    private final void v() {
        this.f56464z.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final UGCCollectionVideoGroupDao w() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).B1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final rv.a x() {
        return (rv.a) zg.c.f79414e.a().h(rv.a.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:47:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:48:0x00b5 A[Catch: all -> 0x0033, TRY_LEAVE, TryCatch #0 {all -> 0x0033, blocks: (B:14:0x002f, B:31:0x0072, B:33:0x0076, B:35:0x007c, B:38:0x0083, B:40:0x008b, B:42:0x0091, B:44:0x0099, B:45:0x00a8, B:48:0x00b5, B:21:0x0042, B:27:0x005a, B:24:0x0049), top: B:52:0x0025 }] */
    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public final Object y(String str, Continuation continuation) throws Throwable {
        UGCVideoDetailViewModel$fetchVideoPlayInfoInternal$1 uGCVideoDetailViewModel$fetchVideoPlayInfoInternal$1;
        DownloadBean downloadBean;
        BaseDto baseDto;
        String path;
        UGCVideoPlayInfo uGCVideoPlayInfo;
        List<UGCVideoPlayStream> resources;
        UGCVideoPlayStream uGCVideoPlayStream;
        if (continuation instanceof UGCVideoDetailViewModel$fetchVideoPlayInfoInternal$1) {
            uGCVideoDetailViewModel$fetchVideoPlayInfoInternal$1 = (UGCVideoDetailViewModel$fetchVideoPlayInfoInternal$1) continuation;
            int i11 = uGCVideoDetailViewModel$fetchVideoPlayInfoInternal$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                uGCVideoDetailViewModel$fetchVideoPlayInfoInternal$1.label = i11 - Integer.MIN_VALUE;
            } else {
                uGCVideoDetailViewModel$fetchVideoPlayInfoInternal$1 = new UGCVideoDetailViewModel$fetchVideoPlayInfoInternal$1(this, continuation);
            }
        } else {
            uGCVideoDetailViewModel$fetchVideoPlayInfoInternal$1 = new UGCVideoDetailViewModel$fetchVideoPlayInfoInternal$1(this, continuation);
        }
        UGCVideoDetailViewModel$fetchVideoPlayInfoInternal$1 uGCVideoDetailViewModel$fetchVideoPlayInfoInternal$2 = uGCVideoDetailViewModel$fetchVideoPlayInfoInternal$1;
        Object objR = uGCVideoDetailViewModel$fetchVideoPlayInfoInternal$2.result;
        Object objF = IntrinsicsKt.f();
        int i12 = uGCVideoDetailViewModel$fetchVideoPlayInfoInternal$2.label;
        try {
            if (i12 != 0) {
                if (i12 == 1) {
                    str = (String) uGCVideoDetailViewModel$fetchVideoPlayInfoInternal$2.L$0;
                    ResultKt.b(objR);
                } else {
                    if (i12 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    downloadBean = (DownloadBean) uGCVideoDetailViewModel$fetchVideoPlayInfoInternal$2.L$0;
                    ResultKt.b(objR);
                }
                baseDto = (BaseDto) objR;
                if (downloadBean != null && (path = downloadBean.getPath()) != null && path.length() != 0 && (uGCVideoPlayInfo = (UGCVideoPlayInfo) baseDto.getData()) != null && (resources = uGCVideoPlayInfo.getResources()) != null && (uGCVideoPlayStream = (UGCVideoPlayStream) CollectionsKt.k0(resources)) != null) {
                    String path2 = downloadBean.getPath();
                    Intrinsics.e(path2);
                    uGCVideoPlayStream.setUrl(path2);
                    uGCVideoPlayStream.setFormat("Mp4");
                }
                if (Intrinsics.c(baseDto.getCode(), "0")) {
                    return (UGCVideoPlayInfo) baseDto.getData();
                }
                return null;
            }
            ResultKt.b(objR);
            DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f59419m.a();
            uGCVideoDetailViewModel$fetchVideoPlayInfoInternal$2.L$0 = str;
            uGCVideoDetailViewModel$fetchVideoPlayInfoInternal$2.label = 1;
            objR = downloadEsHelperA.R(str, uGCVideoDetailViewModel$fetchVideoPlayInfoInternal$2);
            if (objR == objF) {
                return objF;
            }
            DownloadBean downloadBean2 = (DownloadBean) objR;
            rv.a aVarF = F();
            uGCVideoDetailViewModel$fetchVideoPlayInfoInternal$2.L$0 = downloadBean2;
            uGCVideoDetailViewModel$fetchVideoPlayInfoInternal$2.label = 2;
            Object objI = rv.a.C0910a.i(aVarF, str, null, uGCVideoDetailViewModel$fetchVideoPlayInfoInternal$2, 2, null);
            if (objI == objF) {
                return objF;
            }
            objR = objI;
            downloadBean = downloadBean2;
            baseDto = (BaseDto) objR;
            if (downloadBean != null) {
                String path3 = downloadBean.getPath();
                Intrinsics.e(path3);
                uGCVideoPlayStream.setUrl(path3);
                uGCVideoPlayStream.setFormat("Mp4");
            }
            if (Intrinsics.c(baseDto.getCode(), "0")) {
                return null;
            }
            return (UGCVideoPlayInfo) baseDto.getData();
        } catch (Throwable th2) {
            lg.a.C0828a.l(lg.a.f68839a, "UGCVideoDetailViewModel", "fetchVideoPlayInfoInternal error:" + th2, false, 4, null);
            return null;
        }
    }

    public final b0 A() {
        return this.f56448j;
    }

    public final b0 B() {
        return this.f56447i;
    }

    public final b0 C() {
        return this.f56456r;
    }

    public final b0 D() {
        return this.f56446h;
    }

    public final String E() {
        return this.f56463y;
    }

    public final LiveData G() {
        return this.f56453o;
    }

    public final b0 H() {
        return this.f56451m;
    }

    public final LiveData I() {
        return this.E;
    }

    public final LiveData J() {
        return this.f56450l;
    }

    protected final UGCVideoDetailPlayDao K() {
        return (UGCVideoDetailPlayDao) this.f56441c.getValue();
    }

    public final LiveData L() {
        return this.f56455q;
    }

    public final LiveData M() {
        return this.f56458t;
    }

    public final LiveData N() {
        return this.f56460v;
    }

    public String O() {
        return this.f56445g;
    }

    public String P() {
        return this.f56444f;
    }

    public final LiveData Q() {
        return this.f56462x;
    }

    public final LiveData R() {
        return this.G;
    }

    public final int S(int i11) {
        return (i11 - 1) / 50;
    }

    public String T() {
        return this.f56443e;
    }

    public final void U(boolean z10, String str, String str2) {
        k.d(u0.a(this), null, null, new UGCVideoDetailViewModel$getUGCDetailForYouList$1(z10, this, str, str2, null), 3, null);
    }

    public final void X(String collectionId, int i11, int i12, boolean z10) {
        Intrinsics.h(collectionId, "collectionId");
        k.d(u0.a(this), null, null, new UGCVideoDetailViewModel$getVideoPlayList$1(this, collectionId, i11, i12, z10, null), 3, null);
    }

    protected final b0 Y() {
        return this.f56449k;
    }

    public final boolean a0(String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        return this.f56464z.contains(str);
    }

    public final void b0(String ugcVideoId) {
        Intrinsics.h(ugcVideoId, "ugcVideoId");
        k.d(u0.a(this), null, null, new UGCVideoDetailViewModel$loadHistory$1(this, ugcVideoId, null), 3, null);
    }

    public final void c0(String ugcVideoId, String str) {
        Intrinsics.h(ugcVideoId, "ugcVideoId");
        v();
        if (!Intrinsics.c(str, this.A)) {
            this.A = null;
            this.B = 0;
            this.C = 0;
        }
        V(ugcVideoId, str);
    }

    public final void d0(String subjectId) {
        Intrinsics.h(subjectId, "subjectId");
        v();
        W(subjectId);
    }

    public final void e0(String str) {
        if (str == null || str.length() == 0) {
            return;
        }
        this.f56464z.add(str);
    }

    public final void f0(String str) {
        this.f56463y = str;
    }

    public void g0(String str) {
        this.f56445g = str;
    }

    public void h0(String str) {
        this.f56444f = str;
    }

    public final void i0(List list, String str) {
        List list2 = list;
        if (list2 == null || list2.isEmpty() || str == null || str.length() == 0) {
            return;
        }
        this.f56461w.q(new b(list, str));
    }

    public void j0(String str) {
        Intrinsics.h(str, "<set-?>");
        this.f56443e = str;
    }

    public final void l0(String ugcVideoId, boolean z10) {
        Intrinsics.h(ugcVideoId, "ugcVideoId");
        k.d(u0.a(this), null, null, new UGCVideoDetailViewModel$toggleFavorite$1(this, ugcVideoId, z10, null), 3, null);
    }

    public final void m0(String ugcVideoId, boolean z10) {
        Intrinsics.h(ugcVideoId, "ugcVideoId");
        k.d(u0.a(this), null, null, new UGCVideoDetailViewModel$toggleLike$1(this, ugcVideoId, z10, null), 3, null);
    }

    public final void n0(String targetUID, boolean z10) {
        Intrinsics.h(targetUID, "targetUID");
        k.d(u0.a(this), null, null, new UGCVideoDetailViewModel$toggleSubscription$1(this, targetUID, z10, null), 3, null);
    }

    public final void u(List list, boolean z10) {
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            return;
        }
        Iterable<UGCVideo> arrayList = (List) this.f56456r.f();
        if (arrayList == null) {
            arrayList = new ArrayList();
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (UGCVideo uGCVideo : arrayList) {
            String ugcVideoId = uGCVideo.getUgcVideoId();
            if (ugcVideoId != null) {
                linkedHashMap.put(ugcVideoId, uGCVideo);
            }
        }
        if (z10) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                UGCVideo uGCVideo2 = (UGCVideo) it.next();
                String ugcVideoId2 = uGCVideo2.getUgcVideoId();
                if (ugcVideoId2 != null) {
                    linkedHashMap.put(ugcVideoId2, uGCVideo2);
                }
            }
        } else {
            for (UGCVideo uGCVideo3 : CollectionsKt.T(list)) {
                String ugcVideoId3 = uGCVideo3.getUgcVideoId();
                if (ugcVideoId3 != null && !linkedHashMap.containsKey(ugcVideoId3)) {
                    LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                    linkedHashMap2.put(ugcVideoId3, uGCVideo3);
                    linkedHashMap2.putAll(linkedHashMap);
                    linkedHashMap.clear();
                    linkedHashMap.putAll(linkedHashMap2);
                }
            }
        }
        b0 b0Var = this.f56456r;
        Collection collectionValues = linkedHashMap.values();
        Intrinsics.g(collectionValues, "<get-values>(...)");
        b0Var.q(CollectionsKt.U0(collectionValues));
    }

    protected final UGCCollectionVideoGroupDao z() {
        return (UGCCollectionVideoGroupDao) this.f56442d.getValue();
    }
}
