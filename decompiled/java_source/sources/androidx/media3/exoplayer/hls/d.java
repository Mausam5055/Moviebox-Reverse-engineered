package androidx.media3.exoplayer.hls;

import android.net.Uri;
import android.text.TextUtils;
import androidx.media3.common.util.p0;
import androidx.media3.common.x;
import androidx.media3.common.y;
import com.google.common.collect.ImmutableList;
import com.google.common.primitives.Ints;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.io.EOFException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import s3.k0;
import y1.f4;

/* JADX INFO: loaded from: classes2.dex */
public final class d implements g {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int[] f11701f = {8, 13, 11, 2, 0, 1, 7};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f11702a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private i3.s.a f11703b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f11704c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f11705d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f11706e;

    public d() {
        this(0, true);
    }

    public d(int i11, boolean z10) {
        this.f11702a = i11;
        this.f11706e = z10;
        this.f11703b = new i3.h();
    }

    private static void f(int i11, List list) {
        if (Ints.j(f11701f, i11) == -1 || list.contains(Integer.valueOf(i11))) {
            return;
        }
        list.add(Integer.valueOf(i11));
    }

    private l2.r h(int i11, androidx.media3.common.r rVar, List list, p0 p0Var) {
        if (i11 == 0) {
            return new s3.b();
        }
        if (i11 == 1) {
            return new s3.e();
        }
        if (i11 == 2) {
            return new s3.h();
        }
        if (i11 == 7) {
            return new e3.f(0, 0L);
        }
        if (i11 == 8) {
            return i(this.f11703b, this.f11704c, p0Var, rVar, list, this.f11705d);
        }
        if (i11 == 11) {
            return j(this.f11702a, this.f11706e, rVar, list, p0Var, this.f11703b, this.f11704c);
        }
        if (i11 != 13) {
            return null;
        }
        return new u(rVar.f10150d, p0Var, this.f11703b, this.f11704c);
    }

    private static f3.h i(i3.s.a aVar, boolean z10, p0 p0Var, androidx.media3.common.r rVar, List list, int i11) {
        int i12 = m(rVar) ? 4 : 0;
        if (!z10) {
            aVar = i3.s.a.f64923a;
            i12 |= 32;
        }
        i3.s.a aVar2 = aVar;
        int iJ = i12 | f3.h.j(i11);
        if (list == null) {
            list = ImmutableList.of();
        }
        return new f3.h(aVar2, iJ, p0Var, null, list, null);
    }

    private static k0 j(int i11, boolean z10, androidx.media3.common.r rVar, List list, p0 p0Var, i3.s.a aVar, boolean z11) {
        int i12;
        int i13 = i11 | 16;
        if (list != null) {
            i13 = i11 | 48;
        } else {
            list = z10 ? Collections.singletonList(new androidx.media3.common.r.b().u0(MimeTypes.APPLICATION_CEA608).N()) : Collections.emptyList();
        }
        String str = rVar.f10157k;
        if (!TextUtils.isEmpty(str)) {
            if (!y.b(str, MimeTypes.AUDIO_AAC)) {
                i13 |= 2;
            }
            if (!y.b(str, MimeTypes.VIDEO_H264)) {
                i13 |= 4;
            }
        }
        if (z11) {
            i12 = 0;
        } else {
            aVar = i3.s.a.f64923a;
            i12 = 1;
        }
        return new k0(2, i12, aVar, p0Var, new s3.j(i13, list), 112800);
    }

    private static boolean m(androidx.media3.common.r rVar) {
        x xVar = rVar.f10158l;
        if (xVar == null) {
            return false;
        }
        for (int i11 = 0; i11 < xVar.e(); i11++) {
            x.a aVarD = xVar.d(i11);
            if (aVarD instanceof s) {
                return !((s) aVarD).f11990c.isEmpty();
            }
        }
        return false;
    }

    private static boolean o(l2.r rVar, l2.s sVar) {
        try {
            return rVar.d(sVar);
        } catch (EOFException unused) {
            return false;
        } finally {
            sVar.resetPeekPosition();
        }
    }

    @Override // androidx.media3.exoplayer.hls.g
    public androidx.media3.common.r d(androidx.media3.common.r rVar) {
        String str;
        if (!this.f11704c || !this.f11703b.a(rVar)) {
            return rVar;
        }
        androidx.media3.common.r.b bVarW = rVar.b().u0("application/x-media3-cues").W(this.f11703b.b(rVar));
        StringBuilder sb2 = new StringBuilder();
        sb2.append(rVar.f10161o);
        if (rVar.f10157k != null) {
            str = " " + rVar.f10157k;
        } else {
            str = "";
        }
        sb2.append(str);
        return bVarW.S(sb2.toString()).y0(Long.MAX_VALUE).N();
    }

    @Override // androidx.media3.exoplayer.hls.g
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public b e(Uri uri, androidx.media3.common.r rVar, List list, p0 p0Var, Map map, l2.s sVar, f4 f4Var) {
        int iA = androidx.media3.common.o.a(rVar.f10161o);
        int iB = androidx.media3.common.o.b(map);
        int iC = androidx.media3.common.o.c(uri);
        int[] iArr = f11701f;
        ArrayList arrayList = new ArrayList(iArr.length);
        f(iA, arrayList);
        f(iB, arrayList);
        f(iC, arrayList);
        for (int i11 : iArr) {
            f(i11, arrayList);
        }
        sVar.resetPeekPosition();
        l2.r rVar2 = null;
        for (int i12 = 0; i12 < arrayList.size(); i12++) {
            int iIntValue = ((Integer) arrayList.get(i12)).intValue();
            l2.r rVar3 = (l2.r) androidx.media3.common.util.a.e(h(iIntValue, rVar, list, p0Var));
            if (o(rVar3, sVar)) {
                return new b(rVar3, rVar, p0Var, this.f11703b, this.f11704c);
            }
            if (rVar2 == null && (iIntValue == iA || iIntValue == iB || iIntValue == iC || iIntValue == 11)) {
                rVar2 = rVar3;
            }
        }
        return new b((l2.r) androidx.media3.common.util.a.e(rVar2), rVar, p0Var, this.f11703b, this.f11704c);
    }

    @Override // androidx.media3.exoplayer.hls.g
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public d c(boolean z10) {
        this.f11704c = z10;
        return this;
    }

    @Override // androidx.media3.exoplayer.hls.g
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public d b(int i11) {
        this.f11705d = i11;
        return this;
    }

    @Override // androidx.media3.exoplayer.hls.g
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public d a(i3.s.a aVar) {
        this.f11703b = aVar;
        return this;
    }
}
