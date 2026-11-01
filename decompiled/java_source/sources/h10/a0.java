package h10;

/* JADX INFO: loaded from: classes7.dex */
public abstract class a0 {
    static void a(int i11, d dVar) {
        int i12 = i11 >>> 24;
        if (i12 != 0 && i12 != 1) {
            switch (i12) {
                case 16:
                case 17:
                case 18:
                case 23:
                    break;
                case 19:
                case 20:
                case 21:
                    dVar.g(i12);
                    return;
                case 22:
                    break;
                default:
                    switch (i12) {
                        case 66:
                        case 67:
                        case 68:
                        case 69:
                        case 70:
                            break;
                        case 71:
                        case 72:
                        case 73:
                        case 74:
                        case 75:
                            dVar.i(i11);
                            return;
                        default:
                            throw new IllegalArgumentException();
                    }
                    break;
            }
            dVar.e(i12, (i11 & 16776960) >> 8);
            return;
        }
        dVar.k(i11 >>> 16);
    }
}
