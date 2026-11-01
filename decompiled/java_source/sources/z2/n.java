package z2;

import androidx.media3.common.util.a1;
import androidx.media3.common.v;
import com.google.common.collect.ImmutableList;
import com.google.common.primitives.Ints;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class n extends i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f79204b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f79205c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ImmutableList f79206d;

    /* JADX WARN: Multi-variable type inference failed */
    public n(String str, String str2, List list) {
        super(str);
        androidx.media3.common.util.a.a(!list.isEmpty());
        this.f79204b = str2;
        ImmutableList immutableListCopyOf = ImmutableList.copyOf((Collection) list);
        this.f79206d = immutableListCopyOf;
        this.f79205c = (String) immutableListCopyOf.get(0);
    }

    private static List b(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            if (str.length() >= 10) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(5, 7))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(8, 10))));
            } else if (str.length() >= 7) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(5, 7))));
            } else if (str.length() >= 4) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
            }
            return arrayList;
        } catch (NumberFormatException unused) {
            return new ArrayList();
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // z2.i, androidx.media3.common.x.a
    public void a(v.b bVar) {
        String str = this.f79192a;
        str.hashCode();
        byte b11 = -1;
        switch (str.hashCode()) {
            case 82815:
                if (str.equals("TAL")) {
                    b11 = 0;
                }
                break;
            case 82878:
                if (str.equals("TCM")) {
                    b11 = 1;
                }
                break;
            case 82897:
                if (str.equals("TDA")) {
                    b11 = 2;
                }
                break;
            case 83253:
                if (str.equals("TP1")) {
                    b11 = 3;
                }
                break;
            case 83254:
                if (str.equals("TP2")) {
                    b11 = 4;
                }
                break;
            case 83255:
                if (str.equals("TP3")) {
                    b11 = 5;
                }
                break;
            case 83341:
                if (str.equals("TRK")) {
                    b11 = 6;
                }
                break;
            case 83378:
                if (str.equals("TT2")) {
                    b11 = 7;
                }
                break;
            case 83536:
                if (str.equals("TXT")) {
                    b11 = 8;
                }
                break;
            case 83552:
                if (str.equals("TYE")) {
                    b11 = 9;
                }
                break;
            case 2567331:
                if (str.equals("TALB")) {
                    b11 = 10;
                }
                break;
            case 2569357:
                if (str.equals("TCOM")) {
                    b11 = 11;
                }
                break;
            case 2569358:
                if (str.equals("TCON")) {
                    b11 = 12;
                }
                break;
            case 2569891:
                if (str.equals("TDAT")) {
                    b11 = 13;
                }
                break;
            case 2570401:
                if (str.equals("TDRC")) {
                    b11 = 14;
                }
                break;
            case 2570410:
                if (str.equals("TDRL")) {
                    b11 = 15;
                }
                break;
            case 2571565:
                if (str.equals("TEXT")) {
                    b11 = 16;
                }
                break;
            case 2575251:
                if (str.equals("TIT2")) {
                    b11 = 17;
                }
                break;
            case 2581512:
                if (str.equals("TPE1")) {
                    b11 = 18;
                }
                break;
            case 2581513:
                if (str.equals("TPE2")) {
                    b11 = 19;
                }
                break;
            case 2581514:
                if (str.equals("TPE3")) {
                    b11 = 20;
                }
                break;
            case 2583398:
                if (str.equals("TRCK")) {
                    b11 = 21;
                }
                break;
            case 2590194:
                if (str.equals("TYER")) {
                    b11 = 22;
                }
                break;
        }
        try {
            switch (b11) {
                case 0:
                case 10:
                    bVar.P((CharSequence) this.f79206d.get(0));
                    break;
                case 1:
                case 11:
                    bVar.U((CharSequence) this.f79206d.get(0));
                    break;
                case 2:
                case 13:
                    String str2 = (String) this.f79206d.get(0);
                    bVar.h0(Integer.valueOf(Integer.parseInt(str2.substring(2, 4)))).g0(Integer.valueOf(Integer.parseInt(str2.substring(0, 2))));
                    break;
                case 3:
                case 18:
                    bVar.Q((CharSequence) this.f79206d.get(0));
                    break;
                case 4:
                case 19:
                    bVar.O((CharSequence) this.f79206d.get(0));
                    break;
                case 5:
                case 20:
                    bVar.V((CharSequence) this.f79206d.get(0));
                    break;
                case 6:
                case 21:
                    String[] strArrO1 = a1.o1((String) this.f79206d.get(0), "/");
                    bVar.s0(Integer.valueOf(Integer.parseInt(strArrO1[0]))).r0(strArrO1.length > 1 ? Integer.valueOf(Integer.parseInt(strArrO1[1])) : null);
                    break;
                case 7:
                case 17:
                    bVar.p0((CharSequence) this.f79206d.get(0));
                    break;
                case 8:
                case 16:
                    bVar.t0((CharSequence) this.f79206d.get(0));
                    break;
                case 9:
                case 22:
                    bVar.i0(Integer.valueOf(Integer.parseInt((String) this.f79206d.get(0))));
                    break;
                case 12:
                    Integer numP = Ints.p((String) this.f79206d.get(0));
                    if (numP != null) {
                        String strA = j.a(numP.intValue());
                        if (strA != null) {
                            bVar.c0(strA);
                        }
                    } else {
                        bVar.c0((CharSequence) this.f79206d.get(0));
                    }
                    break;
                case 14:
                    List listB = b((String) this.f79206d.get(0));
                    int size = listB.size();
                    if (size != 1) {
                        if (size != 2) {
                            if (size == 3) {
                                bVar.g0((Integer) listB.get(2));
                            }
                        }
                        bVar.h0((Integer) listB.get(1));
                    }
                    bVar.i0((Integer) listB.get(0));
                    break;
                case 15:
                    List listB2 = b((String) this.f79206d.get(0));
                    int size2 = listB2.size();
                    if (size2 != 1) {
                        if (size2 != 2) {
                            if (size2 == 3) {
                                bVar.j0((Integer) listB2.get(2));
                            }
                        }
                        bVar.k0((Integer) listB2.get(1));
                    }
                    bVar.l0((Integer) listB2.get(0));
                    break;
            }
        } catch (NumberFormatException | StringIndexOutOfBoundsException unused) {
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || n.class != obj.getClass()) {
            return false;
        }
        n nVar = (n) obj;
        return Objects.equals(this.f79192a, nVar.f79192a) && Objects.equals(this.f79204b, nVar.f79204b) && this.f79206d.equals(nVar.f79206d);
    }

    public int hashCode() {
        int iHashCode = (527 + this.f79192a.hashCode()) * 31;
        String str = this.f79204b;
        return ((iHashCode + (str != null ? str.hashCode() : 0)) * 31) + this.f79206d.hashCode();
    }

    @Override // z2.i
    public String toString() {
        return this.f79192a + ": description=" + this.f79204b + ": values=" + this.f79206d;
    }
}
