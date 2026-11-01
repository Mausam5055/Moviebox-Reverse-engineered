package q9;

import android.util.SparseArray;
import com.google.android.exoplayer2.o1;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class j implements i0.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f73323a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f73324b;

    public j() {
        this(0);
    }

    public j(int i11) {
        this(i11, ImmutableList.of());
    }

    public j(int i11, List list) {
        this.f73323a = i11;
        this.f73324b = list;
    }

    private d0 b(i0.b bVar) {
        return new d0(d(bVar));
    }

    private k0 c(i0.b bVar) {
        return new k0(d(bVar));
    }

    private List d(i0.b bVar) {
        String str;
        int i11;
        if (e(32)) {
            return this.f73324b;
        }
        com.google.android.exoplayer2.util.d0 d0Var = new com.google.android.exoplayer2.util.d0(bVar.f73317d);
        List arrayList = this.f73324b;
        while (d0Var.a() > 0) {
            int iD = d0Var.D();
            int iE = d0Var.e() + d0Var.D();
            if (iD == 134) {
                arrayList = new ArrayList();
                int iD2 = d0Var.D() & 31;
                for (int i12 = 0; i12 < iD2; i12++) {
                    String strA = d0Var.A(3);
                    int iD3 = d0Var.D();
                    boolean z10 = (iD3 & 128) != 0;
                    if (z10) {
                        i11 = iD3 & 63;
                        str = MimeTypes.APPLICATION_CEA708;
                    } else {
                        str = MimeTypes.APPLICATION_CEA608;
                        i11 = 1;
                    }
                    byte bD = (byte) d0Var.D();
                    d0Var.Q(1);
                    arrayList.add(new o1.b().e0(str).V(strA).F(i11).T(z10 ? com.google.android.exoplayer2.util.f.b((bD & 64) != 0) : null).E());
                }
            }
            d0Var.P(iE);
        }
        return arrayList;
    }

    private boolean e(int i11) {
        return (i11 & this.f73323a) != 0;
    }

    @Override // q9.i0.c
    public i0 a(int i11, i0.b bVar) {
        if (i11 != 2) {
            if (i11 == 3 || i11 == 4) {
                return new w(new t(bVar.f73315b));
            }
            if (i11 == 21) {
                return new w(new r());
            }
            if (i11 == 27) {
                if (e(4)) {
                    return null;
                }
                return new w(new p(b(bVar), e(1), e(8)));
            }
            if (i11 == 36) {
                return new w(new q(b(bVar)));
            }
            if (i11 == 89) {
                return new w(new l(bVar.f73316c));
            }
            if (i11 != 138) {
                if (i11 == 172) {
                    return new w(new f(bVar.f73315b));
                }
                if (i11 == 257) {
                    return new c0(new v("application/vnd.dvb.ait"));
                }
                if (i11 == 134) {
                    if (e(16)) {
                        return null;
                    }
                    return new c0(new v(MimeTypes.APPLICATION_SCTE35));
                }
                if (i11 != 135) {
                    switch (i11) {
                        case 15:
                            if (e(2)) {
                                return null;
                            }
                            return new w(new i(false, bVar.f73315b));
                        case 16:
                            return new w(new o(c(bVar)));
                        case 17:
                            if (e(2)) {
                                return null;
                            }
                            return new w(new s(bVar.f73315b));
                        default:
                            switch (i11) {
                                case 128:
                                    break;
                                case 129:
                                    break;
                                case 130:
                                    if (!e(64)) {
                                        return null;
                                    }
                                    break;
                                default:
                                    return null;
                            }
                            break;
                    }
                }
                return new w(new c(bVar.f73315b));
            }
            return new w(new k(bVar.f73315b));
        }
        return new w(new n(c(bVar)));
    }

    @Override // q9.i0.c
    public SparseArray createInitialPayloadReaders() {
        return new SparseArray();
    }
}
