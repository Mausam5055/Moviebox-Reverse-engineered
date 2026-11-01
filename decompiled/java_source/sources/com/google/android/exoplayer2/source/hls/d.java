package com.google.android.exoplayer2.source.hls;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.w;
import com.google.common.primitives.Ints;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import e9.u1;
import java.io.EOFException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import q9.h0;

/* JADX INFO: loaded from: classes3.dex */
public final class d implements g {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int[] f25944d = {8, 13, 11, 2, 0, 1, 7};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f25945b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f25946c;

    public d() {
        this(0, true);
    }

    public d(int i11, boolean z10) {
        this.f25945b = i11;
        this.f25946c = z10;
    }

    private static void b(int i11, List list) {
        if (Ints.j(f25944d, i11) == -1 || list.contains(Integer.valueOf(i11))) {
            return;
        }
        list.add(Integer.valueOf(i11));
    }

    private g9.l d(int i11, o1 o1Var, List list, l0 l0Var) {
        if (i11 == 0) {
            return new q9.b();
        }
        if (i11 == 1) {
            return new q9.e();
        }
        if (i11 == 2) {
            return new q9.h();
        }
        if (i11 == 7) {
            return new n9.f(0, 0L);
        }
        if (i11 == 8) {
            return e(l0Var, o1Var, list);
        }
        if (i11 == 11) {
            return f(this.f25945b, this.f25946c, o1Var, list, l0Var);
        }
        if (i11 != 13) {
            return null;
        }
        return new r(o1Var.f25487c, l0Var);
    }

    private static o9.g e(l0 l0Var, o1 o1Var, List list) {
        int i11 = g(o1Var) ? 4 : 0;
        if (list == null) {
            list = Collections.emptyList();
        }
        return new o9.g(i11, l0Var, null, list);
    }

    private static h0 f(int i11, boolean z10, o1 o1Var, List list, l0 l0Var) {
        int i12 = i11 | 16;
        if (list != null) {
            i12 = i11 | 48;
        } else {
            list = z10 ? Collections.singletonList(new o1.b().e0(MimeTypes.APPLICATION_CEA608).E()) : Collections.emptyList();
        }
        String str = o1Var.f25493i;
        if (!TextUtils.isEmpty(str)) {
            if (!w.b(str, MimeTypes.AUDIO_AAC)) {
                i12 |= 2;
            }
            if (!w.b(str, MimeTypes.VIDEO_H264)) {
                i12 |= 4;
            }
        }
        return new h0(2, l0Var, new q9.j(i12, list));
    }

    private static boolean g(o1 o1Var) {
        Metadata metadata = o1Var.f25494j;
        if (metadata == null) {
            return false;
        }
        for (int i11 = 0; i11 < metadata.length(); i11++) {
            Metadata.Entry entry = metadata.get(i11);
            if (entry instanceof HlsTrackMetadataEntry) {
                return !((HlsTrackMetadataEntry) entry).variantInfos.isEmpty();
            }
        }
        return false;
    }

    private static boolean h(g9.l lVar, g9.m mVar) {
        try {
            return lVar.d(mVar);
        } catch (EOFException unused) {
            return false;
        } finally {
            mVar.resetPeekPosition();
        }
    }

    @Override // com.google.android.exoplayer2.source.hls.g
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public b a(Uri uri, o1 o1Var, List list, l0 l0Var, Map map, g9.m mVar, u1 u1Var) {
        int iA = com.google.android.exoplayer2.util.l.a(o1Var.f25496l);
        int iB = com.google.android.exoplayer2.util.l.b(map);
        int iC = com.google.android.exoplayer2.util.l.c(uri);
        int[] iArr = f25944d;
        ArrayList arrayList = new ArrayList(iArr.length);
        b(iA, arrayList);
        b(iB, arrayList);
        b(iC, arrayList);
        for (int i11 : iArr) {
            b(i11, arrayList);
        }
        mVar.resetPeekPosition();
        g9.l lVar = null;
        for (int i12 = 0; i12 < arrayList.size(); i12++) {
            int iIntValue = ((Integer) arrayList.get(i12)).intValue();
            g9.l lVar2 = (g9.l) com.google.android.exoplayer2.util.a.e(d(iIntValue, o1Var, list, l0Var));
            if (h(lVar2, mVar)) {
                return new b(lVar2, o1Var, l0Var);
            }
            if (lVar == null && (iIntValue == iA || iIntValue == iB || iIntValue == iC || iIntValue == 11)) {
                lVar = lVar2;
            }
        }
        return new b((g9.l) com.google.android.exoplayer2.util.a.e(lVar), o1Var, l0Var);
    }
}
