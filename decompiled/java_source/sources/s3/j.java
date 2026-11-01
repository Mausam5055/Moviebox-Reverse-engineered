package s3;

import android.util.SparseArray;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class j implements l0.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f74986a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f74987b;

    public j() {
        this(0);
    }

    public j(int i11) {
        this(i11, ImmutableList.of());
    }

    public j(int i11, List list) {
        this.f74986a = i11;
        this.f74987b = list;
    }

    private g0 b(l0.b bVar) {
        return new g0(d(bVar), "video/mp2t");
    }

    private n0 c(l0.b bVar) {
        return new n0(d(bVar), "video/mp2t");
    }

    private List d(l0.b bVar) {
        String str;
        int i11;
        if (e(32)) {
            return this.f74987b;
        }
        androidx.media3.common.util.j0 j0Var = new androidx.media3.common.util.j0(bVar.f75048e);
        List arrayList = this.f74987b;
        while (j0Var.a() > 0) {
            int iH = j0Var.H();
            int iF = j0Var.f() + j0Var.H();
            if (iH == 134) {
                arrayList = new ArrayList();
                int iH2 = j0Var.H() & 31;
                for (int i12 = 0; i12 < iH2; i12++) {
                    String strE = j0Var.E(3);
                    int iH3 = j0Var.H();
                    boolean z10 = (iH3 & 128) != 0;
                    if (z10) {
                        i11 = iH3 & 63;
                        str = MimeTypes.APPLICATION_CEA708;
                    } else {
                        str = MimeTypes.APPLICATION_CEA608;
                        i11 = 1;
                    }
                    byte bH = (byte) j0Var.H();
                    j0Var.X(1);
                    arrayList.add(new androidx.media3.common.r.b().u0(str).j0(strE).O(i11).g0(z10 ? androidx.media3.common.util.j.e((bH & 64) != 0) : null).N());
                }
            }
            j0Var.W(iF);
        }
        return arrayList;
    }

    private boolean e(int i11) {
        return (i11 & this.f74986a) != 0;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:38:0x0059  */
    @Override // s3.l0.c
    public l0 a(int i11, l0.b bVar) {
        if (i11 != 2) {
            if (i11 == 3 || i11 == 4) {
                return new y(new t(bVar.f75045b, bVar.a(), "video/mp2t"));
            }
            if (i11 == 21) {
                return new y(new r("video/mp2t"));
            }
            if (i11 == 27) {
                if (e(4)) {
                    return null;
                }
                return new y(new p(b(bVar), e(1), e(8), "video/mp2t"));
            }
            if (i11 == 36) {
                return new y(new q(b(bVar), "video/mp2t"));
            }
            if (i11 == 45) {
                return new y(new u("video/mp2t"));
            }
            if (i11 == 89) {
                return new y(new l(bVar.f75047d, "video/mp2t"));
            }
            if (i11 == 172) {
                return new y(new f(bVar.f75045b, bVar.a(), "video/mp2t"));
            }
            if (i11 == 257) {
                return new e0(new x("application/vnd.dvb.ait", "video/mp2t"));
            }
            if (i11 != 138) {
                if (i11 == 139) {
                    return new y(new k(bVar.f75045b, bVar.a(), 5408, "video/mp2t"));
                }
                switch (i11) {
                    case 15:
                        if (e(2)) {
                            return null;
                        }
                        return new y(new i(false, bVar.f75045b, bVar.a(), "video/mp2t"));
                    case 16:
                        return new y(new o(c(bVar), "video/mp2t"));
                    case 17:
                        if (e(2)) {
                            return null;
                        }
                        return new y(new s(bVar.f75045b, bVar.a(), "video/mp2t"));
                    default:
                        switch (i11) {
                            case 128:
                                break;
                            case 129:
                                return new y(new c(bVar.f75045b, bVar.a(), "video/mp2t"));
                            case 130:
                                if (!e(64)) {
                                    return null;
                                }
                                break;
                            default:
                                switch (i11) {
                                    case 134:
                                        if (e(16)) {
                                            return null;
                                        }
                                        return new e0(new x(MimeTypes.APPLICATION_SCTE35, "video/mp2t"));
                                    case 135:
                                        return new y(new c(bVar.f75045b, bVar.a(), "video/mp2t"));
                                    case PRIVACY_URL_ERROR_VALUE:
                                        break;
                                    default:
                                        return null;
                                }
                                break;
                        }
                        break;
                }
            }
            return new y(new k(bVar.f75045b, bVar.a(), 4096, "video/mp2t"));
        }
        return new y(new n(c(bVar), "video/mp2t"));
    }

    @Override // s3.l0.c
    public SparseArray createInitialPayloadReaders() {
        return new SparseArray();
    }
}
